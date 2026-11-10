PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["mcpServers"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 FASTCALL1                        TYPEOF R5 ; [+3]
        6 MOVE                             R7 R5
        7 GETIMPORT                        R6 K2 [typeof]
        9 CALL                             R6 1 1
       10 JUMPIFNOTEQKS                    R6 K3 ["table"] ; [+2]
       12 RETURN                           R4 2
       13 FORGLOOP                         R1 2 ; [-9]
       15 LOADNIL                          R1
       16 LOADNIL                          R2
       17 RETURN                           R1 2

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["mcpServers"]
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 FORGPREP                         R3
        5 FASTCALL1                        TYPEOF R7 ; [+3]
        6 MOVE                             R9 R7
        7 GETIMPORT                        R8 K2 [typeof]
        9 CALL                             R8 1 1
       10 JUMPIFNOTEQKS                    R8 K3 ["table"] ; [+4]
       12 MOVE                             R1 R6
       13 MOVE                             R2 R7
       14 JUMP                             ; [+4]
       15 FORGLOOP                         R3 2 ; [-11]
       17 LOADNIL                          R1
       18 LOADNIL                          R2
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETTABLEKS                       R3 R2 K4 ["command"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R3
       24 FASTCALL1                        TYPEOF R3 ; [+3]
       25 MOVE                             R5 R3
       26 GETIMPORT                        R4 K2 [typeof]
       28 CALL                             R4 1 1
       29 JUMPIFNOTEQKS                    R4 K5 ["string"] ; [+2]
       31 RETURN                           R3 1
       32 LOADNIL                          R4
       33 RETURN                           R4 1

PROTO_2:
        0 GETIMPORT                        R2 K2 [string.match]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K3 ["([^/\\]+)$"]
        4 CALL                             R2 2 1
        5 OR                               R1 R2 R0
        6 GETIMPORT                        R2 K5 [string.gsub]
        8 GETIMPORT                        R3 K7 [string.lower]
       10 MOVE                             R4 R1
       11 CALL                             R3 1 1
       12 LOADK                            R4 K8 ["%.exe$"]
       13 LOADK                            R5 K9 [""]
       14 CALL                             R2 3 1
       15 RETURN                           R2 1

PROTO_3:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["[^%w_%-]"]
        4 LOADK                            R4 K4 ["_"]
        5 CALL                             R1 3 1
        6 RETURN                           R1 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 GETIMPORT                        R2 K4 [string.lower]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 LOADK                            R3 K5 ["[^%w]"]
        7 LOADK                            R4 K6 [""]
        8 CALL                             R1 3 1
        9 RETURN                           R1 1

PROTO_5:
        0 JUMPIFEQKNIL                     R0 ; [+7]
        2 GETIMPORT                        R1 K2 [string.match]
        4 MOVE                             R2 R0
        5 LOADK                            R3 K3 ["^%s*$"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+3]
        8 LOADB                            R1 1
        9 LOADNIL                          R2
       10 RETURN                           R1 2
       11 GETIMPORT                        R1 K5 [pcall]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K6 ["decode"]
       16 MOVE                             R3 R0
       17 CALL                             R1 2 2
       18 JUMPIFNOT                        R1 ; [+7]
       19 FASTCALL1                        TYPEOF R2 ; [+3]
       20 MOVE                             R4 R2
       21 GETIMPORT                        R3 K8 [typeof]
       23 CALL                             R3 1 1
       24 JUMPIFEQKS                       R3 K9 ["table"] ; [+4]
       26 LOADB                            R3 0
       27 LOADNIL                          R4
       28 RETURN                           R3 2
       29 LOADB                            R3 1
       30 MOVE                             R4 R2
       31 RETURN                           R3 2

PROTO_6:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["encodePretty"]
        3 MOVE                             R6 R0
        4 MOVE                             R7 R1
        5 CALL                             R5 2 1
        6 MOVE                             R3 R5
        7 LOADK                            R4 K1 ["\n"]
        8 CONCAT                           R2 R3 R4
        9 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["EngineFeatureAssistantMcpCaptureHook"]
        3 JUMPIF                           R4 ; [+2]
        4 LOADNIL                          R4
        5 RETURN                           R4 1
        6 NEWTABLE                         R4 0 2
        8 MOVE                             R5 R1
        9 MOVE                             R6 R2
       10 SETLIST                          R4 R5 2 [1]
       12 JUMPIFNOT                        R3 ; [+9]
       13 GETIMPORT                        R5 K3 [table.move]
       15 MOVE                             R6 R3
       16 LOADN                            R7 1
       17 LENGTH                           R8 R3
       18 LENGTH                           R10 R4
       19 ADDK                             R9 R10 K4 [1]
       20 MOVE                             R10 R4
       21 CALL                             R5 5 0
       22 GETIMPORT                        R5 K6 [pcall]
       24 GETTABLEKS                       R6 R0 K7 ["getMCPCaptureHookCommandAsync"]
       26 MOVE                             R7 R4
       27 CALL                             R5 2 2
       28 JUMPIFNOT                        R5 ; [+10]
       29 FASTCALL1                        TYPEOF R6 ; [+3]
       30 MOVE                             R8 R6
       31 GETIMPORT                        R7 K9 [typeof]
       33 CALL                             R7 1 1
       34 JUMPIFNOTEQKS                    R7 K10 ["string"] ; [+4]
       36 JUMPIFEQKS                       R6 K11 [""] ; [+2]
       38 RETURN                           R6 1
       39 LOADNIL                          R7
       40 RETURN                           R7 1

PROTO_8:
        0 GETIMPORT                        R1 K2 [string.lower]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETIMPORT                        R3 K4 [string.find]
        6 MOVE                             R4 R1
        7 LOADK                            R5 K5 ["studiomcp"]
        8 LOADN                            R6 1
        9 LOADB                            R7 1
       10 CALL                             R3 4 1
       11 JUMPIFNOTEQKNIL                  R3 ; [+11]
       13 LOADB                            R2 0
       14 GETIMPORT                        R3 K4 [string.find]
       16 MOVE                             R4 R1
       17 LOADK                            R5 K6 ["mcp.bat"]
       18 LOADN                            R6 1
       19 LOADB                            R7 1
       20 CALL                             R3 4 1
       21 JUMPIFEQKNIL                     R3 ; [+12]
       23 GETIMPORT                        R3 K4 [string.find]
       25 MOVE                             R4 R0
       26 LOADK                            R5 K7 [" roblox-data-access "]
       27 LOADN                            R6 1
       28 LOADB                            R7 1
       29 CALL                             R3 4 1
       30 JUMPIFNOTEQKNIL                  R3 ; [+2]
       32 LOADB                            R2 0 +1
       33 LOADB                            R2 1
       34 RETURN                           R2 1

PROTO_9:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+4]
        7 GETTABLEKS                       R1 R0 K3 ["command"]
        9 JUMP                             ; [+1]
       10 LOADNIL                          R1
       11 FASTCALL1                        TYPEOF R1 ; [+3]
       12 MOVE                             R3 R1
       13 GETIMPORT                        R2 K1 [typeof]
       15 CALL                             R2 1 1
       16 JUMPIFEQKS                       R2 K4 ["string"] ; [+3]
       18 LOADB                            R2 0
       19 RETURN                           R2 1
       20 GETUPVAL                         R2 0
       21 MOVE                             R3 R1
       22 CALL                             R2 1 1
       23 RETURN                           R2 1

PROTO_10:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+4]
        7 GETTABLEKS                       R2 R0 K3 ["command"]
        9 JUMP                             ; [+1]
       10 LOADNIL                          R2
       11 FASTCALL1                        TYPEOF R2 ; [+3]
       12 MOVE                             R4 R2
       13 GETIMPORT                        R3 K1 [typeof]
       15 CALL                             R3 1 1
       16 JUMPIFEQKS                       R3 K4 ["string"] ; [+3]
       18 LOADB                            R1 0
       19 JUMP                             ; [+4]
       20 GETUPVAL                         R3 0
       21 MOVE                             R4 R2
       22 CALL                             R3 1 1
       23 MOVE                             R1 R3
       24 JUMPIFNOT                        R1 ; [+2]
       25 LOADB                            R1 1
       26 RETURN                           R1 1
       27 FASTCALL1                        TYPEOF R0 ; [+3]
       28 MOVE                             R3 R0
       29 GETIMPORT                        R2 K1 [typeof]
       31 CALL                             R2 1 1
       32 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+4]
       34 GETTABLEKS                       R1 R0 K5 ["hooks"]
       36 JUMP                             ; [+1]
       37 LOADNIL                          R1
       38 FASTCALL1                        TYPEOF R1 ; [+3]
       39 MOVE                             R3 R1
       40 GETIMPORT                        R2 K1 [typeof]
       42 CALL                             R2 1 1
       43 JUMPIFEQKS                       R2 K2 ["table"] ; [+3]
       45 LOADB                            R2 0
       46 RETURN                           R2 1
       47 MOVE                             R2 R1
       48 LOADNIL                          R3
       49 LOADNIL                          R4
       50 FORGPREP                         R2
       51 FASTCALL1                        TYPEOF R6 ; [+3]
       52 MOVE                             R10 R6
       53 GETIMPORT                        R9 K1 [typeof]
       55 CALL                             R9 1 1
       56 JUMPIFNOTEQKS                    R9 K2 ["table"] ; [+4]
       58 GETTABLEKS                       R8 R6 K3 ["command"]
       60 JUMP                             ; [+1]
       61 LOADNIL                          R8
       62 FASTCALL1                        TYPEOF R8 ; [+3]
       63 MOVE                             R10 R8
       64 GETIMPORT                        R9 K1 [typeof]
       66 CALL                             R9 1 1
       67 JUMPIFEQKS                       R9 K4 ["string"] ; [+3]
       69 LOADB                            R7 0
       70 JUMP                             ; [+4]
       71 GETUPVAL                         R9 0
       72 MOVE                             R10 R8
       73 CALL                             R9 1 1
       74 MOVE                             R7 R9
       75 JUMPIFNOT                        R7 ; [+2]
       76 LOADB                            R7 1
       77 RETURN                           R7 1
       78 FORGLOOP                         R2 2 ; [-28]
       80 LOADB                            R2 0
       81 RETURN                           R2 1

PROTO_11:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+4]
        7 GETTABLEKS                       R2 R0 K3 ["command"]
        9 JUMP                             ; [+1]
       10 LOADNIL                          R2
       11 FASTCALL1                        TYPEOF R2 ; [+3]
       12 MOVE                             R4 R2
       13 GETIMPORT                        R3 K1 [typeof]
       15 CALL                             R3 1 1
       16 JUMPIFEQKS                       R3 K4 ["string"] ; [+3]
       18 LOADB                            R1 0
       19 JUMP                             ; [+4]
       20 GETUPVAL                         R3 0
       21 MOVE                             R4 R2
       22 CALL                             R3 1 1
       23 MOVE                             R1 R3
       24 JUMPIFNOT                        R1 ; [+2]
       25 LOADNIL                          R1
       26 RETURN                           R1 1
       27 FASTCALL1                        TYPEOF R0 ; [+3]
       28 MOVE                             R3 R0
       29 GETIMPORT                        R2 K1 [typeof]
       31 CALL                             R2 1 1
       32 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+4]
       34 GETTABLEKS                       R1 R0 K5 ["hooks"]
       36 JUMP                             ; [+1]
       37 LOADNIL                          R1
       38 FASTCALL1                        TYPEOF R1 ; [+3]
       39 MOVE                             R3 R1
       40 GETIMPORT                        R2 K1 [typeof]
       42 CALL                             R2 1 1
       43 JUMPIFEQKS                       R2 K2 ["table"] ; [+2]
       45 RETURN                           R0 1
       46 NEWTABLE                         R2 0 0
       48 MOVE                             R3 R1
       49 LOADNIL                          R4
       50 LOADNIL                          R5
       51 FORGPREP                         R3
       52 FASTCALL1                        TYPEOF R7 ; [+3]
       53 MOVE                             R11 R7
       54 GETIMPORT                        R10 K1 [typeof]
       56 CALL                             R10 1 1
       57 JUMPIFNOTEQKS                    R10 K2 ["table"] ; [+4]
       59 GETTABLEKS                       R9 R7 K3 ["command"]
       61 JUMP                             ; [+1]
       62 LOADNIL                          R9
       63 FASTCALL1                        TYPEOF R9 ; [+3]
       64 MOVE                             R11 R9
       65 GETIMPORT                        R10 K1 [typeof]
       67 CALL                             R10 1 1
       68 JUMPIFEQKS                       R10 K4 ["string"] ; [+3]
       70 LOADB                            R8 0
       71 JUMP                             ; [+4]
       72 GETUPVAL                         R10 0
       73 MOVE                             R11 R9
       74 CALL                             R10 1 1
       75 MOVE                             R8 R10
       76 JUMPIF                           R8 ; [+7]
       77 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       79 MOVE                             R9 R2
       80 MOVE                             R10 R7
       81 GETIMPORT                        R8 K7 [table.insert]
       83 CALL                             R8 2 0
       84 FORGLOOP                         R3 2 ; [-33]
       86 LENGTH                           R3 R2
       87 JUMPIFNOTEQKN                    R3 K8 [0] ; [+3]
       89 LOADNIL                          R3
       90 RETURN                           R3 1
       91 GETIMPORT                        R3 K10 [table.clone]
       93 MOVE                             R4 R0
       94 CALL                             R3 1 1
       95 SETTABLEKS                       R2 R3 K5 ["hooks"]
       97 RETURN                           R3 1

