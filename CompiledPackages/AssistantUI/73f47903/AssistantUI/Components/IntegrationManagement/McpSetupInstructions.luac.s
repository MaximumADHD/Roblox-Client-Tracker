PROTO_0:
        0 GETIMPORT                        R1 K2 [string.find]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["\x<LS>\x"]
        4 LOADN                            R4 1
        5 LOADB                            R5 1
        6 CALL                             R1 4 2
        7 GETIMPORT                        R3 K2 [string.find]
        9 MOVE                             R4 R0
       10 LOADK                            R5 K4 ["\x<LE>\x"]
       11 LOADN                            R6 1
       12 LOADB                            R7 1
       13 CALL                             R3 4 2
       14 JUMPIFNOT                        R1 ; [+1]
       15 JUMPIF                           R3 ; [+4]
       16 DUPTABLE                         R5 K9 [{["before"], ["link"] = "", ["after"] = ""}]
       17 SETTABLEKS                       R0 R5 K5 ["before"]
       19 RETURN                           R5 1
       20 AND                              R6 R2 R4
       21 FASTCALL2K                       ASSERT R6 K10 ; [+4]
       23 LOADK                            R7 K10 ["Expected openEnd and closeEnd"]
       24 GETIMPORT                        R5 K12 [assert]
       26 CALL                             R5 2 0
       27 DUPTABLE                         R5 K13 [{"before", "link", "after"}]
       28 LOADN                            R8 1
       29 SUBK                             R9 R1 K14 [1]
       30 FASTCALL3                        STRING_SUB R0 R8 R9
       32 MOVE                             R7 R0
       33 GETIMPORT                        R6 K16 [string.sub]
       35 CALL                             R6 3 1
       36 SETTABLEKS                       R6 R5 K5 ["before"]
       38 ADDK                             R8 R2 K14 [1]
       39 SUBK                             R9 R3 K14 [1]
       40 FASTCALL3                        STRING_SUB R0 R8 R9
       42 MOVE                             R7 R0
       43 GETIMPORT                        R6 K16 [string.sub]
       45 CALL                             R6 3 1
       46 SETTABLEKS                       R6 R5 K6 ["link"]
       48 ADDK                             R8 R4 K14 [1]
       49 FASTCALL2                        STRING_SUB R0 R8 ; [+4]
       51 MOVE                             R7 R0
       52 GETIMPORT                        R6 K16 [string.sub]
       54 CALL                             R6 2 1
       55 SETTABLEKS                       R6 R5 K8 ["after"]
       57 RETURN                           R5 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["mcpServers"]
        2 MOVE                             R2 R1
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 FASTCALL1                        TYPEOF R6 ; [+3]
        7 MOVE                             R8 R6
        8 GETIMPORT                        R7 K2 [typeof]
       10 CALL                             R7 1 1
       11 JUMPIFNOTEQKS                    R7 K3 ["table"] ; [+38]
       13 GETTABLEKS                       R8 R6 K4 ["command"]
       15 FASTCALL1                        TYPEOF R8 ; [+2]
       16 GETIMPORT                        R7 K2 [typeof]
       18 CALL                             R7 1 1
       19 JUMPIFNOTEQKS                    R7 K5 ["string"] ; [+30]
       21 GETTABLEKS                       R7 R6 K4 ["command"]
       23 GETTABLEKS                       R9 R6 K6 ["args"]
       25 FASTCALL1                        TYPEOF R9 ; [+2]
       26 GETIMPORT                        R8 K2 [typeof]
       28 CALL                             R8 1 1
       29 JUMPIFNOTEQKS                    R8 K3 ["table"] ; [+19]
       31 GETTABLEKS                       R8 R6 K6 ["args"]
       33 LOADNIL                          R9
       34 LOADNIL                          R10
       35 FORGPREP                         R8
       36 FASTCALL1                        TYPEOF R12 ; [+3]
       37 MOVE                             R14 R12
       38 GETIMPORT                        R13 K2 [typeof]
       40 CALL                             R13 1 1
       41 JUMPIFNOTEQKS                    R13 K5 ["string"] ; [+5]
       43 MOVE                             R13 R7
       44 LOADK                            R14 K7 [" "]
       45 MOVE                             R15 R12
       46 CONCAT                           R7 R13 R15
       47 FORGLOOP                         R8 2 ; [-12]
       49 RETURN                           R7 1
       50 FORGLOOP                         R2 2 ; [-45]
       52 LOADK                            R2 K8 ["No command found?"]
       53 RETURN                           R2 1

PROTO_2:
        0 DUPTABLE                         R1 K3 [{[1], ["copyText"] = }]
        1 SETTABLEKS                       R0 R1 K0 ["text"]
        3 DUPTABLE                         R2 K6 [{"startup", "json"}]
        4 SETTABLEKS                       R1 R2 K4 ["startup"]
        6 SETTABLEKS                       R1 R2 K5 ["json"]
        8 RETURN                           R2 1

