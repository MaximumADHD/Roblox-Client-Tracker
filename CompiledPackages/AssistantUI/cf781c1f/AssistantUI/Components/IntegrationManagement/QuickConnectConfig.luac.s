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
        0 GETTABLEKS                       R2 R0 K0 ["indicatorPath"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R1 K1 ["quickConnect"]
        7 GETTABLEKS                       R7 R7 K2 ["fileExistsAsync"]
        9 GETTABLEKS                       R8 R6 K3 ["indicator"]
       11 CALL                             R7 1 1
       12 JUMPIFNOT                        R7 ; [+6]
       13 GETTABLEKS                       R7 R6 K4 ["config"]
       15 JUMPIF                           R7 ; [+2]
       16 GETTABLEKS                       R7 R6 K3 ["indicator"]
       18 RETURN                           R7 1
       19 FORGLOOP                         R2 2 ; [-15]
       21 LOADNIL                          R2
       22 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R5 R1 K0 ["data"]
        2 GETTABLEKS                       R5 R5 K1 ["kind"]
        4 JUMPIFEQKS                       R5 K2 ["toggle"] ; [+2]
        6 LOADB                            R4 0 +1
        7 LOADB                            R4 1
        8 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       10 LOADK                            R5 K3 ["checkEnabledAsync called on non-toggle entry"]
       11 GETIMPORT                        R3 K5 [assert]
       13 CALL                             R3 2 0
       14 GETUPVAL                         R3 0
       15 MOVE                             R4 R1
       16 MOVE                             R5 R0
       17 CALL                             R3 2 1
       18 JUMPIF                           R3 ; [+2]
       19 LOADB                            R4 0
       20 RETURN                           R4 1
       21 GETTABLEKS                       R4 R0 K6 ["quickConnect"]
       23 GETTABLEKS                       R4 R4 K7 ["readFileAsync"]
       25 MOVE                             R5 R3
       26 CALL                             R4 1 1
       27 JUMPIFNOT                        R4 ; [+2]
       28 JUMPIFNOTEQKS                    R4 K8 [""] ; [+3]
       30 LOADB                            R5 0
       31 RETURN                           R5 1
       32 GETTABLEKS                       R6 R1 K0 ["data"]
       34 GETTABLEKS                       R6 R6 K10 ["mcpJSONEntry"]
       36 ORK                              R5 R6 K9 ["mcpServers"]
       37 GETTABLEKS                       R6 R0 K11 ["json"]
       39 GETTABLEKS                       R6 R6 K12 ["decodeAsync"]
       41 MOVE                             R7 R4
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R8 R2 K9 ["mcpServers"]
       45 LOADNIL                          R9
       46 LOADNIL                          R10
       47 FORGPREP                         R8
       48 MOVE                             R7 R11
       49 JUMP                             ; [+10]
       50 FORGLOOP                         R8 2 ; [-3]
       52 LOADB                            R9 0
       53 FASTCALL2K                       ASSERT R9 K13 ; [+4]
       55 LOADK                            R10 K13 ["No MCP servers found in instructions"]
       56 GETIMPORT                        R8 K5 [assert]
       58 CALL                             R8 2 0
       59 LOADNIL                          R7
       60 MOVE                             R8 R6
       61 JUMPIFNOT                        R8 ; [+4]
       62 GETTABLE                         R8 R6 R5
       63 JUMPIFNOT                        R8 ; [+2]
       64 GETTABLE                         R9 R6 R5
       65 GETTABLE                         R8 R9 R7
       66 RETURN                           R8 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["json"]
        3 GETTABLEKS                       R0 R0 K1 ["decodeAsync"]
        5 GETUPVAL                         R2 1
        6 ORK                              R1 R2 K2 ["{}"]
        7 CALL                             R0 1 1
        8 JUMPIF                           R0 ; [+2]
        9 NEWTABLE                         R0 0 0
       11 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 JUMPIFNOT                        R1 ; [+7]
        7 FASTCALL1                        TYPE R2 ; [+3]
        8 MOVE                             R4 R2
        9 GETIMPORT                        R3 K3 [type]
       11 CALL                             R3 1 1
       12 JUMPIFEQKS                       R3 K4 ["table"] ; [+3]
       14 NEWTABLE                         R2 0 0
       16 GETUPVAL                         R3 1
       17 JUMPIF                           R3 ; [+11]
       18 JUMPIFNOT                        R2 ; [+8]
       19 GETUPVAL                         R4 2
       20 GETTABLE                         R3 R2 R4
       21 JUMPIFNOT                        R3 ; [+5]
       22 GETUPVAL                         R5 2
       23 GETTABLE                         R4 R2 R5
       24 GETUPVAL                         R5 3
       25 GETTABLE                         R3 R4 R5
       26 JUMPIF                           R3 ; [+2]
       27 LOADNIL                          R3
       28 RETURN                           R3 1
       29 GETUPVAL                         R3 2
       30 GETUPVAL                         R5 2
       31 GETTABLE                         R4 R2 R5
       32 JUMPIF                           R4 ; [+2]
       33 NEWTABLE                         R4 0 0
       35 SETTABLE                         R4 R2 R3
       36 GETUPVAL                         R4 4
       37 GETTABLEKS                       R4 R4 K5 ["mcpServers"]
       39 GETUPVAL                         R5 3
       40 GETTABLE                         R3 R4 R5
       41 GETUPVAL                         R5 2
       42 GETTABLE                         R4 R2 R5
       43 GETUPVAL                         R5 3
       44 GETUPVAL                         R7 1
       45 JUMPIFNOT                        R7 ; [+19]
       46 DUPTABLE                         R6 K9 [{"transport", "command", "args"}]
       47 GETUPVAL                         R8 5
       48 GETTABLEKS                       R8 R8 K10 ["noTransport"]
       50 JUMPIF                           R8 ; [+2]
       51 LOADK                            R7 K11 ["stdio"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R7
       54 SETTABLEKS                       R7 R6 K6 ["transport"]
       56 GETTABLEKS                       R7 R3 K7 ["command"]
       58 SETTABLEKS                       R7 R6 K7 ["command"]
       60 GETTABLEKS                       R7 R3 K8 ["args"]
       62 SETTABLEKS                       R7 R6 K8 ["args"]
       64 JUMP                             ; [+1]
       65 LOADNIL                          R6
       66 SETTABLE                         R6 R4 R5
       67 GETUPVAL                         R4 0
       68 GETTABLEKS                       R4 R4 K12 ["json"]
       70 GETTABLEKS                       R4 R4 K13 ["encodeAsync"]
       72 MOVE                             R5 R2
       73 LOADB                            R6 1
       74 CALL                             R4 2 -1
       75 RETURN                           R4 -1

PROTO_5:
        0 GETTABLEKS                       R6 R1 K0 ["data"]
        2 GETTABLEKS                       R6 R6 K1 ["kind"]
        4 JUMPIFEQKS                       R6 K2 ["toggle"] ; [+2]
        6 LOADB                            R5 0 +1
        7 LOADB                            R5 1
        8 FASTCALL2K                       ASSERT R5 K3 ; [+4]
       10 LOADK                            R6 K3 ["setEnabledAsync called on non-toggle entry"]
       11 GETIMPORT                        R4 K5 [assert]
       13 CALL                             R4 2 0
       14 GETTABLEKS                       R4 R1 K0 ["data"]
       16 GETTABLEKS                       R6 R3 K6 ["mcpServers"]
       18 LOADNIL                          R7
       19 LOADNIL                          R8
       20 FORGPREP                         R6
       21 MOVE                             R5 R9
       22 JUMP                             ; [+10]
       23 FORGLOOP                         R6 2 ; [-3]
       25 LOADB                            R7 0
       26 FASTCALL2K                       ASSERT R7 K7 ; [+4]
       28 LOADK                            R8 K7 ["No MCP servers found in instructions"]
       29 GETIMPORT                        R6 K5 [assert]
       31 CALL                             R6 2 0
       32 LOADNIL                          R5
       33 GETTABLEKS                       R7 R4 K8 ["mcpJSONEntry"]
       35 ORK                              R6 R7 K6 ["mcpServers"]
       36 GETUPVAL                         R7 0
       37 MOVE                             R8 R1
       38 MOVE                             R9 R0
       39 CALL                             R7 2 1
       40 LOADK                            R11 K9 ["Attempting to enable %*, but config file could not be found"]
       41 GETTABLEKS                       R13 R1 K10 ["label"]
       43 NAMECALL                         R11 R11 K11 ["format"]
       45 CALL                             R11 2 1
       46 MOVE                             R10 R11
       47 FASTCALL2                        ASSERT R7 R10 ; [+4]
       49 MOVE                             R9 R7
       50 GETIMPORT                        R8 K5 [assert]
       52 CALL                             R8 2 0
       53 GETTABLEKS                       R8 R0 K12 ["quickConnect"]
       55 GETTABLEKS                       R8 R8 K13 ["modifyFileAsync"]
       57 MOVE                             R9 R7
       58 NEWCLOSURE                       R10 P0
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R4
       65 CALL                             R8 2 0
       66 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R5 R1 K0 ["data"]
        2 GETTABLEKS                       R5 R5 K1 ["kind"]
        4 JUMPIFEQKS                       R5 K2 ["toggle"] ; [+2]
        6 LOADB                            R4 0 +1
        7 LOADB                            R4 1
        8 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       10 LOADK                            R5 K3 ["checkEnabledCodex called on non-toggle entry"]
       11 GETIMPORT                        R3 K5 [assert]
       13 CALL                             R3 2 0
       14 GETUPVAL                         R3 0
       15 MOVE                             R4 R1
       16 MOVE                             R5 R0
       17 CALL                             R3 2 1
       18 LOADK                            R7 K6 ["Attempting to check if %* is enabled, but config file could not be found"]
       19 GETTABLEKS                       R9 R1 K7 ["label"]
       21 NAMECALL                         R7 R7 K8 ["format"]
       23 CALL                             R7 2 1
       24 MOVE                             R6 R7
       25 FASTCALL2                        ASSERT R3 R6 ; [+4]
       27 MOVE                             R5 R3
       28 GETIMPORT                        R4 K5 [assert]
       30 CALL                             R4 2 0
       31 GETTABLEKS                       R4 R0 K9 ["quickConnect"]
       33 GETTABLEKS                       R4 R4 K10 ["readFileAsync"]
       35 MOVE                             R5 R3
       36 CALL                             R4 1 1
       37 JUMPIFNOT                        R4 ; [+2]
       38 JUMPIFNOTEQKS                    R4 K11 [""] ; [+3]
       40 LOADB                            R5 0
       41 RETURN                           R5 1
       42 GETTABLEKS                       R6 R2 K12 ["mcpServers"]
       44 LOADNIL                          R7
       45 LOADNIL                          R8
       46 FORGPREP                         R6
       47 MOVE                             R5 R9
       48 JUMP                             ; [+10]
       49 FORGLOOP                         R6 2 ; [-3]
       51 LOADB                            R7 0
       52 FASTCALL2K                       ASSERT R7 K13 ; [+4]
       54 LOADK                            R8 K13 ["No MCP servers found in instructions"]
       55 GETIMPORT                        R6 K5 [assert]
       57 CALL                             R6 2 0
       58 LOADNIL                          R5
       59 LOADK                            R10 K14 ["[mcp_servers.%*]"]
       60 MOVE                             R12 R5
       61 NAMECALL                         R10 R10 K8 ["format"]
       63 CALL                             R10 2 1
       64 MOVE                             R9 R10
       65 LOADN                            R10 1
       66 LOADB                            R11 1
       67 NAMECALL                         R7 R4 K15 ["find"]
       69 CALL                             R7 4 1
       70 JUMPIFNOTEQKNIL                  R7 ; [+2]
       72 LOADB                            R6 0 +1
       73 LOADB                            R6 1
       74 RETURN                           R6 1

PROTO_7:
        0 ORK                              R1 R0 K0 [""]
        1 LOADK                            R3 K1 ["\r\n"]
        2 LOADK                            R4 K2 ["\n"]
        3 NAMECALL                         R1 R1 K3 ["gsub"]
        5 CALL                             R1 3 1
        6 LOADK                            R3 K4 ["\r"]
        7 LOADK                            R4 K2 ["\n"]
        8 NAMECALL                         R1 R1 K3 ["gsub"]
       10 CALL                             R1 3 1
       11 GETUPVAL                         R5 0
       12 LOADN                            R6 1
       13 LOADB                            R7 1
       14 NAMECALL                         R3 R1 K5 ["find"]
       16 CALL                             R3 4 1
       17 JUMPIFNOTEQKNIL                  R3 ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 GETUPVAL                         R3 1
       22 JUMPIF                           R3 ; [+73]
       23 JUMPIF                           R2 ; [+2]
       24 LOADNIL                          R3
       25 RETURN                           R3 1
       26 NEWTABLE                         R3 0 0
       28 LOADB                            R4 0
       29 MOVE                             R6 R1
       30 LOADK                            R7 K2 ["\n"]
       31 CONCAT                           R5 R6 R7
       32 LOADK                            R7 K6 ["([^\n]*)\n"]
       33 NAMECALL                         R5 R5 K7 ["gmatch"]
       35 CALL                             R5 2 3
       36 FORGPREP                         R5
       37 LOADK                            R12 K8 ["^%s*(.-)%s*$"]
       38 NAMECALL                         R10 R8 K9 ["match"]
       40 CALL                             R10 2 1
       41 GETUPVAL                         R11 0
       42 JUMPIFNOTEQ                      R10 R11 ; [+3]
       44 LOADB                            R4 1
       45 JUMP                             ; [+30]
       46 JUMPIFNOT                        R4 ; [+21]
       47 JUMPIFNOT                        R10 ; [+20]
       48 LENGTH                           R11 R10
       49 LOADN                            R12 0
       50 JUMPIFNOTLT                      R12 R11 ; [+17]
       52 LOADN                            R13 1
       53 LOADN                            R14 1
       54 NAMECALL                         R11 R10 K10 ["sub"]
       56 CALL                             R11 3 1
       57 JUMPIFNOTEQKS                    R11 K11 ["["] ; [+10]
       59 LOADB                            R4 0
       60 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       62 MOVE                             R12 R3
       63 MOVE                             R13 R8
       64 GETIMPORT                        R11 K14 [table.insert]
       66 CALL                             R11 2 0
       67 JUMP                             ; [+8]
       68 JUMPIF                           R4 ; [+7]
       69 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       71 MOVE                             R12 R3
       72 MOVE                             R13 R8
       73 GETIMPORT                        R11 K14 [table.insert]
       75 CALL                             R11 2 0
       76 FORGLOOP                         R5 1 ; [-40]
       78 GETIMPORT                        R5 K16 [table.concat]
       80 MOVE                             R6 R3
       81 LOADK                            R7 K2 ["\n"]
       82 CALL                             R5 2 1
       83 LOADK                            R7 K17 ["\n+$"]
       84 LOADK                            R8 K0 [""]
       85 NAMECALL                         R5 R5 K3 ["gsub"]
       87 CALL                             R5 3 1
       88 JUMPIFNOTEQKS                    R5 K0 [""] ; [+3]
       90 LOADK                            R6 K0 [""]
       91 RETURN                           R6 1
       92 MOVE                             R7 R5
       93 LOADK                            R8 K2 ["\n"]
       94 CONCAT                           R6 R7 R8
       95 RETURN                           R6 1
       96 JUMPIFNOT                        R2 ; [+2]
       97 LOADNIL                          R3
       98 RETURN                           R3 1
       99 GETUPVAL                         R3 2
      100 GETTABLEKS                       R3 R3 K18 ["args"]
      102 LOADK                            R4 K19 ["[]"]
      103 FASTCALL1                        TYPEOF R3 ; [+3]
      104 MOVE                             R6 R3
      105 GETIMPORT                        R5 K21 [typeof]
      107 CALL                             R5 1 1
      108 JUMPIFNOTEQKS                    R5 K12 ["table"] ; [+39]
      110 NEWTABLE                         R5 0 0
      112 MOVE                             R6 R3
      113 LOADNIL                          R7
      114 LOADNIL                          R8
      115 FORGPREP                         R6
      116 LOADK                            R14 K22 ["\""]
      117 LOADK                            R19 K23 ["\\"]
      118 LOADK                            R20 K24 ["\\\\"]
      119 NAMECALL                         R17 R10 K3 ["gsub"]
      121 CALL                             R17 3 1
      122 LOADK                            R19 K22 ["\""]
      123 LOADK                            R20 K25 ["\\\""]
      124 NAMECALL                         R17 R17 K3 ["gsub"]
      126 CALL                             R17 3 1
      127 MOVE                             R15 R17
      128 LOADK                            R16 K22 ["\""]
      129 CONCAT                           R13 R14 R16
      130 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
      132 MOVE                             R12 R5
      133 GETIMPORT                        R11 K14 [table.insert]
      135 CALL                             R11 2 0
      136 FORGLOOP                         R6 2 ; [-21]
      138 LOADK                            R6 K26 ["[%*]"]
      139 GETIMPORT                        R8 K16 [table.concat]
      141 MOVE                             R9 R5
      142 LOADK                            R10 K27 [", "]
      143 CALL                             R8 2 1
      144 NAMECALL                         R6 R6 K28 ["format"]
      146 CALL                             R6 2 1
      147 MOVE                             R4 R6
      148 GETUPVAL                         R5 2
      149 GETTABLEKS                       R5 R5 K29 ["command"]
      151 LOADK                            R7 K23 ["\\"]
      152 LOADK                            R8 K24 ["\\\\"]
      153 NAMECALL                         R5 R5 K3 ["gsub"]
      155 CALL                             R5 3 1
      156 LOADK                            R7 K22 ["\""]
      157 LOADK                            R8 K25 ["\\\""]
      158 NAMECALL                         R5 R5 K3 ["gsub"]
      160 CALL                             R5 3 1
      161 LOADK                            R7 K30 ["[mcp_servers.%*]\nargs = %*\ncommand = \"%*\"\n"]
      162 GETUPVAL                         R9 3
      163 MOVE                             R10 R4
      164 MOVE                             R11 R5
      165 NAMECALL                         R7 R7 K28 ["format"]
      167 CALL                             R7 4 1
      168 MOVE                             R6 R7
      169 LOADK                            R9 K17 ["\n+$"]
      170 LOADK                            R10 K0 [""]
      171 NAMECALL                         R7 R1 K3 ["gsub"]
      173 CALL                             R7 3 1
      174 JUMPIFNOTEQKS                    R7 K0 [""] ; [+3]
      176 MOVE                             R8 R6
      177 RETURN                           R8 1
      178 LOADK                            R9 K31 ["%*\n\n%*"]
      179 MOVE                             R11 R7
      180 MOVE                             R12 R6
      181 NAMECALL                         R9 R9 K28 ["format"]
      183 CALL                             R9 3 1
      184 MOVE                             R8 R9
      185 RETURN                           R8 1

PROTO_8:
        0 GETTABLEKS                       R6 R1 K0 ["data"]
        2 GETTABLEKS                       R6 R6 K1 ["kind"]
        4 JUMPIFEQKS                       R6 K2 ["toggle"] ; [+2]
        6 LOADB                            R5 0 +1
        7 LOADB                            R5 1
        8 FASTCALL2K                       ASSERT R5 K3 ; [+4]
       10 LOADK                            R6 K3 ["setEnabledCodex called on non-toggle entry"]
       11 GETIMPORT                        R4 K5 [assert]
       13 CALL                             R4 2 0
       14 GETTABLEKS                       R5 R3 K6 ["mcpServers"]
       16 LOADNIL                          R6
       17 LOADNIL                          R7
       18 FORGPREP                         R5
       19 MOVE                             R4 R8
       20 JUMP                             ; [+10]
       21 FORGLOOP                         R5 2 ; [-3]
       23 LOADB                            R6 0
       24 FASTCALL2K                       ASSERT R6 K7 ; [+4]
       26 LOADK                            R7 K7 ["No MCP servers found in instructions"]
       27 GETIMPORT                        R5 K5 [assert]
       29 CALL                             R5 2 0
       30 LOADNIL                          R4
       31 GETTABLEKS                       R6 R3 K6 ["mcpServers"]
       33 GETTABLE                         R5 R6 R4
       34 LOADK                            R7 K8 ["[mcp_servers.%*]"]
       35 MOVE                             R9 R4
       36 NAMECALL                         R7 R7 K9 ["format"]
       38 CALL                             R7 2 1
       39 MOVE                             R6 R7
       40 GETUPVAL                         R7 0
       41 MOVE                             R8 R1
       42 MOVE                             R9 R0
       43 CALL                             R7 2 1
       44 LOADK                            R11 K10 ["Attempting to enable %*, but config file could not be found"]
       45 GETTABLEKS                       R13 R1 K11 ["label"]
       47 NAMECALL                         R11 R11 K9 ["format"]
       49 CALL                             R11 2 1
       50 MOVE                             R10 R11
       51 FASTCALL2                        ASSERT R7 R10 ; [+4]
       53 MOVE                             R9 R7
       54 GETIMPORT                        R8 K5 [assert]
       56 CALL                             R8 2 0
       57 GETTABLEKS                       R8 R0 K12 ["quickConnect"]
       59 GETTABLEKS                       R8 R8 K13 ["modifyFileAsync"]
       61 MOVE                             R9 R7
       62 NEWCLOSURE                       R10 P0
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R4
       67 CALL                             R8 2 0
       68 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 LOADK                            R2 K0 ["claude mcp add  --transport stdio Roblox_Studio -- %*"]
        1 GETUPVAL                         R4 0
        2 MOVE                             R5 R0
        3 CALL                             R4 1 1
        4 NAMECALL                         R2 R2 K1 ["format"]
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 RETURN                           R1 1

PROTO_11:
        0 LOADK                            R2 K0 ["gemini mcp add --transport stdio Roblox_Studio %*"]
        1 GETUPVAL                         R4 0
        2 MOVE                             R5 R0
        3 CALL                             R4 1 1
        4 NAMECALL                         R2 R2 K1 ["format"]
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R2 R1 K0 ["indicatorPath"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 GETTABLEKS                       R7 R0 K1 ["quickConnect"]
        7 GETTABLEKS                       R7 R7 K2 ["fileExistsAsync"]
        9 GETTABLEKS                       R8 R6 K3 ["indicator"]
       11 CALL                             R7 1 1
       12 JUMPIFNOT                        R7 ; [+2]
       13 LOADB                            R7 1
       14 RETURN                           R7 1
       15 FORGLOOP                         R2 2 ; [-11]
       17 LOADB                            R2 0
       18 RETURN                           R2 1

PROTO_13:
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
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["ExternalServerContext"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_0]
       24 DUPCLOSURE                       R4 K12 [PROTO_1]
       25 DUPCLOSURE                       R5 K13 [PROTO_2]
       26 CAPTURE                          VAL R4
       27 DUPCLOSURE                       R6 K14 [PROTO_5]
       28 CAPTURE                          VAL R4
       29 DUPCLOSURE                       R7 K15 [PROTO_6]
       30 CAPTURE                          VAL R4
       31 DUPCLOSURE                       R8 K16 [PROTO_8]
       32 CAPTURE                          VAL R4
       33 DUPCLOSURE                       R9 K17 [PROTO_9]
       34 DUPTABLE                         R10 K25 [{"antigravity", "codex", "claude_code", "claude_desktop", "cursor", "gemini", "vscode"}]
       35 DUPTABLE                         R11 K29 [{"label", "indicatorPath", "data"}]
       36 LOADK                            R12 K30 ["Antigravity"]
       37 SETTABLEKS                       R12 R11 K26 ["label"]
       39 NEWTABLE                         R12 0 1
       41 DUPTABLE                         R13 K32 [{"indicator"}]
       42 LOADK                            R14 K33 ["~/.gemini/antigravity/mcp_config.json"]
       43 SETTABLEKS                       R14 R13 K31 ["indicator"]
       45 SETLIST                          R12 R13 1 [1]
       47 SETTABLEKS                       R12 R11 K27 ["indicatorPath"]
       49 DUPTABLE                         R12 K38 [{"kind", "noTransport", "checkEnabledAsync", "setEnabledAsync"}]
       50 LOADK                            R13 K39 ["toggle"]
       51 SETTABLEKS                       R13 R12 K34 ["kind"]
       53 LOADB                            R13 1
       54 SETTABLEKS                       R13 R12 K35 ["noTransport"]
       56 SETTABLEKS                       R5 R12 K36 ["checkEnabledAsync"]
       58 SETTABLEKS                       R6 R12 K37 ["setEnabledAsync"]
       60 SETTABLEKS                       R12 R11 K28 ["data"]
       62 SETTABLEKS                       R11 R10 K18 ["antigravity"]
       64 DUPTABLE                         R11 K29 [{"label", "indicatorPath", "data"}]
       65 LOADK                            R12 K40 ["Codex"]
       66 SETTABLEKS                       R12 R11 K26 ["label"]
       68 NEWTABLE                         R12 0 2
       70 DUPTABLE                         R13 K42 [{"indicator", "config"}]
       71 LOADK                            R14 K43 ["~/.codex/tmp"]
       72 SETTABLEKS                       R14 R13 K31 ["indicator"]
       74 LOADK                            R14 K44 ["~/.codex/config.toml"]
       75 SETTABLEKS                       R14 R13 K41 ["config"]
       77 DUPTABLE                         R14 K42 [{"indicator", "config"}]
       78 LOADK                            R15 K45 ["%CODEX_HOME%\\tmp"]
       79 SETTABLEKS                       R15 R14 K31 ["indicator"]
       81 LOADK                            R15 K46 ["%CODEX_HOME%\\config.toml"]
       82 SETTABLEKS                       R15 R14 K41 ["config"]
       84 SETLIST                          R12 R13 2 [1]
       86 SETTABLEKS                       R12 R11 K27 ["indicatorPath"]
       88 DUPTABLE                         R12 K47 [{"kind", "checkEnabledAsync", "setEnabledAsync"}]
       89 LOADK                            R13 K39 ["toggle"]
       90 SETTABLEKS                       R13 R12 K34 ["kind"]
       92 SETTABLEKS                       R7 R12 K36 ["checkEnabledAsync"]
       94 SETTABLEKS                       R8 R12 K37 ["setEnabledAsync"]
       96 SETTABLEKS                       R12 R11 K28 ["data"]
       98 SETTABLEKS                       R11 R10 K19 ["codex"]
      100 DUPTABLE                         R11 K29 [{"label", "indicatorPath", "data"}]
      101 LOADK                            R12 K48 ["Claude Code CLI"]
      102 SETTABLEKS                       R12 R11 K26 ["label"]
      104 NEWTABLE                         R12 0 2
      106 DUPTABLE                         R13 K32 [{"indicator"}]
      107 LOADK                            R14 K49 ["~/.claude.json"]
      108 SETTABLEKS                       R14 R13 K31 ["indicator"]
      110 DUPTABLE                         R14 K32 [{"indicator"}]
      111 LOADK                            R15 K50 ["%CLAUDE_CONFIG_DIR%\\.claude.json"]
      112 SETTABLEKS                       R15 R14 K31 ["indicator"]
      114 SETLIST                          R12 R13 2 [1]
      116 SETTABLEKS                       R12 R11 K27 ["indicatorPath"]
      118 DUPTABLE                         R12 K52 [{"kind", "formatCommand"}]
      119 LOADK                            R13 K53 ["command"]
      120 SETTABLEKS                       R13 R12 K34 ["kind"]
      122 DUPCLOSURE                       R13 K54 [PROTO_10]
      123 CAPTURE                          VAL R9
      124 SETTABLEKS                       R13 R12 K51 ["formatCommand"]
      126 SETTABLEKS                       R12 R11 K28 ["data"]
      128 SETTABLEKS                       R11 R10 K20 ["claude_code"]
      130 DUPTABLE                         R11 K29 [{"label", "indicatorPath", "data"}]
      131 LOADK                            R12 K55 ["Claude Desktop"]
      132 SETTABLEKS                       R12 R11 K26 ["label"]
      134 NEWTABLE                         R12 0 2
      136 DUPTABLE                         R13 K32 [{"indicator"}]
      137 LOADK                            R14 K56 ["~/Library/Application Support/Claude/claude_desktop_config.json"]
      138 SETTABLEKS                       R14 R13 K31 ["indicator"]
      140 DUPTABLE                         R14 K32 [{"indicator"}]
      141 LOADK                            R15 K57 ["%LOCALAPPDATA%\\Packages\\Claude_*\\LocalCache\\Roaming\\Claude\\claude_desktop_config.json"]
      142 SETTABLEKS                       R15 R14 K31 ["indicator"]
      144 SETLIST                          R12 R13 2 [1]
      146 SETTABLEKS                       R12 R11 K27 ["indicatorPath"]
      148 DUPTABLE                         R12 K47 [{"kind", "checkEnabledAsync", "setEnabledAsync"}]
      149 LOADK                            R13 K39 ["toggle"]
      150 SETTABLEKS                       R13 R12 K34 ["kind"]
      152 SETTABLEKS                       R5 R12 K36 ["checkEnabledAsync"]
      154 SETTABLEKS                       R6 R12 K37 ["setEnabledAsync"]
      156 SETTABLEKS                       R12 R11 K28 ["data"]
      158 SETTABLEKS                       R11 R10 K21 ["claude_desktop"]
      160 DUPTABLE                         R11 K29 [{"label", "indicatorPath", "data"}]
      161 LOADK                            R12 K58 ["Cursor"]
      162 SETTABLEKS                       R12 R11 K26 ["label"]
      164 NEWTABLE                         R12 0 1
      166 DUPTABLE                         R13 K42 [{"indicator", "config"}]
      167 LOADK                            R14 K59 ["~/.cursor"]
      168 SETTABLEKS                       R14 R13 K31 ["indicator"]
      170 LOADK                            R14 K60 ["~/.cursor/mcp.json"]
      171 SETTABLEKS                       R14 R13 K41 ["config"]
      173 SETLIST                          R12 R13 1 [1]
      175 SETTABLEKS                       R12 R11 K27 ["indicatorPath"]
      177 DUPTABLE                         R12 K47 [{"kind", "checkEnabledAsync", "setEnabledAsync"}]
      178 LOADK                            R13 K39 ["toggle"]
      179 SETTABLEKS                       R13 R12 K34 ["kind"]
      181 SETTABLEKS                       R5 R12 K36 ["checkEnabledAsync"]
      183 SETTABLEKS                       R6 R12 K37 ["setEnabledAsync"]
      185 SETTABLEKS                       R12 R11 K28 ["data"]
      187 SETTABLEKS                       R11 R10 K22 ["cursor"]
      189 DUPTABLE                         R11 K29 [{"label", "indicatorPath", "data"}]
      190 LOADK                            R12 K61 ["Gemini CLI"]
      191 SETTABLEKS                       R12 R11 K26 ["label"]
      193 NEWTABLE                         R12 0 1
      195 DUPTABLE                         R13 K32 [{"indicator"}]
      196 LOADK                            R14 K62 ["~/.gemini/settings.json"]
      197 SETTABLEKS                       R14 R13 K31 ["indicator"]
      199 SETLIST                          R12 R13 1 [1]
      201 SETTABLEKS                       R12 R11 K27 ["indicatorPath"]
      203 DUPTABLE                         R12 K52 [{"kind", "formatCommand"}]
      204 LOADK                            R13 K53 ["command"]
      205 SETTABLEKS                       R13 R12 K34 ["kind"]
      207 DUPCLOSURE                       R13 K63 [PROTO_11]
      208 CAPTURE                          VAL R9
      209 SETTABLEKS                       R13 R12 K51 ["formatCommand"]
      211 SETTABLEKS                       R12 R11 K28 ["data"]
      213 SETTABLEKS                       R11 R10 K23 ["gemini"]
      215 DUPTABLE                         R11 K29 [{"label", "indicatorPath", "data"}]
      216 LOADK                            R12 K64 ["Visual Studio Code"]
      217 SETTABLEKS                       R12 R11 K26 ["label"]
      219 NEWTABLE                         R12 0 2
      221 DUPTABLE                         R13 K42 [{"indicator", "config"}]
      222 LOADK                            R14 K65 ["~/Library/Application Support/Code/User"]
      223 SETTABLEKS                       R14 R13 K31 ["indicator"]
      225 LOADK                            R14 K66 ["~/Library/Application Support/Code/User/mcp.json"]
      226 SETTABLEKS                       R14 R13 K41 ["config"]
      228 DUPTABLE                         R14 K42 [{"indicator", "config"}]
      229 LOADK                            R15 K67 ["%APPDATA%\\Code\\User"]
      230 SETTABLEKS                       R15 R14 K31 ["indicator"]
      232 LOADK                            R15 K68 ["%APPDATA%\\Code\\User\\mcp.json"]
      233 SETTABLEKS                       R15 R14 K41 ["config"]
      235 SETLIST                          R12 R13 2 [1]
      237 SETTABLEKS                       R12 R11 K27 ["indicatorPath"]
      239 DUPTABLE                         R12 K70 [{"kind", "mcpJSONEntry", "checkEnabledAsync", "setEnabledAsync"}]
      240 LOADK                            R13 K39 ["toggle"]
      241 SETTABLEKS                       R13 R12 K34 ["kind"]
      243 LOADK                            R13 K71 ["servers"]
      244 SETTABLEKS                       R13 R12 K69 ["mcpJSONEntry"]
      246 SETTABLEKS                       R5 R12 K36 ["checkEnabledAsync"]
      248 SETTABLEKS                       R6 R12 K37 ["setEnabledAsync"]
      250 SETTABLEKS                       R12 R11 K28 ["data"]
      252 SETTABLEKS                       R11 R10 K24 ["vscode"]
      254 DUPCLOSURE                       R11 K72 [PROTO_12]
      255 NEWTABLE                         R12 0 0
      257 MOVE                             R13 R10
      258 LOADNIL                          R14
      259 LOADNIL                          R15
      260 FORGPREP                         R13
      261 SETTABLEKS                       R16 R17 K73 ["id"]
      263 SETTABLEKS                       R11 R17 K74 ["isAvailableAsync"]
      265 GETIMPORT                        R18 K77 [table.freeze]
      267 MOVE                             R19 R17
      268 CALL                             R18 1 0
      269 FASTCALL2                        TABLE_INSERT R12 R17 ; [+5]
      271 MOVE                             R19 R12
      272 MOVE                             R20 R17
      273 GETIMPORT                        R18 K79 [table.insert]
      275 CALL                             R18 2 0
      276 FORGLOOP                         R13 2 ; [-16]
      278 GETIMPORT                        R13 K81 [table.sort]
      280 MOVE                             R14 R12
      281 DUPCLOSURE                       R15 K82 [PROTO_13]
      282 CALL                             R13 2 0
      283 GETIMPORT                        R13 K77 [table.freeze]
      285 MOVE                             R14 R12
      286 CALL                             R13 1 0
      287 RETURN                           R12 1