PROTO_12:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETTABLEKS                       R2 R0 K0 ["hooks"]
        3 FASTCALL1                        TYPEOF R2 ; [+2]
        4 GETIMPORT                        R1 K2 [typeof]
        6 CALL                             R1 1 1
        7 JUMPIFEQKS                       R1 K3 ["table"] ; [+3]
        9 LOADB                            R1 0
       10 RETURN                           R1 1
       11 GETTABLEKS                       R1 R0 K0 ["hooks"]
       13 LOADNIL                          R2
       14 LOADNIL                          R3
       15 FORGPREP                         R1
       16 FASTCALL1                        TYPEOF R5 ; [+3]
       17 MOVE                             R7 R5
       18 GETIMPORT                        R6 K2 [typeof]
       20 CALL                             R6 1 1
       21 JUMPIFNOTEQKS                    R6 K3 ["table"] ; [+13]
       23 MOVE                             R6 R5
       24 LOADNIL                          R7
       25 LOADNIL                          R8
       26 FORGPREP                         R6
       27 GETUPVAL                         R11 0
       28 MOVE                             R12 R10
       29 CALL                             R11 1 1
       30 JUMPIFNOT                        R11 ; [+2]
       31 LOADB                            R11 1
       32 RETURN                           R11 1
       33 FORGLOOP                         R6 2 ; [-7]
       35 FORGLOOP                         R1 2 ; [-20]
       37 LOADB                            R1 0
       38 RETURN                           R1 1

PROTO_13:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETIMPORT                        R2 K2 [table.clone]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMP                             ; [+2]
        6 NEWTABLE                         R2 0 0
        8 NEWTABLE                         R3 0 0
       10 NEWTABLE                         R4 0 0
       12 GETTABLEKS                       R6 R2 K3 ["hooks"]
       14 FASTCALL1                        TYPEOF R6 ; [+2]
       15 GETIMPORT                        R5 K5 [typeof]
       17 CALL                             R5 1 1
       18 JUMPIFNOTEQKS                    R5 K0 ["table"] ; [+80]
       20 GETTABLEKS                       R5 R2 K3 ["hooks"]
       22 LOADNIL                          R6
       23 LOADNIL                          R7
       24 FORGPREP                         R5
       25 FASTCALL1                        TYPEOF R9 ; [+3]
       26 MOVE                             R11 R9
       27 GETIMPORT                        R10 K5 [typeof]
       29 CALL                             R10 1 1
       30 JUMPIFEQKS                       R10 K0 ["table"] ; [+3]
       32 SETTABLE                         R9 R3 R8
       33 JUMP                             ; [+63]
       34 JUMPIFNOT                        R1 ; [+2]
       35 GETTABLE                         R10 R1 R8
       36 JUMP                             ; [+1]
       37 LOADNIL                          R10
       38 NEWTABLE                         R11 0 0
       40 MOVE                             R12 R9
       41 LOADNIL                          R13
       42 LOADNIL                          R14
       43 FORGPREP                         R12
       44 GETUPVAL                         R17 0
       45 MOVE                             R18 R16
       46 CALL                             R17 1 1
       47 JUMPIF                           R17 ; [+8]
       48 FASTCALL2                        TABLE_INSERT R11 R16 ; [+5]
       50 MOVE                             R18 R11
       51 MOVE                             R19 R16
       52 GETIMPORT                        R17 K7 [table.insert]
       54 CALL                             R17 2 0
       55 JUMP                             ; [+22]
       56 JUMPIFNOT                        R10 ; [+10]
       57 GETIMPORT                        R17 K9 [table.move]
       59 MOVE                             R18 R10
       60 LOADN                            R19 1
       61 LENGTH                           R20 R10
       62 LENGTH                           R22 R11
       63 ADDK                             R21 R22 K10 [1]
       64 MOVE                             R22 R11
       65 CALL                             R17 5 0
       66 LOADNIL                          R10
       67 GETUPVAL                         R17 1
       68 MOVE                             R18 R16
       69 CALL                             R17 1 1
       70 JUMPIFNOT                        R17 ; [+7]
       71 FASTCALL2                        TABLE_INSERT R11 R17 ; [+5]
       73 MOVE                             R19 R11
       74 MOVE                             R20 R17
       75 GETIMPORT                        R18 K7 [table.insert]
       77 CALL                             R18 2 0
       78 FORGLOOP                         R12 2 ; [-35]
       80 JUMPIFNOT                        R10 ; [+9]
       81 GETIMPORT                        R12 K9 [table.move]
       83 MOVE                             R13 R10
       84 LOADN                            R14 1
       85 LENGTH                           R15 R10
       86 LENGTH                           R17 R11
       87 ADDK                             R16 R17 K10 [1]
       88 MOVE                             R17 R11
       89 CALL                             R12 5 0
       90 LOADB                            R12 1
       91 SETTABLE                         R12 R4 R8
       92 LENGTH                           R12 R11
       93 LOADN                            R13 0
       94 JUMPIFNOTLT                      R13 R12 ; [+2]
       96 SETTABLE                         R11 R3 R8
       97 FORGLOOP                         R5 2 ; [-73]
       99 JUMPIFNOT                        R1 ; [+13]
      100 MOVE                             R5 R1
      101 LOADNIL                          R6
      102 LOADNIL                          R7
      103 FORGPREP                         R5
      104 GETTABLE                         R10 R4 R8
      105 JUMPIF                           R10 ; [+5]
      106 GETIMPORT                        R10 K2 [table.clone]
      108 MOVE                             R11 R9
      109 CALL                             R10 1 1
      110 SETTABLE                         R10 R3 R8
      111 FORGLOOP                         R5 2 ; [-8]
      113 GETIMPORT                        R6 K12 [next]
      115 MOVE                             R7 R3
      116 CALL                             R6 1 1
      117 JUMPIFEQKNIL                     R6 ; [+3]
      119 MOVE                             R5 R3
      120 JUMP                             ; [+1]
      121 LOADNIL                          R5
      122 SETTABLEKS                       R5 R2 K3 ["hooks"]
      124 RETURN                           R2 1

PROTO_14:
        0 LOADK                            R1 K0 ["mcp__%*__.*"]
        1 GETIMPORT                        R3 K3 [string.gsub]
        3 MOVE                             R4 R0
        4 LOADK                            R5 K4 ["[^%w_%-]"]
        5 LOADK                            R6 K5 ["_"]
        6 CALL                             R3 3 1
        7 NAMECALL                         R1 R1 K6 ["format"]
        9 CALL                             R1 2 1
       10 RETURN                           R1 1

PROTO_15:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETIMPORT                        R7 K2 [string.gsub]
        8 GETIMPORT                        R8 K4 [string.lower]
       10 MOVE                             R9 R6
       11 CALL                             R8 1 1
       12 LOADK                            R9 K5 ["[^%w]"]
       13 LOADK                            R10 K6 [""]
       14 CALL                             R7 3 1
       15 JUMPIFEQKS                       R7 K6 [""] ; [+14]
       17 GETIMPORT                        R8 K9 [table.find]
       19 MOVE                             R9 R1
       20 MOVE                             R10 R7
       21 CALL                             R8 2 1
       22 JUMPIF                           R8 ; [+7]
       23 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       25 MOVE                             R9 R1
       26 MOVE                             R10 R7
       27 GETIMPORT                        R8 K11 [table.insert]
       29 CALL                             R8 2 0
       30 FORGLOOP                         R2 2 ; [-25]
       32 RETURN                           R1 1

PROTO_16:
        0 DUPTABLE                         R2 K3 [{"beforeSubmitPrompt", "afterMCPExecution", "stop"}]
        1 NEWTABLE                         R3 0 1
        3 DUPTABLE                         R4 K7 [{["command"], ["timeout"] = 5}]
        4 MOVE                             R5 R0
        5 LOADK                            R6 K8 ["cursor"]
        6 LOADK                            R7 K9 ["prompt"]
        7 CALL                             R5 2 1
        8 SETTABLEKS                       R5 R4 K4 ["command"]
       10 SETLIST                          R3 R4 1 [1]
       12 SETTABLEKS                       R3 R2 K0 ["beforeSubmitPrompt"]
       14 NEWTABLE                         R3 0 1
       16 DUPTABLE                         R4 K7 [{["command"], ["timeout"] = 5}]
       17 MOVE                             R5 R0
       18 LOADK                            R6 K8 ["cursor"]
       19 LOADK                            R7 K10 ["tool"]
       20 GETUPVAL                         R8 0
       21 MOVE                             R9 R1
       22 CALL                             R8 1 1
       23 CALL                             R5 3 1
       24 SETTABLEKS                       R5 R4 K4 ["command"]
       26 SETLIST                          R3 R4 1 [1]
       28 SETTABLEKS                       R3 R2 K1 ["afterMCPExecution"]
       30 NEWTABLE                         R3 0 1
       32 DUPTABLE                         R4 K7 [{["command"], ["timeout"] = 5}]
       33 MOVE                             R5 R0
       34 LOADK                            R6 K8 ["cursor"]
       35 LOADK                            R7 K2 ["stop"]
       36 CALL                             R5 2 1
       37 SETTABLEKS                       R5 R4 K4 ["command"]
       39 SETLIST                          R3 R4 1 [1]
       41 SETTABLEKS                       R3 R2 K2 ["stop"]
       43 RETURN                           R2 1

PROTO_17:
        0 DUPTABLE                         R4 K2 [{"matcher", "hooks"}]
        1 SETTABLEKS                       R3 R4 K0 ["matcher"]
        3 NEWTABLE                         R5 0 1
        5 DUPTABLE                         R6 K7 [{["type"] = "command", ["command"], ["timeout"] = 5}]
        6 MOVE                             R7 R0
        7 MOVE                             R8 R1
        8 MOVE                             R9 R2
        9 CALL                             R7 2 1
       10 SETTABLEKS                       R7 R6 K4 ["command"]
       12 SETLIST                          R5 R6 1 [1]
       14 SETTABLEKS                       R5 R4 K1 ["hooks"]
       16 RETURN                           R4 1

PROTO_18:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R2
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETUPVAL                         R11 0
        7 MOVE                             R12 R0
        8 MOVE                             R13 R1
        9 LOADK                            R14 K0 ["tool"]
       10 LOADK                            R15 K1 ["mcp__%*__.*"]
       11 GETIMPORT                        R17 K4 [string.gsub]
       13 MOVE                             R18 R8
       14 LOADK                            R19 K5 ["[^%w_%-]"]
       15 LOADK                            R20 K6 ["_"]
       16 CALL                             R17 3 1
       17 NAMECALL                         R15 R15 K7 ["format"]
       19 CALL                             R15 2 1
       20 CALL                             R11 4 1
       21 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       23 MOVE                             R10 R3
       24 GETIMPORT                        R9 K10 [table.insert]
       26 CALL                             R9 2 0
       27 FORGLOOP                         R4 2 ; [-22]
       29 RETURN                           R3 1

