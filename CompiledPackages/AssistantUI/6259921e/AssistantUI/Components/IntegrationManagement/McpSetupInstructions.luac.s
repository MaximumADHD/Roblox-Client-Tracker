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
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R4 R4 K0 ["useMemo"]
        9 DUPCLOSURE                       R5 K1 [PROTO_4]
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 NEWTABLE                         R6 0 1
       14 GETUPVAL                         R7 4
       15 GETTABLEKS                       R7 R7 K2 ["locale"]
       17 SETLIST                          R6 R7 1 [1]
       19 CALL                             R4 2 1
       20 GETUPVAL                         R5 3
       21 GETTABLEKS                       R5 R5 K3 ["useState"]
       23 DUPTABLE                         R6 K5 [{"expanded"}]
       24 LOADB                            R7 0
       25 SETTABLEKS                       R7 R6 K4 ["expanded"]
       27 CALL                             R5 1 2
       28 GETUPVAL                         R7 6
       29 GETTABLEKS                       R7 R7 K6 ["get"]
       31 CALL                             R7 0 1
       32 GETTABLEKS                       R9 R2 K7 ["state"]
       34 JUMPIFNOTEQKS                    R9 K8 ["disconnected"] ; [+2]
       36 LOADB                            R8 0 +1
       37 LOADB                            R8 1
       38 GETTABLEKS                       R9 R2 K9 ["isBusy"]
       40 JUMPIF                           R9 ; [+2]
       41 GETTABLEKS                       R9 R3 K10 ["isProcessing"]
       43 GETUPVAL                         R10 3
       44 GETTABLEKS                       R10 R10 K3 ["useState"]
       46 LOADN                            R11 0
       47 CALL                             R10 1 2
       48 GETTABLEKS                       R12 R2 K11 ["connectionCountObservable"]
       50 GETUPVAL                         R13 3
       51 GETTABLEKS                       R13 R13 K12 ["useEffect"]
       53 NEWCLOSURE                       R14 P1
       54 CAPTURE                          VAL R12
       55 CAPTURE                          VAL R11
       56 NEWTABLE                         R15 0 1
       58 MOVE                             R16 R12
       59 SETLIST                          R15 R16 1 [1]
       61 CALL                             R13 2 0
       62 LOADN                            R14 0
       63 JUMPIFNOTLT                      R14 R10 ; [+3]
       65 LOADK                            R13 K13 ["content-system-success"]
       66 JUMP                             ; [+1]
       67 LOADK                            R13 K14 ["content-system-neutral"]
       68 JUMPIFNOTEQKN                    R10 K15 [0] ; [+4]
       70 GETTABLEKS                       R14 R4 K16 ["NoClientsConnected"]
       72 JUMP                             ; [+23]
       73 JUMPIFNOTEQKN                    R10 K17 [1] ; [+8]
       75 GETUPVAL                         R14 4
       76 LOADK                            R16 K18 ["McpSetup"]
       77 LOADK                            R17 K19 ["ClientConnected"]
       78 NAMECALL                         R14 R14 K20 ["getText"]
       80 CALL                             R14 3 1
       81 JUMP                             ; [+14]
       82 GETUPVAL                         R14 4
       83 LOADK                            R16 K18 ["McpSetup"]
       84 LOADK                            R17 K21 ["ClientsConnected"]
       85 DUPTABLE                         R18 K23 [{"count"}]
       86 FASTCALL1                        TOSTRING R10 ; [+3]
       87 MOVE                             R20 R10
       88 GETIMPORT                        R19 K25 [tostring]
       90 CALL                             R19 1 1
       91 SETTABLEKS                       R19 R18 K22 ["count"]
       93 NAMECALL                         R14 R14 K20 ["getText"]
       95 CALL                             R14 4 1
       96 GETUPVAL                         R15 3
       97 GETTABLEKS                       R15 R15 K26 ["useCallback"]
       99 NEWCLOSURE                       R16 P2
      100 CAPTURE                          VAL R6
      101 NEWTABLE                         R17 0 0
      103 CALL                             R15 2 1
      104 GETUPVAL                         R16 7
      105 GETTABLEKS                       R16 R16 K27 ["useAsync"]
      107 NEWCLOSURE                       R17 P3
      108 CAPTURE                          VAL R2
      109 CAPTURE                          VAL R7
      110 NEWTABLE                         R18 0 1
      112 GETTABLEKS                       R19 R2 K28 ["setupInstructions"]
      114 SETLIST                          R18 R19 1 [1]
      116 CALL                             R16 2 1
      117 GETUPVAL                         R17 3
      118 GETTABLEKS                       R17 R17 K26 ["useCallback"]
      120 NEWCLOSURE                       R18 P4
      121 CAPTURE                          VAL R2
      122 NEWTABLE                         R19 0 2
      124 GETTABLEKS                       R20 R2 K29 ["start"]
      126 GETTABLEKS                       R21 R2 K30 ["stop"]
      128 SETLIST                          R19 R20 2 [1]
      130 CALL                             R17 2 1
      131 GETUPVAL                         R18 3
      132 GETTABLEKS                       R18 R18 K0 ["useMemo"]
      134 NEWCLOSURE                       R19 P5
      135 CAPTURE                          UPVAL U8
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R4
      139 NEWTABLE                         R20 0 3
      141 GETTABLEKS                       R21 R2 K28 ["setupInstructions"]
      143 MOVE                             R22 R16
      144 GETTABLEKS                       R23 R4 K31 ["Loading"]
      146 SETLIST                          R20 R21 3 [1]
      148 CALL                             R18 2 1
      149 GETUPVAL                         R20 9
      150 CALL                             R20 0 1
      151 JUMPIFNOT                        R20 ; [+13]
      152 GETUPVAL                         R19 3
      153 GETTABLEKS                       R19 R19 K0 ["useMemo"]
      155 NEWCLOSURE                       R20 P6
      156 CAPTURE                          VAL R2
      157 NEWTABLE                         R21 0 1
      159 GETTABLEKS                       R22 R2 K28 ["setupInstructions"]
      161 SETLIST                          R21 R22 1 [1]
      163 CALL                             R19 2 1
      164 JUMP                             ; [+1]
      165 LOADNIL                          R19
      166 GETUPVAL                         R20 3
      167 GETTABLEKS                       R20 R20 K26 ["useCallback"]
      169 NEWCLOSURE                       R21 P7
      170 CAPTURE                          VAL R7
      171 CAPTURE                          UPVAL U10
      172 NEWTABLE                         R22 0 1
      174 GETTABLEKS                       R23 R7 K32 ["http"]
      176 SETLIST                          R22 R23 1 [1]
      178 CALL                             R20 2 1
      179 GETUPVAL                         R21 11
      180 GETUPVAL                         R22 12
      181 DUPTABLE                         R23 K35 [{"LayoutOrder", "tag"}]
      182 GETTABLEKS                       R24 R0 K33 ["LayoutOrder"]
      184 SETTABLEKS                       R24 R23 K33 ["LayoutOrder"]
      186 LOADK                            R24 K36 ["col size-full-0 auto-y gap-small padding-x-large padding-y-xsmall radius-medium bg-surface-100"]
      187 SETTABLEKS                       R24 R23 K34 ["tag"]
      189 DUPTABLE                         R24 K42 [{"Disclaimer", "TitleGroup", "QuickConnect", "InstructionsAccordion", "LearnMore"}]
      190 GETUPVAL                         R25 11
      191 GETUPVAL                         R26 12
      192 DUPTABLE                         R27 K43 [{"tag", "LayoutOrder"}]
      193 LOADK                            R28 K44 ["row size-full-0 auto-y padding-xsmall gap-small align-y-center radius-small stroke-standard stroke-muted"]
      194 SETTABLEKS                       R28 R27 K34 ["tag"]
      196 MOVE                             R28 R1
      197 CALL                             R28 0 1
      198 SETTABLEKS                       R28 R27 K33 ["LayoutOrder"]
      200 DUPTABLE                         R28 K47 [{"Icon", "Text"}]
      201 GETUPVAL                         R29 11
      202 GETUPVAL                         R30 13
      203 DUPTABLE                         R31 K49 [{"tag", "Image", "LayoutOrder"}]
      204 LOADK                            R32 K50 ["size-500-500 content-emphasis"]
      205 SETTABLEKS                       R32 R31 K34 ["tag"]
      207 LOADK                            R32 K51 ["icons/actions/info"]
      208 SETTABLEKS                       R32 R31 K48 ["Image"]
      210 MOVE                             R32 R1
      211 CALL                             R32 0 1
      212 SETTABLEKS                       R32 R31 K33 ["LayoutOrder"]
      214 CALL                             R29 2 1
      215 SETTABLEKS                       R29 R28 K45 ["Icon"]
      217 GETUPVAL                         R29 11
      218 GETUPVAL                         R30 14
      219 DUPTABLE                         R31 K52 [{"tag", "Text", "LayoutOrder"}]
      220 LOADK                            R32 K53 ["auto-xy shrink text-caption-small text-wrap text-align-x-left content-muted"]
      221 SETTABLEKS                       R32 R31 K34 ["tag"]
      223 GETTABLEKS                       R32 R4 K37 ["Disclaimer"]
      225 SETTABLEKS                       R32 R31 K46 ["Text"]
      227 MOVE                             R32 R1
      228 CALL                             R32 0 1
      229 SETTABLEKS                       R32 R31 K33 ["LayoutOrder"]
      231 CALL                             R29 2 1
      232 SETTABLEKS                       R29 R28 K46 ["Text"]
      234 CALL                             R25 3 1
      235 SETTABLEKS                       R25 R24 K37 ["Disclaimer"]
      237 GETUPVAL                         R25 11
      238 GETUPVAL                         R26 12
      239 DUPTABLE                         R27 K43 [{"tag", "LayoutOrder"}]
      240 LOADK                            R28 K54 ["col size-full-0 auto-y gap-xxsmall"]
      241 SETTABLEKS                       R28 R27 K34 ["tag"]
      243 MOVE                             R28 R1
      244 CALL                             R28 0 1
      245 SETTABLEKS                       R28 R27 K33 ["LayoutOrder"]
      247 DUPTABLE                         R28 K57 [{"TitleRow", "ConnectionIndicator"}]
      248 GETUPVAL                         R29 11
      249 GETUPVAL                         R30 12
      250 DUPTABLE                         R31 K43 [{"tag", "LayoutOrder"}]
      251 LOADK                            R32 K58 ["row size-full-0 auto-y align-y-center"]
      252 SETTABLEKS                       R32 R31 K34 ["tag"]
      254 MOVE                             R32 R1
      255 CALL                             R32 0 1
      256 SETTABLEKS                       R32 R31 K33 ["LayoutOrder"]
      258 DUPTABLE                         R32 K62 [{"Title", "Spacer", "Toggle"}]
      259 GETUPVAL                         R33 11
      260 GETUPVAL                         R34 14
      261 DUPTABLE                         R35 K52 [{"tag", "Text", "LayoutOrder"}]
      262 LOADK                            R36 K63 ["auto-xy text-title-medium bold text-align-x-left"]
      263 SETTABLEKS                       R36 R35 K34 ["tag"]
      265 GETTABLEKS                       R36 R4 K59 ["Title"]
      267 SETTABLEKS                       R36 R35 K46 ["Text"]
      269 MOVE                             R36 R1
      270 CALL                             R36 0 1
      271 SETTABLEKS                       R36 R35 K33 ["LayoutOrder"]
      273 CALL                             R33 2 1
      274 SETTABLEKS                       R33 R32 K59 ["Title"]
      276 GETUPVAL                         R33 11
      277 GETUPVAL                         R34 12
      278 DUPTABLE                         R35 K43 [{"tag", "LayoutOrder"}]
      279 LOADK                            R36 K64 ["fill"]
      280 SETTABLEKS                       R36 R35 K34 ["tag"]
      282 MOVE                             R36 R1
      283 CALL                             R36 0 1
      284 SETTABLEKS                       R36 R35 K33 ["LayoutOrder"]
      286 CALL                             R33 2 1
      287 SETTABLEKS                       R33 R32 K60 ["Spacer"]
      289 GETUPVAL                         R33 11
      290 GETUPVAL                         R34 15
      291 DUPTABLE                         R35 K71 [{"testId", "label", "isChecked", "isDisabled", "onActivated", "size", "LayoutOrder"}]
      292 GETUPVAL                         R36 16
      293 GETTABLEKS                       R36 R36 K18 ["McpSetup"]
      295 GETTABLEKS                       R36 R36 K61 ["Toggle"]
      297 SETTABLEKS                       R36 R35 K65 ["testId"]
      299 LOADK                            R36 K72 [""]
      300 SETTABLEKS                       R36 R35 K66 ["label"]
      302 SETTABLEKS                       R8 R35 K67 ["isChecked"]
      304 SETTABLEKS                       R9 R35 K68 ["isDisabled"]
      306 SETTABLEKS                       R17 R35 K69 ["onActivated"]
      308 GETUPVAL                         R36 17
      309 GETTABLEKS                       R36 R36 K73 ["Small"]
      311 SETTABLEKS                       R36 R35 K70 ["size"]
      313 MOVE                             R36 R1
      314 CALL                             R36 0 1
      315 SETTABLEKS                       R36 R35 K33 ["LayoutOrder"]
      317 CALL                             R33 2 1
      318 SETTABLEKS                       R33 R32 K61 ["Toggle"]
      320 CALL                             R29 3 1
      321 SETTABLEKS                       R29 R28 K55 ["TitleRow"]
      323 GETUPVAL                         R30 18
      324 CALL                             R30 0 1
      325 JUMPIF                           R30 ; [+53]
      326 GETUPVAL                         R29 11
      327 GETUPVAL                         R30 12
      328 DUPTABLE                         R31 K43 [{"tag", "LayoutOrder"}]
      329 LOADK                            R32 K74 ["row auto-xy align-y-center"]
      330 SETTABLEKS                       R32 R31 K34 ["tag"]
      332 MOVE                             R32 R1
      333 CALL                             R32 0 1
      334 SETTABLEKS                       R32 R31 K33 ["LayoutOrder"]
      336 DUPTABLE                         R32 K76 [{"Icon", "StatusText"}]
      337 GETUPVAL                         R33 11
      338 GETUPVAL                         R34 19
      339 DUPTABLE                         R35 K79 [{"icon", "tag", "iconTag", "LayoutOrder"}]
      340 LOADK                            R36 K80 ["component_assets/circle_16"]
      341 SETTABLEKS                       R36 R35 K77 ["icon"]
      343 LOADK                            R36 K81 ["size-400-400 align-x-center align-y-center"]
      344 SETTABLEKS                       R36 R35 K34 ["tag"]
      346 NEWTABLE                         R36 2 0
      348 LOADB                            R37 1
      349 SETTABLEKS                       R37 R36 K82 ["size-200-200"]
      351 LOADB                            R37 1
      352 SETTABLE                         R37 R36 R13
      353 SETTABLEKS                       R36 R35 K78 ["iconTag"]
      355 MOVE                             R36 R1
      356 CALL                             R36 0 1
      357 SETTABLEKS                       R36 R35 K33 ["LayoutOrder"]
      359 CALL                             R33 2 1
      360 SETTABLEKS                       R33 R32 K45 ["Icon"]
      362 GETUPVAL                         R33 11
      363 GETUPVAL                         R34 14
      364 DUPTABLE                         R35 K52 [{"tag", "Text", "LayoutOrder"}]
      365 LOADK                            R36 K83 ["auto-xy text-caption-small text-no-wrap text-align-x-left"]
      366 SETTABLEKS                       R36 R35 K34 ["tag"]
      368 SETTABLEKS                       R14 R35 K46 ["Text"]
      370 MOVE                             R36 R1
      371 CALL                             R36 0 1
      372 SETTABLEKS                       R36 R35 K33 ["LayoutOrder"]
      374 CALL                             R33 2 1
      375 SETTABLEKS                       R33 R32 K75 ["StatusText"]
      377 CALL                             R29 3 1
      378 JUMP                             ; [+1]
      379 LOADNIL                          R29
      380 SETTABLEKS                       R29 R28 K56 ["ConnectionIndicator"]
      382 CALL                             R25 3 1
      383 SETTABLEKS                       R25 R24 K38 ["TitleGroup"]
      385 GETUPVAL                         R26 9
      386 CALL                             R26 0 1
      387 JUMPIFNOT                        R26 ; [+17]
      388 JUMPIFNOT                        R19 ; [+16]
      389 GETUPVAL                         R25 11
      390 GETUPVAL                         R26 20
      391 DUPTABLE                         R27 K85 [{"isDisabled", "mcpServerInfo", "LayoutOrder"}]
      392 MOVE                             R28 R9
      393 JUMPIF                           R28 ; [+1]
      394 NOT                              R28 R8
      395 SETTABLEKS                       R28 R27 K68 ["isDisabled"]
      397 SETTABLEKS                       R19 R27 K84 ["mcpServerInfo"]
      399 MOVE                             R28 R1
      400 CALL                             R28 0 1
      401 SETTABLEKS                       R28 R27 K33 ["LayoutOrder"]
      403 CALL                             R25 2 1
      404 JUMP                             ; [+1]
      405 LOADNIL                          R25
      406 SETTABLEKS                       R25 R24 K39 ["QuickConnect"]
      408 GETUPVAL                         R25 11
      409 GETUPVAL                         R26 12
      410 DUPTABLE                         R27 K35 [{"LayoutOrder", "tag"}]
      411 MOVE                             R28 R1
      412 CALL                             R28 0 1
      413 SETTABLEKS                       R28 R27 K33 ["LayoutOrder"]
      415 LOADK                            R28 K86 ["size-full-0 auto-y"]
      416 SETTABLEKS                       R28 R27 K34 ["tag"]
      418 DUPTABLE                         R28 K88 [{"Accordion"}]
      419 GETUPVAL                         R29 11
      420 GETUPVAL                         R30 21
      421 GETTABLEKS                       R30 R30 K89 ["Root"]
      423 DUPTABLE                         R31 K92 [{"expanded", "contentId", "editThisContent"}]
      424 GETTABLEKS                       R32 R5 K4 ["expanded"]
      426 SETTABLEKS                       R32 R31 K4 ["expanded"]
      428 LOADK                            R32 K93 ["studio_mcp_instructions"]
      429 SETTABLEKS                       R32 R31 K90 ["contentId"]
      431 SETTABLEKS                       R15 R31 K91 ["editThisContent"]
      433 DUPTABLE                         R32 K96 [{"Header", "Content"}]
      434 GETUPVAL                         R33 11
      435 GETUPVAL                         R34 21
      436 GETTABLEKS                       R34 R34 K94 ["Header"]
      438 DUPTABLE                         R35 K100 [{"LayoutOrder", "AutomaticHeight", "IconSize", "VerticalAlignment"}]
      439 MOVE                             R36 R1
      440 CALL                             R36 0 1
      441 SETTABLEKS                       R36 R35 K33 ["LayoutOrder"]
      443 LOADB                            R36 1
      444 SETTABLEKS                       R36 R35 K97 ["AutomaticHeight"]
      446 LOADK                            R36 K101 ["medium"]
      447 SETTABLEKS                       R36 R35 K98 ["IconSize"]
      449 LOADK                            R36 K102 ["center"]
      450 SETTABLEKS                       R36 R35 K99 ["VerticalAlignment"]
      452 DUPTABLE                         R36 K103 [{"Title"}]
      453 GETUPVAL                         R37 11
      454 GETUPVAL                         R38 14
      455 DUPTABLE                         R39 K52 [{"tag", "Text", "LayoutOrder"}]
      456 LOADK                            R40 K104 ["auto-xy text-title-small bold text-align-x-left"]
      457 SETTABLEKS                       R40 R39 K34 ["tag"]
      459 GETTABLEKS                       R40 R4 K105 ["InstructionsHeader"]
      461 SETTABLEKS                       R40 R39 K46 ["Text"]
      463 MOVE                             R40 R1
      464 CALL                             R40 0 1
      465 SETTABLEKS                       R40 R39 K33 ["LayoutOrder"]
      467 CALL                             R37 2 1
      468 SETTABLEKS                       R37 R36 K59 ["Title"]
      470 CALL                             R33 3 1
      471 SETTABLEKS                       R33 R32 K94 ["Header"]
      473 GETUPVAL                         R33 11
      474 GETUPVAL                         R34 21
      475 GETTABLEKS                       R34 R34 K95 ["Content"]
      477 DUPTABLE                         R35 K108 [{"tag", "LayoutOrder", "UseVisible", "disableVerticalBar"}]
      478 LOADK                            R36 K109 ["col size-full-0 auto-y gap-small"]
      479 SETTABLEKS                       R36 R35 K34 ["tag"]
      481 MOVE                             R36 R1
      482 CALL                             R36 0 1
      483 SETTABLEKS                       R36 R35 K33 ["LayoutOrder"]
      485 LOADB                            R36 1
      486 SETTABLEKS                       R36 R35 K106 ["UseVisible"]
      488 LOADB                            R36 1
      489 SETTABLEKS                       R36 R35 K107 ["disableVerticalBar"]
      491 DUPTABLE                         R36 K113 [{"Instruction", "JsonConfigBlock", "StartupCommandBlock"}]
      492 GETUPVAL                         R37 11
      493 GETUPVAL                         R38 14
      494 DUPTABLE                         R39 K52 [{"tag", "Text", "LayoutOrder"}]
      495 LOADK                            R40 K114 ["auto-xy text-body-small text-wrap text-align-x-left"]
      496 SETTABLEKS                       R40 R39 K34 ["tag"]
      498 GETTABLEKS                       R40 R4 K115 ["InstructionsBody"]
      500 SETTABLEKS                       R40 R39 K46 ["Text"]
      502 MOVE                             R40 R1
      503 CALL                             R40 0 1
      504 SETTABLEKS                       R40 R39 K33 ["LayoutOrder"]
      506 CALL                             R37 2 1
      507 SETTABLEKS                       R37 R36 K110 ["Instruction"]
      509 GETUPVAL                         R37 11
      510 GETUPVAL                         R38 22
      511 DUPTABLE                         R39 K120 [{"label", "labelTestId", "data", "copiedText", "copyButtonTestId", "LayoutOrder"}]
      512 GETTABLEKS                       R40 R4 K121 ["JsonConfigLabel"]
      514 SETTABLEKS                       R40 R39 K66 ["label"]
      516 GETUPVAL                         R40 16
      517 GETTABLEKS                       R40 R40 K18 ["McpSetup"]
      519 GETTABLEKS                       R40 R40 K121 ["JsonConfigLabel"]
      521 SETTABLEKS                       R40 R39 K116 ["labelTestId"]
      523 GETTABLEKS                       R40 R18 K122 ["json"]
      525 SETTABLEKS                       R40 R39 K117 ["data"]
      527 GETTABLEKS                       R40 R4 K123 ["Copied"]
      529 SETTABLEKS                       R40 R39 K118 ["copiedText"]
      531 GETUPVAL                         R40 16
      532 GETTABLEKS                       R40 R40 K18 ["McpSetup"]
      534 GETTABLEKS                       R40 R40 K124 ["JsonConfigCopy"]
      536 SETTABLEKS                       R40 R39 K119 ["copyButtonTestId"]
      538 MOVE                             R40 R1
      539 CALL                             R40 0 1
      540 SETTABLEKS                       R40 R39 K33 ["LayoutOrder"]
      542 CALL                             R37 2 1
      543 SETTABLEKS                       R37 R36 K111 ["JsonConfigBlock"]
      545 GETUPVAL                         R37 11
      546 GETUPVAL                         R38 22
      547 DUPTABLE                         R39 K120 [{"label", "labelTestId", "data", "copiedText", "copyButtonTestId", "LayoutOrder"}]
      548 GETTABLEKS                       R40 R4 K125 ["StartupCommandLabel"]
      550 SETTABLEKS                       R40 R39 K66 ["label"]
      552 GETUPVAL                         R40 16
      553 GETTABLEKS                       R40 R40 K18 ["McpSetup"]
      555 GETTABLEKS                       R40 R40 K125 ["StartupCommandLabel"]
      557 SETTABLEKS                       R40 R39 K116 ["labelTestId"]
      559 GETTABLEKS                       R40 R18 K126 ["startup"]
      561 SETTABLEKS                       R40 R39 K117 ["data"]
      563 GETTABLEKS                       R40 R4 K123 ["Copied"]
      565 SETTABLEKS                       R40 R39 K118 ["copiedText"]
      567 GETUPVAL                         R40 16
      568 GETTABLEKS                       R40 R40 K18 ["McpSetup"]
      570 GETTABLEKS                       R40 R40 K127 ["StartupCommandCopy"]
      572 SETTABLEKS                       R40 R39 K119 ["copyButtonTestId"]
      574 MOVE                             R40 R1
      575 CALL                             R40 0 1
      576 SETTABLEKS                       R40 R39 K33 ["LayoutOrder"]
      578 CALL                             R37 2 1
      579 SETTABLEKS                       R37 R36 K112 ["StartupCommandBlock"]
      581 CALL                             R33 3 1
      582 SETTABLEKS                       R33 R32 K95 ["Content"]
      584 CALL                             R29 3 1
      585 SETTABLEKS                       R29 R28 K87 ["Accordion"]
      587 CALL                             R25 3 1
      588 SETTABLEKS                       R25 R24 K40 ["InstructionsAccordion"]
      590 GETUPVAL                         R25 11
      591 GETUPVAL                         R26 12
      592 DUPTABLE                         R27 K43 [{"tag", "LayoutOrder"}]
      593 LOADK                            R28 K128 ["row size-full-0 auto-y padding-xsmall align-y-center"]
      594 SETTABLEKS                       R28 R27 K34 ["tag"]
      596 MOVE                             R28 R1
      597 CALL                             R28 0 1
      598 SETTABLEKS                       R28 R27 K33 ["LayoutOrder"]
      600 DUPTABLE                         R28 K132 [{"Before", "Link", "After"}]
      601 GETTABLEKS                       R31 R4 K41 ["LearnMore"]
      603 GETTABLEKS                       R31 R31 K133 ["before"]
      605 LENGTH                           R30 R31
      606 LOADN                            R31 0
      607 JUMPIFNOTLT                      R31 R30 ; [+19]
      609 GETUPVAL                         R29 11
      610 GETUPVAL                         R30 14
      611 DUPTABLE                         R31 K52 [{"tag", "Text", "LayoutOrder"}]
      612 LOADK                            R32 K134 ["auto-xy text-body-small text-wrap text-align-x-left content-default"]
      613 SETTABLEKS                       R32 R31 K34 ["tag"]
      615 GETTABLEKS                       R32 R4 K41 ["LearnMore"]
      617 GETTABLEKS                       R32 R32 K133 ["before"]
      619 SETTABLEKS                       R32 R31 K46 ["Text"]
      621 MOVE                             R32 R1
      622 CALL                             R32 0 1
      623 SETTABLEKS                       R32 R31 K33 ["LayoutOrder"]
      625 CALL                             R29 2 1
      626 JUMP                             ; [+1]
      627 LOADNIL                          R29
      628 SETTABLEKS                       R29 R28 K129 ["Before"]
      630 GETTABLEKS                       R31 R4 K41 ["LearnMore"]
      632 GETTABLEKS                       R31 R31 K135 ["link"]
      634 LENGTH                           R30 R31
      635 LOADN                            R31 0
      636 JUMPIFNOTLT                      R31 R30 ; [+21]
      638 GETUPVAL                         R29 11
      639 GETUPVAL                         R30 14
      640 DUPTABLE                         R31 K136 [{"tag", "Text", "onActivated", "LayoutOrder"}]
      641 LOADK                            R32 K137 ["auto-xy text-body-small text-wrap text-align-x-left content-link text-underline"]
      642 SETTABLEKS                       R32 R31 K34 ["tag"]
      644 GETTABLEKS                       R32 R4 K41 ["LearnMore"]
      646 GETTABLEKS                       R32 R32 K135 ["link"]
      648 SETTABLEKS                       R32 R31 K46 ["Text"]
      650 SETTABLEKS                       R20 R31 K69 ["onActivated"]
      652 MOVE                             R32 R1
      653 CALL                             R32 0 1
      654 SETTABLEKS                       R32 R31 K33 ["LayoutOrder"]
      656 CALL                             R29 2 1
      657 JUMP                             ; [+1]
      658 LOADNIL                          R29
      659 SETTABLEKS                       R29 R28 K130 ["Link"]
      661 GETTABLEKS                       R31 R4 K41 ["LearnMore"]
      663 GETTABLEKS                       R31 R31 K138 ["after"]
      665 LENGTH                           R30 R31
      666 LOADN                            R31 0
      667 JUMPIFNOTLT                      R31 R30 ; [+19]
      669 GETUPVAL                         R29 11
      670 GETUPVAL                         R30 14
      671 DUPTABLE                         R31 K52 [{"tag", "Text", "LayoutOrder"}]
      672 LOADK                            R32 K134 ["auto-xy text-body-small text-wrap text-align-x-left content-default"]
      673 SETTABLEKS                       R32 R31 K34 ["tag"]
      675 GETTABLEKS                       R32 R4 K41 ["LearnMore"]
      677 GETTABLEKS                       R32 R32 K138 ["after"]
      679 SETTABLEKS                       R32 R31 K46 ["Text"]
      681 MOVE                             R32 R1
      682 CALL                             R32 0 1
      683 SETTABLEKS                       R32 R31 K33 ["LayoutOrder"]
      685 CALL                             R29 2 1
      686 JUMP                             ; [+1]
      687 LOADNIL                          R29
      688 SETTABLEKS                       R29 R28 K131 ["After"]
      690 CALL                             R25 3 1
      691 SETTABLEKS                       R25 R24 K41 ["LearnMore"]
      693 CALL                             R21 3 -1
      694 RETURN                           R21 -1

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
      110 GETTABLEKS                       R16 R16 K30 ["FStringMCPDocsUrl"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K5 [require]
      115 GETTABLEKS                       R17 R0 K29 ["Flags"]
      117 GETTABLEKS                       R17 R17 K31 ["FFlagCAP2701"]
      119 CALL                             R16 1 1
      120 GETIMPORT                        R17 K5 [require]
      122 GETTABLEKS                       R18 R0 K29 ["Flags"]
      124 GETTABLEKS                       R18 R18 K32 ["FFlagDisableMCPConnectionIndicator"]
      126 CALL                             R17 1 1
      127 GETTABLEKS                       R18 R10 K33 ["Image"]
      129 GETTABLEKS                       R19 R10 K34 ["Text"]
      131 GETTABLEKS                       R20 R10 K35 ["Toggle"]
      133 GETTABLEKS                       R21 R10 K36 ["View"]
      135 GETTABLEKS                       R22 R10 K37 ["Enums"]
      137 GETTABLEKS                       R22 R22 K38 ["InputSize"]
      139 GETTABLEKS                       R23 R12 K39 ["createNextOrder"]
      141 GETTABLEKS                       R24 R11 K40 ["createElement"]
      143 DUPCLOSURE                       R25 K41 [PROTO_0]
      144 DUPCLOSURE                       R26 K42 [PROTO_1]
      145 DUPCLOSURE                       R27 K43 [PROTO_2]
      146 DUPCLOSURE                       R28 K44 [PROTO_3]
      147 CAPTURE                          VAL R26
      148 DUPCLOSURE                       R29 K45 [PROTO_15]
      149 CAPTURE                          VAL R23
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R11
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R25
      155 CAPTURE                          VAL R4
      156 CAPTURE                          VAL R12
      157 CAPTURE                          VAL R28
      158 CAPTURE                          VAL R16
      159 CAPTURE                          VAL R15
      160 CAPTURE                          VAL R24
      161 CAPTURE                          VAL R21
      162 CAPTURE                          VAL R18
      163 CAPTURE                          VAL R19
      164 CAPTURE                          VAL R20
      165 CAPTURE                          VAL R7
      166 CAPTURE                          VAL R22
      167 CAPTURE                          VAL R17
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R6
      170 CAPTURE                          VAL R1
      171 CAPTURE                          VAL R2
      172 GETTABLEKS                       R30 R11 K46 ["memo"]
      174 MOVE                             R31 R29
      175 CALL                             R30 1 -1
      176 RETURN                           R30 -1
