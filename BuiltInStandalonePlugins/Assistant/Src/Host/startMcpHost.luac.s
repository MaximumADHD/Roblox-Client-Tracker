PROTO_0:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_1:
        0 JUMPIF                           R1 ; [+3]
        1 NEWTABLE                         R2 0 0
        3 RETURN                           R2 1
        4 NEWTABLE                         R2 0 0
        6 MOVE                             R3 R0
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 GETTABLEKS                       R9 R7 K0 ["name"]
       12 GETTABLE                         R8 R1 R9
       13 JUMPIFNOT                        R8 ; [+7]
       14 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       16 MOVE                             R9 R2
       17 MOVE                             R10 R7
       18 GETIMPORT                        R8 K3 [table.insert]
       20 CALL                             R8 2 0
       21 FORGLOOP                         R3 2 ; [-12]
       23 RETURN                           R2 1

PROTO_2:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 1
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R3 R1
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 LOADB                            R8 1
        9 SETTABLE                         R8 R2 R7
       10 FORGLOOP                         R3 2 ; [-3]
       12 NEWTABLE                         R3 0 0
       14 MOVE                             R4 R0
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 FORGPREP                         R4
       18 GETTABLEKS                       R10 R8 K0 ["name"]
       20 GETTABLE                         R9 R2 R10
       21 JUMPIF                           R9 ; [+7]
       22 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       24 MOVE                             R10 R3
       25 MOVE                             R11 R8
       26 GETIMPORT                        R9 K3 [table.insert]
       28 CALL                             R9 2 0
       29 FORGLOOP                         R4 2 ; [-12]
       31 RETURN                           R3 1