PROTO_19:
        0 DUPTABLE                         R2 K4 [{"UserPromptSubmit", "PostToolUse", "PostToolUseFailure", "Stop"}]
        1 NEWTABLE                         R3 0 1
        3 GETUPVAL                         R4 0
        4 MOVE                             R5 R0
        5 LOADK                            R6 K5 ["codex"]
        6 LOADK                            R7 K6 ["prompt"]
        7 CALL                             R4 3 1
        8 SETLIST                          R3 R4 1 [1]
       10 SETTABLEKS                       R3 R2 K0 ["UserPromptSubmit"]
       12 GETUPVAL                         R3 1
       13 MOVE                             R4 R0
       14 LOADK                            R5 K5 ["codex"]
       15 MOVE                             R6 R1
       16 CALL                             R3 3 1
       17 SETTABLEKS                       R3 R2 K1 ["PostToolUse"]
       19 GETUPVAL                         R3 1
       20 MOVE                             R4 R0
       21 LOADK                            R5 K5 ["codex"]
       22 MOVE                             R6 R1
       23 CALL                             R3 3 1
       24 SETTABLEKS                       R3 R2 K2 ["PostToolUseFailure"]
       26 NEWTABLE                         R3 0 1
       28 GETUPVAL                         R4 0
       29 MOVE                             R5 R0
       30 LOADK                            R6 K5 ["codex"]
       31 LOADK                            R7 K7 ["stop"]
       32 CALL                             R4 3 1
       33 SETLIST                          R3 R4 1 [1]
       35 SETTABLEKS                       R3 R2 K3 ["Stop"]
       37 RETURN                           R2 1

PROTO_20:
        0 DUPTABLE                         R2 K4 [{"UserPromptSubmit", "PostToolUse", "PostToolUseFailure", "Stop"}]
        1 NEWTABLE                         R3 0 1
        3 GETUPVAL                         R4 0
        4 MOVE                             R5 R0
        5 LOADK                            R6 K5 ["claude_code"]
        6 LOADK                            R7 K6 ["prompt"]
        7 CALL                             R4 3 1
        8 SETLIST                          R3 R4 1 [1]
       10 SETTABLEKS                       R3 R2 K0 ["UserPromptSubmit"]
       12 GETUPVAL                         R3 1
       13 MOVE                             R4 R0
       14 LOADK                            R5 K5 ["claude_code"]
       15 MOVE                             R6 R1
       16 CALL                             R3 3 1
       17 SETTABLEKS                       R3 R2 K1 ["PostToolUse"]
       19 GETUPVAL                         R3 1
       20 MOVE                             R4 R0
       21 LOADK                            R5 K5 ["claude_code"]
       22 MOVE                             R6 R1
       23 CALL                             R3 3 1
       24 SETTABLEKS                       R3 R2 K2 ["PostToolUseFailure"]
       26 NEWTABLE                         R3 0 1
       28 GETUPVAL                         R4 0
       29 MOVE                             R5 R0
       30 LOADK                            R6 K5 ["claude_code"]
       31 LOADK                            R7 K7 ["stop"]
       32 CALL                             R4 3 1
       33 SETLIST                          R3 R4 1 [1]
       35 SETTABLEKS                       R3 R2 K3 ["Stop"]
       37 RETURN                           R2 1

PROTO_21:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R7 R0 K0 ["quickConnect"]
        6 GETTABLEKS                       R7 R7 K1 ["fileExistsAsync"]
        8 GETTABLEKS                       R8 R6 K2 ["indicator"]
       10 CALL                             R7 1 1
       11 JUMPIFNOT                        R7 ; [+1]
       12 RETURN                           R6 1
       13 FORGLOOP                         R2 2 ; [-10]
       15 LOADNIL                          R2
       16 RETURN                           R2 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R0 K0 ["quickConnect"]
        6 GETTABLEKS                       R6 R6 K1 ["fileExistsAsync"]
        8 GETTABLEKS                       R7 R5 K2 ["indicator"]
       10 CALL                             R6 1 1
       11 JUMPIFNOT                        R6 ; [+1]
       12 RETURN                           R5 1
       13 FORGLOOP                         R1 2 ; [-10]
       15 LOADNIL                          R1
       16 RETURN                           R1 1

PROTO_23:
        0 GETTABLEKS                       R5 R1 K0 ["mcpServers"]
        2 LOADNIL                          R6
        3 LOADNIL                          R7
        4 FORGPREP                         R5
        5 FASTCALL1                        TYPEOF R9 ; [+3]
        6 MOVE                             R11 R9
        7 GETIMPORT                        R10 K2 [typeof]
        9 CALL                             R10 1 1
       10 JUMPIFNOTEQKS                    R10 K3 ["table"] ; [+4]
       12 MOVE                             R3 R8
       13 MOVE                             R4 R9
       14 JUMP                             ; [+4]
       15 FORGLOOP                         R5 2 ; [-11]
       17 LOADNIL                          R3
       18 LOADNIL                          R4
       19 JUMPIFNOT                        R4 ; [+3]
       20 GETTABLEKS                       R5 R4 K4 ["command"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R5
       24 FASTCALL1                        TYPEOF R5 ; [+3]
       25 MOVE                             R7 R5
       26 GETIMPORT                        R6 K2 [typeof]
       28 CALL                             R6 1 1
       29 JUMPIFNOTEQKS                    R6 K5 ["string"] ; [+3]
       31 MOVE                             R2 R5
       32 JUMP                             ; [+1]
       33 LOADNIL                          R2
       34 JUMPIF                           R2 ; [+2]
       35 LOADB                            R3 0
       36 RETURN                           R3 1
       37 LOADB                            R3 1
       38 JUMPIFEQ                         R0 R2 ; [+37]
       40 GETIMPORT                        R6 K7 [string.match]
       42 MOVE                             R7 R0
       43 LOADK                            R8 K8 ["([^/\\]+)$"]
       44 CALL                             R6 2 1
       45 OR                               R5 R6 R0
       46 GETIMPORT                        R6 K10 [string.gsub]
       48 GETIMPORT                        R7 K12 [string.lower]
       50 MOVE                             R8 R5
       51 CALL                             R7 1 1
       52 LOADK                            R8 K13 ["%.exe$"]
       53 LOADK                            R9 K14 [""]
       54 CALL                             R6 3 1
       55 MOVE                             R4 R6
       56 GETIMPORT                        R7 K7 [string.match]
       58 MOVE                             R8 R2
       59 LOADK                            R9 K8 ["([^/\\]+)$"]
       60 CALL                             R7 2 1
       61 OR                               R6 R7 R2
       62 GETIMPORT                        R7 K10 [string.gsub]
       64 GETIMPORT                        R8 K12 [string.lower]
       66 MOVE                             R9 R6
       67 CALL                             R8 1 1
       68 LOADK                            R9 K13 ["%.exe$"]
       69 LOADK                            R10 K14 [""]
       70 CALL                             R7 3 1
       71 MOVE                             R5 R7
       72 JUMPIFEQ                         R4 R5 ; [+2]
       74 LOADB                            R3 0 +1
       75 LOADB                            R3 1
       76 RETURN                           R3 1

PROTO_24:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+2]
        7 RETURN                           R0 0
        8 MOVE                             R1 R0
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 FASTCALL1                        TYPEOF R5 ; [+3]
       13 MOVE                             R8 R5
       14 GETIMPORT                        R7 K1 [typeof]
       16 CALL                             R7 1 1
       17 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+4]
       19 GETTABLEKS                       R6 R5 K3 ["command"]
       21 JUMP                             ; [+1]
       22 LOADNIL                          R6
       23 FASTCALL1                        TYPEOF R6 ; [+3]
       24 MOVE                             R8 R6
       25 GETIMPORT                        R7 K1 [typeof]
       27 CALL                             R7 1 1
       28 JUMPIFNOTEQKS                    R7 K4 ["string"] ; [+82]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R12 R8 K5 ["mcpServers"]
       33 LOADNIL                          R13
       34 LOADNIL                          R14
       35 FORGPREP                         R12
       36 FASTCALL1                        TYPEOF R16 ; [+3]
       37 MOVE                             R18 R16
       38 GETIMPORT                        R17 K1 [typeof]
       40 CALL                             R17 1 1
       41 JUMPIFNOTEQKS                    R17 K2 ["table"] ; [+4]
       43 MOVE                             R10 R15
       44 MOVE                             R11 R16
       45 JUMP                             ; [+4]
       46 FORGLOOP                         R12 2 ; [-11]
       48 LOADNIL                          R10
       49 LOADNIL                          R11
       50 JUMPIFNOT                        R11 ; [+3]
       51 GETTABLEKS                       R12 R11 K3 ["command"]
       53 JUMP                             ; [+1]
       54 LOADNIL                          R12
       55 FASTCALL1                        TYPEOF R12 ; [+3]
       56 MOVE                             R14 R12
       57 GETIMPORT                        R13 K1 [typeof]
       59 CALL                             R13 1 1
       60 JUMPIFNOTEQKS                    R13 K4 ["string"] ; [+3]
       62 MOVE                             R9 R12
       63 JUMP                             ; [+1]
       64 LOADNIL                          R9
       65 JUMPIF                           R9 ; [+2]
       66 LOADB                            R7 0
       67 JUMP                             ; [+39]
       68 LOADB                            R7 1
       69 JUMPIFEQ                         R6 R9 ; [+37]
       71 GETIMPORT                        R12 K7 [string.match]
       73 MOVE                             R13 R6
       74 LOADK                            R14 K8 ["([^/\\]+)$"]
       75 CALL                             R12 2 1
       76 OR                               R11 R12 R6
       77 GETIMPORT                        R12 K10 [string.gsub]
       79 GETIMPORT                        R13 K12 [string.lower]
       81 MOVE                             R14 R11
       82 CALL                             R13 1 1
       83 LOADK                            R14 K13 ["%.exe$"]
       84 LOADK                            R15 K14 [""]
       85 CALL                             R12 3 1
       86 MOVE                             R10 R12
       87 GETIMPORT                        R13 K7 [string.match]
       89 MOVE                             R14 R9
       90 LOADK                            R15 K8 ["([^/\\]+)$"]
       91 CALL                             R13 2 1
       92 OR                               R12 R13 R9
       93 GETIMPORT                        R13 K10 [string.gsub]
       95 GETIMPORT                        R14 K12 [string.lower]
       97 MOVE                             R15 R12
       98 CALL                             R14 1 1
       99 LOADK                            R15 K13 ["%.exe$"]
      100 LOADK                            R16 K14 [""]
      101 CALL                             R13 3 1
      102 MOVE                             R11 R13
      103 JUMPIFEQ                         R10 R11 ; [+2]
      105 LOADB                            R7 0 +1
      106 LOADB                            R7 1
      107 JUMPIFNOT                        R7 ; [+3]
      108 GETUPVAL                         R7 1
      109 LOADB                            R8 1
      110 SETTABLE                         R8 R7 R4
      111 FORGLOOP                         R1 2 ; [-100]
      113 RETURN                           R0 0

