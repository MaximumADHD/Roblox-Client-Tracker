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
        0 JUMPIFNOT                        R1 ; [+2]
        1 JUMPIFNOTEQKS                    R1 K0 [""] ; [+3]
        3 LOADB                            R4 0
        4 RETURN                           R4 1
        5 GETTABLEKS                       R5 R0 K2 ["mcpJSONEntry"]
        7 ORK                              R4 R5 K1 ["mcpServers"]
        8 GETTABLEKS                       R5 R2 K3 ["decodeAsync"]
       10 MOVE                             R6 R1
       11 CALL                             R5 1 1
       12 GETTABLEKS                       R7 R3 K1 ["mcpServers"]
       14 LOADNIL                          R8
       15 LOADNIL                          R9
       16 FORGPREP                         R7
       17 MOVE                             R6 R10
       18 JUMP                             ; [+10]
       19 FORGLOOP                         R7 2 ; [-3]
       21 LOADB                            R8 0
       22 FASTCALL2K                       ASSERT R8 K4 ; [+4]
       24 LOADK                            R9 K4 ["No MCP servers found in instructions"]
       25 GETIMPORT                        R7 K6 [assert]
       27 CALL                             R7 2 0
       28 LOADNIL                          R6
       29 MOVE                             R7 R5
       30 JUMPIFNOT                        R7 ; [+4]
       31 GETTABLE                         R7 R5 R4
       32 JUMPIFNOT                        R7 ; [+2]
       33 GETTABLE                         R8 R5 R4
       34 GETTABLE                         R7 R8 R6
       35 RETURN                           R7 1

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
        0 GETTABLEKS                       R6 R4 K0 ["mcpServers"]
        2 LOADNIL                          R7
        3 LOADNIL                          R8
        4 FORGPREP                         R6
        5 MOVE                             R5 R9
        6 JUMP                             ; [+10]
        7 FORGLOOP                         R6 2 ; [-3]
        9 LOADB                            R7 0
       10 FASTCALL2K                       ASSERT R7 K1 ; [+4]
       12 LOADK                            R8 K1 ["No MCP servers found in instructions"]
       13 GETIMPORT                        R6 K3 [assert]
       15 CALL                             R6 2 0
       16 LOADNIL                          R5
       17 GETTABLEKS                       R7 R0 K4 ["mcpJSONEntry"]
       19 ORK                              R6 R7 K0 ["mcpServers"]
       20 GETIMPORT                        R7 K6 [pcall]
       22 NEWCLOSURE                       R8 P0
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R1
       25 CALL                             R7 1 2
       26 JUMPIFNOT                        R7 ; [+7]
       27 FASTCALL1                        TYPE R8 ; [+3]
       28 MOVE                             R10 R8
       29 GETIMPORT                        R9 K8 [type]
       31 CALL                             R9 1 1
       32 JUMPIFEQKS                       R9 K9 ["table"] ; [+3]
       34 NEWTABLE                         R8 0 0
       36 JUMPIF                           R2 ; [+8]
       37 JUMPIFNOT                        R8 ; [+5]
       38 GETTABLE                         R9 R8 R6
       39 JUMPIFNOT                        R9 ; [+3]
       40 GETTABLE                         R10 R8 R6
       41 GETTABLE                         R9 R10 R5
       42 JUMPIF                           R9 ; [+2]
       43 LOADNIL                          R9
       44 RETURN                           R9 1
       45 GETTABLE                         R9 R8 R6
       46 JUMPIF                           R9 ; [+2]
       47 NEWTABLE                         R9 0 0
       49 SETTABLE                         R9 R8 R6
       50 GETTABLEKS                       R10 R4 K0 ["mcpServers"]
       52 GETTABLE                         R9 R10 R5
       53 GETTABLE                         R10 R8 R6
       54 JUMPIFNOT                        R2 ; [+18]
       55 DUPTABLE                         R11 K13 [{"transport", "command", "args"}]
       56 GETTABLEKS                       R13 R0 K14 ["noTransport"]
       58 JUMPIF                           R13 ; [+2]
       59 LOADK                            R12 K15 ["stdio"]
       60 JUMP                             ; [+1]
       61 LOADNIL                          R12
       62 SETTABLEKS                       R12 R11 K10 ["transport"]
       64 GETTABLEKS                       R12 R9 K11 ["command"]
       66 SETTABLEKS                       R12 R11 K11 ["command"]
       68 GETTABLEKS                       R12 R9 K12 ["args"]
       70 SETTABLEKS                       R12 R11 K12 ["args"]
       72 JUMP                             ; [+1]
       73 LOADNIL                          R11
       74 SETTABLE                         R11 R10 R5
       75 GETTABLEKS                       R10 R3 K16 ["encodeAsync"]
       77 MOVE                             R11 R8
       78 LOADB                            R12 1
       79 CALL                             R10 2 -1
       80 RETURN                           R10 -1