PROTO_3:
        0 JUMPIF                           R0 ; [+9]
        1 DUPTABLE                         R4 K3 [{[1], ["copyText"] = }]
        2 SETTABLEKS                       R2 R4 K0 ["text"]
        4 DUPTABLE                         R3 K6 [{"startup", "json"}]
        5 SETTABLEKS                       R4 R3 K4 ["startup"]
        7 SETTABLEKS                       R4 R3 K5 ["json"]
        9 RETURN                           R3 1
       10 GETTABLEKS                       R4 R0 K7 ["error"]
       12 FASTCALL1                        TYPEOF R4 ; [+2]
       13 GETIMPORT                        R3 K9 [typeof]
       15 CALL                             R3 1 1
       16 JUMPIFNOTEQKS                    R3 K10 ["string"] ; [+12]
       18 GETTABLEKS                       R4 R0 K7 ["error"]
       20 DUPTABLE                         R5 K3 [{[1], ["copyText"] = }]
       21 SETTABLEKS                       R4 R5 K0 ["text"]
       23 DUPTABLE                         R3 K6 [{"startup", "json"}]
       24 SETTABLEKS                       R5 R3 K4 ["startup"]
       26 SETTABLEKS                       R5 R3 K5 ["json"]
       28 RETURN                           R3 1
       29 GETTABLEKS                       R3 R1 K11 ["status"]
       31 JUMPIFNOTEQKS                    R3 K12 ["loading"] ; [+10]
       33 DUPTABLE                         R4 K3 [{[1], ["copyText"] = }]
       34 SETTABLEKS                       R2 R4 K0 ["text"]
       36 DUPTABLE                         R3 K6 [{"startup", "json"}]
       37 SETTABLEKS                       R4 R3 K4 ["startup"]
       39 SETTABLEKS                       R4 R3 K5 ["json"]
       41 RETURN                           R3 1
       42 GETTABLEKS                       R3 R1 K11 ["status"]
       44 JUMPIFNOTEQKS                    R3 K7 ["error"] ; [+12]
       46 GETTABLEKS                       R4 R1 K13 ["problem"]
       48 DUPTABLE                         R5 K3 [{[1], ["copyText"] = }]
       49 SETTABLEKS                       R4 R5 K0 ["text"]
       51 DUPTABLE                         R3 K6 [{"startup", "json"}]
       52 SETTABLEKS                       R5 R3 K4 ["startup"]
       54 SETTABLEKS                       R5 R3 K5 ["json"]
       56 RETURN                           R3 1
       57 GETTABLEKS                       R3 R1 K14 ["value"]
       59 FASTCALL1                        TYPEOF R3 ; [+3]
       60 MOVE                             R5 R3
       61 GETIMPORT                        R4 K9 [typeof]
       63 CALL                             R4 1 1
       64 JUMPIFEQKS                       R4 K10 ["string"] ; [+8]
       66 DUPTABLE                         R5 K16 [{[1] = "MCP Server not supported", ["copyText"] = }]
       67 DUPTABLE                         R4 K6 [{"startup", "json"}]
       68 SETTABLEKS                       R5 R4 K4 ["startup"]
       70 SETTABLEKS                       R5 R4 K5 ["json"]
       72 RETURN                           R4 1
       73 GETUPVAL                         R4 0
       74 MOVE                             R5 R0
       75 CALL                             R4 1 1
       76 GETIMPORT                        R5 K18 [string.gsub]
       78 MOVE                             R6 R3
       79 GETIMPORT                        R7 K20 [string.rep]
       81 LOADK                            R8 K21 [" "]
       82 LOADN                            R9 4
       83 CALL                             R7 2 1
       84 GETIMPORT                        R8 K20 [string.rep]
       86 LOADK                            R9 K21 [" "]
       87 LOADN                            R10 2
       88 CALL                             R8 2 -1
       89 CALL                             R5 -1 1
       90 DUPTABLE                         R6 K6 [{"startup", "json"}]
       91 DUPTABLE                         R7 K22 [{"text", "copyText"}]
       92 SETTABLEKS                       R4 R7 K0 ["text"]
       94 SETTABLEKS                       R4 R7 K1 ["copyText"]
       96 SETTABLEKS                       R7 R6 K4 ["startup"]
       98 DUPTABLE                         R7 K22 [{"text", "copyText"}]
       99 SETTABLEKS                       R5 R7 K0 ["text"]
      101 SETTABLEKS                       R5 R7 K1 ["copyText"]
      103 SETTABLEKS                       R7 R6 K5 ["json"]
      105 RETURN                           R6 1