PROTO_25:
        0 NEWTABLE                         R4 0 0
        2 GETTABLEKS                       R7 R0 K0 ["quickConnect"]
        4 GETTABLEKS                       R7 R7 K1 ["readFileAsync"]
        6 MOVE                             R8 R1
        7 CALL                             R7 1 1
        8 JUMPIFEQKNIL                     R7 ; [+7]
       10 GETIMPORT                        R8 K4 [string.match]
       12 MOVE                             R9 R7
       13 LOADK                            R10 K5 ["^%s*$"]
       14 CALL                             R8 2 1
       15 JUMPIFNOT                        R8 ; [+3]
       16 LOADB                            R5 1
       17 LOADNIL                          R6
       18 JUMP                             ; [+20]
       19 GETIMPORT                        R8 K7 [pcall]
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R9 R9 K8 ["decode"]
       24 MOVE                             R10 R7
       25 CALL                             R8 2 2
       26 JUMPIFNOT                        R8 ; [+7]
       27 FASTCALL1                        TYPEOF R9 ; [+3]
       28 MOVE                             R11 R9
       29 GETIMPORT                        R10 K10 [typeof]
       31 CALL                             R10 1 1
       32 JUMPIFEQKS                       R10 K11 ["table"] ; [+4]
       34 LOADB                            R5 0
       35 LOADNIL                          R6
       36 JUMP                             ; [+2]
       37 LOADB                            R5 1
       38 MOVE                             R6 R9
       39 JUMPIFNOT                        R5 ; [+34]
       40 JUMPIFNOT                        R6 ; [+33]
       41 NEWCLOSURE                       R7 P0
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R4
       44 MOVE                             R8 R7
       45 GETTABLEKS                       R9 R6 K12 ["mcpServers"]
       47 CALL                             R8 1 0
       48 GETTABLEKS                       R9 R6 K13 ["projects"]
       50 FASTCALL1                        TYPEOF R9 ; [+2]
       51 GETIMPORT                        R8 K10 [typeof]
       53 CALL                             R8 1 1
       54 JUMPIFNOTEQKS                    R8 K11 ["table"] ; [+19]
       56 GETTABLEKS                       R8 R6 K13 ["projects"]
       58 LOADNIL                          R9
       59 LOADNIL                          R10
       60 FORGPREP                         R8
       61 FASTCALL1                        TYPEOF R12 ; [+3]
       62 MOVE                             R14 R12
       63 GETIMPORT                        R13 K10 [typeof]
       65 CALL                             R13 1 1
       66 JUMPIFNOTEQKS                    R13 K11 ["table"] ; [+5]
       68 MOVE                             R13 R7
       69 GETTABLEKS                       R14 R12 K12 ["mcpServers"]
       71 CALL                             R13 1 0
       72 FORGLOOP                         R8 2 ; [-12]
       74 NEWTABLE                         R7 0 0
       76 MOVE                             R8 R4
       77 LOADNIL                          R9
       78 LOADNIL                          R10
       79 FORGPREP                         R8
       80 FASTCALL2                        TABLE_INSERT R7 R11 ; [+5]
       82 MOVE                             R14 R7
       83 MOVE                             R15 R11
       84 GETIMPORT                        R13 K15 [table.insert]
       86 CALL                             R13 2 0
       87 FORGLOOP                         R8 1 ; [-8]
       89 GETIMPORT                        R8 K17 [table.sort]
       91 MOVE                             R9 R7
       92 CALL                             R8 1 0
       93 LENGTH                           R8 R7
       94 JUMPIFNOTEQKN                    R8 K18 [0] ; [+8]
       96 FASTCALL2                        TABLE_INSERT R7 R3 ; [+5]
       98 MOVE                             R9 R7
       99 MOVE                             R10 R3
      100 GETIMPORT                        R8 K15 [table.insert]
      102 CALL                             R8 2 0
      103 RETURN                           R7 1

PROTO_26:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 LOADK                            R7 K0 ["Roblox_Studio"]
        5 CALL                             R3 4 1
        6 RETURN                           R3 1

PROTO_27:
        0 GETTABLEKS                       R3 R0 K1 ["mcpServers"]
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 FORGPREP                         R3
        5 FASTCALL1                        TYPEOF R7 ; [+3]
        6 MOVE                             R9 R7
        7 GETIMPORT                        R8 K3 [typeof]
        9 CALL                             R8 1 1
       10 JUMPIFNOTEQKS                    R8 K4 ["table"] ; [+3]
       12 MOVE                             R2 R6
       13 JUMP                             ; [+3]
       14 FORGLOOP                         R3 2 ; [-10]
       16 LOADNIL                          R2
       17 ORK                              R1 R2 K0 ["Roblox_Studio"]
       18 RETURN                           R1 1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["~/.cursor/mcp.json"]
        3 MOVE                             R5 R1
        4 GETTABLEKS                       R8 R1 K2 ["mcpServers"]
        6 LOADNIL                          R9
        7 LOADNIL                          R10
        8 FORGPREP                         R8
        9 FASTCALL1                        TYPEOF R12 ; [+3]
       10 MOVE                             R14 R12
       11 GETIMPORT                        R13 K4 [typeof]
       13 CALL                             R13 1 1
       14 JUMPIFNOTEQKS                    R13 K5 ["table"] ; [+3]
       16 MOVE                             R7 R11
       17 JUMP                             ; [+3]
       18 FORGLOOP                         R8 2 ; [-10]
       20 LOADNIL                          R7
       21 ORK                              R6 R7 K1 ["Roblox_Studio"]
       22 CALL                             R2 4 1
       23 RETURN                           R2 1

PROTO_29:
        0 LOADK                            R1 K0 ["%*%*config.toml"]
        1 GETTABLEKS                       R3 R0 K1 ["dir"]
        3 GETTABLEKS                       R4 R0 K2 ["sep"]
        5 NAMECALL                         R1 R1 K3 ["format"]
        7 CALL                             R1 3 1
        8 RETURN                           R1 1

PROTO_30:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R6 R2 K0 ["mcpServers"]
        3 LOADNIL                          R7
        4 LOADNIL                          R8
        5 FORGPREP                         R6
        6 FASTCALL1                        TYPEOF R10 ; [+3]
        7 MOVE                             R12 R10
        8 GETIMPORT                        R11 K2 [typeof]
       10 CALL                             R11 1 1
       11 JUMPIFNOTEQKS                    R11 K3 ["table"] ; [+4]
       13 MOVE                             R4 R9
       14 MOVE                             R5 R10
       15 JUMP                             ; [+4]
       16 FORGLOOP                         R6 2 ; [-11]
       18 LOADNIL                          R4
       19 LOADNIL                          R5
       20 JUMPIFNOT                        R5 ; [+3]
       21 GETTABLEKS                       R6 R5 K4 ["command"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R6
       25 FASTCALL1                        TYPEOF R6 ; [+3]
       26 MOVE                             R8 R6
       27 GETIMPORT                        R7 K2 [typeof]
       29 CALL                             R7 1 1
       30 JUMPIFNOTEQKS                    R7 K5 ["string"] ; [+3]
       32 MOVE                             R3 R6
       33 JUMP                             ; [+1]
       34 LOADNIL                          R3
       35 JUMPIF                           R3 ; [+2]
       36 LOADB                            R1 0
       37 RETURN                           R1 1
       38 LOADB                            R1 1
       39 JUMPIFEQ                         R0 R3 ; [+37]
       41 GETIMPORT                        R6 K7 [string.match]
       43 MOVE                             R7 R0
       44 LOADK                            R8 K8 ["([^/\\]+)$"]
       45 CALL                             R6 2 1
       46 OR                               R5 R6 R0
       47 GETIMPORT                        R6 K10 [string.gsub]
       49 GETIMPORT                        R7 K12 [string.lower]
       51 MOVE                             R8 R5
       52 CALL                             R7 1 1
       53 LOADK                            R8 K13 ["%.exe$"]
       54 LOADK                            R9 K14 [""]
       55 CALL                             R6 3 1
       56 MOVE                             R4 R6
       57 GETIMPORT                        R7 K7 [string.match]
       59 MOVE                             R8 R3
       60 LOADK                            R9 K8 ["([^/\\]+)$"]
       61 CALL                             R7 2 1
       62 OR                               R6 R7 R3
       63 GETIMPORT                        R7 K10 [string.gsub]
       65 GETIMPORT                        R8 K12 [string.lower]
       67 MOVE                             R9 R6
       68 CALL                             R8 1 1
       69 LOADK                            R9 K13 ["%.exe$"]
       70 LOADK                            R10 K14 [""]
       71 CALL                             R7 3 1
       72 MOVE                             R5 R7
       73 JUMPIFEQ                         R4 R5 ; [+2]
       75 LOADB                            R1 0 +1
       76 LOADB                            R1 1
       77 RETURN                           R1 1

PROTO_31:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["findMcpServerNames"]
        3 GETTABLEKS                       R4 R0 K1 ["quickConnect"]
        5 GETTABLEKS                       R4 R4 K2 ["readFileAsync"]
        7 LOADK                            R5 K3 ["%*%*config.toml"]
        8 GETTABLEKS                       R7 R1 K4 ["dir"]
       10 GETTABLEKS                       R8 R1 K5 ["sep"]
       12 NAMECALL                         R5 R5 K6 ["format"]
       14 CALL                             R5 3 1
       15 CALL                             R4 1 1
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R2
       18 CALL                             R3 2 1
       19 LENGTH                           R4 R3
       20 JUMPIFNOTEQKN                    R4 K7 [0] ; [+25]
       22 GETTABLEKS                       R8 R2 K9 ["mcpServers"]
       24 LOADNIL                          R9
       25 LOADNIL                          R10
       26 FORGPREP                         R8
       27 FASTCALL1                        TYPEOF R12 ; [+3]
       28 MOVE                             R14 R12
       29 GETIMPORT                        R13 K11 [typeof]
       31 CALL                             R13 1 1
       32 JUMPIFNOTEQKS                    R13 K12 ["table"] ; [+3]
       34 MOVE                             R7 R11
       35 JUMP                             ; [+3]
       36 FORGLOOP                         R8 2 ; [-10]
       38 LOADNIL                          R7
       39 ORK                              R6 R7 K8 ["Roblox_Studio"]
       40 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       42 MOVE                             R5 R3
       43 GETIMPORT                        R4 K14 [table.insert]
       45 CALL                             R4 2 0
       46 RETURN                           R3 1

PROTO_32:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETIMPORT                        R6 K2 [table.find]
        6 GETUPVAL                         R7 0
        7 MOVE                             R8 R5
        8 CALL                             R6 2 1
        9 JUMPIF                           R6 ; [+7]
       10 GETUPVAL                         R7 0
       11 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
       13 MOVE                             R8 R5
       14 GETIMPORT                        R6 K4 [table.insert]
       16 CALL                             R6 2 0
       17 FORGLOOP                         R1 2 ; [-14]
       19 RETURN                           R0 0

PROTO_33:
        0 NEWTABLE                         R2 0 1
        2 GETTABLEKS                       R5 R1 K1 ["mcpServers"]
        4 LOADNIL                          R6
        5 LOADNIL                          R7
        6 FORGPREP                         R5
        7 FASTCALL1                        TYPEOF R9 ; [+3]
        8 MOVE                             R11 R9
        9 GETIMPORT                        R10 K3 [typeof]
       11 CALL                             R10 1 1
       12 JUMPIFNOTEQKS                    R10 K4 ["table"] ; [+3]
       14 MOVE                             R4 R8
       15 JUMP                             ; [+3]
       16 FORGLOOP                         R5 2 ; [-10]
       18 LOADNIL                          R4
       19 ORK                              R3 R4 K0 ["Roblox_Studio"]
       20 SETLIST                          R2 R3 1 [1]
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          VAL R2
       24 GETUPVAL                         R5 0
       25 LOADNIL                          R6
       26 LOADNIL                          R7
       27 FORGPREP                         R5
       28 GETTABLEKS                       R10 R0 K5 ["quickConnect"]
       30 GETTABLEKS                       R10 R10 K6 ["fileExistsAsync"]
       32 GETTABLEKS                       R11 R9 K7 ["indicator"]
       34 CALL                             R10 1 1
       35 JUMPIFNOT                        R10 ; [+2]
       36 MOVE                             R4 R9
       37 JUMP                             ; [+3]
       38 FORGLOOP                         R5 2 ; [-11]
       40 LOADNIL                          R4
       41 JUMPIFNOT                        R4 ; [+11]
       42 MOVE                             R5 R3
       43 GETTABLEKS                       R7 R4 K8 ["claudeJson"]
       45 GETUPVAL                         R8 1
       46 MOVE                             R9 R0
       47 MOVE                             R10 R7
       48 MOVE                             R11 R1
       49 LOADK                            R12 K0 ["Roblox_Studio"]
       50 CALL                             R8 4 1
       51 MOVE                             R6 R8
       52 CALL                             R5 1 0
       53 GETUPVAL                         R6 2
       54 MOVE                             R7 R6
       55 LOADNIL                          R8
       56 LOADNIL                          R9
       57 FORGPREP                         R7
       58 GETTABLEKS                       R12 R0 K5 ["quickConnect"]
       60 GETTABLEKS                       R12 R12 K6 ["fileExistsAsync"]
       62 GETTABLEKS                       R13 R11 K7 ["indicator"]
       64 CALL                             R12 1 1
       65 JUMPIFNOT                        R12 ; [+2]
       66 MOVE                             R5 R11
       67 JUMP                             ; [+3]
       68 FORGLOOP                         R7 2 ; [-11]
       70 LOADNIL                          R5
       71 JUMPIFNOT                        R5 ; [+25]
       72 MOVE                             R5 R3
       73 GETUPVAL                         R6 1
       74 MOVE                             R7 R0
       75 LOADK                            R8 K9 ["~/.cursor/mcp.json"]
       76 MOVE                             R9 R1
       77 GETTABLEKS                       R12 R1 K1 ["mcpServers"]
       79 LOADNIL                          R13
       80 LOADNIL                          R14
       81 FORGPREP                         R12
       82 FASTCALL1                        TYPEOF R16 ; [+3]
       83 MOVE                             R18 R16
       84 GETIMPORT                        R17 K3 [typeof]
       86 CALL                             R17 1 1
       87 JUMPIFNOTEQKS                    R17 K4 ["table"] ; [+3]
       89 MOVE                             R11 R15
       90 JUMP                             ; [+3]
       91 FORGLOOP                         R12 2 ; [-10]
       93 LOADNIL                          R11
       94 ORK                              R10 R11 K0 ["Roblox_Studio"]
       95 CALL                             R6 4 1
       96 CALL                             R5 1 0
       97 GETUPVAL                         R6 3
       98 MOVE                             R7 R6
       99 LOADNIL                          R8
      100 LOADNIL                          R9
      101 FORGPREP                         R7
      102 GETTABLEKS                       R12 R0 K5 ["quickConnect"]
      104 GETTABLEKS                       R12 R12 K6 ["fileExistsAsync"]
      106 GETTABLEKS                       R13 R11 K7 ["indicator"]
      108 CALL                             R12 1 1
      109 JUMPIFNOT                        R12 ; [+2]
      110 MOVE                             R5 R11
      111 JUMP                             ; [+3]
      112 FORGLOOP                         R7 2 ; [-11]
      114 LOADNIL                          R5
      115 JUMPIFNOT                        R5 ; [+7]
      116 MOVE                             R6 R3
      117 GETUPVAL                         R7 4
      118 MOVE                             R8 R0
      119 MOVE                             R9 R5
      120 MOVE                             R10 R1
      121 CALL                             R7 3 1
      122 CALL                             R6 1 0
      123 RETURN                           R2 1

PROTO_34:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+8]
        7 FASTCALL1                        TYPEOF R1 ; [+3]
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K1 [typeof]
       11 CALL                             R2 1 1
       12 JUMPIFEQKS                       R2 K2 ["table"] ; [+6]
       14 JUMPIFEQ                         R0 R1 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 RETURN                           R2 1
       19 MOVE                             R2 R0
       20 LOADNIL                          R3
       21 LOADNIL                          R4
       22 FORGPREP                         R2
       23 GETUPVAL                         R7 0
       24 MOVE                             R8 R6
       25 GETTABLE                         R9 R1 R5
       26 CALL                             R7 2 1
       27 JUMPIF                           R7 ; [+2]
       28 LOADB                            R7 0
       29 RETURN                           R7 1
       30 FORGLOOP                         R2 2 ; [-8]
       32 MOVE                             R2 R1
       33 LOADNIL                          R3
       34 LOADNIL                          R4
       35 FORGPREP                         R2
       36 GETTABLE                         R7 R0 R5
       37 JUMPIFNOTEQKNIL                  R7 ; [+3]
       39 LOADB                            R7 0
       40 RETURN                           R7 1
       41 FORGLOOP                         R2 1 ; [-6]
       43 LOADB                            R2 1
       44 RETURN                           R2 1