PROTO_4:
        0 JUMPIFNOT                        R1 ; [+2]
        1 JUMPIFNOTEQKS                    R1 K0 [""] ; [+3]
        3 LOADB                            R4 0
        4 RETURN                           R4 1
        5 GETTABLEKS                       R5 R3 K1 ["mcpServers"]
        7 LOADNIL                          R6
        8 LOADNIL                          R7
        9 FORGPREP                         R5
       10 MOVE                             R4 R8
       11 JUMP                             ; [+10]
       12 FORGLOOP                         R5 2 ; [-3]
       14 LOADB                            R6 0
       15 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       17 LOADK                            R7 K2 ["No MCP servers found in instructions"]
       18 GETIMPORT                        R5 K4 [assert]
       20 CALL                             R5 2 0
       21 LOADNIL                          R4
       22 LOADK                            R9 K5 ["[mcp_servers.%*]"]
       23 MOVE                             R11 R4
       24 NAMECALL                         R9 R9 K6 ["format"]
       26 CALL                             R9 2 1
       27 MOVE                             R8 R9
       28 LOADN                            R9 1
       29 LOADB                            R10 1
       30 NAMECALL                         R6 R1 K7 ["find"]
       32 CALL                             R6 4 1
       33 JUMPIFNOTEQKNIL                  R6 ; [+2]
       35 LOADB                            R5 0 +1
       36 LOADB                            R5 1
       37 RETURN                           R5 1