PROTO_4:
        0 DUPTABLE                         R0 K10 [{"Title", "Disclaimer", "InstructionsHeader", "InstructionsBody", "StartupCommandLabel", "JsonConfigLabel", "Loading", "Copied", "NoClientsConnected", "LearnMore"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K11 ["McpSetup"]
        3 LOADK                            R4 K0 ["Title"]
        4 NAMECALL                         R1 R1 K12 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Title"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K11 ["McpSetup"]
       11 LOADK                            R4 K1 ["Disclaimer"]
       12 NAMECALL                         R1 R1 K12 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Disclaimer"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K11 ["McpSetup"]
       19 LOADK                            R4 K2 ["InstructionsHeader"]
       20 NAMECALL                         R1 R1 K12 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["InstructionsHeader"]
       25 GETUPVAL                         R1 0
       26 LOADK                            R3 K11 ["McpSetup"]
       27 LOADK                            R4 K3 ["InstructionsBody"]
       28 NAMECALL                         R1 R1 K12 ["getText"]
       30 CALL                             R1 3 1
       31 SETTABLEKS                       R1 R0 K3 ["InstructionsBody"]
       33 GETUPVAL                         R1 0
       34 LOADK                            R3 K11 ["McpSetup"]
       35 LOADK                            R4 K4 ["StartupCommandLabel"]
       36 NAMECALL                         R1 R1 K12 ["getText"]
       38 CALL                             R1 3 1
       39 SETTABLEKS                       R1 R0 K4 ["StartupCommandLabel"]
       41 GETUPVAL                         R1 0
       42 LOADK                            R3 K11 ["McpSetup"]
       43 LOADK                            R4 K5 ["JsonConfigLabel"]
       44 NAMECALL                         R1 R1 K12 ["getText"]
       46 CALL                             R1 3 1
       47 SETTABLEKS                       R1 R0 K5 ["JsonConfigLabel"]
       49 GETUPVAL                         R1 0
       50 LOADK                            R3 K11 ["McpSetup"]
       51 LOADK                            R4 K6 ["Loading"]
       52 NAMECALL                         R1 R1 K12 ["getText"]
       54 CALL                             R1 3 1
       55 SETTABLEKS                       R1 R0 K6 ["Loading"]
       57 GETUPVAL                         R1 0
       58 LOADK                            R3 K11 ["McpSetup"]
       59 LOADK                            R4 K7 ["Copied"]
       60 NAMECALL                         R1 R1 K12 ["getText"]
       62 CALL                             R1 3 1
       63 SETTABLEKS                       R1 R0 K7 ["Copied"]
       65 GETUPVAL                         R1 0
       66 LOADK                            R3 K11 ["McpSetup"]
       67 LOADK                            R4 K8 ["NoClientsConnected"]
       68 NAMECALL                         R1 R1 K12 ["getText"]
       70 CALL                             R1 3 1
       71 SETTABLEKS                       R1 R0 K8 ["NoClientsConnected"]
       73 GETUPVAL                         R1 1
       74 GETUPVAL                         R2 0
       75 LOADK                            R4 K11 ["McpSetup"]
       76 LOADK                            R5 K9 ["LearnMore"]
       77 DUPTABLE                         R6 K17 [{["linkStart"] = "\x<LS>\x", ["linkEnd"] = "\x<LE>\x"}]
       78 NAMECALL                         R2 R2 K12 ["getText"]
       80 CALL                             R2 4 -1
       81 CALL                             R1 -1 1
       82 SETTABLEKS                       R1 R0 K9 ["LearnMore"]
       84 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 LOADN                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 0
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U1
        9 LOADB                            R3 1
       10 NAMECALL                         R0 R0 K0 ["connect"]
       12 CALL                             R0 3 1
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 RETURN                           R1 1

PROTO_8:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R1
        6 CALL                             R2 1 0
        7 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R1
        3 CALL                             R2 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setupInstructions"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETTABLEKS                       R1 R0 K1 ["error"]
        8 JUMPIFNOT                        R1 ; [+2]
        9 LOADNIL                          R1
       10 RETURN                           R1 1
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K2 ["json"]
       14 GETTABLEKS                       R1 R1 K3 ["encodeAsync"]
       16 MOVE                             R2 R0
       17 LOADB                            R3 1
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_11:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["start"]
        4 CALL                             R1 0 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["stop"]
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["setupInstructions"]
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 GETTABLEKS                       R3 R3 K1 ["Loading"]
        8 CALL                             R0 3 1
        9 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setupInstructions"]
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETTABLEKS                       R1 R0 K1 ["error"]
        7 JUMPIFEQKNIL                     R1 ; [+3]
        9 LOADNIL                          R1
       10 RETURN                           R1 1
       11 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["http"]
        3 GETTABLEKS                       R0 R0 K1 ["openUrl"]
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R5 3
        7 CALL                             R5 0 1
        8 JUMPIFNOT                        R5 ; [+7]
        9 GETUPVAL                         R4 4
       10 GETTABLEKS                       R4 R4 K0 ["Hooks"]
       12 GETTABLEKS                       R4 R4 K1 ["useTokens"]
       14 CALL                             R4 0 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R4
       17 GETUPVAL                         R5 5
       18 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       20 DUPCLOSURE                       R6 K3 [PROTO_4]
       21 CAPTURE                          UPVAL U6
       22 CAPTURE                          UPVAL U7
       23 NEWTABLE                         R7 0 1
       25 GETUPVAL                         R8 6
       26 GETTABLEKS                       R8 R8 K4 ["locale"]
       28 SETLIST                          R7 R8 1 [1]
       30 CALL                             R5 2 1
       31 GETUPVAL                         R6 5
       32 GETTABLEKS                       R6 R6 K5 ["useState"]
       34 DUPTABLE                         R7 K8 [{["expanded"] = False}]
       35 CALL                             R6 1 2
       36 GETUPVAL                         R8 8
       37 GETTABLEKS                       R8 R8 K9 ["get"]
       39 CALL                             R8 0 1
       40 GETTABLEKS                       R10 R2 K10 ["state"]
       42 JUMPIFNOTEQKS                    R10 K11 ["disconnected"] ; [+2]
       44 LOADB                            R9 0 +1
       45 LOADB                            R9 1
       46 GETTABLEKS                       R10 R2 K12 ["isBusy"]
       48 JUMPIF                           R10 ; [+2]
       49 GETTABLEKS                       R10 R3 K13 ["isProcessing"]
       51 GETUPVAL                         R11 5
       52 GETTABLEKS                       R11 R11 K5 ["useState"]
       54 LOADN                            R12 0
       55 CALL                             R11 1 2
       56 GETTABLEKS                       R13 R2 K14 ["connectionCountObservable"]
       58 GETUPVAL                         R14 5
       59 GETTABLEKS                       R14 R14 K15 ["useEffect"]
       61 NEWCLOSURE                       R15 P1
       62 CAPTURE                          VAL R13
       63 CAPTURE                          VAL R12
       64 NEWTABLE                         R16 0 1
       66 MOVE                             R17 R13
       67 SETLIST                          R16 R17 1 [1]
       69 CALL                             R14 2 0
       70 LOADN                            R15 0
       71 JUMPIFNOTLT                      R15 R11 ; [+3]
       73 LOADK                            R14 K16 ["content-system-success"]
       74 JUMP                             ; [+1]
       75 LOADK                            R14 K17 ["content-system-neutral"]
       76 JUMPIFNOTEQKN                    R11 K18 [0] ; [+4]
       78 GETTABLEKS                       R15 R5 K19 ["NoClientsConnected"]
       80 JUMP                             ; [+23]
       81 JUMPIFNOTEQKN                    R11 K20 [1] ; [+8]
       83 GETUPVAL                         R15 6
       84 LOADK                            R17 K21 ["McpSetup"]
       85 LOADK                            R18 K22 ["ClientConnected"]
       86 NAMECALL                         R15 R15 K23 ["getText"]
       88 CALL                             R15 3 1
       89 JUMP                             ; [+14]
       90 GETUPVAL                         R15 6
       91 LOADK                            R17 K21 ["McpSetup"]
       92 LOADK                            R18 K24 ["ClientsConnected"]
       93 DUPTABLE                         R19 K26 [{"count"}]
       94 FASTCALL1                        TOSTRING R11 ; [+3]
       95 MOVE                             R21 R11
       96 GETIMPORT                        R20 K28 [tostring]
       98 CALL                             R20 1 1
       99 SETTABLEKS                       R20 R19 K25 ["count"]
      101 NAMECALL                         R15 R15 K23 ["getText"]
      103 CALL                             R15 4 1
      104 GETUPVAL                         R16 5
      105 GETTABLEKS                       R16 R16 K29 ["useCallback"]
      107 NEWCLOSURE                       R17 P2
      108 CAPTURE                          VAL R7
      109 NEWTABLE                         R18 0 0
      111 CALL                             R16 2 1
      112 GETUPVAL                         R17 9
      113 GETTABLEKS                       R17 R17 K30 ["useAsync"]
      115 NEWCLOSURE                       R18 P3
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R8
      118 NEWTABLE                         R19 0 1
      120 GETTABLEKS                       R20 R2 K31 ["setupInstructions"]
      122 SETLIST                          R19 R20 1 [1]
      124 CALL                             R17 2 1
      125 GETUPVAL                         R18 5
      126 GETTABLEKS                       R18 R18 K29 ["useCallback"]
      128 NEWCLOSURE                       R19 P4
      129 CAPTURE                          VAL R2
      130 NEWTABLE                         R20 0 2
      132 GETTABLEKS                       R21 R2 K32 ["start"]
      134 GETTABLEKS                       R22 R2 K33 ["stop"]
      136 SETLIST                          R20 R21 2 [1]
      138 CALL                             R18 2 1
      139 GETUPVAL                         R19 5
      140 GETTABLEKS                       R19 R19 K2 ["useMemo"]
      142 NEWCLOSURE                       R20 P5
      143 CAPTURE                          UPVAL U10
      144 CAPTURE                          VAL R2
      145 CAPTURE                          VAL R17
      146 CAPTURE                          VAL R5
      147 NEWTABLE                         R21 0 3
      149 GETTABLEKS                       R22 R2 K31 ["setupInstructions"]
      151 MOVE                             R23 R17
      152 GETTABLEKS                       R24 R5 K34 ["Loading"]
      154 SETLIST                          R21 R22 3 [1]
      156 CALL                             R19 2 1
      157 GETUPVAL                         R20 5
      158 GETTABLEKS                       R20 R20 K2 ["useMemo"]
      160 NEWCLOSURE                       R21 P6
      161 CAPTURE                          VAL R2
      162 NEWTABLE                         R22 0 1
      164 GETTABLEKS                       R23 R2 K31 ["setupInstructions"]
      166 SETLIST                          R22 R23 1 [1]
      168 CALL                             R20 2 1
      169 GETUPVAL                         R21 5
      170 GETTABLEKS                       R21 R21 K29 ["useCallback"]
      172 NEWCLOSURE                       R22 P7
      173 CAPTURE                          VAL R8
      174 CAPTURE                          UPVAL U11
      175 NEWTABLE                         R23 0 1
      177 GETTABLEKS                       R24 R8 K35 ["http"]
      179 SETLIST                          R23 R24 1 [1]
      181 CALL                             R21 2 1
      182 GETUPVAL                         R22 12
      183 GETUPVAL                         R23 13
      184 DUPTABLE                         R24 K39 [{["LayoutOrder"], ["tag"] = "col gap-small size-full-0 auto-y padding-x-large padding-y-xsmall radius-medium bg-surface-100"}]
      185 GETTABLEKS                       R25 R0 K36 ["LayoutOrder"]
      187 SETTABLEKS                       R25 R24 K36 ["LayoutOrder"]
      189 DUPTABLE                         R25 K45 [{"Disclaimer", "TitleGroup", "QuickConnect", "InstructionsAccordion", "LearnMore"}]
      190 GETUPVAL                         R26 12
      191 GETUPVAL                         R27 13
      192 DUPTABLE                         R28 K47 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-xsmall stroke-standard stroke-muted radius-small", ["LayoutOrder"]}]
      193 MOVE                             R29 R1
      194 CALL                             R29 0 1
      195 SETTABLEKS                       R29 R28 K36 ["LayoutOrder"]
      197 DUPTABLE                         R29 K50 [{"Icon", "Text"}]
      198 GETUPVAL                         R31 3
      199 CALL                             R31 0 1
      200 JUMPIFNOT                        R31 ; [+35]
      201 GETUPVAL                         R30 12
      202 GETUPVAL                         R31 14
      203 DUPTABLE                         R32 K54 [{"name", "style", "size", "LayoutOrder"}]
      204 GETUPVAL                         R33 4
      205 GETTABLEKS                       R33 R33 K55 ["Enums"]
      207 GETTABLEKS                       R33 R33 K56 ["IconName"]
      209 GETTABLEKS                       R33 R33 K57 ["CircleI"]
      211 SETTABLEKS                       R33 R32 K51 ["name"]
      213 GETTABLEKS                       R33 R4 K58 ["Color"]
      215 GETTABLEKS                       R33 R33 K59 ["Content"]
      217 GETTABLEKS                       R33 R33 K60 ["Muted"]
      219 SETTABLEKS                       R33 R32 K52 ["style"]
      221 GETUPVAL                         R33 4
      222 GETTABLEKS                       R33 R33 K55 ["Enums"]
      224 GETTABLEKS                       R33 R33 K61 ["IconSize"]
      226 GETTABLEKS                       R33 R33 K62 ["Medium"]
      228 SETTABLEKS                       R33 R32 K53 ["size"]
      230 MOVE                             R33 R1
      231 CALL                             R33 0 1
      232 SETTABLEKS                       R33 R32 K36 ["LayoutOrder"]
      234 CALL                             R30 2 1
      235 JUMP                             ; [+8]
      236 GETUPVAL                         R30 12
      237 GETUPVAL                         R31 15
      238 DUPTABLE                         R32 K66 [{["tag"] = "size-500-500 content-emphasis", ["Image"] = "icons/actions/info", ["LayoutOrder"]}]
      239 MOVE                             R33 R1
      240 CALL                             R33 0 1
      241 SETTABLEKS                       R33 R32 K36 ["LayoutOrder"]
      243 CALL                             R30 2 1
      244 SETTABLEKS                       R30 R29 K48 ["Icon"]
      246 GETUPVAL                         R30 12
      247 GETUPVAL                         R31 16
      248 DUPTABLE                         R32 K68 [{["tag"] = "shrink auto-xy text-caption-small text-wrap text-align-x-left content-muted", ["Text"], ["LayoutOrder"]}]
      249 GETTABLEKS                       R33 R5 K40 ["Disclaimer"]
      251 SETTABLEKS                       R33 R32 K49 ["Text"]
      253 MOVE                             R33 R1
      254 CALL                             R33 0 1
      255 SETTABLEKS                       R33 R32 K36 ["LayoutOrder"]
      257 CALL                             R30 2 1
      258 SETTABLEKS                       R30 R29 K49 ["Text"]
      260 CALL                             R26 3 1
      261 SETTABLEKS                       R26 R25 K40 ["Disclaimer"]
      263 GETUPVAL                         R26 12
      264 GETUPVAL                         R27 13
      265 DUPTABLE                         R28 K70 [{["tag"] = "col gap-xxsmall size-full-0 auto-y", ["LayoutOrder"]}]
      266 MOVE                             R29 R1
      267 CALL                             R29 0 1
      268 SETTABLEKS                       R29 R28 K36 ["LayoutOrder"]
      270 DUPTABLE                         R29 K73 [{"TitleRow", "ConnectionIndicator"}]
      271 GETUPVAL                         R30 12
      272 GETUPVAL                         R31 13
      273 DUPTABLE                         R32 K75 [{["tag"] = "row align-y-center size-full-0 auto-y", ["LayoutOrder"]}]
      274 MOVE                             R33 R1
      275 CALL                             R33 0 1
      276 SETTABLEKS                       R33 R32 K36 ["LayoutOrder"]
      278 DUPTABLE                         R33 K79 [{"Title", "Spacer", "Toggle"}]
      279 GETUPVAL                         R34 12
      280 GETUPVAL                         R35 16
      281 DUPTABLE                         R36 K81 [{["tag"] = "bold auto-xy text-title-medium text-align-x-left", ["Text"], ["LayoutOrder"]}]
      282 GETTABLEKS                       R37 R5 K76 ["Title"]
      284 SETTABLEKS                       R37 R36 K49 ["Text"]
      286 MOVE                             R37 R1
      287 CALL                             R37 0 1
      288 SETTABLEKS                       R37 R36 K36 ["LayoutOrder"]
      290 CALL                             R34 2 1
      291 SETTABLEKS                       R34 R33 K76 ["Title"]
      293 GETUPVAL                         R34 12
      294 GETUPVAL                         R35 13
      295 DUPTABLE                         R36 K83 [{["tag"] = "fill", ["LayoutOrder"]}]
      296 MOVE                             R37 R1
      297 CALL                             R37 0 1
      298 SETTABLEKS                       R37 R36 K36 ["LayoutOrder"]
      300 CALL                             R34 2 1
      301 SETTABLEKS                       R34 R33 K77 ["Spacer"]
      303 GETUPVAL                         R34 12
      304 GETUPVAL                         R35 17
      305 DUPTABLE                         R36 K90 [{["testId"], ["label"] = "", ["isChecked"], ["isDisabled"], ["onActivated"], ["size"], ["LayoutOrder"]}]
      306 GETUPVAL                         R37 18
      307 GETTABLEKS                       R37 R37 K21 ["McpSetup"]
      309 GETTABLEKS                       R37 R37 K78 ["Toggle"]
      311 SETTABLEKS                       R37 R36 K84 ["testId"]
      313 SETTABLEKS                       R9 R36 K87 ["isChecked"]
      315 SETTABLEKS                       R10 R36 K88 ["isDisabled"]
      317 SETTABLEKS                       R18 R36 K89 ["onActivated"]
      319 GETUPVAL                         R37 19
      320 GETTABLEKS                       R37 R37 K91 ["Small"]
      322 SETTABLEKS                       R37 R36 K53 ["size"]
      324 MOVE                             R37 R1
      325 CALL                             R37 0 1
      326 SETTABLEKS                       R37 R36 K36 ["LayoutOrder"]
      328 CALL                             R34 2 1
      329 SETTABLEKS                       R34 R33 K78 ["Toggle"]
      331 CALL                             R30 3 1
      332 SETTABLEKS                       R30 R29 K71 ["TitleRow"]
      334 GETUPVAL                         R31 20
      335 CALL                             R31 0 1
      336 JUMPIF                           R31 ; [+84]
      337 GETUPVAL                         R30 12
      338 GETUPVAL                         R31 13
      339 DUPTABLE                         R32 K92 [{"tag", "LayoutOrder"}]
      340 NEWTABLE                         R33 2 0
      342 LOADB                            R34 1
      343 SETTABLEKS                       R34 R33 K93 ["row align-y-center auto-xy"]
      345 GETUPVAL                         R34 3
      346 CALL                             R34 0 1
      347 SETTABLEKS                       R34 R33 K94 ["gap-small"]
      349 SETTABLEKS                       R33 R32 K37 ["tag"]
      351 MOVE                             R33 R1
      352 CALL                             R33 0 1
      353 SETTABLEKS                       R33 R32 K36 ["LayoutOrder"]
      355 DUPTABLE                         R33 K96 [{"Icon", "StatusText"}]
      356 GETUPVAL                         R35 3
      357 CALL                             R35 0 1
      358 JUMPIFNOT                        R35 ; [+29]
      359 GETUPVAL                         R34 12
      360 GETUPVAL                         R35 21
      361 DUPTABLE                         R36 K98 [{"variant", "LayoutOrder"}]
      362 LOADN                            R38 0
      363 JUMPIFNOTLT                      R38 R11 ; [+9]
      365 GETUPVAL                         R37 4
      366 GETTABLEKS                       R37 R37 K55 ["Enums"]
      368 GETTABLEKS                       R37 R37 K99 ["StatusIndicatorVariant"]
      370 GETTABLEKS                       R37 R37 K100 ["Success"]
      372 JUMP                             ; [+7]
      373 GETUPVAL                         R37 4
      374 GETTABLEKS                       R37 R37 K55 ["Enums"]
      376 GETTABLEKS                       R37 R37 K99 ["StatusIndicatorVariant"]
      378 GETTABLEKS                       R37 R37 K101 ["Neutral"]
      380 SETTABLEKS                       R37 R36 K97 ["variant"]
      382 MOVE                             R37 R1
      383 CALL                             R37 0 1
      384 SETTABLEKS                       R37 R36 K36 ["LayoutOrder"]
      386 CALL                             R34 2 1
      387 JUMP                             ; [+17]
      388 GETUPVAL                         R34 12
      389 GETUPVAL                         R35 22
      390 DUPTABLE                         R36 K106 [{["icon"] = "component_assets/circle_16", ["tag"] = "align-x-center align-y-center size-400-400", ["iconTag"], ["LayoutOrder"]}]
      391 NEWTABLE                         R37 2 0
      393 LOADB                            R38 1
      394 SETTABLEKS                       R38 R37 K107 ["size-200-200"]
      396 LOADB                            R38 1
      397 SETTABLE                         R38 R37 R14
      398 SETTABLEKS                       R37 R36 K105 ["iconTag"]
      400 MOVE                             R37 R1
      401 CALL                             R37 0 1
      402 SETTABLEKS                       R37 R36 K36 ["LayoutOrder"]
      404 CALL                             R34 2 1
      405 SETTABLEKS                       R34 R33 K48 ["Icon"]
      407 GETUPVAL                         R34 12
      408 GETUPVAL                         R35 16
      409 DUPTABLE                         R36 K109 [{["tag"] = "auto-xy text-caption-small text-no-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
      410 SETTABLEKS                       R15 R36 K49 ["Text"]
      412 MOVE                             R37 R1
      413 CALL                             R37 0 1
      414 SETTABLEKS                       R37 R36 K36 ["LayoutOrder"]
      416 CALL                             R34 2 1
      417 SETTABLEKS                       R34 R33 K95 ["StatusText"]
      419 CALL                             R30 3 1
      420 JUMP                             ; [+1]
      421 LOADNIL                          R30
      422 SETTABLEKS                       R30 R29 K72 ["ConnectionIndicator"]
      424 CALL                             R26 3 1
      425 SETTABLEKS                       R26 R25 K41 ["TitleGroup"]
      427 JUMPIFNOT                        R20 ; [+16]
      428 GETUPVAL                         R26 12
      429 GETUPVAL                         R27 23
      430 DUPTABLE                         R28 K111 [{"isDisabled", "mcpServerInfo", "LayoutOrder"}]
      431 MOVE                             R29 R10
      432 JUMPIF                           R29 ; [+1]
      433 NOT                              R29 R9
      434 SETTABLEKS                       R29 R28 K88 ["isDisabled"]
      436 SETTABLEKS                       R20 R28 K110 ["mcpServerInfo"]
      438 MOVE                             R29 R1
      439 CALL                             R29 0 1
      440 SETTABLEKS                       R29 R28 K36 ["LayoutOrder"]
      442 CALL                             R26 2 1
      443 JUMP                             ; [+1]
      444 LOADNIL                          R26
      445 SETTABLEKS                       R26 R25 K42 ["QuickConnect"]
      447 GETUPVAL                         R26 12
      448 GETUPVAL                         R27 13
      449 DUPTABLE                         R28 K113 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y"}]
      450 MOVE                             R29 R1
      451 CALL                             R29 0 1
      452 SETTABLEKS                       R29 R28 K36 ["LayoutOrder"]
      454 DUPTABLE                         R29 K115 [{"Accordion"}]
      455 GETUPVAL                         R30 12
      456 GETUPVAL                         R31 24
      457 GETTABLEKS                       R31 R31 K116 ["Root"]
      459 DUPTABLE                         R32 K120 [{["expanded"], ["contentId"] = "studio_mcp_instructions", ["editThisContent"]}]
      460 GETTABLEKS                       R33 R6 K6 ["expanded"]
      462 SETTABLEKS                       R33 R32 K6 ["expanded"]
      464 SETTABLEKS                       R16 R32 K119 ["editThisContent"]
      466 DUPTABLE                         R33 K122 [{"Header", "Content"}]
      467 GETUPVAL                         R34 12
      468 GETUPVAL                         R35 24
      469 GETTABLEKS                       R35 R35 K121 ["Header"]
      471 DUPTABLE                         R36 K128 [{["LayoutOrder"], ["AutomaticHeight"] = True, ["IconSize"] = "medium", ["VerticalAlignment"] = "center"}]
      472 MOVE                             R37 R1
      473 CALL                             R37 0 1
      474 SETTABLEKS                       R37 R36 K36 ["LayoutOrder"]
      476 DUPTABLE                         R37 K129 [{"Title"}]
      477 GETUPVAL                         R38 12
      478 GETUPVAL                         R39 16
      479 DUPTABLE                         R40 K131 [{["tag"] = "bold auto-xy text-title-small text-align-x-left", ["Text"], ["LayoutOrder"]}]
      480 GETTABLEKS                       R41 R5 K132 ["InstructionsHeader"]
      482 SETTABLEKS                       R41 R40 K49 ["Text"]
      484 MOVE                             R41 R1
      485 CALL                             R41 0 1
      486 SETTABLEKS                       R41 R40 K36 ["LayoutOrder"]
      488 CALL                             R38 2 1
      489 SETTABLEKS                       R38 R37 K76 ["Title"]
      491 CALL                             R34 3 1
      492 SETTABLEKS                       R34 R33 K121 ["Header"]
      494 GETUPVAL                         R34 12
      495 GETUPVAL                         R35 24
      496 GETTABLEKS                       R35 R35 K59 ["Content"]
      498 DUPTABLE                         R36 K136 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"], ["UseVisible"] = True, ["disableVerticalBar"] = True}]
      499 MOVE                             R37 R1
      500 CALL                             R37 0 1
      501 SETTABLEKS                       R37 R36 K36 ["LayoutOrder"]
      503 DUPTABLE                         R37 K140 [{"Instruction", "JsonConfigBlock", "StartupCommandBlock"}]
      504 GETUPVAL                         R38 12
      505 GETUPVAL                         R39 16
      506 DUPTABLE                         R40 K142 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
      507 GETTABLEKS                       R41 R5 K143 ["InstructionsBody"]
      509 SETTABLEKS                       R41 R40 K49 ["Text"]
      511 MOVE                             R41 R1
      512 CALL                             R41 0 1
      513 SETTABLEKS                       R41 R40 K36 ["LayoutOrder"]
      515 CALL                             R38 2 1
      516 SETTABLEKS                       R38 R37 K137 ["Instruction"]
      518 GETUPVAL                         R38 12
      519 GETUPVAL                         R39 25
      520 DUPTABLE                         R40 K148 [{"label", "labelTestId", "data", "copiedText", "copyButtonTestId", "LayoutOrder"}]
      521 GETTABLEKS                       R41 R5 K149 ["JsonConfigLabel"]
      523 SETTABLEKS                       R41 R40 K85 ["label"]
      525 GETUPVAL                         R41 18
      526 GETTABLEKS                       R41 R41 K21 ["McpSetup"]
      528 GETTABLEKS                       R41 R41 K149 ["JsonConfigLabel"]
      530 SETTABLEKS                       R41 R40 K144 ["labelTestId"]
      532 GETTABLEKS                       R41 R19 K150 ["json"]
      534 SETTABLEKS                       R41 R40 K145 ["data"]
      536 GETTABLEKS                       R41 R5 K151 ["Copied"]
      538 SETTABLEKS                       R41 R40 K146 ["copiedText"]
      540 GETUPVAL                         R41 18
      541 GETTABLEKS                       R41 R41 K21 ["McpSetup"]
      543 GETTABLEKS                       R41 R41 K152 ["JsonConfigCopy"]
      545 SETTABLEKS                       R41 R40 K147 ["copyButtonTestId"]
      547 MOVE                             R41 R1
      548 CALL                             R41 0 1
      549 SETTABLEKS                       R41 R40 K36 ["LayoutOrder"]
      551 CALL                             R38 2 1
      552 SETTABLEKS                       R38 R37 K138 ["JsonConfigBlock"]
      554 GETUPVAL                         R38 12
      555 GETUPVAL                         R39 25
      556 DUPTABLE                         R40 K148 [{"label", "labelTestId", "data", "copiedText", "copyButtonTestId", "LayoutOrder"}]
      557 GETTABLEKS                       R41 R5 K153 ["StartupCommandLabel"]
      559 SETTABLEKS                       R41 R40 K85 ["label"]
      561 GETUPVAL                         R41 18
      562 GETTABLEKS                       R41 R41 K21 ["McpSetup"]
      564 GETTABLEKS                       R41 R41 K153 ["StartupCommandLabel"]
      566 SETTABLEKS                       R41 R40 K144 ["labelTestId"]
      568 GETTABLEKS                       R41 R19 K154 ["startup"]
      570 SETTABLEKS                       R41 R40 K145 ["data"]
      572 GETTABLEKS                       R41 R5 K151 ["Copied"]
      574 SETTABLEKS                       R41 R40 K146 ["copiedText"]
      576 GETUPVAL                         R41 18
      577 GETTABLEKS                       R41 R41 K21 ["McpSetup"]
      579 GETTABLEKS                       R41 R41 K155 ["StartupCommandCopy"]
      581 SETTABLEKS                       R41 R40 K147 ["copyButtonTestId"]
      583 MOVE                             R41 R1
      584 CALL                             R41 0 1
      585 SETTABLEKS                       R41 R40 K36 ["LayoutOrder"]
      587 CALL                             R38 2 1
      588 SETTABLEKS                       R38 R37 K139 ["StartupCommandBlock"]
      590 CALL                             R34 3 1
      591 SETTABLEKS                       R34 R33 K59 ["Content"]
      593 CALL                             R30 3 1
      594 SETTABLEKS                       R30 R29 K114 ["Accordion"]
      596 CALL                             R26 3 1
      597 SETTABLEKS                       R26 R25 K43 ["InstructionsAccordion"]
      599 GETUPVAL                         R26 12
      600 GETUPVAL                         R27 13
      601 DUPTABLE                         R28 K157 [{["tag"] = "row align-y-center size-full-0 auto-y padding-xsmall", ["LayoutOrder"]}]
      602 MOVE                             R29 R1
      603 CALL                             R29 0 1
      604 SETTABLEKS                       R29 R28 K36 ["LayoutOrder"]
      606 DUPTABLE                         R29 K161 [{"Before", "Link", "After"}]
      607 GETTABLEKS                       R32 R5 K44 ["LearnMore"]
      609 GETTABLEKS                       R32 R32 K162 ["before"]
      611 LENGTH                           R31 R32
      612 LOADN                            R32 0
      613 JUMPIFNOTLT                      R32 R31 ; [+16]
      615 GETUPVAL                         R30 12
      616 GETUPVAL                         R31 16
      617 DUPTABLE                         R32 K164 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-default", ["Text"], ["LayoutOrder"]}]
      618 GETTABLEKS                       R33 R5 K44 ["LearnMore"]
      620 GETTABLEKS                       R33 R33 K162 ["before"]
      622 SETTABLEKS                       R33 R32 K49 ["Text"]
      624 MOVE                             R33 R1
      625 CALL                             R33 0 1
      626 SETTABLEKS                       R33 R32 K36 ["LayoutOrder"]
      628 CALL                             R30 2 1
      629 JUMP                             ; [+1]
      630 LOADNIL                          R30
      631 SETTABLEKS                       R30 R29 K158 ["Before"]
      633 GETTABLEKS                       R32 R5 K44 ["LearnMore"]
      635 GETTABLEKS                       R32 R32 K165 ["link"]
      637 LENGTH                           R31 R32
      638 LOADN                            R32 0
      639 JUMPIFNOTLT                      R32 R31 ; [+18]
      641 GETUPVAL                         R30 12
      642 GETUPVAL                         R31 16
      643 DUPTABLE                         R32 K167 [{["tag"] = "text-underline auto-xy text-body-small text-wrap text-align-x-left content-link", ["Text"], ["onActivated"], ["LayoutOrder"]}]
      644 GETTABLEKS                       R33 R5 K44 ["LearnMore"]
      646 GETTABLEKS                       R33 R33 K165 ["link"]
      648 SETTABLEKS                       R33 R32 K49 ["Text"]
      650 SETTABLEKS                       R21 R32 K89 ["onActivated"]
      652 MOVE                             R33 R1
      653 CALL                             R33 0 1
      654 SETTABLEKS                       R33 R32 K36 ["LayoutOrder"]
      656 CALL                             R30 2 1
      657 JUMP                             ; [+1]
      658 LOADNIL                          R30
      659 SETTABLEKS                       R30 R29 K159 ["Link"]
      661 GETTABLEKS                       R32 R5 K44 ["LearnMore"]
      663 GETTABLEKS                       R32 R32 K168 ["after"]
      665 LENGTH                           R31 R32
      666 LOADN                            R32 0
      667 JUMPIFNOTLT                      R32 R31 ; [+16]
      669 GETUPVAL                         R30 12
      670 GETUPVAL                         R31 16
      671 DUPTABLE                         R32 K164 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-default", ["Text"], ["LayoutOrder"]}]
      672 GETTABLEKS                       R33 R5 K44 ["LearnMore"]
      674 GETTABLEKS                       R33 R33 K168 ["after"]
      676 SETTABLEKS                       R33 R32 K49 ["Text"]
      678 MOVE                             R33 R1
      679 CALL                             R33 0 1
      680 SETTABLEKS                       R33 R32 K36 ["LayoutOrder"]
      682 CALL                             R30 2 1
      683 JUMP                             ; [+1]
      684 LOADNIL                          R30
      685 SETTABLEKS                       R30 R29 K160 ["After"]
      687 CALL                             R26 3 1
      688 SETTABLEKS                       R26 R25 K44 ["LearnMore"]
      690 CALL                             R22 3 -1
      691 RETURN                           R22 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R3 K8 ["IntegrationManagement"]
       20 GETTABLEKS                       R3 R3 K9 ["CopyableCodeBlock"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Components"]
       27 GETTABLEKS                       R4 R4 K10 ["CustomIconButton"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Guest"]
       34 GETTABLEKS                       R5 R5 K12 ["Environment"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Components"]
       41 GETTABLEKS                       R6 R6 K13 ["Contexts"]
       43 GETTABLEKS                       R6 R6 K14 ["ExternalServerContext"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Components"]
       50 GETTABLEKS                       R7 R7 K8 ["IntegrationManagement"]
       52 GETTABLEKS                       R7 R7 K15 ["QuickConnectSection"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K16 ["Util"]
       59 GETTABLEKS                       R8 R8 K17 ["TestIds"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K18 ["Resources"]
       66 GETTABLEKS                       R9 R9 K19 ["Localization"]
       68 GETTABLEKS                       R9 R9 K20 ["Translator"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K21 ["Types"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K22 ["Parent"]
       80 GETTABLEKS                       R11 R11 K23 ["Foundation"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K22 ["Parent"]
       87 GETTABLEKS                       R12 R12 K24 ["React"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K5 [require]
       92 GETTABLEKS                       R13 R0 K22 ["Parent"]
       94 GETTABLEKS                       R13 R13 K25 ["ReactUtils"]
       96 CALL                             R12 1 1
       97 GETIMPORT                        R13 K5 [require]
       99 GETTABLEKS                       R14 R0 K26 ["Hooks"]
      101 GETTABLEKS                       R14 R14 K27 ["useAsyncGuard"]
      103 CALL                             R13 1 1
      104 GETTABLEKS                       R14 R5 K28 ["useExternalServer"]
      106 GETIMPORT                        R15 K5 [require]
      108 GETTABLEKS                       R16 R0 K29 ["Flags"]
      110 GETTABLEKS                       R16 R16 K30 ["FFlagAssistantUseBuilderIcons"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K5 [require]
      115 GETTABLEKS                       R17 R0 K29 ["Flags"]
      117 GETTABLEKS                       R17 R17 K31 ["FFlagDisableMCPConnectionIndicator"]
      119 CALL                             R16 1 1
      120 GETIMPORT                        R17 K5 [require]
      122 GETTABLEKS                       R18 R0 K29 ["Flags"]
      124 GETTABLEKS                       R18 R18 K32 ["FStringMCPDocsUrl"]
      126 CALL                             R17 1 1
      127 GETTABLEKS                       R18 R10 K33 ["Icon"]
      129 GETTABLEKS                       R19 R10 K34 ["Image"]
      131 GETTABLEKS                       R20 R10 K35 ["StatusIndicator"]
      133 GETTABLEKS                       R21 R10 K36 ["Text"]
      135 GETTABLEKS                       R22 R10 K37 ["Toggle"]
      137 GETTABLEKS                       R23 R10 K38 ["View"]
      139 GETTABLEKS                       R24 R10 K39 ["Enums"]
      141 GETTABLEKS                       R24 R24 K40 ["InputSize"]
      143 GETTABLEKS                       R25 R12 K41 ["createNextOrder"]
      145 GETTABLEKS                       R26 R11 K42 ["createElement"]
      147 DUPCLOSURE                       R27 K43 [PROTO_0]
      148 DUPCLOSURE                       R28 K44 [PROTO_1]
      149 DUPCLOSURE                       R29 K45 [PROTO_2]
      150 DUPCLOSURE                       R30 K46 [PROTO_3]
      151 CAPTURE                          VAL R28
      152 DUPCLOSURE                       R31 K47 [PROTO_15]
      153 CAPTURE                          VAL R25
      154 CAPTURE                          VAL R14
      155 CAPTURE                          VAL R13
      156 CAPTURE                          VAL R15
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R11
      159 CAPTURE                          VAL R8
      160 CAPTURE                          VAL R27
      161 CAPTURE                          VAL R4
      162 CAPTURE                          VAL R12
      163 CAPTURE                          VAL R30
      164 CAPTURE                          VAL R17
      165 CAPTURE                          VAL R26
      166 CAPTURE                          VAL R23
      167 CAPTURE                          VAL R18
      168 CAPTURE                          VAL R19
      169 CAPTURE                          VAL R21
      170 CAPTURE                          VAL R22
      171 CAPTURE                          VAL R7
      172 CAPTURE                          VAL R24
      173 CAPTURE                          VAL R16
      174 CAPTURE                          VAL R20
      175 CAPTURE                          VAL R3
      176 CAPTURE                          VAL R6
      177 CAPTURE                          VAL R1
      178 CAPTURE                          VAL R2
      179 GETTABLEKS                       R32 R11 K48 ["memo"]
      181 MOVE                             R33 R31
      182 CALL                             R32 1 -1
      183 RETURN                           R32 -1