PROTO_35:
        0 GETTABLEKS                       R2 R0 K0 ["quickConnect"]
        2 GETTABLEKS                       R2 R2 K1 ["readFileAsync"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKNIL                  R2 ; [+11]
        8 GETTABLEKS                       R3 R0 K0 ["quickConnect"]
       10 GETTABLEKS                       R3 R3 K2 ["fileExistsAsync"]
       12 MOVE                             R4 R1
       13 CALL                             R3 1 1
       14 JUMPIFNOT                        R3 ; [+3]
       15 LOADB                            R3 0
       16 LOADNIL                          R4
       17 RETURN                           R3 2
       18 GETUPVAL                         R3 0
       19 MOVE                             R4 R2
       20 CALL                             R3 1 -1
       21 RETURN                           R3 -1

PROTO_36:
        0 JUMPIFEQKNIL                     R0 ; [+5]
        2 JUMPIFEQKS                       R0 K0 [""] ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 0
        7 RETURN                           R1 1

PROTO_37:
        0 GETTABLEKS                       R2 R0 K0 ["quickConnect"]
        2 GETTABLEKS                       R2 R2 K1 ["readFileAsync"]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 1
        6 JUMPIFEQKNIL                     R2 ; [+7]
        8 GETIMPORT                        R3 K4 [string.match]
       10 MOVE                             R4 R2
       11 LOADK                            R5 K5 ["^%s*$"]
       12 CALL                             R3 2 1
       13 JUMPIFNOT                        R3 ; [+2]
       14 LOADB                            R3 1
       15 RETURN                           R3 1
       16 JUMPIFEQKNIL                     R2 ; [+7]
       18 GETIMPORT                        R5 K4 [string.match]
       20 MOVE                             R6 R2
       21 LOADK                            R7 K5 ["^%s*$"]
       22 CALL                             R5 2 1
       23 JUMPIFNOT                        R5 ; [+3]
       24 LOADB                            R3 1
       25 LOADNIL                          R4
       26 JUMP                             ; [+20]
       27 GETIMPORT                        R5 K7 [pcall]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K8 ["decode"]
       32 MOVE                             R7 R2
       33 CALL                             R5 2 2
       34 JUMPIFNOT                        R5 ; [+7]
       35 FASTCALL1                        TYPEOF R6 ; [+3]
       36 MOVE                             R8 R6
       37 GETIMPORT                        R7 K10 [typeof]
       39 CALL                             R7 1 1
       40 JUMPIFEQKS                       R7 K11 ["table"] ; [+4]
       42 LOADB                            R3 0
       43 LOADNIL                          R4
       44 JUMP                             ; [+2]
       45 LOADB                            R3 1
       46 MOVE                             R4 R6
       47 JUMPIFNOT                        R3 ; [+4]
       48 GETUPVAL                         R5 1
       49 MOVE                             R6 R4
       50 CALL                             R5 1 1
       51 JUMPIFNOT                        R5 ; [+2]
       52 LOADB                            R5 1
       53 RETURN                           R5 1
       54 MOVE                             R6 R1
       55 LOADK                            R7 K12 [".roblox-studio-backup"]
       56 CONCAT                           R5 R6 R7
       57 GETTABLEKS                       R6 R0 K0 ["quickConnect"]
       59 GETTABLEKS                       R6 R6 K13 ["fileExistsAsync"]
       61 MOVE                             R7 R5
       62 CALL                             R6 1 1
       63 JUMPIFNOT                        R6 ; [+2]
       64 LOADB                            R6 1
       65 RETURN                           R6 1
       66 GETTABLEKS                       R7 R0 K0 ["quickConnect"]
       68 GETTABLEKS                       R7 R7 K14 ["modifyFileAsync"]
       70 MOVE                             R8 R5
       71 NEWCLOSURE                       R9 P0
       72 CAPTURE                          VAL R2
       73 CALL                             R7 2 1
       74 JUMPIFNOTEQKB                    R7 FALSE ; [+2]
       76 LOADB                            R6 0 +1
       77 LOADB                            R6 1
       78 RETURN                           R6 1

PROTO_38:
        0 JUMPIFNOTEQKNIL                  R0 ; [+7]
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+4]
        4 LOADK                            R1 K0 ["configUnreadable"]
        5 SETUPVAL                         R1 1
        6 LOADNIL                          R1
        7 RETURN                           R1 1
        8 JUMPIFEQKNIL                     R0 ; [+7]
       10 GETIMPORT                        R3 K3 [string.match]
       12 MOVE                             R4 R0
       13 LOADK                            R5 K4 ["^%s*$"]
       14 CALL                             R3 2 1
       15 JUMPIFNOT                        R3 ; [+3]
       16 LOADB                            R1 1
       17 LOADNIL                          R2
       18 JUMP                             ; [+20]
       19 GETIMPORT                        R3 K6 [pcall]
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K7 ["decode"]
       24 MOVE                             R5 R0
       25 CALL                             R3 2 2
       26 JUMPIFNOT                        R3 ; [+7]
       27 FASTCALL1                        TYPEOF R4 ; [+3]
       28 MOVE                             R6 R4
       29 GETIMPORT                        R5 K9 [typeof]
       31 CALL                             R5 1 1
       32 JUMPIFEQKS                       R5 K10 ["table"] ; [+4]
       34 LOADB                            R1 0
       35 LOADNIL                          R2
       36 JUMP                             ; [+2]
       37 LOADB                            R1 1
       38 MOVE                             R2 R4
       39 JUMPIF                           R1 ; [+4]
       40 LOADK                            R3 K11 ["configUnparseable"]
       41 SETUPVAL                         R3 1
       42 LOADNIL                          R3
       43 RETURN                           R3 1
       44 GETUPVAL                         R3 3
       45 JUMPIFNOTEQKNIL                  R3 ; [+7]
       47 GETUPVAL                         R3 4
       48 MOVE                             R4 R2
       49 CALL                             R3 1 1
       50 JUMPIF                           R3 ; [+2]
       51 LOADNIL                          R3
       52 RETURN                           R3 1
       53 GETUPVAL                         R3 5
       54 MOVE                             R4 R2
       55 GETUPVAL                         R5 3
       56 CALL                             R3 2 1
       57 GETUPVAL                         R4 6
       58 JUMPIFNOT                        R4 ; [+12]
       59 GETUPVAL                         R4 3
       60 JUMPIFNOT                        R4 ; [+10]
       61 GETUPVAL                         R4 6
       62 LOADNIL                          R5
       63 LOADNIL                          R6
       64 FORGPREP                         R4
       65 GETTABLE                         R9 R3 R7
       66 JUMPIFNOTEQKNIL                  R9 ; [+2]
       68 SETTABLE                         R8 R3 R7
       69 FORGLOOP                         R4 2 ; [-5]
       71 JUMPIFNOT                        R2 ; [+7]
       72 GETUPVAL                         R4 7
       73 MOVE                             R5 R2
       74 MOVE                             R6 R3
       75 CALL                             R4 2 1
       76 JUMPIFNOT                        R4 ; [+2]
       77 LOADNIL                          R4
       78 RETURN                           R4 1
       79 GETUPVAL                         R5 8
       80 GETUPVAL                         R8 9
       81 GETTABLEKS                       R8 R8 K12 ["encodePretty"]
       83 MOVE                             R9 R5
       84 MOVE                             R10 R3
       85 CALL                             R8 2 1
       86 MOVE                             R6 R8
       87 LOADK                            R7 K13 ["\n"]
       88 CONCAT                           R4 R6 R7
       89 RETURN                           R4 1

PROTO_39:
        0 JUMPIFEQKNIL                     R2 ; [+8]
        2 GETUPVAL                         R4 0
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 CALL                             R4 2 1
        6 JUMPIF                           R4 ; [+2]
        7 LOADK                            R4 K0 ["backupFailed"]
        8 RETURN                           R4 1
        9 GETTABLEKS                       R4 R0 K1 ["quickConnect"]
       11 GETTABLEKS                       R4 R4 K2 ["fileExistsAsync"]
       13 MOVE                             R5 R1
       14 CALL                             R4 1 1
       15 LOADNIL                          R5
       16 GETTABLEKS                       R6 R0 K1 ["quickConnect"]
       18 GETTABLEKS                       R6 R6 K3 ["modifyFileAsync"]
       20 MOVE                             R7 R1
       21 NEWCLOSURE                       R8 P0
       22 CAPTURE                          VAL R4
       23 CAPTURE                          REF R5
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R3
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U5
       32 CALL                             R6 2 1
       33 JUMPIFNOTEQKNIL                  R5 ; [+6]
       35 JUMPIFNOTEQKB                    R6 FALSE ; [+4]
       37 LOADK                            R7 K4 ["configWriteFailed"]
       38 CLOSEUPVALS                      R5
       39 RETURN                           R7 1
       40 CLOSEUPVALS                      R5
       41 RETURN                           R5 1