PROTO_5:
        0 GETTABLEKS                       R6 R4 K0 ["mcpServers"]
        2 LOADNIL                          R7
        3 LOADNIL                          R8
        4 FORGPREP                         R6
        5 MOVE                             R5 R9
        6 JUMP                             ; [+10]
        7 FORGLOOP                         R6 2 ; [-3]
        9 LOADB                            R7 0
       10 FASTCALL2K                       ASSERT R7 K1 ; [+4]
       12 LOADK                            R8 K1 ["No MCP servers found in instructions"]
       13 GETIMPORT                        R6 K3 [assert]
       15 CALL                             R6 2 0
       16 LOADNIL                          R5
       17 GETTABLEKS                       R7 R4 K0 ["mcpServers"]
       19 GETTABLE                         R6 R7 R5
       20 LOADK                            R8 K4 ["[mcp_servers.%*]"]
       21 MOVE                             R10 R5
       22 NAMECALL                         R8 R8 K5 ["format"]
       24 CALL                             R8 2 1
       25 MOVE                             R7 R8
       26 ORK                              R8 R1 K6 [""]
       27 LOADK                            R10 K7 ["\r\n"]
       28 LOADK                            R11 K8 ["\n"]
       29 NAMECALL                         R8 R8 K9 ["gsub"]
       31 CALL                             R8 3 1
       32 LOADK                            R10 K10 ["\r"]
       33 LOADK                            R11 K8 ["\n"]
       34 NAMECALL                         R8 R8 K9 ["gsub"]
       36 CALL                             R8 3 1
       37 MOVE                             R12 R7
       38 LOADN                            R13 1
       39 LOADB                            R14 1
       40 NAMECALL                         R10 R8 K11 ["find"]
       42 CALL                             R10 4 1
       43 JUMPIFNOTEQKNIL                  R10 ; [+2]
       45 LOADB                            R9 0 +1
       46 LOADB                            R9 1
       47 JUMPIF                           R2 ; [+72]
       48 JUMPIF                           R9 ; [+2]
       49 LOADNIL                          R10
       50 RETURN                           R10 1
       51 NEWTABLE                         R10 0 0
       53 LOADB                            R11 0
       54 MOVE                             R13 R8
       55 LOADK                            R14 K8 ["\n"]
       56 CONCAT                           R12 R13 R14
       57 LOADK                            R14 K12 ["([^\n]*)\n"]
       58 NAMECALL                         R12 R12 K13 ["gmatch"]
       60 CALL                             R12 2 3
       61 FORGPREP                         R12
       62 LOADK                            R19 K14 ["^%s*(.-)%s*$"]
       63 NAMECALL                         R17 R15 K15 ["match"]
       65 CALL                             R17 2 1
       66 JUMPIFNOTEQ                      R17 R7 ; [+3]
       68 LOADB                            R11 1
       69 JUMP                             ; [+30]
       70 JUMPIFNOT                        R11 ; [+21]
       71 JUMPIFNOT                        R17 ; [+20]
       72 LENGTH                           R18 R17
       73 LOADN                            R19 0
       74 JUMPIFNOTLT                      R19 R18 ; [+17]
       76 LOADN                            R20 1
       77 LOADN                            R21 1
       78 NAMECALL                         R18 R17 K16 ["sub"]
       80 CALL                             R18 3 1
       81 JUMPIFNOTEQKS                    R18 K17 ["["] ; [+10]
       83 LOADB                            R11 0
       84 FASTCALL2                        TABLE_INSERT R10 R15 ; [+5]
       86 MOVE                             R19 R10
       87 MOVE                             R20 R15
       88 GETIMPORT                        R18 K20 [table.insert]
       90 CALL                             R18 2 0
       91 JUMP                             ; [+8]
       92 JUMPIF                           R11 ; [+7]
       93 FASTCALL2                        TABLE_INSERT R10 R15 ; [+5]
       95 MOVE                             R19 R10
       96 MOVE                             R20 R15
       97 GETIMPORT                        R18 K20 [table.insert]
       99 CALL                             R18 2 0
      100 FORGLOOP                         R12 1 ; [-39]
      102 GETIMPORT                        R12 K22 [table.concat]
      104 MOVE                             R13 R10
      105 LOADK                            R14 K8 ["\n"]
      106 CALL                             R12 2 1
      107 LOADK                            R14 K23 ["\n+$"]
      108 LOADK                            R15 K6 [""]
      109 NAMECALL                         R12 R12 K9 ["gsub"]
      111 CALL                             R12 3 1
      112 JUMPIFNOTEQKS                    R12 K6 [""] ; [+3]
      114 LOADK                            R13 K6 [""]
      115 RETURN                           R13 1
      116 MOVE                             R14 R12
      117 LOADK                            R15 K8 ["\n"]
      118 CONCAT                           R13 R14 R15
      119 RETURN                           R13 1
      120 JUMPIFNOT                        R9 ; [+2]
      121 LOADNIL                          R10
      122 RETURN                           R10 1
      123 GETTABLEKS                       R10 R6 K24 ["args"]
      125 LOADK                            R11 K25 ["[]"]
      126 FASTCALL1                        TYPEOF R10 ; [+3]
      127 MOVE                             R13 R10
      128 GETIMPORT                        R12 K27 [typeof]
      130 CALL                             R12 1 1
      131 JUMPIFNOTEQKS                    R12 K18 ["table"] ; [+39]
      133 NEWTABLE                         R12 0 0
      135 MOVE                             R13 R10
      136 LOADNIL                          R14
      137 LOADNIL                          R15
      138 FORGPREP                         R13
      139 LOADK                            R21 K28 ["\""]
      140 LOADK                            R26 K29 ["\\"]
      141 LOADK                            R27 K30 ["\\\\"]
      142 NAMECALL                         R24 R17 K9 ["gsub"]
      144 CALL                             R24 3 1
      145 LOADK                            R26 K28 ["\""]
      146 LOADK                            R27 K31 ["\\\""]
      147 NAMECALL                         R24 R24 K9 ["gsub"]
      149 CALL                             R24 3 1
      150 MOVE                             R22 R24
      151 LOADK                            R23 K28 ["\""]
      152 CONCAT                           R20 R21 R23
      153 FASTCALL2                        TABLE_INSERT R12 R20 ; [+4]
      155 MOVE                             R19 R12
      156 GETIMPORT                        R18 K20 [table.insert]
      158 CALL                             R18 2 0
      159 FORGLOOP                         R13 2 ; [-21]
      161 LOADK                            R13 K32 ["[%*]"]
      162 GETIMPORT                        R15 K22 [table.concat]
      164 MOVE                             R16 R12
      165 LOADK                            R17 K33 [", "]
      166 CALL                             R15 2 1
      167 NAMECALL                         R13 R13 K5 ["format"]
      169 CALL                             R13 2 1
      170 MOVE                             R11 R13
      171 GETTABLEKS                       R12 R6 K34 ["command"]
      173 LOADK                            R14 K29 ["\\"]
      174 LOADK                            R15 K30 ["\\\\"]
      175 NAMECALL                         R12 R12 K9 ["gsub"]
      177 CALL                             R12 3 1
      178 LOADK                            R14 K28 ["\""]
      179 LOADK                            R15 K31 ["\\\""]
      180 NAMECALL                         R12 R12 K9 ["gsub"]
      182 CALL                             R12 3 1
      183 LOADK                            R14 K35 ["[mcp_servers.%*]\nargs = %*\ncommand = \"%*\"\n"]
      184 MOVE                             R16 R5
      185 MOVE                             R17 R11
      186 MOVE                             R18 R12
      187 NAMECALL                         R14 R14 K5 ["format"]
      189 CALL                             R14 4 1
      190 MOVE                             R13 R14
      191 LOADK                            R16 K23 ["\n+$"]
      192 LOADK                            R17 K6 [""]
      193 NAMECALL                         R14 R8 K9 ["gsub"]
      195 CALL                             R14 3 1
      196 JUMPIFNOTEQKS                    R14 K6 [""] ; [+3]
      198 MOVE                             R15 R13
      199 RETURN                           R15 1
      200 LOADK                            R16 K36 ["%*\n\n%*"]
      201 MOVE                             R18 R14
      202 MOVE                             R19 R13
      203 NAMECALL                         R16 R16 K5 ["format"]
      205 CALL                             R16 3 1
      206 MOVE                             R15 R16
      207 RETURN                           R15 1

