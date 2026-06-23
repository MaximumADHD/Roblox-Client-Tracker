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
       15 JUMPIF                           R3 ; [+10]
       16 DUPTABLE                         R5 K8 [{"before", "link", "after"}]
       17 SETTABLEKS                       R0 R5 K5 ["before"]
       19 LOADK                            R6 K9 [""]
       20 SETTABLEKS                       R6 R5 K6 ["link"]
       22 LOADK                            R6 K9 [""]
       23 SETTABLEKS                       R6 R5 K7 ["after"]
       25 RETURN                           R5 1
       26 AND                              R6 R2 R4
       27 FASTCALL2K                       ASSERT R6 K10 ; [+4]
       29 LOADK                            R7 K10 ["Expected openEnd and closeEnd"]
       30 GETIMPORT                        R5 K12 [assert]
       32 CALL                             R5 2 0
       33 DUPTABLE                         R5 K8 [{"before", "link", "after"}]
       34 LOADN                            R8 1
       35 SUBK                             R9 R1 K13 [1]
       36 FASTCALL3                        STRING_SUB R0 R8 R9
       38 MOVE                             R7 R0
       39 GETIMPORT                        R6 K15 [string.sub]
       41 CALL                             R6 3 1
       42 SETTABLEKS                       R6 R5 K5 ["before"]
       44 ADDK                             R8 R2 K13 [1]
       45 SUBK                             R9 R3 K13 [1]
       46 FASTCALL3                        STRING_SUB R0 R8 R9
       48 MOVE                             R7 R0
       49 GETIMPORT                        R6 K15 [string.sub]
       51 CALL                             R6 3 1
       52 SETTABLEKS                       R6 R5 K6 ["link"]
       54 ADDK                             R8 R4 K13 [1]
       55 FASTCALL2                        STRING_SUB R0 R8 ; [+4]
       57 MOVE                             R7 R0
       58 GETIMPORT                        R6 K15 [string.sub]
       60 CALL                             R6 2 1
       61 SETTABLEKS                       R6 R5 K7 ["after"]
       63 RETURN                           R5 1

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
        0 DUPTABLE                         R1 K2 [{"text", "copyText"}]
        1 SETTABLEKS                       R0 R1 K0 ["text"]
        3 LOADNIL                          R2
        4 SETTABLEKS                       R2 R1 K1 ["copyText"]
        6 DUPTABLE                         R2 K5 [{"startup", "json"}]
        7 SETTABLEKS                       R1 R2 K3 ["startup"]
        9 SETTABLEKS                       R1 R2 K4 ["json"]
       11 RETURN                           R2 1