PROTO_40:
        0 JUMPIFNOTEQKS                    R1 K0 ["claude_code"] ; [+24]
        2 GETUPVAL                         R3 0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R0 K1 ["quickConnect"]
        8 GETTABLEKS                       R8 R8 K2 ["fileExistsAsync"]
       10 GETTABLEKS                       R9 R7 K3 ["indicator"]
       12 CALL                             R8 1 1
       13 JUMPIFNOT                        R8 ; [+2]
       14 MOVE                             R2 R7
       15 JUMP                             ; [+3]
       16 FORGLOOP                         R3 2 ; [-11]
       18 LOADNIL                          R2
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETTABLEKS                       R3 R2 K4 ["settings"]
       22 RETURN                           R3 1
       23 LOADNIL                          R3
       24 RETURN                           R3 1
       25 JUMPIFNOTEQKS                    R1 K5 ["cursor"] ; [+3]
       27 GETUPVAL                         R2 1
       28 JUMP                             ; [+1]
       29 GETUPVAL                         R2 2
       30 MOVE                             R4 R2
       31 LOADNIL                          R5
       32 LOADNIL                          R6
       33 FORGPREP                         R4
       34 GETTABLEKS                       R9 R0 K1 ["quickConnect"]
       36 GETTABLEKS                       R9 R9 K2 ["fileExistsAsync"]
       38 GETTABLEKS                       R10 R8 K3 ["indicator"]
       40 CALL                             R9 1 1
       41 JUMPIFNOT                        R9 ; [+2]
       42 MOVE                             R3 R8
       43 JUMP                             ; [+3]
       44 FORGLOOP                         R4 2 ; [-11]
       46 LOADNIL                          R3
       47 JUMPIFNOT                        R3 ; [+9]
       48 LOADK                            R4 K6 ["%*%*hooks.json"]
       49 GETTABLEKS                       R6 R3 K7 ["dir"]
       51 GETTABLEKS                       R7 R3 K8 ["sep"]
       53 NAMECALL                         R4 R4 K9 ["format"]
       55 CALL                             R4 3 1
       56 RETURN                           R4 1
       57 LOADNIL                          R4
       58 RETURN                           R4 1

PROTO_41:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 JUMPIFNOTEQKS                    R6 K0 ["claude_code"] ; [+24]
        8 GETUPVAL                         R9 1
        9 LOADNIL                          R10
       10 LOADNIL                          R11
       11 FORGPREP                         R9
       12 GETTABLEKS                       R14 R0 K1 ["quickConnect"]
       14 GETTABLEKS                       R14 R14 K2 ["fileExistsAsync"]
       16 GETTABLEKS                       R15 R13 K3 ["indicator"]
       18 CALL                             R14 1 1
       19 JUMPIFNOT                        R14 ; [+2]
       20 MOVE                             R8 R13
       21 JUMP                             ; [+3]
       22 FORGLOOP                         R9 2 ; [-11]
       24 LOADNIL                          R8
       25 JUMPIFNOT                        R8 ; [+3]
       26 GETTABLEKS                       R7 R8 K4 ["settings"]
       28 JUMP                             ; [+36]
       29 LOADNIL                          R7
       30 JUMP                             ; [+34]
       31 JUMPIFNOTEQKS                    R6 K5 ["cursor"] ; [+3]
       33 GETUPVAL                         R8 2
       34 JUMP                             ; [+1]
       35 GETUPVAL                         R8 3
       36 MOVE                             R10 R8
       37 LOADNIL                          R11
       38 LOADNIL                          R12
       39 FORGPREP                         R10
       40 GETTABLEKS                       R15 R0 K1 ["quickConnect"]
       42 GETTABLEKS                       R15 R15 K2 ["fileExistsAsync"]
       44 GETTABLEKS                       R16 R14 K3 ["indicator"]
       46 CALL                             R15 1 1
       47 JUMPIFNOT                        R15 ; [+2]
       48 MOVE                             R9 R14
       49 JUMP                             ; [+3]
       50 FORGLOOP                         R10 2 ; [-11]
       52 LOADNIL                          R9
       53 JUMPIFNOT                        R9 ; [+10]
       54 LOADK                            R10 K6 ["%*%*hooks.json"]
       55 GETTABLEKS                       R12 R9 K7 ["dir"]
       57 GETTABLEKS                       R13 R9 K8 ["sep"]
       59 NAMECALL                         R10 R10 K9 ["format"]
       61 CALL                             R10 3 1
       62 MOVE                             R7 R10
       63 JUMP                             ; [+1]
       64 LOADNIL                          R7
       65 JUMPIF                           R7 ; [+3]
       66 LOADK                            R8 K10 ["notDetected"]
       67 SETTABLE                         R8 R1 R6
       68 JUMP                             ; [+60]
       69 GETTABLEKS                       R10 R0 K1 ["quickConnect"]
       71 GETTABLEKS                       R10 R10 K11 ["readFileAsync"]
       73 MOVE                             R11 R7
       74 CALL                             R10 1 1
       75 JUMPIFNOTEQKNIL                  R10 ; [+11]
       77 GETTABLEKS                       R11 R0 K1 ["quickConnect"]
       79 GETTABLEKS                       R11 R11 K2 ["fileExistsAsync"]
       81 MOVE                             R12 R7
       82 CALL                             R11 1 1
       83 JUMPIFNOT                        R11 ; [+3]
       84 LOADB                            R8 0
       85 LOADNIL                          R9
       86 JUMP                             ; [+31]
       87 JUMPIFEQKNIL                     R10 ; [+7]
       89 GETIMPORT                        R11 K14 [string.match]
       91 MOVE                             R12 R10
       92 LOADK                            R13 K15 ["^%s*$"]
       93 CALL                             R11 2 1
       94 JUMPIFNOT                        R11 ; [+3]
       95 LOADB                            R8 1
       96 LOADNIL                          R9
       97 JUMP                             ; [+20]
       98 GETIMPORT                        R11 K17 [pcall]
      100 GETUPVAL                         R12 4
      101 GETTABLEKS                       R12 R12 K18 ["decode"]
      103 MOVE                             R13 R10
      104 CALL                             R11 2 2
      105 JUMPIFNOT                        R11 ; [+7]
      106 FASTCALL1                        TYPEOF R12 ; [+3]
      107 MOVE                             R14 R12
      108 GETIMPORT                        R13 K20 [typeof]
      110 CALL                             R13 1 1
      111 JUMPIFEQKS                       R13 K21 ["table"] ; [+4]
      113 LOADB                            R8 0
      114 LOADNIL                          R9
      115 JUMP                             ; [+2]
      116 LOADB                            R8 1
      117 MOVE                             R9 R12
      118 JUMPIF                           R8 ; [+2]
      119 LOADK                            R10 K22 ["failed"]
      120 JUMP                             ; [+7]
      121 GETUPVAL                         R11 5
      122 MOVE                             R12 R9
      123 CALL                             R11 1 1
      124 JUMPIFNOT                        R11 ; [+2]
      125 LOADK                            R10 K23 ["installed"]
      126 JUMP                             ; [+1]
      127 LOADK                            R10 K24 ["notInstalled"]
      128 SETTABLE                         R10 R1 R6
      129 FORGLOOP                         R2 2 ; [-124]
      131 RETURN                           R1 1

PROTO_42:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 MOVE                             R2 R1
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 JUMPIFEQKS                       R6 K0 ["notDetected"] ; [+3]
        9 LOADK                            R7 K1 ["failed"]
       10 SETTABLE                         R7 R1 R5
       11 FORGLOOP                         R2 2 ; [-5]
       13 RETURN                           R1 1

PROTO_43:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETIMPORT                        R1 K2 [task.wait]
        4 CALL                             R1 0 0
        5 JUMPBACK                         ; [-6]
        6 LOADB                            R1 1
        7 SETUPVAL                         R1 0
        8 GETIMPORT                        R1 K4 [pcall]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 2
       12 LOADB                            R3 0
       13 SETUPVAL                         R3 0
       14 JUMPIF                           R1 ; [+5]
       15 GETIMPORT                        R3 K6 [error]
       17 MOVE                             R4 R2
       18 LOADN                            R5 0
       19 CALL                             R3 2 0
       20 RETURN                           R2 1

PROTO_44:
        0 GETUPVAL                         R3 0
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 GETTABLE                         R8 R1 R7
        5 JUMPIFEQKNIL                     R8 ; [+37]
        7 JUMPIFEQKS                       R8 K0 ["notDetected"] ; [+35]
        9 JUMPIFNOTEQKS                    R8 K1 ["installed"] ; [+3]
       11 LOADNIL                          R9
       12 JUMP                             ; [+2]
       13 GETTABLE                         R10 R2 R7
       14 ORK                              R9 R10 K2 ["unknown"]
       15 JUMPIFNOT                        R9 ; [+2]
       16 LOADK                            R10 K3 ["failed"]
       17 JUMP                             ; [+1]
       18 LOADK                            R10 K1 ["installed"]
       19 LOADK                            R11 K4 ["%*/%*"]
       20 MOVE                             R13 R10
       21 ORK                              R14 R9 K5 [""]
       22 NAMECALL                         R11 R11 K6 ["format"]
       24 CALL                             R11 3 1
       25 GETUPVAL                         R13 1
       26 GETTABLE                         R12 R13 R7
       27 JUMPIFEQ                         R12 R11 ; [+15]
       29 GETUPVAL                         R12 1
       30 SETTABLE                         R11 R12 R7
       31 GETTABLEKS                       R12 R0 K7 ["EventLogger"]
       33 GETTABLEKS                       R12 R12 K8 ["logMcpCaptureHooksInstall"]
       35 DUPTABLE                         R13 K12 [{"harness", "outcome", "reason"}]
       36 SETTABLEKS                       R7 R13 K9 ["harness"]
       38 SETTABLEKS                       R10 R13 K10 ["outcome"]
       40 SETTABLEKS                       R9 R13 K11 ["reason"]
       42 CALL                             R12 1 0
       43 FORGLOOP                         R3 2 ; [-40]
       45 RETURN                           R0 0

PROTO_45:
        0 LOADK                            R3 K0 ["%* %* %*"]
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 GETIMPORT                        R7 K3 [table.concat]
        5 MOVE                             R8 R2
        6 JUMPIF                           R8 ; [+2]
        7 NEWTABLE                         R8 0 0
        9 LOADK                            R9 K4 [" "]
       10 CALL                             R7 2 1
       11 NAMECALL                         R3 R3 K5 ["format"]
       13 CALL                             R3 4 1
       14 GETUPVAL                         R5 0
       15 GETTABLE                         R4 R5 R3
       16 JUMPIF                           R4 ; [+6]
       17 GETUPVAL                         R4 1
       18 GETUPVAL                         R5 2
       19 MOVE                             R6 R0
       20 MOVE                             R7 R1
       21 MOVE                             R8 R2
       22 CALL                             R4 4 1
       23 JUMPIFNOTEQKNIL                  R4 ; [+5]
       25 LOADB                            R5 1
       26 SETUPVAL                         R5 3
       27 LOADK                            R5 K6 [""]
       28 RETURN                           R5 1
       29 GETUPVAL                         R5 0
       30 SETTABLE                         R4 R5 R3
       31 RETURN                           R4 1