PROTO_6:
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
       33 JUMPIFNOTEQKS                    R4 K10 ["table"] ; [+23]
       35 GETTABLEKS                       R4 R2 K7 ["args"]
       37 LOADNIL                          R5
       38 LOADNIL                          R6
       39 FORGPREP                         R4
       40 FASTCALL1                        TYPEOF R8 ; [+3]
       41 MOVE                             R10 R8
       42 GETIMPORT                        R9 K9 [typeof]
       44 CALL                             R9 1 1
       45 JUMPIFNOTEQKS                    R9 K11 ["string"] ; [+9]
       47 MOVE                             R9 R3
       48 LOADK                            R11 K12 [" \"%*\""]
       49 MOVE                             R13 R8
       50 NAMECALL                         R11 R11 K6 ["format"]
       52 CALL                             R11 2 1
       53 MOVE                             R10 R11
       54 CONCAT                           R3 R9 R10
       55 FORGLOOP                         R4 2 ; [-16]
       57 RETURN                           R3 1

PROTO_7:
        0 LOADK                            R2 K0 ["codex mcp add Roblox_Studio -- %*"]
        1 GETUPVAL                         R4 0
        2 MOVE                             R5 R0
        3 CALL                             R4 1 1
        4 NAMECALL                         R2 R2 K1 ["format"]
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 RETURN                           R1 1

PROTO_8:
        0 LOADK                            R2 K0 ["claude mcp add  --transport stdio Roblox_Studio -- %*"]
        1 GETUPVAL                         R4 0
        2 MOVE                             R5 R0
        3 CALL                             R4 1 1
        4 NAMECALL                         R2 R2 K1 ["format"]
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 RETURN                           R1 1

