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
        6 GETTABLEKS                       R1 R1 K2 ["FStringMCPDocsUrl"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R5 3
        7 GETTABLEKS                       R5 R5 K0 ["FFlagAssistantUseBuilderIcons"]
        9 JUMPIFNOT                        R5 ; [+7]
       10 GETUPVAL                         R4 4
       11 GETTABLEKS                       R4 R4 K1 ["Hooks"]
       13 GETTABLEKS                       R4 R4 K2 ["useTokens"]
       15 CALL                             R4 0 1
       16 JUMP                             ; [+1]
       17 LOADNIL                          R4
       18 GETUPVAL                         R5 5
       19 GETTABLEKS                       R5 R5 K3 ["useMemo"]
       21 DUPCLOSURE                       R6 K4 [PROTO_4]
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          UPVAL U7
       24 NEWTABLE                         R7 0 1
       26 GETUPVAL                         R8 6
       27 GETTABLEKS                       R8 R8 K5 ["locale"]
       29 SETLIST                          R7 R8 1 [1]
       31 CALL                             R5 2 1
       32 GETUPVAL                         R6 5
       33 GETTABLEKS                       R6 R6 K6 ["useState"]
       35 DUPTABLE                         R7 K9 [{["expanded"] = False}]
       36 CALL                             R6 1 2
       37 GETUPVAL                         R8 8
       38 GETTABLEKS                       R8 R8 K10 ["get"]
       40 CALL                             R8 0 1
       41 GETTABLEKS                       R10 R2 K11 ["state"]
       43 JUMPIFNOTEQKS                    R10 K12 ["disconnected"] ; [+2]
       45 LOADB                            R9 0 +1
       46 LOADB                            R9 1
       47 GETTABLEKS                       R10 R2 K13 ["isBusy"]
       49 JUMPIF                           R10 ; [+2]
       50 GETTABLEKS                       R10 R3 K14 ["isProcessing"]
       52 GETUPVAL                         R11 5
       53 GETTABLEKS                       R11 R11 K6 ["useState"]
       55 LOADN                            R12 0
       56 CALL                             R11 1 2
       57 GETTABLEKS                       R13 R2 K15 ["connectionCountObservable"]
       59 GETUPVAL                         R14 5
       60 GETTABLEKS                       R14 R14 K16 ["useEffect"]
       62 NEWCLOSURE                       R15 P1
       63 CAPTURE                          VAL R13
       64 CAPTURE                          VAL R12
       65 NEWTABLE                         R16 0 1
       67 MOVE                             R17 R13
       68 SETLIST                          R16 R17 1 [1]
       70 CALL                             R14 2 0
       71 LOADN                            R15 0
       72 JUMPIFNOTLT                      R15 R11 ; [+3]
       74 LOADK                            R14 K17 ["content-system-success"]
       75 JUMP                             ; [+1]
       76 LOADK                            R14 K18 ["content-system-neutral"]
       77 JUMPIFNOTEQKN                    R11 K19 [0] ; [+4]
       79 GETTABLEKS                       R15 R5 K20 ["NoClientsConnected"]
       81 JUMP                             ; [+23]
       82 JUMPIFNOTEQKN                    R11 K21 [1] ; [+8]
       84 GETUPVAL                         R15 6
       85 LOADK                            R17 K22 ["McpSetup"]
       86 LOADK                            R18 K23 ["ClientConnected"]
       87 NAMECALL                         R15 R15 K24 ["getText"]
       89 CALL                             R15 3 1
       90 JUMP                             ; [+14]
       91 GETUPVAL                         R15 6
       92 LOADK                            R17 K22 ["McpSetup"]
       93 LOADK                            R18 K25 ["ClientsConnected"]
       94 DUPTABLE                         R19 K27 [{"count"}]
       95 FASTCALL1                        TOSTRING R11 ; [+3]
       96 MOVE                             R21 R11
       97 GETIMPORT                        R20 K29 [tostring]
       99 CALL                             R20 1 1
      100 SETTABLEKS                       R20 R19 K26 ["count"]
      102 NAMECALL                         R15 R15 K24 ["getText"]
      104 CALL                             R15 4 1
      105 GETUPVAL                         R16 5
      106 GETTABLEKS                       R16 R16 K30 ["useCallback"]
      108 NEWCLOSURE                       R17 P2
      109 CAPTURE                          VAL R7
      110 NEWTABLE                         R18 0 0
      112 CALL                             R16 2 1
      113 GETUPVAL                         R17 9
      114 GETTABLEKS                       R17 R17 K31 ["useAsync"]
      116 NEWCLOSURE                       R18 P3
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R8
      119 NEWTABLE                         R19 0 1
      121 GETTABLEKS                       R20 R2 K32 ["setupInstructions"]
      123 SETLIST                          R19 R20 1 [1]
      125 CALL                             R17 2 1
      126 GETUPVAL                         R18 5
      127 GETTABLEKS                       R18 R18 K30 ["useCallback"]
      129 NEWCLOSURE                       R19 P4
      130 CAPTURE                          VAL R2
      131 NEWTABLE                         R20 0 2
      133 GETTABLEKS                       R21 R2 K33 ["start"]
      135 GETTABLEKS                       R22 R2 K34 ["stop"]
      137 SETLIST                          R20 R21 2 [1]
      139 CALL                             R18 2 1
      140 GETUPVAL                         R19 5
      141 GETTABLEKS                       R19 R19 K3 ["useMemo"]
      143 NEWCLOSURE                       R20 P5
      144 CAPTURE                          UPVAL U10
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R17
      147 CAPTURE                          VAL R5
      148 NEWTABLE                         R21 0 3
      150 GETTABLEKS                       R22 R2 K32 ["setupInstructions"]
      152 MOVE                             R23 R17
      153 GETTABLEKS                       R24 R5 K35 ["Loading"]
      155 SETLIST                          R21 R22 3 [1]
      157 CALL                             R19 2 1
      158 GETUPVAL                         R20 5
      159 GETTABLEKS                       R20 R20 K3 ["useMemo"]
      161 NEWCLOSURE                       R21 P6
      162 CAPTURE                          VAL R2
      163 NEWTABLE                         R22 0 1
      165 GETTABLEKS                       R23 R2 K32 ["setupInstructions"]
      167 SETLIST                          R22 R23 1 [1]
      169 CALL                             R20 2 1
      170 GETUPVAL                         R21 5
      171 GETTABLEKS                       R21 R21 K30 ["useCallback"]
      173 NEWCLOSURE                       R22 P7
      174 CAPTURE                          VAL R8
      175 CAPTURE                          UPVAL U3
      176 NEWTABLE                         R23 0 1
      178 GETTABLEKS                       R24 R8 K36 ["http"]
      180 SETLIST                          R23 R24 1 [1]
      182 CALL                             R21 2 1
      183 GETUPVAL                         R22 11
      184 GETUPVAL                         R23 12
      185 DUPTABLE                         R24 K40 [{["LayoutOrder"], ["tag"] = "col gap-small size-full-0 auto-y padding-x-large padding-y-xsmall radius-medium bg-surface-100"}]
      186 GETTABLEKS                       R25 R0 K37 ["LayoutOrder"]
      188 SETTABLEKS                       R25 R24 K37 ["LayoutOrder"]
      190 DUPTABLE                         R25 K46 [{"Disclaimer", "TitleGroup", "QuickConnect", "InstructionsAccordion", "LearnMore"}]
      191 GETUPVAL                         R26 11
      192 GETUPVAL                         R27 12
      193 DUPTABLE                         R28 K48 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-xsmall stroke-standard stroke-muted radius-small", ["LayoutOrder"]}]
      194 MOVE                             R29 R1
      195 CALL                             R29 0 1
      196 SETTABLEKS                       R29 R28 K37 ["LayoutOrder"]
      198 DUPTABLE                         R29 K51 [{"Icon", "Text"}]
      199 GETUPVAL                         R31 3
      200 GETTABLEKS                       R31 R31 K0 ["FFlagAssistantUseBuilderIcons"]
      202 JUMPIFNOT                        R31 ; [+35]
      203 GETUPVAL                         R30 11
      204 GETUPVAL                         R31 13
      205 DUPTABLE                         R32 K55 [{"name", "style", "size", "LayoutOrder"}]
      206 GETUPVAL                         R33 4
      207 GETTABLEKS                       R33 R33 K56 ["Enums"]
      209 GETTABLEKS                       R33 R33 K57 ["IconName"]
      211 GETTABLEKS                       R33 R33 K58 ["CircleI"]
      213 SETTABLEKS                       R33 R32 K52 ["name"]
      215 GETTABLEKS                       R33 R4 K59 ["Color"]
      217 GETTABLEKS                       R33 R33 K60 ["Content"]
      219 GETTABLEKS                       R33 R33 K61 ["Muted"]
      221 SETTABLEKS                       R33 R32 K53 ["style"]
      223 GETUPVAL                         R33 4
      224 GETTABLEKS                       R33 R33 K56 ["Enums"]
      226 GETTABLEKS                       R33 R33 K62 ["IconSize"]
      228 GETTABLEKS                       R33 R33 K63 ["Medium"]
      230 SETTABLEKS                       R33 R32 K54 ["size"]
      232 MOVE                             R33 R1
      233 CALL                             R33 0 1
      234 SETTABLEKS                       R33 R32 K37 ["LayoutOrder"]
      236 CALL                             R30 2 1
      237 JUMP                             ; [+8]
      238 GETUPVAL                         R30 11
      239 GETUPVAL                         R31 14
      240 DUPTABLE                         R32 K67 [{["tag"] = "size-500-500 content-emphasis", ["Image"] = "icons/actions/info", ["LayoutOrder"]}]
      241 MOVE                             R33 R1
      242 CALL                             R33 0 1
      243 SETTABLEKS                       R33 R32 K37 ["LayoutOrder"]
      245 CALL                             R30 2 1
      246 SETTABLEKS                       R30 R29 K49 ["Icon"]
      248 GETUPVAL                         R30 11
      249 GETUPVAL                         R31 15
      250 DUPTABLE                         R32 K69 [{["tag"] = "shrink auto-xy text-caption-small text-wrap text-align-x-left content-muted", ["Text"], ["LayoutOrder"]}]
      251 GETTABLEKS                       R33 R5 K41 ["Disclaimer"]
      253 SETTABLEKS                       R33 R32 K50 ["Text"]
      255 MOVE                             R33 R1
      256 CALL                             R33 0 1
      257 SETTABLEKS                       R33 R32 K37 ["LayoutOrder"]
      259 CALL                             R30 2 1
      260 SETTABLEKS                       R30 R29 K50 ["Text"]
      262 CALL                             R26 3 1
      263 SETTABLEKS                       R26 R25 K41 ["Disclaimer"]
      265 GETUPVAL                         R26 11
      266 GETUPVAL                         R27 12
      267 DUPTABLE                         R28 K71 [{["tag"] = "col gap-xxsmall size-full-0 auto-y", ["LayoutOrder"]}]
      268 MOVE                             R29 R1
      269 CALL                             R29 0 1
      270 SETTABLEKS                       R29 R28 K37 ["LayoutOrder"]
      272 DUPTABLE                         R29 K74 [{"TitleRow", "ConnectionIndicator"}]
      273 GETUPVAL                         R30 11
      274 GETUPVAL                         R31 12
      275 DUPTABLE                         R32 K76 [{["tag"] = "row align-y-center size-full-0 auto-y", ["LayoutOrder"]}]
      276 MOVE                             R33 R1
      277 CALL                             R33 0 1
      278 SETTABLEKS                       R33 R32 K37 ["LayoutOrder"]
      280 DUPTABLE                         R33 K80 [{"Title", "Spacer", "Toggle"}]
      281 GETUPVAL                         R34 11
      282 GETUPVAL                         R35 15
      283 DUPTABLE                         R36 K82 [{["tag"] = "auto-xy text-title-medium text-align-x-left", ["Text"], ["LayoutOrder"]}]
      284 GETTABLEKS                       R37 R5 K77 ["Title"]
      286 SETTABLEKS                       R37 R36 K50 ["Text"]
      288 MOVE                             R37 R1
      289 CALL                             R37 0 1
      290 SETTABLEKS                       R37 R36 K37 ["LayoutOrder"]
      292 CALL                             R34 2 1
      293 SETTABLEKS                       R34 R33 K77 ["Title"]
      295 GETUPVAL                         R34 11
      296 GETUPVAL                         R35 12
      297 DUPTABLE                         R36 K84 [{["tag"] = "fill", ["LayoutOrder"]}]
      298 MOVE                             R37 R1
      299 CALL                             R37 0 1
      300 SETTABLEKS                       R37 R36 K37 ["LayoutOrder"]
      302 CALL                             R34 2 1
      303 SETTABLEKS                       R34 R33 K78 ["Spacer"]
      305 GETUPVAL                         R34 11
      306 GETUPVAL                         R35 16
      307 DUPTABLE                         R36 K91 [{["testId"], ["label"] = "", ["isChecked"], ["isDisabled"], ["onActivated"], ["size"], ["LayoutOrder"]}]
      308 GETUPVAL                         R37 17
      309 GETTABLEKS                       R37 R37 K22 ["McpSetup"]
      311 GETTABLEKS                       R37 R37 K79 ["Toggle"]
      313 SETTABLEKS                       R37 R36 K85 ["testId"]
      315 SETTABLEKS                       R9 R36 K88 ["isChecked"]
      317 SETTABLEKS                       R10 R36 K89 ["isDisabled"]
      319 SETTABLEKS                       R18 R36 K90 ["onActivated"]
      321 GETUPVAL                         R37 18
      322 GETTABLEKS                       R37 R37 K92 ["Small"]
      324 SETTABLEKS                       R37 R36 K54 ["size"]
      326 MOVE                             R37 R1
      327 CALL                             R37 0 1
      328 SETTABLEKS                       R37 R36 K37 ["LayoutOrder"]
      330 CALL                             R34 2 1
      331 SETTABLEKS                       R34 R33 K79 ["Toggle"]
      333 CALL                             R30 3 1
      334 SETTABLEKS                       R30 R29 K72 ["TitleRow"]
      336 GETUPVAL                         R31 3
      337 GETTABLEKS                       R31 R31 K93 ["FFlagDisableMCPConnectionIndicator"]
      339 JUMPIF                           R31 ; [+86]
      340 GETUPVAL                         R30 11
      341 GETUPVAL                         R31 12
      342 DUPTABLE                         R32 K94 [{"tag", "LayoutOrder"}]
      343 NEWTABLE                         R33 2 0
      345 LOADB                            R34 1
      346 SETTABLEKS                       R34 R33 K95 ["row align-y-center auto-xy"]
      348 GETUPVAL                         R34 3
      349 GETTABLEKS                       R34 R34 K0 ["FFlagAssistantUseBuilderIcons"]
      351 SETTABLEKS                       R34 R33 K96 ["gap-small"]
      353 SETTABLEKS                       R33 R32 K38 ["tag"]
      355 MOVE                             R33 R1
      356 CALL                             R33 0 1
      357 SETTABLEKS                       R33 R32 K37 ["LayoutOrder"]
      359 DUPTABLE                         R33 K98 [{"Icon", "StatusText"}]
      360 GETUPVAL                         R35 3
      361 GETTABLEKS                       R35 R35 K0 ["FFlagAssistantUseBuilderIcons"]
      363 JUMPIFNOT                        R35 ; [+29]
      364 GETUPVAL                         R34 11
      365 GETUPVAL                         R35 19
      366 DUPTABLE                         R36 K100 [{"variant", "LayoutOrder"}]
      367 LOADN                            R38 0
      368 JUMPIFNOTLT                      R38 R11 ; [+9]
      370 GETUPVAL                         R37 4
      371 GETTABLEKS                       R37 R37 K56 ["Enums"]
      373 GETTABLEKS                       R37 R37 K101 ["StatusIndicatorVariant"]
      375 GETTABLEKS                       R37 R37 K102 ["Success"]
      377 JUMP                             ; [+7]
      378 GETUPVAL                         R37 4
      379 GETTABLEKS                       R37 R37 K56 ["Enums"]
      381 GETTABLEKS                       R37 R37 K101 ["StatusIndicatorVariant"]
      383 GETTABLEKS                       R37 R37 K103 ["Neutral"]
      385 SETTABLEKS                       R37 R36 K99 ["variant"]
      387 MOVE                             R37 R1
      388 CALL                             R37 0 1
      389 SETTABLEKS                       R37 R36 K37 ["LayoutOrder"]
      391 CALL                             R34 2 1
      392 JUMP                             ; [+17]
      393 GETUPVAL                         R34 11
      394 GETUPVAL                         R35 20
      395 DUPTABLE                         R36 K108 [{["icon"] = "component_assets/circle_16", ["tag"] = "align-x-center align-y-center size-400-400", ["iconTag"], ["LayoutOrder"]}]
      396 NEWTABLE                         R37 2 0
      398 LOADB                            R38 1
      399 SETTABLEKS                       R38 R37 K109 ["size-200-200"]
      401 LOADB                            R38 1
      402 SETTABLE                         R38 R37 R14
      403 SETTABLEKS                       R37 R36 K107 ["iconTag"]
      405 MOVE                             R37 R1
      406 CALL                             R37 0 1
      407 SETTABLEKS                       R37 R36 K37 ["LayoutOrder"]
      409 CALL                             R34 2 1
      410 SETTABLEKS                       R34 R33 K49 ["Icon"]
      412 GETUPVAL                         R34 11
      413 GETUPVAL                         R35 15
      414 DUPTABLE                         R36 K111 [{["tag"] = "auto-xy text-caption-small text-no-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
      415 SETTABLEKS                       R15 R36 K50 ["Text"]
      417 MOVE                             R37 R1
      418 CALL                             R37 0 1
      419 SETTABLEKS                       R37 R36 K37 ["LayoutOrder"]
      421 CALL                             R34 2 1
      422 SETTABLEKS                       R34 R33 K97 ["StatusText"]
      424 CALL                             R30 3 1
      425 JUMP                             ; [+1]
      426 LOADNIL                          R30
      427 SETTABLEKS                       R30 R29 K73 ["ConnectionIndicator"]
      429 CALL                             R26 3 1
      430 SETTABLEKS                       R26 R25 K42 ["TitleGroup"]
      432 JUMPIFNOT                        R20 ; [+16]
      433 GETUPVAL                         R26 11
      434 GETUPVAL                         R27 21
      435 DUPTABLE                         R28 K113 [{"isDisabled", "mcpServerInfo", "LayoutOrder"}]
      436 MOVE                             R29 R10
      437 JUMPIF                           R29 ; [+1]
      438 NOT                              R29 R9
      439 SETTABLEKS                       R29 R28 K89 ["isDisabled"]
      441 SETTABLEKS                       R20 R28 K112 ["mcpServerInfo"]
      443 MOVE                             R29 R1
      444 CALL                             R29 0 1
      445 SETTABLEKS                       R29 R28 K37 ["LayoutOrder"]
      447 CALL                             R26 2 1
      448 JUMP                             ; [+1]
      449 LOADNIL                          R26
      450 SETTABLEKS                       R26 R25 K43 ["QuickConnect"]
      452 GETUPVAL                         R26 11
      453 GETUPVAL                         R27 12
      454 DUPTABLE                         R28 K115 [{["LayoutOrder"], ["tag"] = "size-full-0 auto-y"}]
      455 MOVE                             R29 R1
      456 CALL                             R29 0 1
      457 SETTABLEKS                       R29 R28 K37 ["LayoutOrder"]
      459 DUPTABLE                         R29 K117 [{"Accordion"}]
      460 GETUPVAL                         R30 11
      461 GETUPVAL                         R31 22
      462 GETTABLEKS                       R31 R31 K118 ["Root"]
      464 DUPTABLE                         R32 K122 [{["expanded"], ["contentId"] = "studio_mcp_instructions", ["editThisContent"]}]
      465 GETTABLEKS                       R33 R6 K7 ["expanded"]
      467 SETTABLEKS                       R33 R32 K7 ["expanded"]
      469 SETTABLEKS                       R16 R32 K121 ["editThisContent"]
      471 DUPTABLE                         R33 K124 [{"Header", "Content"}]
      472 GETUPVAL                         R34 11
      473 GETUPVAL                         R35 22
      474 GETTABLEKS                       R35 R35 K123 ["Header"]
      476 DUPTABLE                         R36 K130 [{["LayoutOrder"], ["AutomaticHeight"] = True, ["IconSize"] = "medium", ["VerticalAlignment"] = "center"}]
      477 MOVE                             R37 R1
      478 CALL                             R37 0 1
      479 SETTABLEKS                       R37 R36 K37 ["LayoutOrder"]
      481 DUPTABLE                         R37 K131 [{"Title"}]
      482 GETUPVAL                         R38 11
      483 GETUPVAL                         R39 15
      484 DUPTABLE                         R40 K133 [{["tag"] = "auto-xy text-title-small text-align-x-left", ["Text"], ["LayoutOrder"]}]
      485 GETTABLEKS                       R41 R5 K134 ["InstructionsHeader"]
      487 SETTABLEKS                       R41 R40 K50 ["Text"]
      489 MOVE                             R41 R1
      490 CALL                             R41 0 1
      491 SETTABLEKS                       R41 R40 K37 ["LayoutOrder"]
      493 CALL                             R38 2 1
      494 SETTABLEKS                       R38 R37 K77 ["Title"]
      496 CALL                             R34 3 1
      497 SETTABLEKS                       R34 R33 K123 ["Header"]
      499 GETUPVAL                         R34 11
      500 GETUPVAL                         R35 22
      501 GETTABLEKS                       R35 R35 K60 ["Content"]
      503 DUPTABLE                         R36 K138 [{["tag"] = "col gap-small size-full-0 auto-y", ["LayoutOrder"], ["UseVisible"] = True, ["disableVerticalBar"] = True}]
      504 MOVE                             R37 R1
      505 CALL                             R37 0 1
      506 SETTABLEKS                       R37 R36 K37 ["LayoutOrder"]
      508 DUPTABLE                         R37 K142 [{"Instruction", "JsonConfigBlock", "StartupCommandBlock"}]
      509 GETUPVAL                         R38 11
      510 GETUPVAL                         R39 15
      511 DUPTABLE                         R40 K144 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left", ["Text"], ["LayoutOrder"]}]
      512 GETTABLEKS                       R41 R5 K145 ["InstructionsBody"]
      514 SETTABLEKS                       R41 R40 K50 ["Text"]
      516 MOVE                             R41 R1
      517 CALL                             R41 0 1
      518 SETTABLEKS                       R41 R40 K37 ["LayoutOrder"]
      520 CALL                             R38 2 1
      521 SETTABLEKS                       R38 R37 K139 ["Instruction"]
      523 GETUPVAL                         R38 11
      524 GETUPVAL                         R39 23
      525 DUPTABLE                         R40 K150 [{"label", "labelTestId", "data", "copiedText", "copyButtonTestId", "LayoutOrder"}]
      526 GETTABLEKS                       R41 R5 K151 ["JsonConfigLabel"]
      528 SETTABLEKS                       R41 R40 K86 ["label"]
      530 GETUPVAL                         R41 17
      531 GETTABLEKS                       R41 R41 K22 ["McpSetup"]
      533 GETTABLEKS                       R41 R41 K151 ["JsonConfigLabel"]
      535 SETTABLEKS                       R41 R40 K146 ["labelTestId"]
      537 GETTABLEKS                       R41 R19 K152 ["json"]
      539 SETTABLEKS                       R41 R40 K147 ["data"]
      541 GETTABLEKS                       R41 R5 K153 ["Copied"]
      543 SETTABLEKS                       R41 R40 K148 ["copiedText"]
      545 GETUPVAL                         R41 17
      546 GETTABLEKS                       R41 R41 K22 ["McpSetup"]
      548 GETTABLEKS                       R41 R41 K154 ["JsonConfigCopy"]
      550 SETTABLEKS                       R41 R40 K149 ["copyButtonTestId"]
      552 MOVE                             R41 R1
      553 CALL                             R41 0 1
      554 SETTABLEKS                       R41 R40 K37 ["LayoutOrder"]
      556 CALL                             R38 2 1
      557 SETTABLEKS                       R38 R37 K140 ["JsonConfigBlock"]
      559 GETUPVAL                         R38 11
      560 GETUPVAL                         R39 23
      561 DUPTABLE                         R40 K150 [{"label", "labelTestId", "data", "copiedText", "copyButtonTestId", "LayoutOrder"}]
      562 GETTABLEKS                       R41 R5 K155 ["StartupCommandLabel"]
      564 SETTABLEKS                       R41 R40 K86 ["label"]
      566 GETUPVAL                         R41 17
      567 GETTABLEKS                       R41 R41 K22 ["McpSetup"]
      569 GETTABLEKS                       R41 R41 K155 ["StartupCommandLabel"]
      571 SETTABLEKS                       R41 R40 K146 ["labelTestId"]
      573 GETTABLEKS                       R41 R19 K156 ["startup"]
      575 SETTABLEKS                       R41 R40 K147 ["data"]
      577 GETTABLEKS                       R41 R5 K153 ["Copied"]
      579 SETTABLEKS                       R41 R40 K148 ["copiedText"]
      581 GETUPVAL                         R41 17
      582 GETTABLEKS                       R41 R41 K22 ["McpSetup"]
      584 GETTABLEKS                       R41 R41 K157 ["StartupCommandCopy"]
      586 SETTABLEKS                       R41 R40 K149 ["copyButtonTestId"]
      588 MOVE                             R41 R1
      589 CALL                             R41 0 1
      590 SETTABLEKS                       R41 R40 K37 ["LayoutOrder"]
      592 CALL                             R38 2 1
      593 SETTABLEKS                       R38 R37 K141 ["StartupCommandBlock"]
      595 CALL                             R34 3 1
      596 SETTABLEKS                       R34 R33 K60 ["Content"]
      598 CALL                             R30 3 1
      599 SETTABLEKS                       R30 R29 K116 ["Accordion"]
      601 CALL                             R26 3 1
      602 SETTABLEKS                       R26 R25 K44 ["InstructionsAccordion"]
      604 GETUPVAL                         R26 11
      605 GETUPVAL                         R27 12
      606 DUPTABLE                         R28 K159 [{["tag"] = "row align-y-center size-full-0 auto-y padding-xsmall", ["LayoutOrder"]}]
      607 MOVE                             R29 R1
      608 CALL                             R29 0 1
      609 SETTABLEKS                       R29 R28 K37 ["LayoutOrder"]
      611 DUPTABLE                         R29 K163 [{"Before", "Link", "After"}]
      612 GETTABLEKS                       R32 R5 K45 ["LearnMore"]
      614 GETTABLEKS                       R32 R32 K164 ["before"]
      616 LENGTH                           R31 R32
      617 LOADN                            R32 0
      618 JUMPIFNOTLT                      R32 R31 ; [+16]
      620 GETUPVAL                         R30 11
      621 GETUPVAL                         R31 15
      622 DUPTABLE                         R32 K166 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-default", ["Text"], ["LayoutOrder"]}]
      623 GETTABLEKS                       R33 R5 K45 ["LearnMore"]
      625 GETTABLEKS                       R33 R33 K164 ["before"]
      627 SETTABLEKS                       R33 R32 K50 ["Text"]
      629 MOVE                             R33 R1
      630 CALL                             R33 0 1
      631 SETTABLEKS                       R33 R32 K37 ["LayoutOrder"]
      633 CALL                             R30 2 1
      634 JUMP                             ; [+1]
      635 LOADNIL                          R30
      636 SETTABLEKS                       R30 R29 K160 ["Before"]
      638 GETTABLEKS                       R32 R5 K45 ["LearnMore"]
      640 GETTABLEKS                       R32 R32 K167 ["link"]
      642 LENGTH                           R31 R32
      643 LOADN                            R32 0
      644 JUMPIFNOTLT                      R32 R31 ; [+18]
      646 GETUPVAL                         R30 11
      647 GETUPVAL                         R31 15
      648 DUPTABLE                         R32 K169 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-link", ["Text"], ["onActivated"], ["LayoutOrder"]}]
      649 GETTABLEKS                       R33 R5 K45 ["LearnMore"]
      651 GETTABLEKS                       R33 R33 K167 ["link"]
      653 SETTABLEKS                       R33 R32 K50 ["Text"]
      655 SETTABLEKS                       R21 R32 K90 ["onActivated"]
      657 MOVE                             R33 R1
      658 CALL                             R33 0 1
      659 SETTABLEKS                       R33 R32 K37 ["LayoutOrder"]
      661 CALL                             R30 2 1
      662 JUMP                             ; [+1]
      663 LOADNIL                          R30
      664 SETTABLEKS                       R30 R29 K161 ["Link"]
      666 GETTABLEKS                       R32 R5 K45 ["LearnMore"]
      668 GETTABLEKS                       R32 R32 K170 ["after"]
      670 LENGTH                           R31 R32
      671 LOADN                            R32 0
      672 JUMPIFNOTLT                      R32 R31 ; [+16]
      674 GETUPVAL                         R30 11
      675 GETUPVAL                         R31 15
      676 DUPTABLE                         R32 K166 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-default", ["Text"], ["LayoutOrder"]}]
      677 GETTABLEKS                       R33 R5 K45 ["LearnMore"]
      679 GETTABLEKS                       R33 R33 K170 ["after"]
      681 SETTABLEKS                       R33 R32 K50 ["Text"]
      683 MOVE                             R33 R1
      684 CALL                             R33 0 1
      685 SETTABLEKS                       R33 R32 K37 ["LayoutOrder"]
      687 CALL                             R30 2 1
      688 JUMP                             ; [+1]
      689 LOADNIL                          R30
      690 SETTABLEKS                       R30 R29 K162 ["After"]
      692 CALL                             R26 3 1
      693 SETTABLEKS                       R26 R25 K45 ["LearnMore"]
      695 CALL                             R22 3 -1
      696 RETURN                           R22 -1

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
       99 GETTABLEKS                       R14 R0 K26 ["Flags"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K27 ["Hooks"]
      106 GETTABLEKS                       R15 R15 K28 ["useAsyncGuard"]
      108 CALL                             R14 1 1
      109 GETTABLEKS                       R15 R5 K29 ["useExternalServer"]
      111 GETTABLEKS                       R16 R10 K30 ["Icon"]
      113 GETTABLEKS                       R17 R10 K31 ["Image"]
      115 GETTABLEKS                       R18 R10 K32 ["StatusIndicator"]
      117 GETTABLEKS                       R19 R10 K33 ["Text"]
      119 GETTABLEKS                       R20 R10 K34 ["Toggle"]
      121 GETTABLEKS                       R21 R10 K35 ["View"]
      123 GETTABLEKS                       R22 R10 K36 ["Enums"]
      125 GETTABLEKS                       R22 R22 K37 ["InputSize"]
      127 GETTABLEKS                       R23 R12 K38 ["createNextOrder"]
      129 GETTABLEKS                       R24 R11 K39 ["createElement"]
      131 DUPCLOSURE                       R25 K40 [PROTO_0]
      132 DUPCLOSURE                       R26 K41 [PROTO_1]
      133 DUPCLOSURE                       R27 K42 [PROTO_2]
      134 DUPCLOSURE                       R28 K43 [PROTO_3]
      135 CAPTURE                          VAL R26
      136 DUPCLOSURE                       R29 K44 [PROTO_15]
      137 CAPTURE                          VAL R23
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R13
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R8
      144 CAPTURE                          VAL R25
      145 CAPTURE                          VAL R4
      146 CAPTURE                          VAL R12
      147 CAPTURE                          VAL R28
      148 CAPTURE                          VAL R24
      149 CAPTURE                          VAL R21
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R17
      152 CAPTURE                          VAL R19
      153 CAPTURE                          VAL R20
      154 CAPTURE                          VAL R7
      155 CAPTURE                          VAL R22
      156 CAPTURE                          VAL R18
      157 CAPTURE                          VAL R3
      158 CAPTURE                          VAL R6
      159 CAPTURE                          VAL R1
      160 CAPTURE                          VAL R2
      161 GETTABLEKS                       R30 R11 K45 ["memo"]
      163 MOVE                             R31 R29
      164 CALL                             R30 1 -1
      165 RETURN                           R30 -1