PROTO_46:
        0 NEWTABLE                         R0 0 0
        2 LOADB                            R1 0
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          REF R1
        8 GETUPVAL                         R4 1
        9 GETUPVAL                         R5 2
       10 LOADNIL                          R6
       11 LOADNIL                          R7
       12 FORGPREP                         R5
       13 GETTABLEKS                       R10 R4 K0 ["quickConnect"]
       15 GETTABLEKS                       R10 R10 K1 ["fileExistsAsync"]
       17 GETTABLEKS                       R11 R9 K2 ["indicator"]
       19 CALL                             R10 1 1
       20 JUMPIFNOT                        R10 ; [+2]
       21 MOVE                             R3 R9
       22 JUMP                             ; [+3]
       23 FORGLOOP                         R5 2 ; [-11]
       25 LOADNIL                          R3
       26 JUMPIFNOT                        R3 ; [+15]
       27 GETUPVAL                         R4 3
       28 MOVE                             R5 R2
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R8 R3 K3 ["claudeJson"]
       32 GETUPVAL                         R9 4
       33 GETUPVAL                         R10 5
       34 MOVE                             R11 R7
       35 MOVE                             R12 R8
       36 MOVE                             R13 R9
       37 LOADK                            R14 K4 ["Roblox_Studio"]
       38 CALL                             R10 4 1
       39 MOVE                             R6 R10
       40 CALL                             R4 2 1
       41 JUMP                             ; [+1]
       42 LOADNIL                          R4
       43 GETUPVAL                         R6 1
       44 GETUPVAL                         R7 6
       45 MOVE                             R8 R7
       46 LOADNIL                          R9
       47 LOADNIL                          R10
       48 FORGPREP                         R8
       49 GETTABLEKS                       R13 R6 K0 ["quickConnect"]
       51 GETTABLEKS                       R13 R13 K1 ["fileExistsAsync"]
       53 GETTABLEKS                       R14 R12 K2 ["indicator"]
       55 CALL                             R13 1 1
       56 JUMPIFNOT                        R13 ; [+2]
       57 MOVE                             R5 R12
       58 JUMP                             ; [+3]
       59 FORGLOOP                         R8 2 ; [-11]
       61 LOADNIL                          R5
       62 JUMPIFNOT                        R5 ; [+30]
       63 GETUPVAL                         R6 7
       64 MOVE                             R7 R2
       65 GETUPVAL                         R9 1
       66 GETUPVAL                         R10 4
       67 GETUPVAL                         R11 5
       68 MOVE                             R12 R9
       69 LOADK                            R13 K5 ["~/.cursor/mcp.json"]
       70 MOVE                             R14 R10
       71 GETTABLEKS                       R17 R10 K6 ["mcpServers"]
       73 LOADNIL                          R18
       74 LOADNIL                          R19
       75 FORGPREP                         R17
       76 FASTCALL1                        TYPEOF R21 ; [+3]
       77 MOVE                             R23 R21
       78 GETIMPORT                        R22 K8 [typeof]
       80 CALL                             R22 1 1
       81 JUMPIFNOTEQKS                    R22 K9 ["table"] ; [+3]
       83 MOVE                             R16 R20
       84 JUMP                             ; [+3]
       85 FORGLOOP                         R17 2 ; [-10]
       87 LOADNIL                          R16
       88 ORK                              R15 R16 K4 ["Roblox_Studio"]
       89 CALL                             R11 4 1
       90 MOVE                             R8 R11
       91 CALL                             R6 2 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R6
       94 GETUPVAL                         R8 1
       95 GETUPVAL                         R9 8
       96 MOVE                             R10 R9
       97 LOADNIL                          R11
       98 LOADNIL                          R12
       99 FORGPREP                         R10
      100 GETTABLEKS                       R15 R8 K0 ["quickConnect"]
      102 GETTABLEKS                       R15 R15 K1 ["fileExistsAsync"]
      104 GETTABLEKS                       R16 R14 K2 ["indicator"]
      106 CALL                             R15 1 1
      107 JUMPIFNOT                        R15 ; [+2]
      108 MOVE                             R7 R14
      109 JUMP                             ; [+3]
      110 FORGLOOP                         R10 2 ; [-11]
      112 LOADNIL                          R7
      113 JUMPIFNOT                        R7 ; [+9]
      114 GETUPVAL                         R8 9
      115 MOVE                             R9 R2
      116 GETUPVAL                         R10 10
      117 GETUPVAL                         R11 1
      118 MOVE                             R12 R7
      119 GETUPVAL                         R13 4
      120 CALL                             R10 3 1
      121 CALL                             R8 2 1
      122 JUMP                             ; [+1]
      123 LOADNIL                          R8
      124 NEWTABLE                         R9 4 0
      126 JUMPIFNOT                        R1 ; [+30]
      127 GETUPVAL                         R11 1
      128 GETUPVAL                         R12 11
      129 MOVE                             R13 R11
      130 CALL                             R12 1 1
      131 MOVE                             R13 R12
      132 LOADNIL                          R14
      133 LOADNIL                          R15
      134 FORGPREP                         R13
      135 JUMPIFEQKS                       R17 K10 ["notDetected"] ; [+3]
      137 LOADK                            R18 K11 ["failed"]
      138 SETTABLE                         R18 R12 R16
      139 FORGLOOP                         R13 2 ; [-5]
      141 MOVE                             R10 R12
      142 GETUPVAL                         R11 12
      143 LOADNIL                          R12
      144 LOADNIL                          R13
      145 FORGPREP                         R11
      146 LOADK                            R16 K12 ["hookUnsupported"]
      147 SETTABLE                         R16 R9 R15
      148 FORGLOOP                         R11 2 ; [-3]
      150 GETUPVAL                         R11 13
      151 GETUPVAL                         R12 1
      152 MOVE                             R13 R10
      153 MOVE                             R14 R9
      154 CALL                             R11 3 0
      155 CLOSEUPVALS                      R1
      156 RETURN                           R10 1
      157 GETIMPORT                        R10 K14 [pcall]
      159 GETUPVAL                         R11 1
      160 GETTABLEKS                       R11 R11 K15 ["setUserSettingsAsync"]
      162 LOADK                            R12 K16 ["AssistantMcpCaptureHooksInstalled"]
      163 LOADB                            R13 1
      164 CALL                             R10 3 0
      165 JUMPIFNOT                        R3 ; [+8]
      166 GETUPVAL                         R10 14
      167 GETUPVAL                         R11 1
      168 GETTABLEKS                       R12 R3 K17 ["settings"]
      170 MOVE                             R13 R4
      171 CALL                             R10 3 1
      172 SETTABLEKS                       R10 R9 K18 ["claude_code"]
      174 JUMPIFNOT                        R5 ; [+15]
      175 GETUPVAL                         R10 14
      176 GETUPVAL                         R11 1
      177 LOADK                            R12 K19 ["%*%*hooks.json"]
      178 GETTABLEKS                       R14 R5 K20 ["dir"]
      180 GETTABLEKS                       R15 R5 K21 ["sep"]
      182 NAMECALL                         R12 R12 K22 ["format"]
      184 CALL                             R12 3 1
      185 MOVE                             R13 R6
      186 DUPTABLE                         R14 K25 [{["version"] = 1}]
      187 CALL                             R10 4 1
      188 SETTABLEKS                       R10 R9 K26 ["cursor"]
      190 JUMPIFNOT                        R7 ; [+14]
      191 GETUPVAL                         R10 14
      192 GETUPVAL                         R11 1
      193 LOADK                            R12 K19 ["%*%*hooks.json"]
      194 GETTABLEKS                       R14 R7 K20 ["dir"]
      196 GETTABLEKS                       R15 R7 K21 ["sep"]
      198 NAMECALL                         R12 R12 K22 ["format"]
      200 CALL                             R12 3 1
      201 MOVE                             R13 R8
      202 CALL                             R10 3 1
      203 SETTABLEKS                       R10 R9 K27 ["codex"]
      205 GETUPVAL                         R10 11
      206 GETUPVAL                         R11 1
      207 CALL                             R10 1 1
      208 GETUPVAL                         R11 13
      209 GETUPVAL                         R12 1
      210 MOVE                             R13 R10
      211 MOVE                             R14 R9
      212 CALL                             R11 3 0
      213 CLOSEUPVALS                      R1
      214 RETURN                           R10 1

PROTO_47:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CAPTURE                          UPVAL U9
       13 CAPTURE                          UPVAL U10
       14 CAPTURE                          UPVAL U11
       15 CAPTURE                          UPVAL U12
       16 CAPTURE                          UPVAL U13
       17 CALL                             R2 1 1
       18 RETURN                           R2 1

PROTO_48:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R6 1
        5 JUMPIFNOTEQKS                    R4 K0 ["claude_code"] ; [+24]
        7 GETUPVAL                         R8 2
        8 LOADNIL                          R9
        9 LOADNIL                          R10
       10 FORGPREP                         R8
       11 GETTABLEKS                       R13 R6 K1 ["quickConnect"]
       13 GETTABLEKS                       R13 R13 K2 ["fileExistsAsync"]
       15 GETTABLEKS                       R14 R12 K3 ["indicator"]
       17 CALL                             R13 1 1
       18 JUMPIFNOT                        R13 ; [+2]
       19 MOVE                             R7 R12
       20 JUMP                             ; [+3]
       21 FORGLOOP                         R8 2 ; [-11]
       23 LOADNIL                          R7
       24 JUMPIFNOT                        R7 ; [+3]
       25 GETTABLEKS                       R5 R7 K4 ["settings"]
       27 JUMP                             ; [+36]
       28 LOADNIL                          R5
       29 JUMP                             ; [+34]
       30 JUMPIFNOTEQKS                    R4 K5 ["cursor"] ; [+3]
       32 GETUPVAL                         R7 3
       33 JUMP                             ; [+1]
       34 GETUPVAL                         R7 4
       35 MOVE                             R9 R7
       36 LOADNIL                          R10
       37 LOADNIL                          R11
       38 FORGPREP                         R9
       39 GETTABLEKS                       R14 R6 K1 ["quickConnect"]
       41 GETTABLEKS                       R14 R14 K2 ["fileExistsAsync"]
       43 GETTABLEKS                       R15 R13 K3 ["indicator"]
       45 CALL                             R14 1 1
       46 JUMPIFNOT                        R14 ; [+2]
       47 MOVE                             R8 R13
       48 JUMP                             ; [+3]
       49 FORGLOOP                         R9 2 ; [-11]
       51 LOADNIL                          R8
       52 JUMPIFNOT                        R8 ; [+10]
       53 LOADK                            R9 K6 ["%*%*hooks.json"]
       54 GETTABLEKS                       R11 R8 K7 ["dir"]
       56 GETTABLEKS                       R12 R8 K8 ["sep"]
       58 NAMECALL                         R9 R9 K9 ["format"]
       60 CALL                             R9 3 1
       61 MOVE                             R5 R9
       62 JUMP                             ; [+1]
       63 LOADNIL                          R5
       64 JUMPIFNOT                        R5 ; [+34]
       65 GETUPVAL                         R6 1
       66 GETTABLEKS                       R7 R6 K1 ["quickConnect"]
       68 GETTABLEKS                       R7 R7 K2 ["fileExistsAsync"]
       70 MOVE                             R8 R5
       71 CALL                             R7 1 1
       72 LOADNIL                          R8
       73 GETTABLEKS                       R9 R6 K1 ["quickConnect"]
       75 GETTABLEKS                       R9 R9 K10 ["modifyFileAsync"]
       77 MOVE                             R10 R5
       78 LOADNIL                          R12
       79 LOADNIL                          R13
       80 NEWCLOSURE                       R11 P0
       81 CAPTURE                          VAL R7
       82 CAPTURE                          REF R8
       83 CAPTURE                          UPVAL U5
       84 CAPTURE                          VAL R12
       85 CAPTURE                          UPVAL U6
       86 CAPTURE                          UPVAL U7
       87 CAPTURE                          VAL R13
       88 CAPTURE                          UPVAL U8
       89 CAPTURE                          VAL R6
       90 CAPTURE                          UPVAL U9
       91 CALL                             R9 2 1
       92 JUMPIFNOTEQKNIL                  R8 ; [+5]
       94 JUMPIFNOTEQKB                    R9 FALSE ; [+3]
       96 CLOSEUPVALS                      R8
       97 JUMP                             ; [+1]
       98 CLOSEUPVALS                      R8
       99 FORGLOOP                         R0 2 ; [-96]
      101 GETIMPORT                        R0 K13 [table.clear]
      103 GETUPVAL                         R1 10
      104 CALL                             R0 1 0
      105 GETUPVAL                         R0 11
      106 GETUPVAL                         R1 1
      107 CALL                             R0 1 1
      108 LOADB                            R1 0
      109 MOVE                             R2 R0
      110 LOADNIL                          R3
      111 LOADNIL                          R4
      112 FORGPREP                         R2
      113 JUMPIFNOTEQKS                    R6 K14 ["installed"] ; [+3]
      115 LOADB                            R1 1
      116 JUMP                             ; [+2]
      117 FORGLOOP                         R2 2 ; [-5]
      119 JUMPIF                           R1 ; [+8]
      120 GETIMPORT                        R2 K16 [pcall]
      122 GETUPVAL                         R3 1
      123 GETTABLEKS                       R3 R3 K17 ["setUserSettingsAsync"]
      125 LOADK                            R4 K18 ["AssistantMcpCaptureHooksInstalled"]
      126 LOADB                            R5 0
      127 CALL                             R2 3 0
      128 RETURN                           R0 1