PROTO_9:
        0 LOADK                            R2 K0 ["gemini mcp add --transport stdio Roblox_Studio %*"]
        1 GETUPVAL                         R4 0
        2 MOVE                             R5 R0
        3 CALL                             R4 1 1
        4 NAMECALL                         R2 R2 K1 ["format"]
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["label"]
        2 GETTABLEKS                       R4 R1 K0 ["label"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

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
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Flags"]
       27 GETTABLEKS                       R4 R5 K12 ["FFlagQuickConnectCodexToggle"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K13 [PROTO_0]
       31 DUPCLOSURE                       R5 K14 [PROTO_1]
       32 DUPCLOSURE                       R6 K15 [PROTO_3]
       33 DUPCLOSURE                       R7 K16 [PROTO_4]
       34 DUPCLOSURE                       R8 K17 [PROTO_5]
       35 DUPCLOSURE                       R9 K18 [PROTO_6]
       36 DUPTABLE                         R10 K28 [{"antigravity", "codex", "claude_code", "claude_desktop_mac", "claude_desktop_windows", "cursor", "gemini", "vscode_mac", "vscode_windows"}]
       37 DUPTABLE                         R11 K32 [{"label", "indicatorPath", "data"}]
       38 LOADK                            R12 K33 ["Antigravity"]
       39 SETTABLEKS                       R12 R11 K29 ["label"]
       41 LOADK                            R12 K34 ["~/.gemini/antigravity/mcp_config.json"]
       42 SETTABLEKS                       R12 R11 K30 ["indicatorPath"]
       44 DUPTABLE                         R12 K39 [{"kind", "noTransport", "checkEnabledAsync", "setEnabledAsync"}]
       45 LOADK                            R13 K40 ["toggle"]
       46 SETTABLEKS                       R13 R12 K35 ["kind"]
       48 LOADB                            R13 1
       49 SETTABLEKS                       R13 R12 K36 ["noTransport"]
       51 SETTABLEKS                       R5 R12 K37 ["checkEnabledAsync"]
       53 SETTABLEKS                       R6 R12 K38 ["setEnabledAsync"]
       55 SETTABLEKS                       R12 R11 K31 ["data"]
       57 SETTABLEKS                       R11 R10 K19 ["antigravity"]
       59 MOVE                             R12 R3
       60 CALL                             R12 0 1
       61 JUMPIFNOT                        R12 ; [+21]
       62 DUPTABLE                         R11 K32 [{"label", "indicatorPath", "data"}]
       63 LOADK                            R12 K41 ["Codex"]
       64 SETTABLEKS                       R12 R11 K29 ["label"]
       66 LOADK                            R12 K42 ["~/.codex/log"]
       67 SETTABLEKS                       R12 R11 K30 ["indicatorPath"]
       69 DUPTABLE                         R12 K44 [{"configPath", "kind", "checkEnabledAsync", "setEnabledAsync"}]
       70 LOADK                            R13 K45 ["~/.codex/config.toml"]
       71 SETTABLEKS                       R13 R12 K43 ["configPath"]
       73 LOADK                            R13 K40 ["toggle"]
       74 SETTABLEKS                       R13 R12 K35 ["kind"]
       76 SETTABLEKS                       R7 R12 K37 ["checkEnabledAsync"]
       78 SETTABLEKS                       R8 R12 K38 ["setEnabledAsync"]
       80 SETTABLEKS                       R12 R11 K31 ["data"]
       82 JUMP                             ; [+17]
       83 DUPTABLE                         R11 K32 [{"label", "indicatorPath", "data"}]
       84 LOADK                            R12 K46 ["Codex CLI"]
       85 SETTABLEKS                       R12 R11 K29 ["label"]
       87 LOADK                            R12 K42 ["~/.codex/log"]
       88 SETTABLEKS                       R12 R11 K30 ["indicatorPath"]
       90 DUPTABLE                         R12 K48 [{"kind", "formatCommand"}]
       91 LOADK                            R13 K49 ["command"]
       92 SETTABLEKS                       R13 R12 K35 ["kind"]
       94 DUPCLOSURE                       R13 K50 [PROTO_7]
       95 CAPTURE                          VAL R9
       96 SETTABLEKS                       R13 R12 K47 ["formatCommand"]
       98 SETTABLEKS                       R12 R11 K31 ["data"]
      100 SETTABLEKS                       R11 R10 K20 ["codex"]
      102 DUPTABLE                         R11 K32 [{"label", "indicatorPath", "data"}]
      103 LOADK                            R12 K51 ["Claude Code"]
      104 SETTABLEKS                       R12 R11 K29 ["label"]
      106 LOADK                            R12 K52 ["~/.claude.json"]
      107 SETTABLEKS                       R12 R11 K30 ["indicatorPath"]
      109 DUPTABLE                         R12 K48 [{"kind", "formatCommand"}]
      110 LOADK                            R13 K49 ["command"]
      111 SETTABLEKS                       R13 R12 K35 ["kind"]
      113 DUPCLOSURE                       R13 K53 [PROTO_8]
      114 CAPTURE                          VAL R9
      115 SETTABLEKS                       R13 R12 K47 ["formatCommand"]
      117 SETTABLEKS                       R12 R11 K31 ["data"]
      119 SETTABLEKS                       R11 R10 K21 ["claude_code"]
      121 DUPTABLE                         R11 K32 [{"label", "indicatorPath", "data"}]
      122 LOADK                            R12 K54 ["Claude Desktop"]
      123 SETTABLEKS                       R12 R11 K29 ["label"]
      125 LOADK                            R12 K55 ["~/Library/Application Support/Claude/claude_desktop_config.json"]
      126 SETTABLEKS                       R12 R11 K30 ["indicatorPath"]
      128 DUPTABLE                         R12 K56 [{"kind", "checkEnabledAsync", "setEnabledAsync"}]
      129 LOADK                            R13 K40 ["toggle"]
      130 SETTABLEKS                       R13 R12 K35 ["kind"]
      132 SETTABLEKS                       R5 R12 K37 ["checkEnabledAsync"]
      134 SETTABLEKS                       R6 R12 K38 ["setEnabledAsync"]
      136 SETTABLEKS                       R12 R11 K31 ["data"]
      138 SETTABLEKS                       R11 R10 K22 ["claude_desktop_mac"]
      140 DUPTABLE                         R11 K32 [{"label", "indicatorPath", "data"}]
      141 LOADK                            R12 K54 ["Claude Desktop"]
      142 SETTABLEKS                       R12 R11 K29 ["label"]
      144 LOADK                            R12 K57 ["%LOCALAPPDATA%\\Packages\\Claude_*\\LocalCache\\Roaming\\Claude\\claude_desktop_config.json"]
      145 SETTABLEKS                       R12 R11 K30 ["indicatorPath"]
      147 DUPTABLE                         R12 K56 [{"kind", "checkEnabledAsync", "setEnabledAsync"}]
      148 LOADK                            R13 K40 ["toggle"]
      149 SETTABLEKS                       R13 R12 K35 ["kind"]
      151 SETTABLEKS                       R5 R12 K37 ["checkEnabledAsync"]
      153 SETTABLEKS                       R6 R12 K38 ["setEnabledAsync"]
      155 SETTABLEKS                       R12 R11 K31 ["data"]
      157 SETTABLEKS                       R11 R10 K23 ["claude_desktop_windows"]
      159 DUPTABLE                         R11 K32 [{"label", "indicatorPath", "data"}]
      160 LOADK                            R12 K58 ["Cursor"]
      161 SETTABLEKS                       R12 R11 K29 ["label"]
      163 LOADK                            R12 K59 ["~/.cursor"]
      164 SETTABLEKS                       R12 R11 K30 ["indicatorPath"]
      166 DUPTABLE                         R12 K44 [{"configPath", "kind", "checkEnabledAsync", "setEnabledAsync"}]
      167 LOADK                            R13 K60 ["~/.cursor/mcp.json"]
      168 SETTABLEKS                       R13 R12 K43 ["configPath"]
      170 LOADK                            R13 K40 ["toggle"]
      171 SETTABLEKS                       R13 R12 K35 ["kind"]
      173 SETTABLEKS                       R5 R12 K37 ["checkEnabledAsync"]
      175 SETTABLEKS                       R6 R12 K38 ["setEnabledAsync"]
      177 SETTABLEKS                       R12 R11 K31 ["data"]
      179 SETTABLEKS                       R11 R10 K24 ["cursor"]
      181 DUPTABLE                         R11 K32 [{"label", "indicatorPath", "data"}]
      182 LOADK                            R12 K61 ["Gemini CLI"]
      183 SETTABLEKS                       R12 R11 K29 ["label"]
      185 LOADK                            R12 K62 ["~/.gemini/settings.json"]
      186 SETTABLEKS                       R12 R11 K30 ["indicatorPath"]
      188 DUPTABLE                         R12 K48 [{"kind", "formatCommand"}]
      189 LOADK                            R13 K49 ["command"]
      190 SETTABLEKS                       R13 R12 K35 ["kind"]
      192 DUPCLOSURE                       R13 K63 [PROTO_9]
      193 CAPTURE                          VAL R9
      194 SETTABLEKS                       R13 R12 K47 ["formatCommand"]
      196 SETTABLEKS                       R12 R11 K31 ["data"]
      198 SETTABLEKS                       R11 R10 K25 ["gemini"]
      200 DUPTABLE                         R11 K32 [{"label", "indicatorPath", "data"}]
      201 LOADK                            R12 K64 ["Visual Studio Code"]
      202 SETTABLEKS                       R12 R11 K29 ["label"]
      204 LOADK                            R12 K65 ["~/Library/Application Support/Code/User"]
      205 SETTABLEKS                       R12 R11 K30 ["indicatorPath"]
      207 DUPTABLE                         R12 K67 [{"configPath", "kind", "mcpJSONEntry", "checkEnabledAsync", "setEnabledAsync"}]
      208 LOADK                            R13 K68 ["~/Library/Application Support/Code/User/mcp.json"]
      209 SETTABLEKS                       R13 R12 K43 ["configPath"]
      211 LOADK                            R13 K40 ["toggle"]
      212 SETTABLEKS                       R13 R12 K35 ["kind"]
      214 LOADK                            R13 K69 ["servers"]
      215 SETTABLEKS                       R13 R12 K66 ["mcpJSONEntry"]
      217 SETTABLEKS                       R5 R12 K37 ["checkEnabledAsync"]
      219 SETTABLEKS                       R6 R12 K38 ["setEnabledAsync"]
      221 SETTABLEKS                       R12 R11 K31 ["data"]
      223 SETTABLEKS                       R11 R10 K26 ["vscode_mac"]
      225 DUPTABLE                         R11 K32 [{"label", "indicatorPath", "data"}]
      226 LOADK                            R12 K64 ["Visual Studio Code"]
      227 SETTABLEKS                       R12 R11 K29 ["label"]
      229 LOADK                            R12 K70 ["%APPDATA%\\Code\\User"]
      230 SETTABLEKS                       R12 R11 K30 ["indicatorPath"]
      232 DUPTABLE                         R12 K67 [{"configPath", "kind", "mcpJSONEntry", "checkEnabledAsync", "setEnabledAsync"}]
      233 LOADK                            R13 K71 ["%APPDATA%\\Code\\User\\mcp.json"]
      234 SETTABLEKS                       R13 R12 K43 ["configPath"]
      236 LOADK                            R13 K40 ["toggle"]
      237 SETTABLEKS                       R13 R12 K35 ["kind"]
      239 LOADK                            R13 K69 ["servers"]
      240 SETTABLEKS                       R13 R12 K66 ["mcpJSONEntry"]
      242 SETTABLEKS                       R5 R12 K37 ["checkEnabledAsync"]
      244 SETTABLEKS                       R6 R12 K38 ["setEnabledAsync"]
      246 SETTABLEKS                       R12 R11 K31 ["data"]
      248 SETTABLEKS                       R11 R10 K27 ["vscode_windows"]
      250 NEWTABLE                         R11 0 0
      252 MOVE                             R12 R10
      253 LOADNIL                          R13
      254 LOADNIL                          R14
      255 FORGPREP                         R12
      256 SETTABLEKS                       R15 R16 K72 ["id"]
      258 GETIMPORT                        R17 K75 [table.freeze]
      260 MOVE                             R18 R16
      261 CALL                             R17 1 0
      262 FASTCALL2                        TABLE_INSERT R11 R16 ; [+5]
      264 MOVE                             R18 R11
      265 MOVE                             R19 R16
      266 GETIMPORT                        R17 K77 [table.insert]
      268 CALL                             R17 2 0
      269 FORGLOOP                         R12 2 ; [-14]
      271 GETIMPORT                        R12 K79 [table.sort]
      273 MOVE                             R13 R11
      274 DUPCLOSURE                       R14 K80 [PROTO_10]
      275 CALL                             R12 2 0
      276 GETIMPORT                        R12 K75 [table.freeze]
      278 MOVE                             R13 R11
      279 CALL                             R12 1 0
      280 RETURN                           R11 1