PROTO_3:
        0 JUMPIF                           R1 ; [+3]
        1 NEWTABLE                         R2 0 0
        3 RETURN                           R2 1
        4 NEWTABLE                         R2 0 0
        6 MOVE                             R3 R1
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 LOADB                            R8 1
       11 SETTABLE                         R8 R2 R7
       12 FORGLOOP                         R3 2 ; [-3]
       14 GETUPVAL                         R3 0
       15 MOVE                             R4 R0
       16 MOVE                             R5 R2
       17 CALL                             R3 2 1
       18 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getDefinitions"]
        3 CALL                             R0 0 1
        4 NEWTABLE                         R1 0 0
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETUPVAL                         R8 1
       11 GETTABLEKS                       R9 R6 K1 ["name"]
       13 GETTABLE                         R7 R8 R9
       14 GETTABLEKS                       R7 R7 K2 ["external"]
       16 JUMPIFNOT                        R7 ; [+7]
       17 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       19 MOVE                             R8 R1
       20 MOVE                             R9 R6
       21 GETIMPORT                        R7 K5 [table.insert]
       23 CALL                             R7 2 0
       24 FORGLOOP                         R2 2 ; [-15]
       26 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getDefinitions"]
        3 CALL                             R0 0 1
        4 NEWTABLE                         R1 0 0
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETUPVAL                         R8 1
       11 GETTABLEKS                       R9 R6 K1 ["name"]
       13 GETTABLE                         R7 R8 R9
       14 GETTABLEKS                       R7 R7 K2 ["internal"]
       16 JUMPIFNOT                        R7 ; [+7]
       17 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       19 MOVE                             R8 R1
       20 MOVE                             R9 R6
       21 GETIMPORT                        R7 K5 [table.insert]
       23 CALL                             R7 2 0
       24 FORGLOOP                         R2 2 ; [-15]
       26 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["checkAndGetTargetDataModel"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["args"]
        6 GETTABLEKS                       R1 R1 K2 ["datamodel_type"]
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 3
       10 CALL                             R0 3 -1
       11 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETUPVAL                         R5 2
        3 DUPTABLE                         R6 K3 [{"name", "args", "meta"}]
        4 SETTABLEKS                       R0 R6 K0 ["name"]
        6 SETTABLEKS                       R1 R6 K1 ["args"]
        8 SETTABLEKS                       R2 R6 K2 ["meta"]
       10 CALL                             R4 2 -1
       11 CALL                             R3 -1 -1
       12 RETURN                           R3 -1

PROTO_8:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+43]
        4 GETIMPORT                        R2 K1 [pcall]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["getHandler"]
        9 GETTABLEKS                       R4 R0 K3 ["name"]
       11 CALL                             R2 2 2
       12 JUMPIF                           R2 ; [+32]
       13 GETIMPORT                        R4 K5 [warn]
       15 LOADK                            R5 K6 ["[startMcpHost] Failed to get handler for tool:"]
       16 GETTABLEKS                       R6 R0 K3 ["name"]
       18 LOADK                            R7 K7 [":"]
       19 FASTCALL1                        TOSTRING R3 ; [+3]
       20 MOVE                             R9 R3
       21 GETIMPORT                        R8 K9 [tostring]
       23 CALL                             R8 1 1
       24 CALL                             R4 4 0
       25 GETUPVAL                         R4 2
       26 CALL                             R4 0 1
       27 LOADK                            R7 K10 ["Tool handler not found: %*"]
       28 GETTABLEKS                       R9 R0 K3 ["name"]
       30 NAMECALL                         R7 R7 K11 ["format"]
       32 CALL                             R7 2 1
       33 MOVE                             R6 R7
       34 NAMECALL                         R4 R4 K12 ["addText"]
       36 CALL                             R4 2 1
       37 LOADB                            R6 1
       38 NAMECALL                         R4 R4 K13 ["setError"]
       40 CALL                             R4 2 1
       41 NAMECALL                         R4 R4 K14 ["build"]
       43 CALL                             R4 1 -1
       44 RETURN                           R4 -1
       45 MOVE                             R1 R3
       46 JUMP                             ; [+7]
       47 GETUPVAL                         R2 1
       48 GETTABLEKS                       R2 R2 K2 ["getHandler"]
       50 GETTABLEKS                       R3 R0 K3 ["name"]
       52 CALL                             R2 1 1
       53 MOVE                             R1 R2
       54 GETTABLEKS                       R2 R0 K15 ["meta"]
       56 GETUPVAL                         R3 3
       57 CALL                             R3 0 1
       58 JUMPIFNOT                        R3 ; [+41]
       59 GETUPVAL                         R3 4
       60 GETTABLEKS                       R3 R3 K16 ["getToolAvailableDataModelTypes"]
       62 GETTABLEKS                       R4 R0 K3 ["name"]
       64 CALL                             R3 1 1
       65 GETIMPORT                        R4 K1 [pcall]
       67 NEWCLOSURE                       R5 P0
       68 CAPTURE                          UPVAL U5
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R3
       71 CAPTURE                          REF R2
       72 CALL                             R4 1 2
       73 JUMPIF                           R4 ; [+19]
       74 GETUPVAL                         R6 2
       75 CALL                             R6 0 1
       76 FASTCALL1                        TOSTRING R5 ; [+3]
       77 MOVE                             R9 R5
       78 GETIMPORT                        R8 K9 [tostring]
       80 CALL                             R8 1 1
       81 NAMECALL                         R6 R6 K12 ["addText"]
       83 CALL                             R6 2 1
       84 LOADB                            R8 1
       85 NAMECALL                         R6 R6 K13 ["setError"]
       87 CALL                             R6 2 1
       88 NAMECALL                         R6 R6 K14 ["build"]
       90 CALL                             R6 1 -1
       91 CLOSEUPVALS                      R2
       92 RETURN                           R6 -1
       93 MOVE                             R6 R2
       94 JUMPIF                           R6 ; [+2]
       95 NEWTABLE                         R6 0 0
       97 SETTABLEKS                       R5 R6 K17 ["targetDataModel"]
       99 MOVE                             R2 R6
      100 GETUPVAL                         R3 6
      101 GETTABLEKS                       R4 R0 K18 ["extra"]
      103 DUPTABLE                         R5 K21 [{"listTools", "callTool"}]
      104 GETTABLEKS                       R6 R0 K19 ["listTools"]
      106 SETTABLEKS                       R6 R5 K19 ["listTools"]
      108 NEWCLOSURE                       R6 P1
      109 CAPTURE                          UPVAL U7
      110 CAPTURE                          UPVAL U6
      111 CAPTURE                          VAL R0
      112 SETTABLEKS                       R6 R5 K20 ["callTool"]
      114 CALL                             R3 2 1
      115 GETUPVAL                         R4 0
      116 CALL                             R4 0 1
      117 JUMPIFNOT                        R4 ; [+42]
      118 GETIMPORT                        R4 K1 [pcall]
      120 MOVE                             R5 R1
      121 GETTABLEKS                       R6 R0 K22 ["args"]
      123 MOVE                             R7 R2
      124 MOVE                             R8 R3
      125 CALL                             R4 4 2
      126 JUMPIF                           R4 ; [+31]
      127 GETIMPORT                        R6 K5 [warn]
      129 LOADK                            R7 K23 ["[startMcpHost] Tool handler error for"]
      130 GETTABLEKS                       R8 R0 K3 ["name"]
      132 LOADK                            R9 K7 [":"]
      133 FASTCALL1                        TOSTRING R5 ; [+3]
      134 MOVE                             R11 R5
      135 GETIMPORT                        R10 K9 [tostring]
      137 CALL                             R10 1 1
      138 CALL                             R6 4 0
      139 GETUPVAL                         R6 2
      140 CALL                             R6 0 1
      141 FASTCALL1                        TOSTRING R5 ; [+3]
      142 MOVE                             R9 R5
      143 GETIMPORT                        R8 K9 [tostring]
      145 CALL                             R8 1 1
      146 NAMECALL                         R6 R6 K12 ["addText"]
      148 CALL                             R6 2 1
      149 LOADB                            R8 1
      150 NAMECALL                         R6 R6 K13 ["setError"]
      152 CALL                             R6 2 1
      153 NAMECALL                         R6 R6 K14 ["build"]
      155 CALL                             R6 1 -1
      156 CLOSEUPVALS                      R2
      157 RETURN                           R6 -1
      158 CLOSEUPVALS                      R2
      159 RETURN                           R5 1
      160 MOVE                             R4 R1
      161 GETTABLEKS                       R5 R0 K22 ["args"]
      163 MOVE                             R6 R2
      164 MOVE                             R7 R3
      165 CALL                             R4 3 -1
      166 CLOSEUPVALS                      R2
      167 RETURN                           R4 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["name"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["getToolAvailableDataModelTypes"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 JUMPIFNOT                        R2 ; [+3]
        8 LENGTH                           R3 R2
        9 JUMPIFNOTEQKN                    R3 K2 [0] ; [+2]
       11 RETURN                           R0 1
       12 GETIMPORT                        R3 K5 [table.clone]
       14 GETTABLEKS                       R4 R0 K6 ["inputSchema"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R3 K7 ["required"]
       19 JUMPIF                           R4 ; [+5]
       20 NEWTABLE                         R4 0 0
       22 SETTABLEKS                       R4 R3 K7 ["required"]
       24 JUMP                             ; [+7]
       25 GETIMPORT                        R4 K5 [table.clone]
       27 GETTABLEKS                       R5 R3 K7 ["required"]
       29 CALL                             R4 1 1
       30 SETTABLEKS                       R4 R3 K7 ["required"]
       32 GETTABLEKS                       R5 R3 K7 ["required"]
       34 FASTCALL2K                       ASSERT R5 K8 ; [+4]
       36 LOADK                            R6 K8 ["Expected required to be present in input schema"]
       37 GETIMPORT                        R4 K10 [assert]
       39 CALL                             R4 2 0
       40 GETTABLEKS                       R5 R3 K7 ["required"]
       42 FASTCALL2K                       TABLE_INSERT R5 K11 ; [+4]
       44 LOADK                            R6 K11 ["datamodel_type"]
       45 GETIMPORT                        R4 K13 [table.insert]
       47 CALL                             R4 2 0
       48 GETTABLEKS                       R4 R3 K14 ["properties"]
       50 JUMPIF                           R4 ; [+5]
       51 NEWTABLE                         R4 0 0
       53 SETTABLEKS                       R4 R3 K14 ["properties"]
       55 JUMP                             ; [+7]
       56 GETIMPORT                        R4 K5 [table.clone]
       58 GETTABLEKS                       R5 R3 K14 ["properties"]
       60 CALL                             R4 1 1
       61 SETTABLEKS                       R4 R3 K14 ["properties"]
       63 GETTABLEKS                       R5 R3 K14 ["properties"]
       65 FASTCALL2K                       ASSERT R5 K15 ; [+4]
       67 LOADK                            R6 K15 ["Expected properties to be present in input schema"]
       68 GETIMPORT                        R4 K10 [assert]
       70 CALL                             R4 2 0
       71 GETTABLEKS                       R4 R3 K14 ["properties"]
       73 DUPTABLE                         R5 K19 [{"type", "enum", "description"}]
       74 LOADK                            R6 K20 ["string"]
       75 SETTABLEKS                       R6 R5 K16 ["type"]
       77 SETTABLEKS                       R2 R5 K17 ["enum"]
       79 LOADK                            R7 K21 ["The target datamodel to operate on, the tool can only be performed in those datamodel types. if the target datamodel is not available in current mode, consider using %* to switch to the desired mode and then use the tools. This is a required argument."]
       80 GETUPVAL                         R9 1
       81 GETTABLEKS                       R9 R9 K22 ["StartStopPlay"]
       83 NAMECALL                         R7 R7 K23 ["format"]
       85 CALL                             R7 2 1
       86 MOVE                             R6 R7
       87 SETTABLEKS                       R6 R5 K18 ["description"]
       89 SETTABLEKS                       R5 R4 K11 ["datamodel_type"]
       91 GETIMPORT                        R4 K5 [table.clone]
       93 MOVE                             R5 R0
       94 CALL                             R4 1 1
       95 SETTABLEKS                       R3 R4 K6 ["inputSchema"]
       97 RETURN                           R4 1

PROTO_10:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R7 R7 K0 ["getToolGetDescriptionFunction"]
        7 GETTABLEKS                       R8 R6 K1 ["name"]
        9 CALL                             R7 1 1
       10 JUMPIFNOT                        R7 ; [+13]
       11 MOVE                             R8 R7
       12 MOVE                             R9 R1
       13 CALL                             R8 1 1
       14 JUMPIFNOT                        R8 ; [+9]
       15 FASTCALL1                        TYPEOF R8 ; [+3]
       16 MOVE                             R10 R8
       17 GETIMPORT                        R9 K3 [typeof]
       19 CALL                             R9 1 1
       20 JUMPIFNOTEQKS                    R9 K4 ["string"] ; [+3]
       22 SETTABLEKS                       R8 R6 K5 ["description"]
       24 FORGLOOP                         R2 2 ; [-21]
       26 RETURN                           R0 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["structuredContent"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 1
        5 GETTABLEKS                       R2 R0 K1 ["content"]
        7 FASTCALL1                        TYPEOF R2 ; [+2]
        8 GETIMPORT                        R1 K3 [typeof]
       10 CALL                             R1 1 1
       11 JUMPIFNOTEQKS                    R1 K4 ["table"] ; [+35]
       13 GETTABLEKS                       R1 R0 K1 ["content"]
       15 LOADNIL                          R2
       16 LOADNIL                          R3
       17 FORGPREP                         R1
       18 FASTCALL1                        TYPEOF R5 ; [+3]
       19 MOVE                             R7 R5
       20 GETIMPORT                        R6 K3 [typeof]
       22 CALL                             R6 1 1
       23 JUMPIFNOTEQKS                    R6 K4 ["table"] ; [+21]
       25 GETTABLEKS                       R6 R5 K5 ["type"]
       27 JUMPIFNOTEQKS                    R6 K6 ["text"] ; [+17]
       29 GETTABLEKS                       R7 R5 K6 ["text"]
       31 FASTCALL1                        TYPEOF R7 ; [+2]
       32 GETIMPORT                        R6 K3 [typeof]
       34 CALL                             R6 1 1
       35 JUMPIFNOTEQKS                    R6 K7 ["string"] ; [+9]
       37 GETTABLEKS                       R6 R5 K6 ["text"]
       39 JUMPIFEQKS                       R6 K8 [""] ; [+5]
       41 LOADNIL                          R6
       42 SETTABLEKS                       R6 R0 K0 ["structuredContent"]
       44 RETURN                           R0 1
       45 FORGLOOP                         R1 2 ; [-28]
       47 RETURN                           R0 1

PROTO_12:
        0 JUMPIF                           R0 ; [+6]
        1 DUPTABLE                         R1 K1 [{"tools"}]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R1 K0 ["tools"]
        6 RETURN                           R1 1
        7 LOADNIL                          R1
        8 GETTABLEKS                       R2 R0 K2 ["useInternalToolDefinitions"]
       10 JUMPIFNOT                        R2 ; [+4]
       11 GETUPVAL                         R2 0
       12 CALL                             R2 0 1
       13 MOVE                             R1 R2
       14 JUMP                             ; [+5]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K3 ["getDefinitions"]
       18 CALL                             R2 0 1
       19 MOVE                             R1 R2
       20 GETUPVAL                         R2 2
       21 CALL                             R2 0 1
       22 JUMPIFNOT                        R2 ; [+13]
       23 GETUPVAL                         R2 3
       24 GETTABLEKS                       R2 R2 K4 ["getIsEvaluationRunning"]
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+8]
       28 GETUPVAL                         R2 4
       29 MOVE                             R3 R1
       30 GETUPVAL                         R4 3
       31 GETTABLEKS                       R4 R4 K5 ["getDisabledTools"]
       33 CALL                             R4 0 -1
       34 CALL                             R2 -1 1
       35 MOVE                             R1 R2
       36 GETUPVAL                         R2 5
       37 CALL                             R2 0 1
       38 JUMPIFNOT                        R2 ; [+10]
       39 GETTABLEKS                       R2 R0 K6 ["includeDisabledTools"]
       41 JUMPIF                           R2 ; [+7]
       42 GETUPVAL                         R2 6
       43 JUMPIFNOT                        R2 ; [+5]
       44 GETUPVAL                         R2 7
       45 MOVE                             R3 R1
       46 GETUPVAL                         R4 6
       47 CALL                             R2 2 1
       48 MOVE                             R1 R2
       49 GETUPVAL                         R2 8
       50 CALL                             R2 0 1
       51 JUMPIFNOT                        R2 ; [+13]
       52 GETTABLEKS                       R2 R0 K7 ["assistantMode"]
       54 JUMPIFNOT                        R2 ; [+10]
       55 GETUPVAL                         R2 9
       56 MOVE                             R3 R1
       57 GETUPVAL                         R5 10
       58 GETTABLEKS                       R5 R5 K8 ["AssistantModeToolsAllowlist"]
       60 GETTABLEKS                       R6 R0 K7 ["assistantMode"]
       62 GETTABLE                         R4 R5 R6
       63 CALL                             R2 2 1
       64 MOVE                             R1 R2
       65 GETUPVAL                         R2 11
       66 CALL                             R2 0 1
       67 JUMPIFNOT                        R2 ; [+18]
       68 NEWTABLE                         R2 0 0
       70 MOVE                             R3 R1
       71 LOADNIL                          R4
       72 LOADNIL                          R5
       73 FORGPREP                         R3
       74 GETUPVAL                         R10 12
       75 MOVE                             R11 R7
       76 CALL                             R10 1 1
       77 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       79 MOVE                             R9 R2
       80 GETIMPORT                        R8 K11 [table.insert]
       82 CALL                             R8 2 0
       83 FORGLOOP                         R3 2 ; [-10]
       85 MOVE                             R1 R2
       86 GETUPVAL                         R2 13
       87 CALL                             R2 0 1
       88 JUMPIFNOT                        R2 ; [+15]
       89 GETUPVAL                         R2 14
       90 MOVE                             R3 R1
       91 DUPTABLE                         R4 K14 [{"internal", "useScreenCaptureSubagent"}]
       92 LOADB                            R5 1
       93 SETTABLEKS                       R5 R4 K12 ["internal"]
       95 GETTABLEKS                       R6 R0 K2 ["useInternalToolDefinitions"]
       97 JUMPIFNOT                        R6 ; [+2]
       98 LOADB                            R5 1
       99 JUMP                             ; [+1]
      100 LOADB                            R5 0
      101 SETTABLEKS                       R5 R4 K13 ["useScreenCaptureSubagent"]
      103 CALL                             R2 2 0
      104 DUPTABLE                         R2 K1 [{"tools"}]
      105 SETTABLEKS                       R1 R2 K0 ["tools"]
      107 RETURN                           R2 1

PROTO_13:
        0 DUPTABLE                         R0 K1 [{"message"}]
        1 LOADK                            R2 K2 ["pong from "]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K3 ["_serverInfo"]
        5 GETTABLEKS                       R3 R3 K4 ["name"]
        7 CONCAT                           R1 R2 R3
        8 SETTABLEKS                       R1 R0 K0 ["message"]
       10 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+23]
        3 LOADNIL                          R2
        4 GETTABLEKS                       R3 R0 K0 ["params"]
        6 JUMPIFNOT                        R3 ; [+9]
        7 GETTABLEKS                       R3 R0 K0 ["params"]
        9 GETTABLEKS                       R3 R3 K1 ["_meta"]
       11 JUMPIFNOT                        R3 ; [+4]
       12 GETTABLEKS                       R3 R0 K0 ["params"]
       14 GETTABLEKS                       R2 R3 K1 ["_meta"]
       16 JUMPIF                           R2 ; [+2]
       17 NEWTABLE                         R2 0 0
       19 LOADB                            R3 1
       20 SETTABLEKS                       R3 R2 K2 ["isInternal"]
       22 GETUPVAL                         R3 1
       23 MOVE                             R4 R2
       24 CALL                             R3 1 1
       25 RETURN                           R3 1
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R3 R0 K0 ["params"]
       29 CALL                             R2 1 1
       30 RETURN                           R2 1

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["params"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K1 ["Expected params to be present in tools/call request"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R2 K4 ["name"]
       11 MOVE                             R5 R3
       12 JUMPIFNOT                        R5 ; [+9]
       13 FASTCALL1                        TYPEOF R3 ; [+3]
       14 MOVE                             R7 R3
       15 GETIMPORT                        R6 K6 [typeof]
       17 CALL                             R6 1 1
       18 JUMPIFEQKS                       R6 K7 ["string"] ; [+2]
       20 LOADB                            R5 0 +1
       21 LOADB                            R5 1
       22 FASTCALL2K                       ASSERT R5 K8 ; [+4]
       24 LOADK                            R6 K8 ["Expected tool name to be a string"]
       25 GETIMPORT                        R4 K3 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R4 0
       29 DUPTABLE                         R5 K13 [{"name", "args", "meta", "extra", "listTools"}]
       30 SETTABLEKS                       R3 R5 K4 ["name"]
       32 GETTABLEKS                       R6 R2 K14 ["arguments"]
       34 SETTABLEKS                       R6 R5 K9 ["args"]
       36 GETTABLEKS                       R6 R2 K15 ["_meta"]
       38 SETTABLEKS                       R6 R5 K10 ["meta"]
       40 SETTABLEKS                       R1 R5 K11 ["extra"]
       42 GETUPVAL                         R6 1
       43 SETTABLEKS                       R6 R5 K12 ["listTools"]
       45 CALL                             R4 1 1
       46 GETUPVAL                         R5 2
       47 CALL                             R5 0 1
       48 JUMPIFNOT                        R5 ; [+36]
       49 GETIMPORT                        R5 K17 [print]
       51 LOADK                            R7 K18 ["TOOL CALL FINISHED: %*"]
       52 MOVE                             R9 R3
       53 NAMECALL                         R7 R7 K19 ["format"]
       55 CALL                             R7 2 1
       56 MOVE                             R6 R7
       57 CALL                             R5 1 0
       58 GETIMPORT                        R5 K17 [print]
       60 LOADK                            R7 K20 ["Args: %*"]
       61 GETUPVAL                         R9 3
       62 GETTABLEKS                       R9 R9 K21 ["toString"]
       64 GETTABLEKS                       R10 R2 K14 ["arguments"]
       66 CALL                             R9 1 1
       67 NAMECALL                         R7 R7 K19 ["format"]
       69 CALL                             R7 2 1
       70 MOVE                             R6 R7
       71 CALL                             R5 1 0
       72 GETIMPORT                        R5 K17 [print]
       74 LOADK                            R7 K22 ["Result: %*"]
       75 GETUPVAL                         R9 3
       76 GETTABLEKS                       R9 R9 K21 ["toString"]
       78 MOVE                             R10 R4
       79 CALL                             R9 1 1
       80 NAMECALL                         R7 R7 K19 ["format"]
       82 CALL                             R7 2 1
       83 MOVE                             R6 R7
       84 CALL                             R5 1 0
       85 RETURN                           R4 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 DUPTABLE                         R1 K3 [{"name", "version"}]
        4 LOADK                            R2 K4 ["RobloxStudio"]
        5 SETTABLEKS                       R2 R1 K1 ["name"]
        7 LOADK                            R2 K5 ["0.1.0"]
        8 SETTABLEKS                       R2 R1 K2 ["version"]
       10 GETUPVAL                         R2 1
       11 CALL                             R0 2 1
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          UPVAL U6
       18 CAPTURE                          UPVAL U7
       19 CAPTURE                          UPVAL U8
       20 CAPTURE                          UPVAL U9
       21 CAPTURE                          UPVAL U10
       22 CAPTURE                          UPVAL U11
       23 CAPTURE                          UPVAL U12
       24 CAPTURE                          UPVAL U13
       25 CAPTURE                          UPVAL U14
       26 CAPTURE                          UPVAL U15
       27 CAPTURE                          UPVAL U16
       28 DUPTABLE                         R4 K7 [{"method"}]
       29 LOADK                            R5 K8 ["ping"]
       30 SETTABLEKS                       R5 R4 K6 ["method"]
       32 NEWCLOSURE                       R5 P1
       33 CAPTURE                          VAL R0
       34 NAMECALL                         R2 R0 K9 ["setRequestHandler"]
       36 CALL                             R2 3 0
       37 DUPTABLE                         R4 K7 [{"method"}]
       38 LOADK                            R5 K10 ["tools/list"]
       39 SETTABLEKS                       R5 R4 K6 ["method"]
       41 NEWCLOSURE                       R5 P2
       42 CAPTURE                          UPVAL U15
       43 CAPTURE                          VAL R1
       44 NAMECALL                         R2 R0 K9 ["setRequestHandler"]
       46 CALL                             R2 3 0
       47 DUPTABLE                         R4 K7 [{"method"}]
       48 LOADK                            R5 K11 ["tools/call"]
       49 SETTABLEKS                       R5 R4 K6 ["method"]
       51 NEWCLOSURE                       R5 P3
       52 CAPTURE                          UPVAL U17
       53 CAPTURE                          VAL R1
       54 CAPTURE                          UPVAL U18
       55 CAPTURE                          UPVAL U19
       56 NAMECALL                         R2 R0 K9 ["setRequestHandler"]
       58 CALL                             R2 3 0
       59 RETURN                           R0 1

PROTO_17:
        0 GETGLOBAL                        R1 K0 ["getBuiltinServer"]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["registerServer"]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 MOVE                             R4 R0
        9 NAMECALL                         R2 R1 K2 ["connect"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["_oninitialize"]
        5 CALL                             R2 3 1
        6 GETTABLEKS                       R3 R2 K1 ["_meta"]
        8 JUMPIF                           R3 ; [+2]
        9 NEWTABLE                         R3 0 0
       11 SETTABLEKS                       R3 R2 K1 ["_meta"]
       13 GETTABLEKS                       R3 R2 K1 ["_meta"]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K2 ["get"]
       18 CALL                             R4 0 1
       19 GETTABLEKS                       R4 R4 K3 ["getStudioSessionId"]
       21 CALL                             R4 0 1
       22 SETTABLEKS                       R4 R3 K4 ["studioSessionId"]
       24 RETURN                           R2 1

PROTO_19:
        0 DUPTABLE                         R0 K1 [{"message"}]
        1 LOADK                            R2 K2 ["pong from %*"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K3 ["_serverInfo"]
        5 GETTABLEKS                       R4 R4 K4 ["name"]
        7 NAMECALL                         R2 R2 K5 ["format"]
        9 CALL                             R2 2 1
       10 MOVE                             R1 R2
       11 SETTABLEKS                       R1 R0 K0 ["message"]
       13 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+10]
        5 GETUPVAL                         R1 2
        6 MOVE                             R2 R0
        7 DUPTABLE                         R3 K2 [{"internal", "useScreenCaptureSubagent"}]
        8 LOADB                            R4 0
        9 SETTABLEKS                       R4 R3 K0 ["internal"]
       11 LOADB                            R4 0
       12 SETTABLEKS                       R4 R3 K1 ["useScreenCaptureSubagent"]
       14 CALL                             R1 2 0
       15 DUPTABLE                         R1 K4 [{"tools"}]
       16 SETTABLEKS                       R0 R1 K3 ["tools"]
       18 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 RETURN                           R0 1

PROTO_22:
        0 GETTABLEKS                       R2 R0 K0 ["params"]
        2 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K1 ["Expected params to be present in tools/call request"]
        6 GETIMPORT                        R3 K3 [assert]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R3 R2 K4 ["_meta"]
       11 JUMPIF                           R3 ; [+2]
       12 NEWTABLE                         R3 0 0
       14 LOADB                            R4 1
       15 SETTABLEKS                       R4 R3 K5 ["isThirdPartyRequest"]
       17 GETTABLEKS                       R4 R2 K6 ["name"]
       19 MOVE                             R6 R4
       20 JUMPIFNOT                        R6 ; [+9]
       21 FASTCALL1                        TYPEOF R4 ; [+3]
       22 MOVE                             R8 R4
       23 GETIMPORT                        R7 K8 [typeof]
       25 CALL                             R7 1 1
       26 JUMPIFEQKS                       R7 K9 ["string"] ; [+2]
       28 LOADB                            R6 0 +1
       29 LOADB                            R6 1
       30 FASTCALL2K                       ASSERT R6 K10 ; [+4]
       32 LOADK                            R7 K10 ["Expected tool name to be a string"]
       33 GETIMPORT                        R5 K3 [assert]
       35 CALL                             R5 2 0
       36 GETTABLEKS                       R5 R2 K11 ["arguments"]
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K12 ["get"]
       41 CALL                             R6 0 1
       42 GETTABLEKS                       R6 R6 K13 ["EventLogger"]
       44 GETUPVAL                         R7 1
       45 LOADB                            R9 0
       46 NAMECALL                         R7 R7 K14 ["GenerateGUID"]
       48 CALL                             R7 2 1
       49 GETUPVAL                         R8 1
       50 LOADB                            R10 0
       51 NAMECALL                         R8 R8 K14 ["GenerateGUID"]
       53 CALL                             R8 2 1
       54 GETTABLEKS                       R9 R6 K15 ["logToolStarted"]
       56 DUPTABLE                         R10 K23 [{"messageGuid", "sessionId", "toolId", "toolName", "clientName", "isThirdPartyRequest", "isSlashCommand", "input"}]
       57 SETTABLEKS                       R7 R10 K16 ["messageGuid"]
       59 GETUPVAL                         R12 2
       60 ORK                              R11 R12 K24 [""]
       61 SETTABLEKS                       R11 R10 K17 ["sessionId"]
       63 SETTABLEKS                       R8 R10 K18 ["toolId"]
       65 SETTABLEKS                       R4 R10 K19 ["toolName"]
       67 GETTABLEKS                       R11 R3 K25 ["client_name"]
       69 SETTABLEKS                       R11 R10 K20 ["clientName"]
       71 LOADB                            R11 1
       72 SETTABLEKS                       R11 R10 K5 ["isThirdPartyRequest"]
       74 LOADB                            R11 0
       75 SETTABLEKS                       R11 R10 K21 ["isSlashCommand"]
       77 SETTABLEKS                       R5 R10 K22 ["input"]
       79 CALL                             R9 1 0
       80 GETUPVAL                         R9 3
       81 GETTABLEKS                       R9 R9 K26 ["getTimestampMilliseconds"]
       83 CALL                             R9 0 1
       84 LOADNIL                          R10
       85 GETUPVAL                         R11 4
       86 CALL                             R11 0 1
       87 JUMPIFNOT                        R11 ; [+22]
       88 GETUPVAL                         R11 5
       89 CALL                             R11 0 1
       90 JUMPIFNOT                        R11 ; [+19]
       91 DUPTABLE                         R11 K29 [{"isError", "content"}]
       92 LOADB                            R12 1
       93 SETTABLEKS                       R12 R11 K27 ["isError"]
       95 NEWTABLE                         R12 0 1
       97 DUPTABLE                         R13 K32 [{"type", "text"}]
       98 LOADK                            R14 K31 ["text"]
       99 SETTABLEKS                       R14 R13 K30 ["type"]
      101 LOADK                            R14 K33 ["Tool calls are not allowed while in Play mode."]
      102 SETTABLEKS                       R14 R13 K31 ["text"]
      104 SETLIST                          R12 R13 1 [1]
      106 SETTABLEKS                       R12 R11 K28 ["content"]
      108 MOVE                             R10 R11
      109 JUMP                             ; [+15]
      110 GETUPVAL                         R11 6
      111 DUPTABLE                         R12 K38 [{"name", "args", "meta", "extra", "listTools"}]
      112 SETTABLEKS                       R4 R12 K6 ["name"]
      114 SETTABLEKS                       R5 R12 K34 ["args"]
      116 SETTABLEKS                       R3 R12 K35 ["meta"]
      118 SETTABLEKS                       R1 R12 K36 ["extra"]
      120 GETUPVAL                         R13 7
      121 SETTABLEKS                       R13 R12 K37 ["listTools"]
      123 CALL                             R11 1 1
      124 MOVE                             R10 R11
      125 GETUPVAL                         R11 3
      126 GETTABLEKS                       R11 R11 K26 ["getTimestampMilliseconds"]
      128 CALL                             R11 0 1
      129 GETTABLEKS                       R12 R6 K39 ["logToolEnded"]
      131 DUPTABLE                         R13 K44 [{"messageGuid", "toolId", "toolName", "startTime", "startTimeAfterConfirmation", "endTime", "isError", "clientName", "isThirdPartyRequest", "isSlashCommand", "toolResultContent"}]
      132 SETTABLEKS                       R7 R13 K16 ["messageGuid"]
      134 SETTABLEKS                       R8 R13 K18 ["toolId"]
      136 SETTABLEKS                       R4 R13 K19 ["toolName"]
      138 SETTABLEKS                       R9 R13 K40 ["startTime"]
      140 SETTABLEKS                       R9 R13 K41 ["startTimeAfterConfirmation"]
      142 SETTABLEKS                       R11 R13 K42 ["endTime"]
      144 GETTABLEKS                       R15 R10 K27 ["isError"]
      146 ORK                              R14 R15 K45 [False]
      147 SETTABLEKS                       R14 R13 K27 ["isError"]
      149 GETTABLEKS                       R14 R3 K25 ["client_name"]
      151 SETTABLEKS                       R14 R13 K20 ["clientName"]
      153 LOADB                            R14 1
      154 SETTABLEKS                       R14 R13 K5 ["isThirdPartyRequest"]
      156 LOADB                            R14 0
      157 SETTABLEKS                       R14 R13 K21 ["isSlashCommand"]
      159 GETTABLEKS                       R14 R10 K28 ["content"]
      161 SETTABLEKS                       R14 R13 K43 ["toolResultContent"]
      163 CALL                             R12 1 0
      164 GETUPVAL                         R12 8
      165 CALL                             R12 0 1
      166 JUMPIFNOT                        R12 ; [+4]
      167 GETUPVAL                         R12 9
      168 MOVE                             R13 R10
      169 CALL                             R12 1 1
      170 MOVE                             R10 R12
      171 RETURN                           R10 1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isActive"]
        3 NAMECALL                         R0 R0 K1 ["get"]
        5 CALL                             R0 1 1
        6 JUMPIF                           R0 ; [+6]
        7 GETUPVAL                         R0 1
        8 LOADN                            R2 0
        9 NAMECALL                         R0 R0 K2 ["set"]
       11 CALL                             R0 2 0
       12 JUMP                             ; [+32]
       13 GETUPVAL                         R0 2
       14 NAMECALL                         R0 R0 K3 ["ping"]
       16 CALL                             R0 1 1
       17 NAMECALL                         R0 R0 K4 ["await"]
       19 CALL                             R0 1 2
       20 JUMPIFNOT                        R0 ; [+19]
       21 JUMPIFNOT                        R1 ; [+18]
       22 GETTABLEKS                       R2 R1 K5 ["_meta"]
       24 JUMPIFNOT                        R2 ; [+15]
       25 GETTABLEKS                       R2 R1 K5 ["_meta"]
       27 GETTABLEKS                       R2 R2 K6 ["clients"]
       29 JUMPIFNOT                        R2 ; [+10]
       30 GETUPVAL                         R2 1
       31 GETTABLEKS                       R5 R1 K5 ["_meta"]
       33 GETTABLEKS                       R5 R5 K6 ["clients"]
       35 LENGTH                           R4 R5
       36 NAMECALL                         R2 R2 K2 ["set"]
       38 CALL                             R2 2 0
       39 JUMP                             ; [+5]
       40 GETUPVAL                         R2 1
       41 LOADN                            R4 0
       42 NAMECALL                         R2 R2 K2 ["set"]
       44 CALL                             R2 2 0
       45 GETIMPORT                        R0 K9 [task.wait]
       47 LOADN                            R1 5
       48 CALL                             R0 1 0
       49 JUMPBACK                         ; [-50]
       50 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R1 R1 K1 ["EventLogger"]
        6 GETTABLEKS                       R2 R1 K2 ["logExternalServerConnected"]
        8 DUPTABLE                         R3 K4 [{"sessionId"}]
        9 GETUPVAL                         R5 1
       10 ORK                              R4 R5 K5 [""]
       11 SETTABLEKS                       R4 R3 K3 ["sessionId"]
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 2
       15 JUMPIF                           R2 ; [+8]
       16 GETIMPORT                        R2 K8 [task.spawn]
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 CALL                             R2 1 1
       23 SETUPVAL                         R2 2
       24 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+8]
        6 GETIMPORT                        R0 K2 [pcall]
        8 GETIMPORT                        R1 K5 [task.cancel]
       10 GETUPVAL                         R2 1
       11 CALL                             R0 2 0
       12 LOADNIL                          R0
       13 SETUPVAL                         R0 1
       14 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R2 R0 K0 ["transport"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["new"]
        5 DUPTABLE                         R4 K4 [{"name", "version"}]
        6 LOADK                            R5 K5 ["RobloxStudio"]
        7 SETTABLEKS                       R5 R4 K2 ["name"]
        9 LOADK                            R5 K6 ["0.1.0"]
       10 SETTABLEKS                       R5 R4 K3 ["version"]
       12 GETUPVAL                         R5 1
       13 CALL                             R3 2 1
       14 GETTABLEKS                       R4 R2 K7 ["sessionId"]
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K1 ["new"]
       19 LOADN                            R6 0
       20 CALL                             R5 1 1
       21 LOADNIL                          R6
       22 DUPTABLE                         R9 K9 [{"method"}]
       23 LOADK                            R10 K10 ["initialize"]
       24 SETTABLEKS                       R10 R9 K8 ["method"]
       26 NEWCLOSURE                       R10 P0
       27 CAPTURE                          VAL R3
       28 CAPTURE                          UPVAL U3
       29 NAMECALL                         R7 R3 K11 ["setRequestHandler"]
       31 CALL                             R7 3 0
       32 DUPTABLE                         R9 K9 [{"method"}]
       33 LOADK                            R10 K12 ["ping"]
       34 SETTABLEKS                       R10 R9 K8 ["method"]
       36 NEWCLOSURE                       R10 P1
       37 CAPTURE                          VAL R3
       38 NAMECALL                         R7 R3 K11 ["setRequestHandler"]
       40 CALL                             R7 3 0
       41 DUPCLOSURE                       R7 K13 [PROTO_20]
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          UPVAL U6
       45 DUPTABLE                         R10 K9 [{"method"}]
       46 LOADK                            R11 K14 ["tools/list"]
       47 SETTABLEKS                       R11 R10 K8 ["method"]
       49 DUPCLOSURE                       R11 K15 [PROTO_21]
       50 CAPTURE                          VAL R7
       51 NAMECALL                         R8 R3 K11 ["setRequestHandler"]
       53 CALL                             R8 3 0
       54 DUPTABLE                         R10 K9 [{"method"}]
       55 LOADK                            R11 K16 ["tools/call"]
       56 SETTABLEKS                       R11 R10 K8 ["method"]
       58 NEWCLOSURE                       R11 P4
       59 CAPTURE                          UPVAL U3
       60 CAPTURE                          UPVAL U7
       61 CAPTURE                          VAL R4
       62 CAPTURE                          UPVAL U8
       63 CAPTURE                          UPVAL U9
       64 CAPTURE                          VAL R1
       65 CAPTURE                          UPVAL U10
       66 CAPTURE                          VAL R7
       67 CAPTURE                          UPVAL U11
       68 CAPTURE                          UPVAL U12
       69 NAMECALL                         R8 R3 K11 ["setRequestHandler"]
       71 CALL                             R8 3 0
       72 GETTABLEKS                       R8 R3 K17 ["onServerInitialized"]
       74 NEWCLOSURE                       R10 P5
       75 CAPTURE                          UPVAL U3
       76 CAPTURE                          VAL R4
       77 CAPTURE                          REF R6
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R3
       81 NAMECALL                         R8 R8 K18 ["Connect"]
       83 CALL                             R8 2 1
       84 GETUPVAL                         R9 13
       85 GETTABLEKS                       R9 R9 K19 ["registerServer"]
       87 MOVE                             R10 R3
       88 CALL                             R9 1 0
       89 DUPTABLE                         R9 K24 [{"promise", "server", "connectionCountObservable", "destructor"}]
       90 MOVE                             R12 R2
       91 NAMECALL                         R10 R3 K25 ["connect"]
       93 CALL                             R10 2 1
       94 SETTABLEKS                       R10 R9 K20 ["promise"]
       96 SETTABLEKS                       R3 R9 K21 ["server"]
       98 SETTABLEKS                       R5 R9 K22 ["connectionCountObservable"]
      100 NEWCLOSURE                       R10 P6
      101 CAPTURE                          VAL R8
      102 CAPTURE                          REF R6
      103 SETTABLEKS                       R10 R9 K23 ["destructor"]
      105 CLOSEUPVALS                      R6
      106 RETURN                           R9 1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 LOADK                            R1 K1 ["Client->Side"]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["new"]
        8 LOADK                            R2 K2 ["Server<-Side"]
        9 CALL                             R1 1 1
       10 MOVE                             R4 R1
       11 LOADB                            R5 0
       12 NAMECALL                         R2 R0 K3 ["bindPeer"]
       14 CALL                             R2 3 0
       15 RETURN                           R0 2

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R3 K3 [Enum.WebStreamClientType.RawStream]
        3 MOVE                             R4 R0
        4 NAMECALL                         R1 R1 K4 ["CreateWebStreamClientInternal"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 1
        3 SETTABLEKS                       R1 R0 K0 ["ALL_LOGGING_ENABLED"]
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K1 ["setStreamingClientCreationFunc"]
        8 DUPCLOSURE                       R1 K2 [PROTO_28]
        9 CAPTURE                          UPVAL U3
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+64]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["get"]
        6 CALL                             R2 0 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["getIntegrationsAsync"]
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
       31 GETUPVAL                         R11 5
       32 GETTABLEKS                       R11 R11 K6 ["new"]
       34 GETTABLEKS                       R12 R8 K4 ["url"]
       36 MOVE                             R13 R9
       37 CALL                             R11 2 1
       38 MOVE                             R10 R11
       39 JUMP                             ; [+8]
       40 GETUPVAL                         R11 6
       41 GETTABLEKS                       R11 R11 K6 ["new"]
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
       94 GETUPVAL                         R4 11
       95 CALL                             R4 0 1
       96 JUMPIFNOT                        R4 ; [+5]
       97 GETUPVAL                         R4 12
       98 GETTABLEKS                       R4 R4 K15 ["setMcpClient"]
      100 GETUPVAL                         R5 8
      101 CALL                             R4 1 0
      102 MOVE                             R4 R0
      103 GETUPVAL                         R5 8
      104 CALL                             R4 1 0
      105 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["new"]
        3 LOADK                            R5 K1 ["Client->Side"]
        4 CALL                             R4 1 1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K0 ["new"]
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
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K7 ["reject"]
       29 LOADK                            R7 K8 ["Failed to start local MCP server"]
       30 CALL                             R6 1 -1
       31 RETURN                           R6 -1
       32 GETUPVAL                         R6 2
       33 GETTABLEKS                       R6 R6 K0 ["new"]
       35 DUPTABLE                         R7 K11 [{"name", "version"}]
       36 GETUPVAL                         R8 3
       37 GETTABLEKS                       R8 R8 K12 ["MCP_CLIENT_IDENTIFIER"]
       39 SETTABLEKS                       R8 R7 K9 ["name"]
       41 GETUPVAL                         R8 4
       42 GETTABLEKS                       R8 R8 K13 ["JSONRPC_VERSION"]
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
       57 GETUPVAL                         R9 3
       58 GETTABLEKS                       R9 R9 K12 ["MCP_CLIENT_IDENTIFIER"]
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
       76 GETUPVAL                         R9 1
       77 GETTABLEKS                       R9 R9 K0 ["new"]
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
       91 CAPTURE                          UPVAL U12
       92 CAPTURE                          UPVAL U13
       93 CALL                             R9 1 -1
       94 RETURN                           R9 -1

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
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["AssistantUI"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Dash"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K13 ["Src"]
       31 GETTABLEKS                       R5 R5 K14 ["EvalDriver"]
       33 GETTABLEKS                       R5 R5 K15 ["EvalUtils"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R0 K10 ["Packages"]
       40 GETTABLEKS                       R6 R6 K16 ["LuauPolyfill"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R0 K10 ["Packages"]
       47 GETTABLEKS                       R7 R7 K17 ["ModelContextProtocol"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R6 K18 ["Util"]
       52 GETTABLEKS                       R7 R7 K19 ["ToolResult"]
       54 GETIMPORT                        R8 K9 [require]
       56 GETTABLEKS                       R9 R0 K13 ["Src"]
       58 GETTABLEKS                       R9 R9 K20 ["Types"]
       60 CALL                             R8 1 1
       61 GETTABLEKS                       R9 R2 K21 ["Utils"]
       63 GETTABLEKS                       R9 R9 K22 ["EvalController"]
       65 GETTABLEKS                       R10 R2 K23 ["UIToolRegistry"]
       67 GETTABLEKS                       R11 R2 K24 ["Flags"]
       69 GETTABLEKS                       R11 R11 K25 ["Shared"]
       71 GETTABLEKS                       R11 R11 K26 ["FFlagDebugLogAssistantUI"]
       73 GETTABLEKS                       R12 R2 K24 ["Flags"]
       75 GETTABLEKS                       R12 R12 K25 ["Shared"]
       77 GETTABLEKS                       R12 R12 K27 ["FFlagMCPAssistantManagementMenu"]
       79 GETTABLEKS                       R13 R2 K24 ["Flags"]
       81 GETTABLEKS                       R13 R13 K25 ["Shared"]
       83 GETTABLEKS                       R13 R13 K28 ["FFlagAssistantUseVariantHttpTransport"]
       85 GETIMPORT                        R14 K9 [require]
       87 GETTABLEKS                       R15 R0 K13 ["Src"]
       89 GETTABLEKS                       R15 R15 K18 ["Util"]
       91 GETTABLEKS                       R15 R15 K29 ["StudioTools"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K9 [require]
       96 GETTABLEKS                       R16 R0 K13 ["Src"]
       98 GETTABLEKS                       R16 R16 K24 ["Flags"]
      100 GETTABLEKS                       R16 R16 K30 ["FFlagAssistantStripStructuredContentForExternal"]
      102 CALL                             R15 1 1
      103 GETIMPORT                        R16 K9 [require]
      105 GETTABLEKS                       R17 R0 K13 ["Src"]
      107 GETTABLEKS                       R17 R17 K24 ["Flags"]
      109 GETTABLEKS                       R17 R17 K31 ["FFlagSkipExternalToolsNoDebugMode"]
      111 CALL                             R16 1 1
      112 GETTABLEKS                       R17 R2 K24 ["Flags"]
      114 GETTABLEKS                       R17 R17 K25 ["Shared"]
      116 GETTABLEKS                       R17 R17 K32 ["getAssistantModeEnabled"]
      118 GETTABLEKS                       R18 R2 K24 ["Flags"]
      120 GETTABLEKS                       R18 R18 K25 ["Shared"]
      122 GETTABLEKS                       R18 R18 K33 ["getIsAssistantBackgroundDataModelToolCall"]
      124 GETIMPORT                        R19 K9 [require]
      126 GETTABLEKS                       R20 R0 K13 ["Src"]
      128 GETTABLEKS                       R20 R20 K24 ["Flags"]
      130 GETTABLEKS                       R20 R20 K34 ["FFlagAssistantFixToolDisappear"]
      132 CALL                             R19 1 1
      133 GETTABLEKS                       R20 R2 K24 ["Flags"]
      135 GETTABLEKS                       R20 R20 K25 ["Shared"]
      137 GETTABLEKS                       R20 R20 K35 ["FFlagAssistantDynamicToolDescription"]
      139 GETTABLEKS                       R21 R2 K24 ["Flags"]
      141 GETTABLEKS                       R21 R21 K25 ["Shared"]
      143 GETTABLEKS                       R21 R21 K36 ["FFlagAssistantEval"]
      145 GETTABLEKS                       R22 R2 K24 ["Flags"]
      147 GETTABLEKS                       R22 R22 K25 ["Shared"]
      149 GETTABLEKS                       R22 R22 K37 ["FFlagAssistantMarkdownPlanMode"]
      151 GETTABLEKS                       R23 R2 K21 ["Utils"]
      153 GETTABLEKS                       R23 R23 K38 ["Tools"]
      155 GETTABLEKS                       R24 R6 K18 ["Util"]
      157 GETTABLEKS                       R24 R24 K39 ["Logging"]
      159 GETTABLEKS                       R25 R6 K20 ["Types"]
      161 GETTABLEKS                       R26 R6 K40 ["MultiplexedClient"]
      163 GETTABLEKS                       R27 R6 K18 ["Util"]
      165 GETTABLEKS                       R27 R27 K41 ["Observable"]
      167 GETTABLEKS                       R28 R6 K42 ["PeerTransport"]
      169 GETTABLEKS                       R29 R6 K43 ["Promise"]
      171 GETTABLEKS                       R30 R6 K44 ["Server"]
      173 GETTABLEKS                       R31 R6 K45 ["ServerRegistry"]
      175 GETTABLEKS                       R32 R6 K46 ["StreamableHttpClient"]
      177 GETTABLEKS                       R32 R32 K47 ["StreamableHttpClientTransport"]
      179 GETTABLEKS                       R33 R6 K48 ["ToolRegistry"]
      181 GETTABLEKS                       R34 R2 K49 ["IntegrationManagement"]
      183 GETTABLEKS                       R34 R34 K50 ["IntegrationManager"]
      185 GETTABLEKS                       R35 R2 K51 ["Guest"]
      187 GETTABLEKS                       R35 R35 K52 ["Environment"]
      189 GETTABLEKS                       R36 R6 K46 ["StreamableHttpClient"]
      191 GETTABLEKS                       R36 R36 K53 ["StreamingClientFactory"]
      193 GETTABLEKS                       R37 R6 K54 ["HttpVariantClientTransport"]
      195 GETTABLEKS                       R37 R37 K54 ["HttpVariantClientTransport"]
      197 GETTABLEKS                       R38 R2 K21 ["Utils"]
      199 GETTABLEKS                       R38 R38 K55 ["MultiDataModelToolUtil"]
      201 GETTABLEKS                       R39 R2 K21 ["Utils"]
      203 GETTABLEKS                       R39 R39 K56 ["Time"]
      205 GETTABLEKS                       R40 R2 K38 ["Tools"]
      207 GETTABLEKS                       R40 R40 K57 ["ToolTypes"]
      209 GETTABLEKS                       R40 R40 K58 ["ToolNames"]
      211 GETTABLEKS                       R41 R3 K59 ["join"]
      213 DUPTABLE                         R42 K61 [{"capabilities"}]
      214 DUPTABLE                         R43 K65 [{"experimental", "roots", "sampling"}]
      215 GETTABLEKS                       R44 R25 K66 ["emptyObject"]
      217 CALL                             R44 0 1
      218 SETTABLEKS                       R44 R43 K62 ["experimental"]
      220 GETTABLEKS                       R44 R25 K66 ["emptyObject"]
      222 CALL                             R44 0 1
      223 SETTABLEKS                       R44 R43 K63 ["roots"]
      225 GETTABLEKS                       R44 R25 K66 ["emptyObject"]
      227 CALL                             R44 0 1
      228 SETTABLEKS                       R44 R43 K64 ["sampling"]
      230 SETTABLEKS                       R43 R42 K60 ["capabilities"]
      232 DUPTABLE                         R43 K61 [{"capabilities"}]
      233 DUPTABLE                         R44 K70 [{"prompts", "resources", "tools"}]
      234 GETTABLEKS                       R45 R25 K66 ["emptyObject"]
      236 CALL                             R45 0 1
      237 SETTABLEKS                       R45 R44 K67 ["prompts"]
      239 GETTABLEKS                       R45 R25 K66 ["emptyObject"]
      241 CALL                             R45 0 1
      242 SETTABLEKS                       R45 R44 K68 ["resources"]
      244 DUPTABLE                         R45 K72 [{"listChanged"}]
      245 LOADB                            R46 1
      246 SETTABLEKS                       R46 R45 K71 ["listChanged"]
      248 SETTABLEKS                       R45 R44 K69 ["tools"]
      250 SETTABLEKS                       R44 R43 K60 ["capabilities"]
      252 GETIMPORT                        R44 K75 [table.freeze]
      254 NEWTABLE                         R45 32 0
      256 GETTABLEKS                       R46 R40 K76 ["AnimationGen"]
      258 DUPTABLE                         R47 K79 [{"internal", "external"}]
      259 LOADB                            R48 1
      260 SETTABLEKS                       R48 R47 K77 ["internal"]
      262 LOADB                            R48 1
      263 SETTABLEKS                       R48 R47 K78 ["external"]
      265 SETTABLE                         R47 R45 R46
      266 GETTABLEKS                       R46 R40 K80 ["AssetInsert"]
      268 DUPTABLE                         R47 K79 [{"internal", "external"}]
      269 LOADB                            R48 1
      270 SETTABLEKS                       R48 R47 K77 ["internal"]
      272 LOADB                            R48 1
      273 SETTABLEKS                       R48 R47 K78 ["external"]
      275 SETTABLE                         R47 R45 R46
      276 GETTABLEKS                       R46 R40 K81 ["AssetSearch"]
      278 DUPTABLE                         R47 K79 [{"internal", "external"}]
      279 LOADB                            R48 1
      280 SETTABLEKS                       R48 R47 K77 ["internal"]
      282 LOADB                            R48 1
      283 SETTABLEKS                       R48 R47 K78 ["external"]
      285 SETTABLE                         R47 R45 R46
      286 GETTABLEKS                       R46 R40 K82 ["CharacterNavigation"]
      288 DUPTABLE                         R47 K79 [{"internal", "external"}]
      289 LOADB                            R48 1
      290 SETTABLEKS                       R48 R47 K77 ["internal"]
      292 LOADB                            R48 1
      293 SETTABLEKS                       R48 R47 K78 ["external"]
      295 SETTABLE                         R47 R45 R46
      296 GETTABLEKS                       R46 R40 K83 ["CompleteTodoItems"]
      298 DUPTABLE                         R47 K79 [{"internal", "external"}]
      299 LOADB                            R48 1
      300 SETTABLEKS                       R48 R47 K77 ["internal"]
      302 LOADB                            R48 0
      303 SETTABLEKS                       R48 R47 K78 ["external"]
      305 SETTABLE                         R47 R45 R46
      306 GETTABLEKS                       R46 R40 K84 ["CreatorStoreInsert"]
      308 DUPTABLE                         R47 K79 [{"internal", "external"}]
      309 LOADB                            R48 1
      310 SETTABLEKS                       R48 R47 K77 ["internal"]
      312 LOADB                            R48 1
      313 SETTABLEKS                       R48 R47 K78 ["external"]
      315 SETTABLE                         R47 R45 R46
      316 GETTABLEKS                       R46 R40 K85 ["CreatorStoreSearch"]
      318 DUPTABLE                         R47 K79 [{"internal", "external"}]
      319 LOADB                            R48 1
      320 SETTABLEKS                       R48 R47 K77 ["internal"]
      322 LOADB                            R48 1
      323 SETTABLEKS                       R48 R47 K78 ["external"]
      325 SETTABLE                         R47 R45 R46
      326 GETTABLEKS                       R46 R40 K86 ["ExecuteLuau"]
      328 DUPTABLE                         R47 K79 [{"internal", "external"}]
      329 LOADB                            R48 1
      330 SETTABLEKS                       R48 R47 K77 ["internal"]
      332 LOADB                            R48 1
      333 SETTABLEKS                       R48 R47 K78 ["external"]
      335 SETTABLE                         R47 R45 R46
      336 GETTABLEKS                       R46 R40 K87 ["FileSearch"]
      338 DUPTABLE                         R47 K79 [{"internal", "external"}]
      339 LOADB                            R48 1
      340 SETTABLEKS                       R48 R47 K77 ["internal"]
      342 LOADB                            R48 1
      343 SETTABLEKS                       R48 R47 K78 ["external"]
      345 SETTABLE                         R47 R45 R46
      346 GETTABLEKS                       R46 R40 K88 ["FinalizePlan"]
      348 DUPTABLE                         R47 K79 [{"internal", "external"}]
      349 LOADB                            R48 1
      350 SETTABLEKS                       R48 R47 K77 ["internal"]
      352 LOADB                            R48 0
      353 SETTABLEKS                       R48 R47 K78 ["external"]
      355 SETTABLE                         R47 R45 R46
      356 GETTABLEKS                       R46 R40 K89 ["FromHistory"]
      358 DUPTABLE                         R47 K79 [{"internal", "external"}]
      359 LOADB                            R48 1
      360 SETTABLEKS                       R48 R47 K77 ["internal"]
      362 LOADB                            R48 0
      363 SETTABLEKS                       R48 R47 K78 ["external"]
      365 SETTABLE                         R47 R45 R46
      366 GETTABLEKS                       R46 R40 K90 ["UpdatePlan"]
      368 DUPTABLE                         R47 K79 [{"internal", "external"}]
      369 LOADB                            R48 1
      370 SETTABLEKS                       R48 R47 K77 ["internal"]
      372 LOADB                            R48 0
      373 SETTABLEKS                       R48 R47 K78 ["external"]
      375 SETTABLE                         R47 R45 R46
      376 GETTABLEKS                       R46 R40 K91 ["GameTree"]
      378 DUPTABLE                         R47 K79 [{"internal", "external"}]
      379 LOADB                            R48 1
      380 SETTABLEKS                       R48 R47 K77 ["internal"]
      382 LOADB                            R48 1
      383 SETTABLEKS                       R48 R47 K78 ["external"]
      385 SETTABLE                         R47 R45 R46
      386 GETTABLEKS                       R46 R40 K92 ["GetConsoleOutput"]
      388 DUPTABLE                         R47 K79 [{"internal", "external"}]
      389 LOADB                            R48 1
      390 SETTABLEKS                       R48 R47 K77 ["internal"]
      392 LOADB                            R48 1
      393 SETTABLEKS                       R48 R47 K78 ["external"]
      395 SETTABLE                         R47 R45 R46
      396 GETTABLEKS                       R46 R40 K93 ["GrepSearch"]
      398 DUPTABLE                         R47 K79 [{"internal", "external"}]
      399 LOADB                            R48 1
      400 SETTABLEKS                       R48 R47 K77 ["internal"]
      402 LOADB                            R48 1
      403 SETTABLEKS                       R48 R47 K78 ["external"]
      405 SETTABLE                         R47 R45 R46
      406 GETTABLEKS                       R46 R40 K94 ["HttpGet"]
      408 DUPTABLE                         R47 K79 [{"internal", "external"}]
      409 LOADB                            R48 1
      410 SETTABLEKS                       R48 R47 K77 ["internal"]
      412 LOADB                            R48 1
      413 SETTABLEKS                       R48 R47 K78 ["external"]
      415 SETTABLE                         R47 R45 R46
      416 GETTABLEKS                       R46 R40 K95 ["InspectInstance"]
      418 DUPTABLE                         R47 K79 [{"internal", "external"}]
      419 LOADB                            R48 1
      420 SETTABLEKS                       R48 R47 K77 ["internal"]
      422 LOADB                            R48 1
      423 SETTABLEKS                       R48 R47 K78 ["external"]
      425 SETTABLE                         R47 R45 R46
      426 GETTABLEKS                       R46 R40 K96 ["MaterialGen"]
      428 DUPTABLE                         R47 K79 [{"internal", "external"}]
      429 LOADB                            R48 1
      430 SETTABLEKS                       R48 R47 K77 ["internal"]
      432 LOADB                            R48 1
      433 SETTABLEKS                       R48 R47 K78 ["external"]
      435 SETTABLE                         R47 R45 R46
      436 GETTABLEKS                       R46 R40 K97 ["MeshGen"]
      438 DUPTABLE                         R47 K79 [{"internal", "external"}]
      439 LOADB                            R48 1
      440 SETTABLEKS                       R48 R47 K77 ["internal"]
      442 LOADB                            R48 1
      443 SETTABLEKS                       R48 R47 K78 ["external"]
      445 SETTABLE                         R47 R45 R46
      446 GETTABLEKS                       R46 R40 K98 ["MultiEdit"]
      448 DUPTABLE                         R47 K79 [{"internal", "external"}]
      449 LOADB                            R48 1
      450 SETTABLEKS                       R48 R47 K77 ["internal"]
      452 LOADB                            R48 1
      453 SETTABLEKS                       R48 R47 K78 ["external"]
      455 SETTABLE                         R47 R45 R46
      456 GETTABLEKS                       R46 R40 K99 ["PrimitiveGen"]
      458 DUPTABLE                         R47 K79 [{"internal", "external"}]
      459 LOADB                            R48 1
      460 SETTABLEKS                       R48 R47 K77 ["internal"]
      462 LOADB                            R48 1
      463 SETTABLEKS                       R48 R47 K78 ["external"]
      465 SETTABLE                         R47 R45 R46
      466 GETTABLEKS                       R46 R40 K100 ["QuestionAnswer"]
      468 DUPTABLE                         R47 K79 [{"internal", "external"}]
      469 LOADB                            R48 1
      470 SETTABLEKS                       R48 R47 K77 ["internal"]
      472 LOADB                            R48 0
      473 SETTABLEKS                       R48 R47 K78 ["external"]
      475 SETTABLE                         R47 R45 R46
      476 GETTABLEKS                       R46 R40 K101 ["ReadFile"]
      478 DUPTABLE                         R47 K79 [{"internal", "external"}]
      479 LOADB                            R48 1
      480 SETTABLEKS                       R48 R47 K77 ["internal"]
      482 LOADB                            R48 1
      483 SETTABLEKS                       R48 R47 K78 ["external"]
      485 SETTABLE                         R47 R45 R46
      486 GETTABLEKS                       R46 R40 K102 ["ScreenCapture"]
      488 DUPTABLE                         R47 K79 [{"internal", "external"}]
      489 LOADB                            R48 0
      490 SETTABLEKS                       R48 R47 K77 ["internal"]
      492 LOADB                            R48 1
      493 SETTABLEKS                       R48 R47 K78 ["external"]
      495 SETTABLE                         R47 R45 R46
      496 GETTABLEKS                       R46 R40 K103 ["Skill"]
      498 DUPTABLE                         R47 K79 [{"internal", "external"}]
      499 LOADB                            R48 1
      500 SETTABLEKS                       R48 R47 K77 ["internal"]
      502 LOADB                            R48 1
      503 SETTABLEKS                       R48 R47 K78 ["external"]
      505 SETTABLE                         R47 R45 R46
      506 GETTABLEKS                       R46 R40 K104 ["StartStopPlay"]
      508 DUPTABLE                         R47 K79 [{"internal", "external"}]
      509 LOADB                            R48 1
      510 SETTABLEKS                       R48 R47 K77 ["internal"]
      512 LOADB                            R48 1
      513 SETTABLEKS                       R48 R47 K78 ["external"]
      515 SETTABLE                         R47 R45 R46
      516 GETTABLEKS                       R46 R40 K105 ["StoreImage"]
      518 DUPTABLE                         R47 K79 [{"internal", "external"}]
      519 LOADB                            R48 1
      520 SETTABLEKS                       R48 R47 K77 ["internal"]
      522 LOADB                            R48 1
      523 SETTABLEKS                       R48 R47 K78 ["external"]
      525 SETTABLE                         R47 R45 R46
      526 GETTABLEKS                       R46 R40 K106 ["Subagent"]
      528 DUPTABLE                         R47 K79 [{"internal", "external"}]
      529 LOADB                            R48 1
      530 SETTABLEKS                       R48 R47 K77 ["internal"]
      532 LOADB                            R48 1
      533 SETTABLEKS                       R48 R47 K78 ["external"]
      535 SETTABLE                         R47 R45 R46
      536 GETTABLEKS                       R46 R40 K107 ["UploadImage"]
      538 DUPTABLE                         R47 K79 [{"internal", "external"}]
      539 LOADB                            R48 1
      540 SETTABLEKS                       R48 R47 K77 ["internal"]
      542 LOADB                            R48 1
      543 SETTABLEKS                       R48 R47 K78 ["external"]
      545 SETTABLE                         R47 R45 R46
      546 GETTABLEKS                       R46 R40 K108 ["UserKeyboardInput"]
      548 DUPTABLE                         R47 K79 [{"internal", "external"}]
      549 LOADB                            R48 1
      550 SETTABLEKS                       R48 R47 K77 ["internal"]
      552 LOADB                            R48 1
      553 SETTABLEKS                       R48 R47 K78 ["external"]
      555 SETTABLE                         R47 R45 R46
      556 GETTABLEKS                       R46 R40 K109 ["UserMouseInput"]
      558 DUPTABLE                         R47 K79 [{"internal", "external"}]
      559 LOADB                            R48 1
      560 SETTABLEKS                       R48 R47 K77 ["internal"]
      562 LOADB                            R48 1
      563 SETTABLEKS                       R48 R47 K78 ["external"]
      565 SETTABLE                         R47 R45 R46
      566 GETTABLEKS                       R46 R40 K110 ["WaitJobFinished"]
      568 DUPTABLE                         R47 K79 [{"internal", "external"}]
      569 LOADB                            R48 1
      570 SETTABLEKS                       R48 R47 K77 ["internal"]
      572 LOADB                            R48 1
      573 SETTABLEKS                       R48 R47 K78 ["external"]
      575 SETTABLE                         R47 R45 R46
      576 CALL                             R44 1 1
      577 LOADNIL                          R45
      578 NEWCLOSURE                       R46 P0
      579 CAPTURE                          REF R45
      580 DUPCLOSURE                       R47 K111 [PROTO_1]
      581 DUPCLOSURE                       R48 K112 [PROTO_2]
      582 DUPCLOSURE                       R49 K113 [PROTO_3]
      583 CAPTURE                          VAL R47
      584 DUPCLOSURE                       R50 K114 [PROTO_4]
      585 CAPTURE                          VAL R33
      586 CAPTURE                          VAL R44
      587 DUPCLOSURE                       R51 K115 [PROTO_5]
      588 CAPTURE                          VAL R33
      589 CAPTURE                          VAL R44
      590 DUPCLOSURE                       R52 K116 [PROTO_8]
      591 CAPTURE                          VAL R22
      592 CAPTURE                          VAL R33
      593 CAPTURE                          VAL R7
      594 CAPTURE                          VAL R18
      595 CAPTURE                          VAL R10
      596 CAPTURE                          VAL R38
      597 CAPTURE                          VAL R41
      598 CAPTURE                          VAL R52
      599 DUPCLOSURE                       R53 K117 [PROTO_9]
      600 CAPTURE                          VAL R10
      601 CAPTURE                          VAL R40
      602 DUPCLOSURE                       R54 K118 [PROTO_10]
      603 CAPTURE                          VAL R10
      604 DUPCLOSURE                       R55 K119 [PROTO_11]
      605 NEWCLOSURE                       R56 P10
      606 CAPTURE                          VAL R30
      607 CAPTURE                          VAL R43
      608 CAPTURE                          VAL R51
      609 CAPTURE                          VAL R33
      610 CAPTURE                          VAL R21
      611 CAPTURE                          VAL R9
      612 CAPTURE                          VAL R48
      613 CAPTURE                          VAL R19
      614 CAPTURE                          REF R45
      615 CAPTURE                          VAL R47
      616 CAPTURE                          VAL R17
      617 CAPTURE                          VAL R49
      618 CAPTURE                          VAL R14
      619 CAPTURE                          VAL R18
      620 CAPTURE                          VAL R53
      621 CAPTURE                          VAL R20
      622 CAPTURE                          VAL R54
      623 CAPTURE                          VAL R52
      624 CAPTURE                          VAL R11
      625 CAPTURE                          VAL R23
      626 SETGLOBAL                        R56 K120 ["getBuiltinServer"]
      628 DUPCLOSURE                       R56 K121 [PROTO_17]
      629 CAPTURE                          VAL R31
      630 SETGLOBAL                        R56 K122 ["startLocalServer"]
      632 DUPCLOSURE                       R56 K123 [PROTO_26]
      633 CAPTURE                          VAL R30
      634 CAPTURE                          VAL R43
      635 CAPTURE                          VAL R27
      636 CAPTURE                          VAL R35
      637 CAPTURE                          VAL R50
      638 CAPTURE                          VAL R20
      639 CAPTURE                          VAL R54
      640 CAPTURE                          VAL R1
      641 CAPTURE                          VAL R39
      642 CAPTURE                          VAL R16
      643 CAPTURE                          VAL R52
      644 CAPTURE                          VAL R15
      645 CAPTURE                          VAL R55
      646 CAPTURE                          VAL R31
      647 SETGLOBAL                        R56 K124 ["startExternalServer"]
      649 DUPCLOSURE                       R56 K125 [PROTO_27]
      650 CAPTURE                          VAL R28
      651 DUPCLOSURE                       R57 K126 [PROTO_29]
      652 CAPTURE                          VAL R24
      653 CAPTURE                          VAL R11
      654 CAPTURE                          VAL R36
      655 CAPTURE                          VAL R1
      656 DUPCLOSURE                       R58 K127 [PROTO_32]
      657 CAPTURE                          VAL R28
      658 CAPTURE                          VAL R29
      659 CAPTURE                          VAL R26
      660 CAPTURE                          VAL R8
      661 CAPTURE                          VAL R25
      662 CAPTURE                          VAL R12
      663 CAPTURE                          VAL R42
      664 CAPTURE                          VAL R35
      665 CAPTURE                          VAL R34
      666 CAPTURE                          VAL R13
      667 CAPTURE                          VAL R37
      668 CAPTURE                          VAL R32
      669 CAPTURE                          VAL R21
      670 CAPTURE                          VAL R4
      671 DUPTABLE                         R59 K132 [{"promiseMcpHost", "configureModelContextProtocol", "startLocalServer", "startExternalServer", "setToolEnabledStates", "TOOL_AVAILABILITY"}]
      672 SETTABLEKS                       R58 R59 K128 ["promiseMcpHost"]
      674 SETTABLEKS                       R57 R59 K129 ["configureModelContextProtocol"]
      676 GETGLOBAL                        R60 K122 ["startLocalServer"]
      678 SETTABLEKS                       R60 R59 K122 ["startLocalServer"]
      680 GETGLOBAL                        R60 K124 ["startExternalServer"]
      682 SETTABLEKS                       R60 R59 K124 ["startExternalServer"]
      684 SETTABLEKS                       R46 R59 K130 ["setToolEnabledStates"]
      686 SETTABLEKS                       R44 R59 K131 ["TOOL_AVAILABILITY"]
      688 CLOSEUPVALS                      R45
      689 RETURN                           R59 1