PROTO_49:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 CAPTURE                          UPVAL U10
       13 CAPTURE                          UPVAL U11
       14 CALL                             R1 1 1
       15 RETURN                           R1 1

PROTO_50:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagDebugAssistantMcpCaptureLogging"]
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETIMPORT                        R1 K2 [warn]
        6 LOADK                            R2 K3 ["[McpCaptureHooks] %*"]
        7 MOVE                             R4 R0
        8 NAMECALL                         R2 R2 K4 ["format"]
       10 CALL                             R2 2 1
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_51:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETTABLEKS                       R2 R0 K2 ["getUserSettingsAsync"]
        4 LOADK                            R3 K3 ["AssistantMcpCaptureHooksInstalled"]
        5 CALL                             R1 2 2
        6 JUMPIFNOT                        R1 ; [+2]
        7 JUMPIFEQKB                       R2 TRUE ; [+3]
        9 LOADB                            R3 0
       10 RETURN                           R3 1
       11 GETIMPORT                        R3 K1 [pcall]
       13 GETUPVAL                         R4 0
       14 MOVE                             R5 R0
       15 CALL                             R3 2 2
       16 JUMPIF                           R3 ; [+21]
       17 LOADK                            R5 K4 ["Failed to remove MCP capture hooks: %*"]
       18 FASTCALL1                        TOSTRING R4 ; [+3]
       19 MOVE                             R8 R4
       20 GETIMPORT                        R7 K6 [tostring]
       22 CALL                             R7 1 1
       23 NAMECALL                         R5 R5 K7 ["format"]
       25 CALL                             R5 2 1
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K8 ["FFlagDebugAssistantMcpCaptureLogging"]
       29 JUMPIFNOT                        R6 ; [+8]
       30 GETIMPORT                        R6 K10 [warn]
       32 LOADK                            R7 K11 ["[McpCaptureHooks] %*"]
       33 MOVE                             R9 R5
       34 NAMECALL                         R7 R7 K7 ["format"]
       36 CALL                             R7 2 1
       37 CALL                             R6 1 0
       38 RETURN                           R3 1

PROTO_52:
        0 GETIMPORT                        R0 K2 [table.clear]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["IntegrationManagement"]
       13 GETTABLEKS                       R2 R2 K8 ["CodexConfigToml"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Guest"]
       20 GETTABLEKS                       R3 R3 K10 ["Environment"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       29 GETTABLEKS                       R4 R4 K12 ["ExternalServerContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K13 ["Flags"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Guest"]
       41 GETTABLEKS                       R6 R6 K14 ["JsonEnvironment"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["Parent"]
       48 GETTABLEKS                       R7 R7 K16 ["ModelContextProtocol"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R6 K17 ["Json"]
       53 NEWTABLE                         R8 0 3
       55 LOADK                            R9 K18 ["claude_code"]
       56 LOADK                            R10 K19 ["cursor"]
       57 LOADK                            R11 K20 ["codex"]
       58 SETLIST                          R8 R9 3 [1]
       60 NEWTABLE                         R9 0 1
       62 DUPTABLE                         R10 K26 [{["indicator"] = "~/.cursor", ["dir"] = "~/.cursor", ["sep"] = "/"}]
       63 SETLIST                          R9 R10 1 [1]
       65 NEWTABLE                         R10 0 2
       67 DUPTABLE                         R11 K28 [{["indicator"] = "~/.codex", ["dir"] = "~/.codex", ["sep"] = "/"}]
       68 DUPTABLE                         R12 K31 [{["indicator"] = "%CODEX_HOME%", ["dir"] = "%CODEX_HOME%", ["sep"] = "\\"}]
       69 SETLIST                          R10 R11 2 [1]
       71 NEWTABLE                         R11 0 2
       73 DUPTABLE                         R12 K36 [{["indicator"] = "~/.claude.json", ["claudeJson"] = "~/.claude.json", ["settings"] = "~/.claude/settings.json"}]
       74 DUPTABLE                         R13 K39 [{["indicator"] = "%CLAUDE_CONFIG_DIR%\\.claude.json", ["claudeJson"] = "%CLAUDE_CONFIG_DIR%\\.claude.json", ["settings"] = "%CLAUDE_CONFIG_DIR%\\settings.json"}]
       75 SETLIST                          R11 R12 2 [1]
       77 DUPCLOSURE                       R12 K40 [PROTO_0]
       78 DUPCLOSURE                       R13 K41 [PROTO_1]
       79 DUPCLOSURE                       R14 K42 [PROTO_2]
       80 DUPCLOSURE                       R15 K43 [PROTO_3]
       81 DUPCLOSURE                       R16 K44 [PROTO_4]
       82 DUPCLOSURE                       R17 K45 [PROTO_5]
       83 CAPTURE                          VAL R7
       84 DUPCLOSURE                       R18 K46 [PROTO_6]
       85 CAPTURE                          VAL R5
       86 DUPCLOSURE                       R19 K47 [PROTO_7]
       87 CAPTURE                          VAL R4
       88 DUPCLOSURE                       R20 K48 [PROTO_8]
       89 DUPCLOSURE                       R21 K49 [PROTO_9]
       90 CAPTURE                          VAL R20
       91 DUPCLOSURE                       R22 K50 [PROTO_10]
       92 CAPTURE                          VAL R20
       93 DUPCLOSURE                       R23 K51 [PROTO_11]
       94 CAPTURE                          VAL R20
       95 DUPCLOSURE                       R24 K52 [PROTO_12]
       96 CAPTURE                          VAL R22
       97 DUPCLOSURE                       R25 K53 [PROTO_13]
       98 CAPTURE                          VAL R22
       99 CAPTURE                          VAL R23
      100 DUPCLOSURE                       R26 K54 [PROTO_14]
      101 DUPCLOSURE                       R27 K55 [PROTO_15]
      102 DUPCLOSURE                       R28 K56 [PROTO_16]
      103 CAPTURE                          VAL R27
      104 DUPCLOSURE                       R29 K57 [PROTO_17]
      105 DUPCLOSURE                       R30 K58 [PROTO_18]
      106 CAPTURE                          VAL R29
      107 DUPCLOSURE                       R31 K59 [PROTO_19]
      108 CAPTURE                          VAL R29
      109 CAPTURE                          VAL R30
      110 DUPCLOSURE                       R32 K60 [PROTO_20]
      111 CAPTURE                          VAL R29
      112 CAPTURE                          VAL R30
      113 DUPCLOSURE                       R33 K61 [PROTO_21]
      114 DUPCLOSURE                       R34 K62 [PROTO_22]
      115 CAPTURE                          VAL R11
      116 DUPCLOSURE                       R35 K63 [PROTO_23]
      117 DUPCLOSURE                       R36 K64 [PROTO_25]
      118 CAPTURE                          VAL R7
      119 DUPCLOSURE                       R37 K65 [PROTO_26]
      120 CAPTURE                          VAL R36
      121 DUPCLOSURE                       R38 K66 [PROTO_27]
      122 DUPCLOSURE                       R39 K67 [PROTO_28]
      123 CAPTURE                          VAL R36
      124 DUPCLOSURE                       R40 K68 [PROTO_29]
      125 DUPCLOSURE                       R41 K69 [PROTO_31]
      126 CAPTURE                          VAL R1
      127 DUPCLOSURE                       R42 K70 [PROTO_33]
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R36
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R41
      133 DUPCLOSURE                       R43 K71 [PROTO_34]
      134 CAPTURE                          VAL R43
      135 DUPCLOSURE                       R44 K72 [PROTO_35]
      136 CAPTURE                          VAL R17
      137 DUPCLOSURE                       R45 K73 [PROTO_37]
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R24
      140 DUPCLOSURE                       R46 K74 [PROTO_39]
      141 CAPTURE                          VAL R45
      142 CAPTURE                          VAL R7
      143 CAPTURE                          VAL R24
      144 CAPTURE                          VAL R25
      145 CAPTURE                          VAL R43
      146 CAPTURE                          VAL R5
      147 DUPCLOSURE                       R47 K75 [PROTO_40]
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R9
      150 CAPTURE                          VAL R10
      151 DUPCLOSURE                       R48 K76 [PROTO_41]
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R9
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R7
      157 CAPTURE                          VAL R24
      158 DUPCLOSURE                       R49 K77 [PROTO_42]
      159 CAPTURE                          VAL R48
      160 LOADB                            R50 0
      161 NEWCLOSURE                       R51 P38
      162 CAPTURE                          REF R50
      163 NEWTABLE                         R52 0 0
      165 DUPCLOSURE                       R53 K78 [PROTO_44]
      166 CAPTURE                          VAL R8
      167 CAPTURE                          VAL R52
      168 DUPCLOSURE                       R54 K79 [PROTO_47]
      169 CAPTURE                          VAL R51
      170 CAPTURE                          VAL R19
      171 CAPTURE                          VAL R11
      172 CAPTURE                          VAL R32
      173 CAPTURE                          VAL R36
      174 CAPTURE                          VAL R9
      175 CAPTURE                          VAL R28
      176 CAPTURE                          VAL R10
      177 CAPTURE                          VAL R31
      178 CAPTURE                          VAL R41
      179 CAPTURE                          VAL R48
      180 CAPTURE                          VAL R8
      181 CAPTURE                          VAL R53
      182 CAPTURE                          VAL R46
      183 DUPCLOSURE                       R55 K80 [PROTO_49]
      184 CAPTURE                          VAL R51
      185 CAPTURE                          VAL R8
      186 CAPTURE                          VAL R11
      187 CAPTURE                          VAL R9
      188 CAPTURE                          VAL R10
      189 CAPTURE                          VAL R7
      190 CAPTURE                          VAL R24
      191 CAPTURE                          VAL R25
      192 CAPTURE                          VAL R43
      193 CAPTURE                          VAL R5
      194 CAPTURE                          VAL R52
      195 CAPTURE                          VAL R48
      196 DUPCLOSURE                       R56 K81 [PROTO_50]
      197 CAPTURE                          VAL R4
      198 DUPCLOSURE                       R57 K82 [PROTO_51]
      199 CAPTURE                          VAL R55
      200 CAPTURE                          VAL R4
      201 DUPTABLE                         R58 K104 [{["HARNESS_IDS"], ["HOOKS_INSTALLED_KEY"] = "AssistantMcpCaptureHooksInstalled", ["HOOK_TIMEOUT_SECONDS"] = 5, ["installAsync"], ["uninstallAsync"], ["cleanUpIfInstalledAsync"], ["getStatusAsync"], ["getServerEntry"], ["getServerCommand"], ["findStudioServerNamesAsync"], ["getCaptureCommandAsync"], ["isCaptureCommand"], ["resetInstallReports"], ["mergeHooks"], ["hasOurHooks"], ["findClaudeServerNamesAsync"], ["toToolPrefixName"], ["CONFIG_BACKUP_SUFFIX"] = ".roblox-studio-backup"}]
      202 SETTABLEKS                       R8 R58 K83 ["HARNESS_IDS"]
      204 SETTABLEKS                       R54 R58 K88 ["installAsync"]
      206 SETTABLEKS                       R55 R58 K89 ["uninstallAsync"]
      208 SETTABLEKS                       R57 R58 K90 ["cleanUpIfInstalledAsync"]
      210 SETTABLEKS                       R48 R58 K91 ["getStatusAsync"]
      212 SETTABLEKS                       R12 R58 K92 ["getServerEntry"]
      214 SETTABLEKS                       R13 R58 K93 ["getServerCommand"]
      216 SETTABLEKS                       R42 R58 K94 ["findStudioServerNamesAsync"]
      218 SETTABLEKS                       R19 R58 K95 ["getCaptureCommandAsync"]
      220 SETTABLEKS                       R20 R58 K96 ["isCaptureCommand"]
      222 DUPCLOSURE                       R59 K105 [PROTO_52]
      223 CAPTURE                          VAL R52
      224 SETTABLEKS                       R59 R58 K97 ["resetInstallReports"]
      226 SETTABLEKS                       R25 R58 K98 ["mergeHooks"]
      228 SETTABLEKS                       R24 R58 K99 ["hasOurHooks"]
      230 SETTABLEKS                       R37 R58 K100 ["findClaudeServerNamesAsync"]
      232 SETTABLEKS                       R15 R58 K101 ["toToolPrefixName"]
      234 CLOSEUPVALS                      R50
      235 RETURN                           R58 1