PROTO_3:
        0 JUMPIF                           R0 ; [+12]
        1 DUPTABLE                         R4 K2 [{"text", "copyText"}]
        2 SETTABLEKS                       R2 R4 K0 ["text"]
        4 LOADNIL                          R5
        5 SETTABLEKS                       R5 R4 K1 ["copyText"]
        7 DUPTABLE                         R3 K5 [{"startup", "json"}]
        8 SETTABLEKS                       R4 R3 K3 ["startup"]
       10 SETTABLEKS                       R4 R3 K4 ["json"]
       12 RETURN                           R3 1
       13 GETTABLEKS                       R4 R0 K6 ["error"]
       15 FASTCALL1                        TYPEOF R4 ; [+2]
       16 GETIMPORT                        R3 K8 [typeof]
       18 CALL                             R3 1 1
       19 JUMPIFNOTEQKS                    R3 K9 ["string"] ; [+15]
       21 GETTABLEKS                       R4 R0 K6 ["error"]
       23 DUPTABLE                         R5 K2 [{"text", "copyText"}]
       24 SETTABLEKS                       R4 R5 K0 ["text"]
       26 LOADNIL                          R6
       27 SETTABLEKS                       R6 R5 K1 ["copyText"]
       29 DUPTABLE                         R3 K5 [{"startup", "json"}]
       30 SETTABLEKS                       R5 R3 K3 ["startup"]
       32 SETTABLEKS                       R5 R3 K4 ["json"]
       34 RETURN                           R3 1
       35 GETTABLEKS                       R3 R1 K10 ["status"]
       37 JUMPIFNOTEQKS                    R3 K11 ["loading"] ; [+13]
       39 DUPTABLE                         R4 K2 [{"text", "copyText"}]
       40 SETTABLEKS                       R2 R4 K0 ["text"]
       42 LOADNIL                          R5
       43 SETTABLEKS                       R5 R4 K1 ["copyText"]
       45 DUPTABLE                         R3 K5 [{"startup", "json"}]
       46 SETTABLEKS                       R4 R3 K3 ["startup"]
       48 SETTABLEKS                       R4 R3 K4 ["json"]
       50 RETURN                           R3 1
       51 GETTABLEKS                       R3 R1 K10 ["status"]
       53 JUMPIFNOTEQKS                    R3 K6 ["error"] ; [+15]
       55 GETTABLEKS                       R4 R1 K12 ["problem"]
       57 DUPTABLE                         R5 K2 [{"text", "copyText"}]
       58 SETTABLEKS                       R4 R5 K0 ["text"]
       60 LOADNIL                          R6
       61 SETTABLEKS                       R6 R5 K1 ["copyText"]
       63 DUPTABLE                         R3 K5 [{"startup", "json"}]
       64 SETTABLEKS                       R5 R3 K3 ["startup"]
       66 SETTABLEKS                       R5 R3 K4 ["json"]
       68 RETURN                           R3 1
       69 GETTABLEKS                       R3 R1 K13 ["value"]
       71 FASTCALL1                        TYPEOF R3 ; [+3]
       72 MOVE                             R5 R3
       73 GETIMPORT                        R4 K8 [typeof]
       75 CALL                             R4 1 1
       76 JUMPIFEQKS                       R4 K9 ["string"] ; [+14]
       78 DUPTABLE                         R5 K2 [{"text", "copyText"}]
       79 LOADK                            R6 K14 ["MCP Server not supported"]
       80 SETTABLEKS                       R6 R5 K0 ["text"]
       82 LOADNIL                          R6
       83 SETTABLEKS                       R6 R5 K1 ["copyText"]
       85 DUPTABLE                         R4 K5 [{"startup", "json"}]
       86 SETTABLEKS                       R5 R4 K3 ["startup"]
       88 SETTABLEKS                       R5 R4 K4 ["json"]
       90 RETURN                           R4 1
       91 GETUPVAL                         R4 0
       92 MOVE                             R5 R0
       93 CALL                             R4 1 1
       94 GETIMPORT                        R5 K16 [string.gsub]
       96 MOVE                             R6 R3
       97 GETIMPORT                        R7 K18 [string.rep]
       99 LOADK                            R8 K19 [" "]
      100 LOADN                            R9 4
      101 CALL                             R7 2 1
      102 GETIMPORT                        R8 K18 [string.rep]
      104 LOADK                            R9 K19 [" "]
      105 LOADN                            R10 2
      106 CALL                             R8 2 -1
      107 CALL                             R5 -1 1
      108 DUPTABLE                         R6 K5 [{"startup", "json"}]
      109 DUPTABLE                         R7 K2 [{"text", "copyText"}]
      110 SETTABLEKS                       R4 R7 K0 ["text"]
      112 SETTABLEKS                       R4 R7 K1 ["copyText"]
      114 SETTABLEKS                       R7 R6 K3 ["startup"]
      116 DUPTABLE                         R7 K2 [{"text", "copyText"}]
      117 SETTABLEKS                       R5 R7 K0 ["text"]
      119 SETTABLEKS                       R5 R7 K1 ["copyText"]
      121 SETTABLEKS                       R7 R6 K4 ["json"]
      123 RETURN                           R6 1

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
       77 DUPTABLE                         R6 K15 [{"linkStart", "linkEnd"}]
       78 LOADK                            R7 K16 ["\x<LS>\x"]
       79 SETTABLEKS                       R7 R6 K13 ["linkStart"]
       81 LOADK                            R7 K17 ["\x<LE>\x"]
       82 SETTABLEKS                       R7 R6 K14 ["linkEnd"]
       84 NAMECALL                         R2 R2 K12 ["getText"]
       86 CALL                             R2 4 -1
       87 CALL                             R1 -1 1
       88 SETTABLEKS                       R1 R0 K9 ["LearnMore"]
       90 RETURN                           R0 1

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
       34 DUPTABLE                         R7 K7 [{"expanded"}]
       35 LOADB                            R8 0
       36 SETTABLEKS                       R8 R7 K6 ["expanded"]
       38 CALL                             R6 1 2
       39 GETUPVAL                         R8 8
       40 GETTABLEKS                       R8 R8 K8 ["get"]
       42 CALL                             R8 0 1
       43 GETTABLEKS                       R10 R2 K9 ["state"]
       45 JUMPIFNOTEQKS                    R10 K10 ["disconnected"] ; [+2]
       47 LOADB                            R9 0 +1
       48 LOADB                            R9 1
       49 GETTABLEKS                       R10 R2 K11 ["isBusy"]
       51 JUMPIF                           R10 ; [+2]
       52 GETTABLEKS                       R10 R3 K12 ["isProcessing"]
       54 GETUPVAL                         R11 5
       55 GETTABLEKS                       R11 R11 K5 ["useState"]
       57 LOADN                            R12 0
       58 CALL                             R11 1 2
       59 GETTABLEKS                       R13 R2 K13 ["connectionCountObservable"]
       61 GETUPVAL                         R14 5
       62 GETTABLEKS                       R14 R14 K14 ["useEffect"]
       64 NEWCLOSURE                       R15 P1
       65 CAPTURE                          VAL R13
       66 CAPTURE                          VAL R12
       67 NEWTABLE                         R16 0 1
       69 MOVE                             R17 R13
       70 SETLIST                          R16 R17 1 [1]
       72 CALL                             R14 2 0
       73 LOADN                            R15 0
       74 JUMPIFNOTLT                      R15 R11 ; [+3]
       76 LOADK                            R14 K15 ["content-system-success"]
       77 JUMP                             ; [+1]
       78 LOADK                            R14 K16 ["content-system-neutral"]
       79 JUMPIFNOTEQKN                    R11 K17 [0] ; [+4]
       81 GETTABLEKS                       R15 R5 K18 ["NoClientsConnected"]
       83 JUMP                             ; [+23]
       84 JUMPIFNOTEQKN                    R11 K19 [1] ; [+8]
       86 GETUPVAL                         R15 6
       87 LOADK                            R17 K20 ["McpSetup"]
       88 LOADK                            R18 K21 ["ClientConnected"]
       89 NAMECALL                         R15 R15 K22 ["getText"]
       91 CALL                             R15 3 1
       92 JUMP                             ; [+14]
       93 GETUPVAL                         R15 6
       94 LOADK                            R17 K20 ["McpSetup"]
       95 LOADK                            R18 K23 ["ClientsConnected"]
       96 DUPTABLE                         R19 K25 [{"count"}]
       97 FASTCALL1                        TOSTRING R11 ; [+3]
       98 MOVE                             R21 R11
       99 GETIMPORT                        R20 K27 [tostring]
      101 CALL                             R20 1 1
      102 SETTABLEKS                       R20 R19 K24 ["count"]
      104 NAMECALL                         R15 R15 K22 ["getText"]
      106 CALL                             R15 4 1
      107 GETUPVAL                         R16 5
      108 GETTABLEKS                       R16 R16 K28 ["useCallback"]
      110 NEWCLOSURE                       R17 P2
      111 CAPTURE                          VAL R7
      112 NEWTABLE                         R18 0 0
      114 CALL                             R16 2 1
      115 GETUPVAL                         R17 9
      116 GETTABLEKS                       R17 R17 K29 ["useAsync"]
      118 NEWCLOSURE                       R18 P3
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R8
      121 NEWTABLE                         R19 0 1
      123 GETTABLEKS                       R20 R2 K30 ["setupInstructions"]
      125 SETLIST                          R19 R20 1 [1]
      127 CALL                             R17 2 1
      128 GETUPVAL                         R18 5
      129 GETTABLEKS                       R18 R18 K28 ["useCallback"]
      131 NEWCLOSURE                       R19 P4
      132 CAPTURE                          VAL R2
      133 NEWTABLE                         R20 0 2
      135 GETTABLEKS                       R21 R2 K31 ["start"]
      137 GETTABLEKS                       R22 R2 K32 ["stop"]
      139 SETLIST                          R20 R21 2 [1]
      141 CALL                             R18 2 1
      142 GETUPVAL                         R19 5
      143 GETTABLEKS                       R19 R19 K2 ["useMemo"]
      145 NEWCLOSURE                       R20 P5
      146 CAPTURE                          UPVAL U10
      147 CAPTURE                          VAL R2
      148 CAPTURE                          VAL R17
      149 CAPTURE                          VAL R5
      150 NEWTABLE                         R21 0 3
      152 GETTABLEKS                       R22 R2 K30 ["setupInstructions"]
      154 MOVE                             R23 R17
      155 GETTABLEKS                       R24 R5 K33 ["Loading"]
      157 SETLIST                          R21 R22 3 [1]
      159 CALL                             R19 2 1
      160 GETUPVAL                         R21 11
      161 CALL                             R21 0 1
      162 JUMPIFNOT                        R21 ; [+13]
      163 GETUPVAL                         R20 5
      164 GETTABLEKS                       R20 R20 K2 ["useMemo"]
      166 NEWCLOSURE                       R21 P6
      167 CAPTURE                          VAL R2
      168 NEWTABLE                         R22 0 1
      170 GETTABLEKS                       R23 R2 K30 ["setupInstructions"]
      172 SETLIST                          R22 R23 1 [1]
      174 CALL                             R20 2 1
      175 JUMP                             ; [+1]
      176 LOADNIL                          R20
      177 GETUPVAL                         R21 5
      178 GETTABLEKS                       R21 R21 K28 ["useCallback"]
      180 NEWCLOSURE                       R22 P7
      181 CAPTURE                          VAL R8
      182 CAPTURE                          UPVAL U12
      183 NEWTABLE                         R23 0 1
      185 GETTABLEKS                       R24 R8 K34 ["http"]
      187 SETLIST                          R23 R24 1 [1]
      189 CALL                             R21 2 1
      190 GETUPVAL                         R22 13
      191 GETUPVAL                         R23 14
      192 DUPTABLE                         R24 K37 [{"LayoutOrder", "tag"}]
      193 GETTABLEKS                       R25 R0 K35 ["LayoutOrder"]
      195 SETTABLEKS                       R25 R24 K35 ["LayoutOrder"]
      197 LOADK                            R25 K38 ["col size-full-0 auto-y gap-small padding-x-large padding-y-xsmall radius-medium bg-surface-100"]
      198 SETTABLEKS                       R25 R24 K36 ["tag"]
      200 DUPTABLE                         R25 K44 [{"Disclaimer", "TitleGroup", "QuickConnect", "InstructionsAccordion", "LearnMore"}]
      201 GETUPVAL                         R26 13
      202 GETUPVAL                         R27 14
      203 DUPTABLE                         R28 K45 [{"tag", "LayoutOrder"}]
      204 LOADK                            R29 K46 ["row size-full-0 auto-y padding-xsmall gap-small align-y-center radius-small stroke-standard stroke-muted"]
      205 SETTABLEKS                       R29 R28 K36 ["tag"]
      207 MOVE                             R29 R1
      208 CALL                             R29 0 1
      209 SETTABLEKS                       R29 R28 K35 ["LayoutOrder"]
      211 DUPTABLE                         R29 K49 [{"Icon", "Text"}]
      212 GETUPVAL                         R31 3
      213 CALL                             R31 0 1
      214 JUMPIFNOT                        R31 ; [+35]
      215 GETUPVAL                         R30 13
      216 GETUPVAL                         R31 15
      217 DUPTABLE                         R32 K53 [{"name", "style", "size", "LayoutOrder"}]
      218 GETUPVAL                         R33 4
      219 GETTABLEKS                       R33 R33 K54 ["Enums"]
      221 GETTABLEKS                       R33 R33 K55 ["IconName"]
      223 GETTABLEKS                       R33 R33 K56 ["CircleI"]
      225 SETTABLEKS                       R33 R32 K50 ["name"]
      227 GETTABLEKS                       R33 R4 K57 ["Color"]
      229 GETTABLEKS                       R33 R33 K58 ["Content"]
      231 GETTABLEKS                       R33 R33 K59 ["Muted"]
      233 SETTABLEKS                       R33 R32 K51 ["style"]
      235 GETUPVAL                         R33 4
      236 GETTABLEKS                       R33 R33 K54 ["Enums"]
      238 GETTABLEKS                       R33 R33 K60 ["IconSize"]
      240 GETTABLEKS                       R33 R33 K61 ["Medium"]
      242 SETTABLEKS                       R33 R32 K52 ["size"]
      244 MOVE                             R33 R1
      245 CALL                             R33 0 1
      246 SETTABLEKS                       R33 R32 K35 ["LayoutOrder"]
      248 CALL                             R30 2 1
      249 JUMP                             ; [+14]
      250 GETUPVAL                         R30 13
      251 GETUPVAL                         R31 16
      252 DUPTABLE                         R32 K63 [{"tag", "Image", "LayoutOrder"}]
      253 LOADK                            R33 K64 ["size-500-500 content-emphasis"]
      254 SETTABLEKS                       R33 R32 K36 ["tag"]
      256 LOADK                            R33 K65 ["icons/actions/info"]
      257 SETTABLEKS                       R33 R32 K62 ["Image"]
      259 MOVE                             R33 R1
      260 CALL                             R33 0 1
      261 SETTABLEKS                       R33 R32 K35 ["LayoutOrder"]
      263 CALL                             R30 2 1
      264 SETTABLEKS                       R30 R29 K47 ["Icon"]
      266 GETUPVAL                         R30 13
      267 GETUPVAL                         R31 17
      268 DUPTABLE                         R32 K66 [{"tag", "Text", "LayoutOrder"}]
      269 LOADK                            R33 K67 ["auto-xy shrink text-caption-small text-wrap text-align-x-left content-muted"]
      270 SETTABLEKS                       R33 R32 K36 ["tag"]
      272 GETTABLEKS                       R33 R5 K39 ["Disclaimer"]
      274 SETTABLEKS                       R33 R32 K48 ["Text"]
      276 MOVE                             R33 R1
      277 CALL                             R33 0 1
      278 SETTABLEKS                       R33 R32 K35 ["LayoutOrder"]
      280 CALL                             R30 2 1
      281 SETTABLEKS                       R30 R29 K48 ["Text"]
      283 CALL                             R26 3 1
      284 SETTABLEKS                       R26 R25 K39 ["Disclaimer"]
      286 GETUPVAL                         R26 13
      287 GETUPVAL                         R27 14
      288 DUPTABLE                         R28 K45 [{"tag", "LayoutOrder"}]
      289 LOADK                            R29 K68 ["col size-full-0 auto-y gap-xxsmall"]
      290 SETTABLEKS                       R29 R28 K36 ["tag"]
      292 MOVE                             R29 R1
      293 CALL                             R29 0 1
      294 SETTABLEKS                       R29 R28 K35 ["LayoutOrder"]
      296 DUPTABLE                         R29 K71 [{"TitleRow", "ConnectionIndicator"}]
      297 GETUPVAL                         R30 13
      298 GETUPVAL                         R31 14
      299 DUPTABLE                         R32 K45 [{"tag", "LayoutOrder"}]
      300 LOADK                            R33 K72 ["row size-full-0 auto-y align-y-center"]
      301 SETTABLEKS                       R33 R32 K36 ["tag"]
      303 MOVE                             R33 R1
      304 CALL                             R33 0 1
      305 SETTABLEKS                       R33 R32 K35 ["LayoutOrder"]
      307 DUPTABLE                         R33 K76 [{"Title", "Spacer", "Toggle"}]
      308 GETUPVAL                         R34 13
      309 GETUPVAL                         R35 17
      310 DUPTABLE                         R36 K66 [{"tag", "Text", "LayoutOrder"}]
      311 LOADK                            R37 K77 ["auto-xy text-title-medium bold text-align-x-left"]
      312 SETTABLEKS                       R37 R36 K36 ["tag"]
      314 GETTABLEKS                       R37 R5 K73 ["Title"]
      316 SETTABLEKS                       R37 R36 K48 ["Text"]
      318 MOVE                             R37 R1
      319 CALL                             R37 0 1
      320 SETTABLEKS                       R37 R36 K35 ["LayoutOrder"]
      322 CALL                             R34 2 1
      323 SETTABLEKS                       R34 R33 K73 ["Title"]
      325 GETUPVAL                         R34 13
      326 GETUPVAL                         R35 14
      327 DUPTABLE                         R36 K45 [{"tag", "LayoutOrder"}]
      328 LOADK                            R37 K78 ["fill"]
      329 SETTABLEKS                       R37 R36 K36 ["tag"]
      331 MOVE                             R37 R1
      332 CALL                             R37 0 1
      333 SETTABLEKS                       R37 R36 K35 ["LayoutOrder"]
      335 CALL                             R34 2 1
      336 SETTABLEKS                       R34 R33 K74 ["Spacer"]
      338 GETUPVAL                         R34 13
      339 GETUPVAL                         R35 18
      340 DUPTABLE                         R36 K84 [{"testId", "label", "isChecked", "isDisabled", "onActivated", "size", "LayoutOrder"}]
      341 GETUPVAL                         R37 19
      342 GETTABLEKS                       R37 R37 K20 ["McpSetup"]
      344 GETTABLEKS                       R37 R37 K75 ["Toggle"]
      346 SETTABLEKS                       R37 R36 K79 ["testId"]
      348 LOADK                            R37 K85 [""]
      349 SETTABLEKS                       R37 R36 K80 ["label"]
      351 SETTABLEKS                       R9 R36 K81 ["isChecked"]
      353 SETTABLEKS                       R10 R36 K82 ["isDisabled"]
      355 SETTABLEKS                       R18 R36 K83 ["onActivated"]
      357 GETUPVAL                         R37 20
      358 GETTABLEKS                       R37 R37 K86 ["Small"]
      360 SETTABLEKS                       R37 R36 K52 ["size"]
      362 MOVE                             R37 R1
      363 CALL                             R37 0 1
      364 SETTABLEKS                       R37 R36 K35 ["LayoutOrder"]
      366 CALL                             R34 2 1
      367 SETTABLEKS                       R34 R33 K75 ["Toggle"]
      369 CALL                             R30 3 1
      370 SETTABLEKS                       R30 R29 K69 ["TitleRow"]
      372 GETUPVAL                         R31 21
      373 CALL                             R31 0 1
      374 JUMPIF                           R31 ; [+93]
      375 GETUPVAL                         R30 13
      376 GETUPVAL                         R31 14
      377 DUPTABLE                         R32 K45 [{"tag", "LayoutOrder"}]
      378 NEWTABLE                         R33 2 0
      380 LOADB                            R34 1
      381 SETTABLEKS                       R34 R33 K87 ["row auto-xy align-y-center"]
      383 GETUPVAL                         R34 3
      384 CALL                             R34 0 1
      385 SETTABLEKS                       R34 R33 K88 ["gap-small"]
      387 SETTABLEKS                       R33 R32 K36 ["tag"]
      389 MOVE                             R33 R1
      390 CALL                             R33 0 1
      391 SETTABLEKS                       R33 R32 K35 ["LayoutOrder"]
      393 DUPTABLE                         R33 K90 [{"Icon", "StatusText"}]
      394 GETUPVAL                         R35 3
      395 CALL                             R35 0 1
      396 JUMPIFNOT                        R35 ; [+29]
      397 GETUPVAL                         R34 13
      398 GETUPVAL                         R35 22
      399 DUPTABLE                         R36 K92 [{"variant", "LayoutOrder"}]
      400 LOADN                            R38 0
      401 JUMPIFNOTLT                      R38 R11 ; [+9]
      403 GETUPVAL                         R37 4
      404 GETTABLEKS                       R37 R37 K54 ["Enums"]
      406 GETTABLEKS                       R37 R37 K93 ["StatusIndicatorVariant"]
      408 GETTABLEKS                       R37 R37 K94 ["Success"]
      410 JUMP                             ; [+7]
      411 GETUPVAL                         R37 4
      412 GETTABLEKS                       R37 R37 K54 ["Enums"]
      414 GETTABLEKS                       R37 R37 K93 ["StatusIndicatorVariant"]
      416 GETTABLEKS                       R37 R37 K95 ["Neutral"]
      418 SETTABLEKS                       R37 R36 K91 ["variant"]
      420 MOVE                             R37 R1
      421 CALL                             R37 0 1
      422 SETTABLEKS                       R37 R36 K35 ["LayoutOrder"]
      424 CALL                             R34 2 1
      425 JUMP                             ; [+23]
      426 GETUPVAL                         R34 13
      427 GETUPVAL                         R35 23
      428 DUPTABLE                         R36 K98 [{"icon", "tag", "iconTag", "LayoutOrder"}]
      429 LOADK                            R37 K99 ["component_assets/circle_16"]
      430 SETTABLEKS                       R37 R36 K96 ["icon"]
      432 LOADK                            R37 K100 ["size-400-400 align-x-center align-y-center"]
      433 SETTABLEKS                       R37 R36 K36 ["tag"]
      435 NEWTABLE                         R37 2 0
      437 LOADB                            R38 1
      438 SETTABLEKS                       R38 R37 K101 ["size-200-200"]
      440 LOADB                            R38 1
      441 SETTABLE                         R38 R37 R14
      442 SETTABLEKS                       R37 R36 K97 ["iconTag"]
      444 MOVE                             R37 R1
      445 CALL                             R37 0 1
      446 SETTABLEKS                       R37 R36 K35 ["LayoutOrder"]
      448 CALL                             R34 2 1
      449 SETTABLEKS                       R34 R33 K47 ["Icon"]
      451 GETUPVAL                         R34 13
      452 GETUPVAL                         R35 17
      453 DUPTABLE                         R36 K66 [{"tag", "Text", "LayoutOrder"}]
      454 LOADK                            R37 K102 ["auto-xy text-caption-small text-no-wrap text-align-x-left"]
      455 SETTABLEKS                       R37 R36 K36 ["tag"]
      457 SETTABLEKS                       R15 R36 K48 ["Text"]
      459 MOVE                             R37 R1
      460 CALL                             R37 0 1
      461 SETTABLEKS                       R37 R36 K35 ["LayoutOrder"]
      463 CALL                             R34 2 1
      464 SETTABLEKS                       R34 R33 K89 ["StatusText"]
      466 CALL                             R30 3 1
      467 JUMP                             ; [+1]
      468 LOADNIL                          R30
      469 SETTABLEKS                       R30 R29 K70 ["ConnectionIndicator"]
      471 CALL                             R26 3 1
      472 SETTABLEKS                       R26 R25 K40 ["TitleGroup"]
      474 GETUPVAL                         R27 11
      475 CALL                             R27 0 1
      476 JUMPIFNOT                        R27 ; [+17]
      477 JUMPIFNOT                        R20 ; [+16]
      478 GETUPVAL                         R26 13
      479 GETUPVAL                         R27 24
      480 DUPTABLE                         R28 K104 [{"isDisabled", "mcpServerInfo", "LayoutOrder"}]
      481 MOVE                             R29 R10
      482 JUMPIF                           R29 ; [+1]
      483 NOT                              R29 R9
      484 SETTABLEKS                       R29 R28 K82 ["isDisabled"]
      486 SETTABLEKS                       R20 R28 K103 ["mcpServerInfo"]
      488 MOVE                             R29 R1
      489 CALL                             R29 0 1
      490 SETTABLEKS                       R29 R28 K35 ["LayoutOrder"]
      492 CALL                             R26 2 1
      493 JUMP                             ; [+1]
      494 LOADNIL                          R26
      495 SETTABLEKS                       R26 R25 K41 ["QuickConnect"]
      497 GETUPVAL                         R26 13
      498 GETUPVAL                         R27 14
      499 DUPTABLE                         R28 K37 [{"LayoutOrder", "tag"}]
      500 MOVE                             R29 R1
      501 CALL                             R29 0 1
      502 SETTABLEKS                       R29 R28 K35 ["LayoutOrder"]
      504 LOADK                            R29 K105 ["size-full-0 auto-y"]
      505 SETTABLEKS                       R29 R28 K36 ["tag"]
      507 DUPTABLE                         R29 K107 [{"Accordion"}]
      508 GETUPVAL                         R30 13
      509 GETUPVAL                         R31 25
      510 GETTABLEKS                       R31 R31 K108 ["Root"]
      512 DUPTABLE                         R32 K111 [{"expanded", "contentId", "editThisContent"}]
      513 GETTABLEKS                       R33 R6 K6 ["expanded"]
      515 SETTABLEKS                       R33 R32 K6 ["expanded"]
      517 LOADK                            R33 K112 ["studio_mcp_instructions"]
      518 SETTABLEKS                       R33 R32 K109 ["contentId"]
      520 SETTABLEKS                       R16 R32 K110 ["editThisContent"]
      522 DUPTABLE                         R33 K114 [{"Header", "Content"}]
      523 GETUPVAL                         R34 13
      524 GETUPVAL                         R35 25
      525 GETTABLEKS                       R35 R35 K113 ["Header"]
      527 DUPTABLE                         R36 K117 [{"LayoutOrder", "AutomaticHeight", "IconSize", "VerticalAlignment"}]
      528 MOVE                             R37 R1
      529 CALL                             R37 0 1
      530 SETTABLEKS                       R37 R36 K35 ["LayoutOrder"]
      532 LOADB                            R37 1
      533 SETTABLEKS                       R37 R36 K115 ["AutomaticHeight"]
      535 LOADK                            R37 K118 ["medium"]
      536 SETTABLEKS                       R37 R36 K60 ["IconSize"]
      538 LOADK                            R37 K119 ["center"]
      539 SETTABLEKS                       R37 R36 K116 ["VerticalAlignment"]
      541 DUPTABLE                         R37 K120 [{"Title"}]
      542 GETUPVAL                         R38 13
      543 GETUPVAL                         R39 17
      544 DUPTABLE                         R40 K66 [{"tag", "Text", "LayoutOrder"}]
      545 LOADK                            R41 K121 ["auto-xy text-title-small bold text-align-x-left"]
      546 SETTABLEKS                       R41 R40 K36 ["tag"]
      548 GETTABLEKS                       R41 R5 K122 ["InstructionsHeader"]
      550 SETTABLEKS                       R41 R40 K48 ["Text"]
      552 MOVE                             R41 R1
      553 CALL                             R41 0 1
      554 SETTABLEKS                       R41 R40 K35 ["LayoutOrder"]
      556 CALL                             R38 2 1
      557 SETTABLEKS                       R38 R37 K73 ["Title"]
      559 CALL                             R34 3 1
      560 SETTABLEKS                       R34 R33 K113 ["Header"]
      562 GETUPVAL                         R34 13
      563 GETUPVAL                         R35 25
      564 GETTABLEKS                       R35 R35 K58 ["Content"]
      566 DUPTABLE                         R36 K125 [{"tag", "LayoutOrder", "UseVisible", "disableVerticalBar"}]
      567 LOADK                            R37 K126 ["col size-full-0 auto-y gap-small"]
      568 SETTABLEKS                       R37 R36 K36 ["tag"]
      570 MOVE                             R37 R1
      571 CALL                             R37 0 1
      572 SETTABLEKS                       R37 R36 K35 ["LayoutOrder"]
      574 LOADB                            R37 1
      575 SETTABLEKS                       R37 R36 K123 ["UseVisible"]
      577 LOADB                            R37 1
      578 SETTABLEKS                       R37 R36 K124 ["disableVerticalBar"]
      580 DUPTABLE                         R37 K130 [{"Instruction", "JsonConfigBlock", "StartupCommandBlock"}]
      581 GETUPVAL                         R38 13
      582 GETUPVAL                         R39 17
      583 DUPTABLE                         R40 K66 [{"tag", "Text", "LayoutOrder"}]
      584 LOADK                            R41 K131 ["auto-xy text-body-small text-wrap text-align-x-left"]
      585 SETTABLEKS                       R41 R40 K36 ["tag"]
      587 GETTABLEKS                       R41 R5 K132 ["InstructionsBody"]
      589 SETTABLEKS                       R41 R40 K48 ["Text"]
      591 MOVE                             R41 R1
      592 CALL                             R41 0 1
      593 SETTABLEKS                       R41 R40 K35 ["LayoutOrder"]
      595 CALL                             R38 2 1
      596 SETTABLEKS                       R38 R37 K127 ["Instruction"]
      598 GETUPVAL                         R38 13
      599 GETUPVAL                         R39 26
      600 DUPTABLE                         R40 K137 [{"label", "labelTestId", "data", "copiedText", "copyButtonTestId", "LayoutOrder"}]
      601 GETTABLEKS                       R41 R5 K138 ["JsonConfigLabel"]
      603 SETTABLEKS                       R41 R40 K80 ["label"]
      605 GETUPVAL                         R41 19
      606 GETTABLEKS                       R41 R41 K20 ["McpSetup"]
      608 GETTABLEKS                       R41 R41 K138 ["JsonConfigLabel"]
      610 SETTABLEKS                       R41 R40 K133 ["labelTestId"]
      612 GETTABLEKS                       R41 R19 K139 ["json"]
      614 SETTABLEKS                       R41 R40 K134 ["data"]
      616 GETTABLEKS                       R41 R5 K140 ["Copied"]
      618 SETTABLEKS                       R41 R40 K135 ["copiedText"]
      620 GETUPVAL                         R41 19
      621 GETTABLEKS                       R41 R41 K20 ["McpSetup"]
      623 GETTABLEKS                       R41 R41 K141 ["JsonConfigCopy"]
      625 SETTABLEKS                       R41 R40 K136 ["copyButtonTestId"]
      627 MOVE                             R41 R1
      628 CALL                             R41 0 1
      629 SETTABLEKS                       R41 R40 K35 ["LayoutOrder"]
      631 CALL                             R38 2 1
      632 SETTABLEKS                       R38 R37 K128 ["JsonConfigBlock"]
      634 GETUPVAL                         R38 13
      635 GETUPVAL                         R39 26
      636 DUPTABLE                         R40 K137 [{"label", "labelTestId", "data", "copiedText", "copyButtonTestId", "LayoutOrder"}]
      637 GETTABLEKS                       R41 R5 K142 ["StartupCommandLabel"]
      639 SETTABLEKS                       R41 R40 K80 ["label"]
      641 GETUPVAL                         R41 19
      642 GETTABLEKS                       R41 R41 K20 ["McpSetup"]
      644 GETTABLEKS                       R41 R41 K142 ["StartupCommandLabel"]
      646 SETTABLEKS                       R41 R40 K133 ["labelTestId"]
      648 GETTABLEKS                       R41 R19 K143 ["startup"]
      650 SETTABLEKS                       R41 R40 K134 ["data"]
      652 GETTABLEKS                       R41 R5 K140 ["Copied"]
      654 SETTABLEKS                       R41 R40 K135 ["copiedText"]
      656 GETUPVAL                         R41 19
      657 GETTABLEKS                       R41 R41 K20 ["McpSetup"]
      659 GETTABLEKS                       R41 R41 K144 ["StartupCommandCopy"]
      661 SETTABLEKS                       R41 R40 K136 ["copyButtonTestId"]
      663 MOVE                             R41 R1
      664 CALL                             R41 0 1
      665 SETTABLEKS                       R41 R40 K35 ["LayoutOrder"]
      667 CALL                             R38 2 1
      668 SETTABLEKS                       R38 R37 K129 ["StartupCommandBlock"]
      670 CALL                             R34 3 1
      671 SETTABLEKS                       R34 R33 K58 ["Content"]
      673 CALL                             R30 3 1
      674 SETTABLEKS                       R30 R29 K106 ["Accordion"]
      676 CALL                             R26 3 1
      677 SETTABLEKS                       R26 R25 K42 ["InstructionsAccordion"]
      679 GETUPVAL                         R26 13
      680 GETUPVAL                         R27 14
      681 DUPTABLE                         R28 K45 [{"tag", "LayoutOrder"}]
      682 LOADK                            R29 K145 ["row size-full-0 auto-y padding-xsmall align-y-center"]
      683 SETTABLEKS                       R29 R28 K36 ["tag"]
      685 MOVE                             R29 R1
      686 CALL                             R29 0 1
      687 SETTABLEKS                       R29 R28 K35 ["LayoutOrder"]
      689 DUPTABLE                         R29 K149 [{"Before", "Link", "After"}]
      690 GETTABLEKS                       R32 R5 K43 ["LearnMore"]
      692 GETTABLEKS                       R32 R32 K150 ["before"]
      694 LENGTH                           R31 R32
      695 LOADN                            R32 0
      696 JUMPIFNOTLT                      R32 R31 ; [+19]
      698 GETUPVAL                         R30 13
      699 GETUPVAL                         R31 17
      700 DUPTABLE                         R32 K66 [{"tag", "Text", "LayoutOrder"}]
      701 LOADK                            R33 K151 ["auto-xy text-body-small text-wrap text-align-x-left content-default"]
      702 SETTABLEKS                       R33 R32 K36 ["tag"]
      704 GETTABLEKS                       R33 R5 K43 ["LearnMore"]
      706 GETTABLEKS                       R33 R33 K150 ["before"]
      708 SETTABLEKS                       R33 R32 K48 ["Text"]
      710 MOVE                             R33 R1
      711 CALL                             R33 0 1
      712 SETTABLEKS                       R33 R32 K35 ["LayoutOrder"]
      714 CALL                             R30 2 1
      715 JUMP                             ; [+1]
      716 LOADNIL                          R30
      717 SETTABLEKS                       R30 R29 K146 ["Before"]
      719 GETTABLEKS                       R32 R5 K43 ["LearnMore"]
      721 GETTABLEKS                       R32 R32 K152 ["link"]
      723 LENGTH                           R31 R32
      724 LOADN                            R32 0
      725 JUMPIFNOTLT                      R32 R31 ; [+21]
      727 GETUPVAL                         R30 13
      728 GETUPVAL                         R31 17
      729 DUPTABLE                         R32 K153 [{"tag", "Text", "onActivated", "LayoutOrder"}]
      730 LOADK                            R33 K154 ["auto-xy text-body-small text-wrap text-align-x-left content-link text-underline"]
      731 SETTABLEKS                       R33 R32 K36 ["tag"]
      733 GETTABLEKS                       R33 R5 K43 ["LearnMore"]
      735 GETTABLEKS                       R33 R33 K152 ["link"]
      737 SETTABLEKS                       R33 R32 K48 ["Text"]
      739 SETTABLEKS                       R21 R32 K83 ["onActivated"]
      741 MOVE                             R33 R1
      742 CALL                             R33 0 1
      743 SETTABLEKS                       R33 R32 K35 ["LayoutOrder"]
      745 CALL                             R30 2 1
      746 JUMP                             ; [+1]
      747 LOADNIL                          R30
      748 SETTABLEKS                       R30 R29 K147 ["Link"]
      750 GETTABLEKS                       R32 R5 K43 ["LearnMore"]
      752 GETTABLEKS                       R32 R32 K155 ["after"]
      754 LENGTH                           R31 R32
      755 LOADN                            R32 0
      756 JUMPIFNOTLT                      R32 R31 ; [+19]
      758 GETUPVAL                         R30 13
      759 GETUPVAL                         R31 17
      760 DUPTABLE                         R32 K66 [{"tag", "Text", "LayoutOrder"}]
      761 LOADK                            R33 K151 ["auto-xy text-body-small text-wrap text-align-x-left content-default"]
      762 SETTABLEKS                       R33 R32 K36 ["tag"]
      764 GETTABLEKS                       R33 R5 K43 ["LearnMore"]
      766 GETTABLEKS                       R33 R33 K155 ["after"]
      768 SETTABLEKS                       R33 R32 K48 ["Text"]
      770 MOVE                             R33 R1
      771 CALL                             R33 0 1
      772 SETTABLEKS                       R33 R32 K35 ["LayoutOrder"]
      774 CALL                             R30 2 1
      775 JUMP                             ; [+1]
      776 LOADNIL                          R30
      777 SETTABLEKS                       R30 R29 K148 ["After"]
      779 CALL                             R26 3 1
      780 SETTABLEKS                       R26 R25 K43 ["LearnMore"]
      782 CALL                             R22 3 -1
      783 RETURN                           R22 -1

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
      117 GETTABLEKS                       R17 R17 K31 ["FFlagCAP2701"]
      119 CALL                             R16 1 1
      120 GETIMPORT                        R17 K5 [require]
      122 GETTABLEKS                       R18 R0 K29 ["Flags"]
      124 GETTABLEKS                       R18 R18 K32 ["FFlagDisableMCPConnectionIndicator"]
      126 CALL                             R17 1 1
      127 GETIMPORT                        R18 K5 [require]
      129 GETTABLEKS                       R19 R0 K29 ["Flags"]
      131 GETTABLEKS                       R19 R19 K33 ["FStringMCPDocsUrl"]
      133 CALL                             R18 1 1
      134 GETTABLEKS                       R19 R10 K34 ["Icon"]
      136 GETTABLEKS                       R20 R10 K35 ["Image"]
      138 GETTABLEKS                       R21 R10 K36 ["StatusIndicator"]
      140 GETTABLEKS                       R22 R10 K37 ["Text"]
      142 GETTABLEKS                       R23 R10 K38 ["Toggle"]
      144 GETTABLEKS                       R24 R10 K39 ["View"]
      146 GETTABLEKS                       R25 R10 K40 ["Enums"]
      148 GETTABLEKS                       R25 R25 K41 ["InputSize"]
      150 GETTABLEKS                       R26 R12 K42 ["createNextOrder"]
      152 GETTABLEKS                       R27 R11 K43 ["createElement"]
      154 DUPCLOSURE                       R28 K44 [PROTO_0]
      155 DUPCLOSURE                       R29 K45 [PROTO_1]
      156 DUPCLOSURE                       R30 K46 [PROTO_2]
      157 DUPCLOSURE                       R31 K47 [PROTO_3]
      158 CAPTURE                          VAL R29
      159 DUPCLOSURE                       R32 K48 [PROTO_15]
      160 CAPTURE                          VAL R26
      161 CAPTURE                          VAL R14
      162 CAPTURE                          VAL R13
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R11
      166 CAPTURE                          VAL R8
      167 CAPTURE                          VAL R28
      168 CAPTURE                          VAL R4
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R31
      171 CAPTURE                          VAL R16
      172 CAPTURE                          VAL R18
      173 CAPTURE                          VAL R27
      174 CAPTURE                          VAL R24
      175 CAPTURE                          VAL R19
      176 CAPTURE                          VAL R20
      177 CAPTURE                          VAL R22
      178 CAPTURE                          VAL R23
      179 CAPTURE                          VAL R7
      180 CAPTURE                          VAL R25
      181 CAPTURE                          VAL R17
      182 CAPTURE                          VAL R21
      183 CAPTURE                          VAL R3
      184 CAPTURE                          VAL R6
      185 CAPTURE                          VAL R1
      186 CAPTURE                          VAL R2
      187 GETTABLEKS                       R33 R11 K49 ["memo"]
      189 MOVE                             R34 R32
      190 CALL                             R33 1 -1
      191 RETURN                           R33 -1
