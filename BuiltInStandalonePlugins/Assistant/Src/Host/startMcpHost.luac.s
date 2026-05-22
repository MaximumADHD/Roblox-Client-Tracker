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
       58 JUMPIF                           R3 ; [+6]
       59 GETUPVAL                         R3 4
       60 CALL                             R3 0 1
       61 JUMPIFNOT                        R3 ; [+44]
       62 GETUPVAL                         R3 5
       63 CALL                             R3 0 1
       64 JUMPIFNOT                        R3 ; [+41]
       65 GETUPVAL                         R3 6
       66 GETTABLEKS                       R3 R3 K16 ["getToolAvailableDataModelTypes"]
       68 GETTABLEKS                       R4 R0 K3 ["name"]
       70 CALL                             R3 1 1
       71 GETIMPORT                        R4 K1 [pcall]
       73 NEWCLOSURE                       R5 P0
       74 CAPTURE                          UPVAL U7
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R3
       77 CAPTURE                          REF R2
       78 CALL                             R4 1 2
       79 JUMPIF                           R4 ; [+19]
       80 GETUPVAL                         R6 2
       81 CALL                             R6 0 1
       82 FASTCALL1                        TOSTRING R5 ; [+3]
       83 MOVE                             R9 R5
       84 GETIMPORT                        R8 K9 [tostring]
       86 CALL                             R8 1 1
       87 NAMECALL                         R6 R6 K12 ["addText"]
       89 CALL                             R6 2 1
       90 LOADB                            R8 1
       91 NAMECALL                         R6 R6 K13 ["setError"]
       93 CALL                             R6 2 1
       94 NAMECALL                         R6 R6 K14 ["build"]
       96 CALL                             R6 1 -1
       97 CLOSEUPVALS                      R2
       98 RETURN                           R6 -1
       99 MOVE                             R6 R2
      100 JUMPIF                           R6 ; [+2]
      101 NEWTABLE                         R6 0 0
      103 SETTABLEKS                       R5 R6 K17 ["targetDataModel"]
      105 MOVE                             R2 R6
      106 GETUPVAL                         R3 8
      107 GETTABLEKS                       R4 R0 K18 ["extra"]
      109 DUPTABLE                         R5 K21 [{"listTools", "callTool"}]
      110 GETTABLEKS                       R6 R0 K19 ["listTools"]
      112 SETTABLEKS                       R6 R5 K19 ["listTools"]
      114 NEWCLOSURE                       R6 P1
      115 CAPTURE                          UPVAL U9
      116 CAPTURE                          UPVAL U8
      117 CAPTURE                          VAL R0
      118 SETTABLEKS                       R6 R5 K20 ["callTool"]
      120 CALL                             R3 2 1
      121 GETUPVAL                         R4 0
      122 CALL                             R4 0 1
      123 JUMPIFNOT                        R4 ; [+42]
      124 GETIMPORT                        R4 K1 [pcall]
      126 MOVE                             R5 R1
      127 GETTABLEKS                       R6 R0 K22 ["args"]
      129 MOVE                             R7 R2
      130 MOVE                             R8 R3
      131 CALL                             R4 4 2
      132 JUMPIF                           R4 ; [+31]
      133 GETIMPORT                        R6 K5 [warn]
      135 LOADK                            R7 K23 ["[startMcpHost] Tool handler error for"]
      136 GETTABLEKS                       R8 R0 K3 ["name"]
      138 LOADK                            R9 K7 [":"]
      139 FASTCALL1                        TOSTRING R5 ; [+3]
      140 MOVE                             R11 R5
      141 GETIMPORT                        R10 K9 [tostring]
      143 CALL                             R10 1 1
      144 CALL                             R6 4 0
      145 GETUPVAL                         R6 2
      146 CALL                             R6 0 1
      147 FASTCALL1                        TOSTRING R5 ; [+3]
      148 MOVE                             R9 R5
      149 GETIMPORT                        R8 K9 [tostring]
      151 CALL                             R8 1 1
      152 NAMECALL                         R6 R6 K12 ["addText"]
      154 CALL                             R6 2 1
      155 LOADB                            R8 1
      156 NAMECALL                         R6 R6 K13 ["setError"]
      158 CALL                             R6 2 1
      159 NAMECALL                         R6 R6 K14 ["build"]
      161 CALL                             R6 1 -1
      162 CLOSEUPVALS                      R2
      163 RETURN                           R6 -1
      164 CLOSEUPVALS                      R2
      165 RETURN                           R5 1
      166 MOVE                             R4 R1
      167 GETTABLEKS                       R5 R0 K22 ["args"]
      169 MOVE                             R6 R2
      170 MOVE                             R7 R3
      171 CALL                             R4 3 -1
      172 CLOSEUPVALS                      R2
      173 RETURN                           R4 -1

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
        0 JUMPIF                           R0 ; [+20]
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 JUMPIF                           R1 ; [+3]
        4 GETUPVAL                         R1 1
        5 CALL                             R1 0 1
        6 JUMPIFNOT                        R1 ; [+6]
        7 DUPTABLE                         R1 K1 [{"tools"}]
        8 GETUPVAL                         R2 2
        9 CALL                             R2 0 1
       10 SETTABLEKS                       R2 R1 K0 ["tools"]
       12 RETURN                           R1 1
       13 DUPTABLE                         R1 K1 [{"tools"}]
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K2 ["getDefinitions"]
       17 CALL                             R2 0 1
       18 SETTABLEKS                       R2 R1 K0 ["tools"]
       20 RETURN                           R1 1
       21 LOADNIL                          R1
       22 GETUPVAL                         R2 0
       23 CALL                             R2 0 1
       24 JUMPIFNOT                        R2 ; [+13]
       25 GETTABLEKS                       R2 R0 K3 ["disableScreenCapture"]
       27 JUMPIFNOT                        R2 ; [+4]
       28 GETUPVAL                         R2 2
       29 CALL                             R2 0 1
       30 MOVE                             R1 R2
       31 JUMP                             ; [+18]
       32 GETUPVAL                         R2 3
       33 GETTABLEKS                       R2 R2 K2 ["getDefinitions"]
       35 CALL                             R2 0 1
       36 MOVE                             R1 R2
       37 JUMP                             ; [+12]
       38 GETUPVAL                         R2 1
       39 CALL                             R2 0 1
       40 JUMPIFNOT                        R2 ; [+4]
       41 GETUPVAL                         R2 2
       42 CALL                             R2 0 1
       43 MOVE                             R1 R2
       44 JUMP                             ; [+5]
       45 GETUPVAL                         R2 3
       46 GETTABLEKS                       R2 R2 K2 ["getDefinitions"]
       48 CALL                             R2 0 1
       49 MOVE                             R1 R2
       50 GETUPVAL                         R2 4
       51 CALL                             R2 0 1
       52 JUMPIFNOT                        R2 ; [+13]
       53 GETUPVAL                         R2 5
       54 GETTABLEKS                       R2 R2 K4 ["getIsEvaluationRunning"]
       56 CALL                             R2 0 1
       57 JUMPIFNOT                        R2 ; [+8]
       58 GETUPVAL                         R2 6
       59 MOVE                             R3 R1
       60 GETUPVAL                         R4 5
       61 GETTABLEKS                       R4 R4 K5 ["getDisabledTools"]
       63 CALL                             R4 0 -1
       64 CALL                             R2 -1 1
       65 MOVE                             R1 R2
       66 GETUPVAL                         R2 7
       67 CALL                             R2 0 1
       68 JUMPIFNOT                        R2 ; [+10]
       69 GETTABLEKS                       R2 R0 K6 ["includeDisabledTools"]
       71 JUMPIF                           R2 ; [+7]
       72 GETUPVAL                         R2 8
       73 JUMPIFNOT                        R2 ; [+5]
       74 GETUPVAL                         R2 9
       75 MOVE                             R3 R1
       76 GETUPVAL                         R4 8
       77 CALL                             R2 2 1
       78 MOVE                             R1 R2
       79 GETUPVAL                         R2 10
       80 CALL                             R2 0 1
       81 GETUPVAL                         R3 11
       82 CALL                             R3 0 1
       83 JUMPIFNOT                        R3 ; [+31]
       84 GETTABLEKS                       R3 R0 K7 ["assistantMode"]
       86 JUMPIFNOT                        R3 ; [+28]
       87 GETUPVAL                         R3 12
       88 MOVE                             R4 R1
       89 GETUPVAL                         R6 13
       90 GETTABLEKS                       R6 R6 K8 ["AssistantModeToolsAllowlist"]
       92 GETTABLEKS                       R7 R0 K7 ["assistantMode"]
       94 GETTABLE                         R5 R6 R7
       95 CALL                             R3 2 1
       96 MOVE                             R1 R3
       97 GETTABLEKS                       R4 R0 K7 ["assistantMode"]
       99 GETUPVAL                         R5 14
      100 GETTABLEKS                       R5 R5 K9 ["Types"]
      102 GETTABLEKS                       R5 R5 K10 ["AssistantMode"]
      104 GETTABLEKS                       R5 R5 K11 ["Test"]
      106 JUMPIFEQ                         R4 R5 ; [+2]
      108 LOADB                            R3 0 +1
      109 LOADB                            R3 1
      110 GETUPVAL                         R4 15
      111 CALL                             R4 0 1
      112 JUMPIFNOT                        R4 ; [+2]
      113 JUMPIFNOT                        R3 ; [+1]
      114 LOADB                            R2 1
      115 JUMPIFNOT                        R2 ; [+18]
      116 NEWTABLE                         R3 0 0
      118 MOVE                             R4 R1
      119 LOADNIL                          R5
      120 LOADNIL                          R6
      121 FORGPREP                         R4
      122 GETUPVAL                         R11 16
      123 MOVE                             R12 R8
      124 CALL                             R11 1 1
      125 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
      127 MOVE                             R10 R3
      128 GETIMPORT                        R9 K14 [table.insert]
      130 CALL                             R9 2 0
      131 FORGLOOP                         R4 2 ; [-10]
      133 MOVE                             R1 R3
      134 GETUPVAL                         R3 17
      135 CALL                             R3 0 1
      136 JUMPIFNOT                        R3 ; [+15]
      137 GETUPVAL                         R3 18
      138 MOVE                             R4 R1
      139 DUPTABLE                         R5 K17 [{"internal", "useScreenCaptureSubagent"}]
      140 LOADB                            R6 1
      141 SETTABLEKS                       R6 R5 K15 ["internal"]
      143 GETTABLEKS                       R7 R0 K3 ["disableScreenCapture"]
      145 JUMPIFNOT                        R7 ; [+2]
      146 LOADB                            R6 1
      147 JUMP                             ; [+1]
      148 LOADB                            R6 0
      149 SETTABLEKS                       R6 R5 K16 ["useScreenCaptureSubagent"]
      151 CALL                             R3 2 0
      152 DUPTABLE                         R3 K1 [{"tools"}]
      153 SETTABLEKS                       R1 R3 K0 ["tools"]
      155 RETURN                           R3 1

PROTO_12:
        0 DUPTABLE                         R0 K1 [{"message"}]
        1 LOADK                            R2 K2 ["pong from "]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K3 ["_serverInfo"]
        5 GETTABLEKS                       R3 R3 K4 ["name"]
        7 CONCAT                           R1 R2 R3
        8 SETTABLEKS                       R1 R0 K0 ["message"]
       10 RETURN                           R0 1

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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
       28 CAPTURE                          UPVAL U17
       29 CAPTURE                          UPVAL U18
       30 CAPTURE                          UPVAL U19
       31 CAPTURE                          UPVAL U20
       32 DUPTABLE                         R4 K7 [{"method"}]
       33 LOADK                            R5 K8 ["ping"]
       34 SETTABLEKS                       R5 R4 K6 ["method"]
       36 NEWCLOSURE                       R5 P1
       37 CAPTURE                          VAL R0
       38 NAMECALL                         R2 R0 K9 ["setRequestHandler"]
       40 CALL                             R2 3 0
       41 DUPTABLE                         R4 K7 [{"method"}]
       42 LOADK                            R5 K10 ["tools/list"]
       43 SETTABLEKS                       R5 R4 K6 ["method"]
       45 NEWCLOSURE                       R5 P2
       46 CAPTURE                          UPVAL U19
       47 CAPTURE                          VAL R1
       48 NAMECALL                         R2 R0 K9 ["setRequestHandler"]
       50 CALL                             R2 3 0
       51 DUPTABLE                         R4 K7 [{"method"}]
       52 LOADK                            R5 K11 ["tools/call"]
       53 SETTABLEKS                       R5 R4 K6 ["method"]
       55 NEWCLOSURE                       R5 P3
       56 CAPTURE                          UPVAL U21
       57 CAPTURE                          VAL R1
       58 CAPTURE                          UPVAL U22
       59 CAPTURE                          UPVAL U23
       60 NAMECALL                         R2 R0 K9 ["setRequestHandler"]
       62 CALL                             R2 3 0
       63 RETURN                           R0 1

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 RETURN                           R0 1

PROTO_21:
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
       56 DUPTABLE                         R10 K24 [{"messageGuid", "sessionId", "toolId", "toolName", "clientName", "isThirdPartyRequest", "isSlashCommand", "input", "args"}]
       57 SETTABLEKS                       R7 R10 K16 ["messageGuid"]
       59 GETUPVAL                         R12 2
       60 ORK                              R11 R12 K25 [""]
       61 SETTABLEKS                       R11 R10 K17 ["sessionId"]
       63 SETTABLEKS                       R8 R10 K18 ["toolId"]
       65 SETTABLEKS                       R4 R10 K19 ["toolName"]
       67 GETTABLEKS                       R11 R3 K26 ["client_name"]
       69 SETTABLEKS                       R11 R10 K20 ["clientName"]
       71 LOADB                            R11 1
       72 SETTABLEKS                       R11 R10 K5 ["isThirdPartyRequest"]
       74 LOADB                            R11 0
       75 SETTABLEKS                       R11 R10 K21 ["isSlashCommand"]
       77 SETTABLEKS                       R5 R10 K22 ["input"]
       79 GETUPVAL                         R12 3
       80 GETTABLEKS                       R12 R12 K27 ["Subagent"]
       82 JUMPIFNOTEQ                      R4 R12 ; [+7]
       84 GETUPVAL                         R11 1
       85 MOVE                             R13 R5
       86 NAMECALL                         R11 R11 K28 ["JSONEncode"]
       88 CALL                             R11 2 1
       89 JUMP                             ; [+1]
       90 LOADNIL                          R11
       91 SETTABLEKS                       R11 R10 K23 ["args"]
       93 CALL                             R9 1 0
       94 GETUPVAL                         R9 4
       95 GETTABLEKS                       R9 R9 K29 ["getTimestampMilliseconds"]
       97 CALL                             R9 0 1
       98 LOADNIL                          R10
       99 GETUPVAL                         R11 5
      100 CALL                             R11 0 1
      101 JUMPIFNOT                        R11 ; [+22]
      102 GETUPVAL                         R11 6
      103 CALL                             R11 0 1
      104 JUMPIFNOT                        R11 ; [+19]
      105 DUPTABLE                         R11 K32 [{"isError", "content"}]
      106 LOADB                            R12 1
      107 SETTABLEKS                       R12 R11 K30 ["isError"]
      109 NEWTABLE                         R12 0 1
      111 DUPTABLE                         R13 K35 [{"type", "text"}]
      112 LOADK                            R14 K34 ["text"]
      113 SETTABLEKS                       R14 R13 K33 ["type"]
      115 LOADK                            R14 K36 ["Tool calls are not allowed while in Play mode."]
      116 SETTABLEKS                       R14 R13 K34 ["text"]
      118 SETLIST                          R12 R13 1 [1]
      120 SETTABLEKS                       R12 R11 K31 ["content"]
      122 MOVE                             R10 R11
      123 JUMP                             ; [+15]
      124 GETUPVAL                         R11 7
      125 DUPTABLE                         R12 K40 [{"name", "args", "meta", "extra", "listTools"}]
      126 SETTABLEKS                       R4 R12 K6 ["name"]
      128 SETTABLEKS                       R5 R12 K23 ["args"]
      130 SETTABLEKS                       R3 R12 K37 ["meta"]
      132 SETTABLEKS                       R1 R12 K38 ["extra"]
      134 GETUPVAL                         R13 8
      135 SETTABLEKS                       R13 R12 K39 ["listTools"]
      137 CALL                             R11 1 1
      138 MOVE                             R10 R11
      139 GETUPVAL                         R11 4
      140 GETTABLEKS                       R11 R11 K29 ["getTimestampMilliseconds"]
      142 CALL                             R11 0 1
      143 GETTABLEKS                       R12 R6 K41 ["logToolEnded"]
      145 DUPTABLE                         R13 K46 [{"messageGuid", "toolId", "toolName", "startTime", "startTimeAfterConfirmation", "endTime", "isError", "clientName", "isThirdPartyRequest", "isSlashCommand", "args", "toolResultContent"}]
      146 SETTABLEKS                       R7 R13 K16 ["messageGuid"]
      148 SETTABLEKS                       R8 R13 K18 ["toolId"]
      150 SETTABLEKS                       R4 R13 K19 ["toolName"]
      152 SETTABLEKS                       R9 R13 K42 ["startTime"]
      154 SETTABLEKS                       R9 R13 K43 ["startTimeAfterConfirmation"]
      156 SETTABLEKS                       R11 R13 K44 ["endTime"]
      158 GETTABLEKS                       R15 R10 K30 ["isError"]
      160 ORK                              R14 R15 K47 [False]
      161 SETTABLEKS                       R14 R13 K30 ["isError"]
      163 GETTABLEKS                       R14 R3 K26 ["client_name"]
      165 SETTABLEKS                       R14 R13 K20 ["clientName"]
      167 LOADB                            R14 1
      168 SETTABLEKS                       R14 R13 K5 ["isThirdPartyRequest"]
      170 LOADB                            R14 0
      171 SETTABLEKS                       R14 R13 K21 ["isSlashCommand"]
      173 GETUPVAL                         R15 3
      174 GETTABLEKS                       R15 R15 K27 ["Subagent"]
      176 JUMPIFNOTEQ                      R4 R15 ; [+7]
      178 GETUPVAL                         R14 1
      179 MOVE                             R16 R5
      180 NAMECALL                         R14 R14 K28 ["JSONEncode"]
      182 CALL                             R14 2 1
      183 JUMP                             ; [+1]
      184 LOADNIL                          R14
      185 SETTABLEKS                       R14 R13 K23 ["args"]
      187 GETTABLEKS                       R14 R10 K31 ["content"]
      189 SETTABLEKS                       R14 R13 K45 ["toolResultContent"]
      191 CALL                             R12 1 0
      192 RETURN                           R10 1

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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
       41 DUPCLOSURE                       R7 K13 [PROTO_19]
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          UPVAL U6
       45 DUPTABLE                         R10 K9 [{"method"}]
       46 LOADK                            R11 K14 ["tools/list"]
       47 SETTABLEKS                       R11 R10 K8 ["method"]
       49 DUPCLOSURE                       R11 K15 [PROTO_20]
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
       64 CAPTURE                          UPVAL U10
       65 CAPTURE                          VAL R1
       66 CAPTURE                          UPVAL U11
       67 CAPTURE                          VAL R7
       68 NAMECALL                         R8 R3 K11 ["setRequestHandler"]
       70 CALL                             R8 3 0
       71 GETTABLEKS                       R8 R3 K17 ["onServerInitialized"]
       73 NEWCLOSURE                       R10 P5
       74 CAPTURE                          UPVAL U3
       75 CAPTURE                          VAL R4
       76 CAPTURE                          REF R6
       77 CAPTURE                          VAL R0
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R3
       80 NAMECALL                         R8 R8 K18 ["Connect"]
       82 CALL                             R8 2 1
       83 GETUPVAL                         R9 12
       84 GETTABLEKS                       R9 R9 K19 ["registerServer"]
       86 MOVE                             R10 R3
       87 CALL                             R9 1 0
       88 DUPTABLE                         R9 K24 [{"promise", "server", "connectionCountObservable", "destructor"}]
       89 MOVE                             R12 R2
       90 NAMECALL                         R10 R3 K25 ["connect"]
       92 CALL                             R10 2 1
       93 SETTABLEKS                       R10 R9 K20 ["promise"]
       95 SETTABLEKS                       R3 R9 K21 ["server"]
       97 SETTABLEKS                       R5 R9 K22 ["connectionCountObservable"]
       99 NEWCLOSURE                       R10 P6
      100 CAPTURE                          VAL R8
      101 CAPTURE                          REF R6
      102 SETTABLEKS                       R10 R9 K23 ["destructor"]
      104 CLOSEUPVALS                      R6
      105 RETURN                           R9 1

PROTO_26:
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

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R3 K3 [Enum.WebStreamClientType.RawStream]
        3 MOVE                             R4 R0
        4 NAMECALL                         R1 R1 K4 ["CreateWebStreamClientInternal"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 1
        3 SETTABLEKS                       R1 R0 K0 ["ALL_LOGGING_ENABLED"]
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K1 ["setStreamingClientCreationFunc"]
        8 DUPCLOSURE                       R1 K2 [PROTO_27]
        9 CAPTURE                          UPVAL U3
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_29:
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

PROTO_30:
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

PROTO_31:
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
       85 GETTABLEKS                       R14 R2 K24 ["Flags"]
       87 GETTABLEKS                       R14 R14 K25 ["Shared"]
       89 GETTABLEKS                       R14 R14 K29 ["FFlagAssistantUseNewMeshGenTool"]
       91 GETTABLEKS                       R15 R2 K24 ["Flags"]
       93 GETTABLEKS                       R15 R15 K25 ["Shared"]
       95 GETTABLEKS                       R15 R15 K30 ["FFlagAssistantUseNewCreatorStoreTools"]
       97 GETIMPORT                        R16 K9 [require]
       99 GETTABLEKS                       R17 R0 K13 ["Src"]
      101 GETTABLEKS                       R17 R17 K24 ["Flags"]
      103 GETTABLEKS                       R17 R17 K31 ["FFlagDisableInternalScreenCapture"]
      105 CALL                             R16 1 1
      106 GETTABLEKS                       R17 R2 K24 ["Flags"]
      108 GETTABLEKS                       R17 R17 K25 ["Shared"]
      110 GETTABLEKS                       R17 R17 K32 ["FFlagDisableScreenCaptureForDefaultModel"]
      112 GETIMPORT                        R18 K9 [require]
      114 GETTABLEKS                       R19 R0 K13 ["Src"]
      116 GETTABLEKS                       R19 R19 K18 ["Util"]
      118 GETTABLEKS                       R19 R19 K33 ["StudioTools"]
      120 CALL                             R18 1 1
      121 GETIMPORT                        R19 K9 [require]
      123 GETTABLEKS                       R20 R0 K13 ["Src"]
      125 GETTABLEKS                       R20 R20 K24 ["Flags"]
      127 GETTABLEKS                       R20 R20 K34 ["FFlagSkipExternalToolsNoDebugMode"]
      129 CALL                             R19 1 1
      130 GETTABLEKS                       R20 R2 K24 ["Flags"]
      132 GETTABLEKS                       R20 R20 K25 ["Shared"]
      134 GETTABLEKS                       R20 R20 K35 ["getAssistantModeEnabled"]
      136 GETTABLEKS                       R21 R2 K24 ["Flags"]
      138 GETTABLEKS                       R21 R21 K25 ["Shared"]
      140 GETTABLEKS                       R21 R21 K36 ["FFlagAssistantTestModeDropdown"]
      142 GETTABLEKS                       R22 R2 K24 ["Flags"]
      144 GETTABLEKS                       R22 R22 K25 ["Shared"]
      146 GETTABLEKS                       R22 R22 K37 ["FFlagAssistantTestModeToolArgPatch"]
      148 GETTABLEKS                       R23 R2 K24 ["Flags"]
      150 GETTABLEKS                       R23 R23 K25 ["Shared"]
      152 GETTABLEKS                       R23 R23 K38 ["FFlagAssistantAgentModeToolArgPatch"]
      154 GETIMPORT                        R24 K9 [require]
      156 GETTABLEKS                       R25 R0 K13 ["Src"]
      158 GETTABLEKS                       R25 R25 K24 ["Flags"]
      160 GETTABLEKS                       R25 R25 K39 ["FFlagAssistantFixToolDisappear"]
      162 CALL                             R24 1 1
      163 GETTABLEKS                       R25 R2 K24 ["Flags"]
      165 GETTABLEKS                       R25 R25 K25 ["Shared"]
      167 GETTABLEKS                       R25 R25 K40 ["FFlagAssistantDynamicToolDescription"]
      169 GETTABLEKS                       R26 R2 K24 ["Flags"]
      171 GETTABLEKS                       R26 R26 K25 ["Shared"]
      173 GETTABLEKS                       R26 R26 K41 ["FFlagAssistantEval"]
      175 GETTABLEKS                       R27 R2 K24 ["Flags"]
      177 GETTABLEKS                       R27 R27 K25 ["Shared"]
      179 GETTABLEKS                       R27 R27 K42 ["FFlagAssistantMarkdownPlanMode"]
      181 GETTABLEKS                       R28 R2 K21 ["Utils"]
      183 GETTABLEKS                       R28 R28 K43 ["Tools"]
      185 GETTABLEKS                       R29 R6 K18 ["Util"]
      187 GETTABLEKS                       R29 R29 K44 ["Logging"]
      189 GETTABLEKS                       R30 R6 K20 ["Types"]
      191 GETTABLEKS                       R31 R6 K45 ["MultiplexedClient"]
      193 GETTABLEKS                       R32 R6 K18 ["Util"]
      195 GETTABLEKS                       R32 R32 K46 ["Observable"]
      197 GETTABLEKS                       R33 R6 K47 ["PeerTransport"]
      199 GETTABLEKS                       R34 R6 K48 ["Promise"]
      201 GETTABLEKS                       R35 R6 K49 ["Server"]
      203 GETTABLEKS                       R36 R6 K50 ["ServerRegistry"]
      205 GETTABLEKS                       R37 R6 K51 ["StreamableHttpClient"]
      207 GETTABLEKS                       R37 R37 K52 ["StreamableHttpClientTransport"]
      209 GETTABLEKS                       R38 R6 K53 ["ToolRegistry"]
      211 GETTABLEKS                       R39 R2 K54 ["IntegrationManagement"]
      213 GETTABLEKS                       R39 R39 K55 ["IntegrationManager"]
      215 GETTABLEKS                       R40 R2 K56 ["Guest"]
      217 GETTABLEKS                       R40 R40 K57 ["Environment"]
      219 GETTABLEKS                       R41 R6 K51 ["StreamableHttpClient"]
      221 GETTABLEKS                       R41 R41 K58 ["StreamingClientFactory"]
      223 GETTABLEKS                       R42 R6 K59 ["HttpVariantClientTransport"]
      225 GETTABLEKS                       R42 R42 K59 ["HttpVariantClientTransport"]
      227 GETTABLEKS                       R43 R2 K21 ["Utils"]
      229 GETTABLEKS                       R43 R43 K60 ["MultiDataModelToolUtil"]
      231 GETTABLEKS                       R44 R2 K21 ["Utils"]
      233 GETTABLEKS                       R44 R44 K61 ["Time"]
      235 GETTABLEKS                       R45 R2 K43 ["Tools"]
      237 GETTABLEKS                       R45 R45 K62 ["ToolTypes"]
      239 GETTABLEKS                       R45 R45 K63 ["ToolNames"]
      241 GETTABLEKS                       R46 R3 K64 ["join"]
      243 DUPTABLE                         R47 K66 [{"capabilities"}]
      244 DUPTABLE                         R48 K70 [{"experimental", "roots", "sampling"}]
      245 GETTABLEKS                       R49 R30 K71 ["emptyObject"]
      247 CALL                             R49 0 1
      248 SETTABLEKS                       R49 R48 K67 ["experimental"]
      250 GETTABLEKS                       R49 R30 K71 ["emptyObject"]
      252 CALL                             R49 0 1
      253 SETTABLEKS                       R49 R48 K68 ["roots"]
      255 GETTABLEKS                       R49 R30 K71 ["emptyObject"]
      257 CALL                             R49 0 1
      258 SETTABLEKS                       R49 R48 K69 ["sampling"]
      260 SETTABLEKS                       R48 R47 K65 ["capabilities"]
      262 DUPTABLE                         R48 K66 [{"capabilities"}]
      263 DUPTABLE                         R49 K75 [{"prompts", "resources", "tools"}]
      264 GETTABLEKS                       R50 R30 K71 ["emptyObject"]
      266 CALL                             R50 0 1
      267 SETTABLEKS                       R50 R49 K72 ["prompts"]
      269 GETTABLEKS                       R50 R30 K71 ["emptyObject"]
      271 CALL                             R50 0 1
      272 SETTABLEKS                       R50 R49 K73 ["resources"]
      274 DUPTABLE                         R50 K77 [{"listChanged"}]
      275 LOADB                            R51 1
      276 SETTABLEKS                       R51 R50 K76 ["listChanged"]
      278 SETTABLEKS                       R50 R49 K74 ["tools"]
      280 SETTABLEKS                       R49 R48 K65 ["capabilities"]
      282 GETIMPORT                        R49 K80 [table.freeze]
      284 NEWTABLE                         R50 64 0
      286 GETTABLEKS                       R51 R45 K81 ["AnimationGen"]
      288 DUPTABLE                         R52 K84 [{"internal", "external"}]
      289 LOADB                            R53 1
      290 SETTABLEKS                       R53 R52 K82 ["internal"]
      292 LOADB                            R53 1
      293 SETTABLEKS                       R53 R52 K83 ["external"]
      295 SETTABLE                         R52 R50 R51
      296 GETTABLEKS                       R51 R45 K85 ["AssetInsert"]
      298 DUPTABLE                         R52 K84 [{"internal", "external"}]
      299 LOADB                            R53 1
      300 SETTABLEKS                       R53 R52 K82 ["internal"]
      302 LOADB                            R53 1
      303 SETTABLEKS                       R53 R52 K83 ["external"]
      305 SETTABLE                         R52 R50 R51
      306 GETTABLEKS                       R51 R45 K86 ["AssetSearch"]
      308 DUPTABLE                         R52 K84 [{"internal", "external"}]
      309 LOADB                            R53 1
      310 SETTABLEKS                       R53 R52 K82 ["internal"]
      312 LOADB                            R53 1
      313 SETTABLEKS                       R53 R52 K83 ["external"]
      315 SETTABLE                         R52 R50 R51
      316 GETTABLEKS                       R51 R45 K87 ["CharacterNavigation"]
      318 DUPTABLE                         R52 K84 [{"internal", "external"}]
      319 LOADB                            R53 1
      320 SETTABLEKS                       R53 R52 K82 ["internal"]
      322 LOADB                            R53 1
      323 SETTABLEKS                       R53 R52 K83 ["external"]
      325 SETTABLE                         R52 R50 R51
      326 GETTABLEKS                       R51 R45 K88 ["CompleteTodoItems"]
      328 DUPTABLE                         R52 K84 [{"internal", "external"}]
      329 LOADB                            R53 1
      330 SETTABLEKS                       R53 R52 K82 ["internal"]
      332 LOADB                            R53 0
      333 SETTABLEKS                       R53 R52 K83 ["external"]
      335 SETTABLE                         R52 R50 R51
      336 GETTABLEKS                       R51 R45 K89 ["CreatorStoreInsert"]
      338 DUPTABLE                         R52 K84 [{"internal", "external"}]
      339 LOADB                            R53 1
      340 SETTABLEKS                       R53 R52 K82 ["internal"]
      342 LOADB                            R53 1
      343 SETTABLEKS                       R53 R52 K83 ["external"]
      345 SETTABLE                         R52 R50 R51
      346 GETTABLEKS                       R51 R45 K90 ["CreatorStoreSearch"]
      348 DUPTABLE                         R52 K84 [{"internal", "external"}]
      349 LOADB                            R53 1
      350 SETTABLEKS                       R53 R52 K82 ["internal"]
      352 LOADB                            R53 1
      353 SETTABLEKS                       R53 R52 K83 ["external"]
      355 SETTABLE                         R52 R50 R51
      356 GETTABLEKS                       R51 R45 K91 ["ExecuteLuau"]
      358 DUPTABLE                         R52 K84 [{"internal", "external"}]
      359 LOADB                            R53 1
      360 SETTABLEKS                       R53 R52 K82 ["internal"]
      362 LOADB                            R53 1
      363 SETTABLEKS                       R53 R52 K83 ["external"]
      365 SETTABLE                         R52 R50 R51
      366 GETTABLEKS                       R51 R45 K92 ["FileSearch"]
      368 DUPTABLE                         R52 K84 [{"internal", "external"}]
      369 LOADB                            R53 1
      370 SETTABLEKS                       R53 R52 K82 ["internal"]
      372 LOADB                            R53 1
      373 SETTABLEKS                       R53 R52 K83 ["external"]
      375 SETTABLE                         R52 R50 R51
      376 GETTABLEKS                       R51 R45 K93 ["FinalizePlan"]
      378 DUPTABLE                         R52 K84 [{"internal", "external"}]
      379 LOADB                            R53 1
      380 SETTABLEKS                       R53 R52 K82 ["internal"]
      382 LOADB                            R53 0
      383 SETTABLEKS                       R53 R52 K83 ["external"]
      385 SETTABLE                         R52 R50 R51
      386 GETTABLEKS                       R51 R45 K94 ["FromHistory"]
      388 DUPTABLE                         R52 K84 [{"internal", "external"}]
      389 LOADB                            R53 1
      390 SETTABLEKS                       R53 R52 K82 ["internal"]
      392 LOADB                            R53 0
      393 SETTABLEKS                       R53 R52 K83 ["external"]
      395 SETTABLE                         R52 R50 R51
      396 GETTABLEKS                       R51 R45 K95 ["UpdatePlan"]
      398 DUPTABLE                         R52 K84 [{"internal", "external"}]
      399 LOADB                            R53 1
      400 SETTABLEKS                       R53 R52 K82 ["internal"]
      402 LOADB                            R53 0
      403 SETTABLEKS                       R53 R52 K83 ["external"]
      405 SETTABLE                         R52 R50 R51
      406 GETTABLEKS                       R51 R45 K96 ["GameTree"]
      408 DUPTABLE                         R52 K84 [{"internal", "external"}]
      409 LOADB                            R53 1
      410 SETTABLEKS                       R53 R52 K82 ["internal"]
      412 LOADB                            R53 1
      413 SETTABLEKS                       R53 R52 K83 ["external"]
      415 SETTABLE                         R52 R50 R51
      416 GETTABLEKS                       R51 R45 K97 ["GetConsoleOutput"]
      418 DUPTABLE                         R52 K84 [{"internal", "external"}]
      419 LOADB                            R53 1
      420 SETTABLEKS                       R53 R52 K82 ["internal"]
      422 LOADB                            R53 1
      423 SETTABLEKS                       R53 R52 K83 ["external"]
      425 SETTABLE                         R52 R50 R51
      426 GETTABLEKS                       R51 R45 K98 ["GrepSearch"]
      428 DUPTABLE                         R52 K84 [{"internal", "external"}]
      429 LOADB                            R53 1
      430 SETTABLEKS                       R53 R52 K82 ["internal"]
      432 LOADB                            R53 1
      433 SETTABLEKS                       R53 R52 K83 ["external"]
      435 SETTABLE                         R52 R50 R51
      436 GETTABLEKS                       R51 R45 K99 ["HttpGet"]
      438 DUPTABLE                         R52 K84 [{"internal", "external"}]
      439 LOADB                            R53 1
      440 SETTABLEKS                       R53 R52 K82 ["internal"]
      442 LOADB                            R53 1
      443 SETTABLEKS                       R53 R52 K83 ["external"]
      445 SETTABLE                         R52 R50 R51
      446 GETTABLEKS                       R51 R45 K100 ["InsertFromMarketplace"]
      448 DUPTABLE                         R52 K84 [{"internal", "external"}]
      449 LOADB                            R53 1
      450 SETTABLEKS                       R53 R52 K82 ["internal"]
      452 MOVE                             R55 R15
      453 CALL                             R55 0 1
      454 JUMPIFNOT                        R55 ; [+2]
      455 LOADNIL                          R54
      456 JUMP                             ; [+3]
      457 MOVE                             R55 R14
      458 CALL                             R55 0 1
      459 NOT                              R54 R55
      460 NOT                              R53 R54
      461 SETTABLEKS                       R53 R52 K83 ["external"]
      463 SETTABLE                         R52 R50 R51
      464 GETTABLEKS                       R51 R45 K101 ["InspectInstance"]
      466 DUPTABLE                         R52 K84 [{"internal", "external"}]
      467 LOADB                            R53 1
      468 SETTABLEKS                       R53 R52 K82 ["internal"]
      470 LOADB                            R53 1
      471 SETTABLEKS                       R53 R52 K83 ["external"]
      473 SETTABLE                         R52 R50 R51
      474 GETTABLEKS                       R51 R45 K102 ["MaterialGen"]
      476 DUPTABLE                         R52 K84 [{"internal", "external"}]
      477 LOADB                            R53 1
      478 SETTABLEKS                       R53 R52 K82 ["internal"]
      480 MOVE                             R53 R14
      481 CALL                             R53 0 1
      482 SETTABLEKS                       R53 R52 K83 ["external"]
      484 SETTABLE                         R52 R50 R51
      485 GETTABLEKS                       R51 R45 K103 ["MeshGen"]
      487 DUPTABLE                         R52 K84 [{"internal", "external"}]
      488 LOADB                            R53 1
      489 SETTABLEKS                       R53 R52 K82 ["internal"]
      491 MOVE                             R53 R14
      492 CALL                             R53 0 1
      493 SETTABLEKS                       R53 R52 K83 ["external"]
      495 SETTABLE                         R52 R50 R51
      496 GETTABLEKS                       R51 R45 K104 ["MultiEdit"]
      498 DUPTABLE                         R52 K84 [{"internal", "external"}]
      499 LOADB                            R53 1
      500 SETTABLEKS                       R53 R52 K82 ["internal"]
      502 LOADB                            R53 1
      503 SETTABLEKS                       R53 R52 K83 ["external"]
      505 SETTABLE                         R52 R50 R51
      506 GETTABLEKS                       R51 R45 K105 ["PrimitiveGen"]
      508 DUPTABLE                         R52 K84 [{"internal", "external"}]
      509 LOADB                            R53 1
      510 SETTABLEKS                       R53 R52 K82 ["internal"]
      512 LOADB                            R53 1
      513 SETTABLEKS                       R53 R52 K83 ["external"]
      515 SETTABLE                         R52 R50 R51
      516 GETTABLEKS                       R51 R45 K106 ["QuestionAnswer"]
      518 DUPTABLE                         R52 K84 [{"internal", "external"}]
      519 LOADB                            R53 1
      520 SETTABLEKS                       R53 R52 K82 ["internal"]
      522 LOADB                            R53 0
      523 SETTABLEKS                       R53 R52 K83 ["external"]
      525 SETTABLE                         R52 R50 R51
      526 GETTABLEKS                       R51 R45 K107 ["ReadFile"]
      528 DUPTABLE                         R52 K84 [{"internal", "external"}]
      529 LOADB                            R53 1
      530 SETTABLEKS                       R53 R52 K82 ["internal"]
      532 LOADB                            R53 1
      533 SETTABLEKS                       R53 R52 K83 ["external"]
      535 SETTABLE                         R52 R50 R51
      536 GETTABLEKS                       R51 R45 K108 ["ScreenCapture"]
      538 DUPTABLE                         R52 K84 [{"internal", "external"}]
      539 LOADB                            R53 0
      540 SETTABLEKS                       R53 R52 K82 ["internal"]
      542 LOADB                            R53 1
      543 SETTABLEKS                       R53 R52 K83 ["external"]
      545 SETTABLE                         R52 R50 R51
      546 GETTABLEKS                       R51 R45 K109 ["Skill"]
      548 DUPTABLE                         R52 K84 [{"internal", "external"}]
      549 LOADB                            R53 1
      550 SETTABLEKS                       R53 R52 K82 ["internal"]
      552 LOADB                            R53 1
      553 SETTABLEKS                       R53 R52 K83 ["external"]
      555 SETTABLE                         R52 R50 R51
      556 GETTABLEKS                       R51 R45 K110 ["StartStopPlay"]
      558 DUPTABLE                         R52 K84 [{"internal", "external"}]
      559 LOADB                            R53 1
      560 SETTABLEKS                       R53 R52 K82 ["internal"]
      562 LOADB                            R53 1
      563 SETTABLEKS                       R53 R52 K83 ["external"]
      565 SETTABLE                         R52 R50 R51
      566 GETTABLEKS                       R51 R45 K111 ["StoreImage"]
      568 DUPTABLE                         R52 K84 [{"internal", "external"}]
      569 LOADB                            R53 1
      570 SETTABLEKS                       R53 R52 K82 ["internal"]
      572 LOADB                            R53 1
      573 SETTABLEKS                       R53 R52 K83 ["external"]
      575 SETTABLE                         R52 R50 R51
      576 GETTABLEKS                       R51 R45 K112 ["Subagent"]
      578 DUPTABLE                         R52 K84 [{"internal", "external"}]
      579 LOADB                            R53 1
      580 SETTABLEKS                       R53 R52 K82 ["internal"]
      582 LOADB                            R53 1
      583 SETTABLEKS                       R53 R52 K83 ["external"]
      585 SETTABLE                         R52 R50 R51
      586 GETTABLEKS                       R51 R45 K113 ["UploadImage"]
      588 DUPTABLE                         R52 K84 [{"internal", "external"}]
      589 LOADB                            R53 1
      590 SETTABLEKS                       R53 R52 K82 ["internal"]
      592 LOADB                            R53 1
      593 SETTABLEKS                       R53 R52 K83 ["external"]
      595 SETTABLE                         R52 R50 R51
      596 GETTABLEKS                       R51 R45 K114 ["UserKeyboardInput"]
      598 DUPTABLE                         R52 K84 [{"internal", "external"}]
      599 LOADB                            R53 1
      600 SETTABLEKS                       R53 R52 K82 ["internal"]
      602 LOADB                            R53 1
      603 SETTABLEKS                       R53 R52 K83 ["external"]
      605 SETTABLE                         R52 R50 R51
      606 GETTABLEKS                       R51 R45 K115 ["UserMouseInput"]
      608 DUPTABLE                         R52 K84 [{"internal", "external"}]
      609 LOADB                            R53 1
      610 SETTABLEKS                       R53 R52 K82 ["internal"]
      612 LOADB                            R53 1
      613 SETTABLEKS                       R53 R52 K83 ["external"]
      615 SETTABLE                         R52 R50 R51
      616 GETTABLEKS                       R51 R45 K116 ["WaitJobFinished"]
      618 DUPTABLE                         R52 K84 [{"internal", "external"}]
      619 LOADB                            R53 1
      620 SETTABLEKS                       R53 R52 K82 ["internal"]
      622 LOADB                            R53 1
      623 SETTABLEKS                       R53 R52 K83 ["external"]
      625 SETTABLE                         R52 R50 R51
      626 CALL                             R49 1 1
      627 LOADNIL                          R50
      628 NEWCLOSURE                       R51 P0
      629 CAPTURE                          REF R50
      630 DUPCLOSURE                       R52 K117 [PROTO_1]
      631 DUPCLOSURE                       R53 K118 [PROTO_2]
      632 DUPCLOSURE                       R54 K119 [PROTO_3]
      633 CAPTURE                          VAL R52
      634 DUPCLOSURE                       R55 K120 [PROTO_4]
      635 CAPTURE                          VAL R38
      636 CAPTURE                          VAL R49
      637 DUPCLOSURE                       R56 K121 [PROTO_5]
      638 CAPTURE                          VAL R38
      639 CAPTURE                          VAL R49
      640 DUPCLOSURE                       R57 K122 [PROTO_8]
      641 CAPTURE                          VAL R27
      642 CAPTURE                          VAL R38
      643 CAPTURE                          VAL R7
      644 CAPTURE                          VAL R23
      645 CAPTURE                          VAL R21
      646 CAPTURE                          VAL R22
      647 CAPTURE                          VAL R10
      648 CAPTURE                          VAL R43
      649 CAPTURE                          VAL R46
      650 CAPTURE                          VAL R57
      651 DUPCLOSURE                       R58 K123 [PROTO_9]
      652 CAPTURE                          VAL R10
      653 CAPTURE                          VAL R45
      654 DUPCLOSURE                       R59 K124 [PROTO_10]
      655 CAPTURE                          VAL R10
      656 NEWCLOSURE                       R60 P9
      657 CAPTURE                          VAL R35
      658 CAPTURE                          VAL R48
      659 CAPTURE                          VAL R17
      660 CAPTURE                          VAL R16
      661 CAPTURE                          VAL R56
      662 CAPTURE                          VAL R38
      663 CAPTURE                          VAL R26
      664 CAPTURE                          VAL R9
      665 CAPTURE                          VAL R53
      666 CAPTURE                          VAL R24
      667 CAPTURE                          REF R50
      668 CAPTURE                          VAL R52
      669 CAPTURE                          VAL R23
      670 CAPTURE                          VAL R20
      671 CAPTURE                          VAL R54
      672 CAPTURE                          VAL R18
      673 CAPTURE                          VAL R2
      674 CAPTURE                          VAL R22
      675 CAPTURE                          VAL R58
      676 CAPTURE                          VAL R25
      677 CAPTURE                          VAL R59
      678 CAPTURE                          VAL R57
      679 CAPTURE                          VAL R11
      680 CAPTURE                          VAL R28
      681 SETGLOBAL                        R60 K125 ["getBuiltinServer"]
      683 DUPCLOSURE                       R60 K126 [PROTO_16]
      684 CAPTURE                          VAL R36
      685 SETGLOBAL                        R60 K127 ["startLocalServer"]
      687 DUPCLOSURE                       R60 K128 [PROTO_25]
      688 CAPTURE                          VAL R35
      689 CAPTURE                          VAL R48
      690 CAPTURE                          VAL R32
      691 CAPTURE                          VAL R40
      692 CAPTURE                          VAL R55
      693 CAPTURE                          VAL R25
      694 CAPTURE                          VAL R59
      695 CAPTURE                          VAL R1
      696 CAPTURE                          VAL R45
      697 CAPTURE                          VAL R44
      698 CAPTURE                          VAL R19
      699 CAPTURE                          VAL R57
      700 CAPTURE                          VAL R36
      701 SETGLOBAL                        R60 K129 ["startExternalServer"]
      703 DUPCLOSURE                       R60 K130 [PROTO_26]
      704 CAPTURE                          VAL R33
      705 DUPCLOSURE                       R61 K131 [PROTO_28]
      706 CAPTURE                          VAL R29
      707 CAPTURE                          VAL R11
      708 CAPTURE                          VAL R41
      709 CAPTURE                          VAL R1
      710 DUPCLOSURE                       R62 K132 [PROTO_31]
      711 CAPTURE                          VAL R33
      712 CAPTURE                          VAL R34
      713 CAPTURE                          VAL R31
      714 CAPTURE                          VAL R8
      715 CAPTURE                          VAL R30
      716 CAPTURE                          VAL R12
      717 CAPTURE                          VAL R47
      718 CAPTURE                          VAL R40
      719 CAPTURE                          VAL R39
      720 CAPTURE                          VAL R13
      721 CAPTURE                          VAL R42
      722 CAPTURE                          VAL R37
      723 CAPTURE                          VAL R26
      724 CAPTURE                          VAL R4
      725 DUPTABLE                         R63 K137 [{"promiseMcpHost", "configureModelContextProtocol", "startLocalServer", "startExternalServer", "setToolEnabledStates", "TOOL_AVAILABILITY"}]
      726 SETTABLEKS                       R62 R63 K133 ["promiseMcpHost"]
      728 SETTABLEKS                       R61 R63 K134 ["configureModelContextProtocol"]
      730 GETGLOBAL                        R64 K127 ["startLocalServer"]
      732 SETTABLEKS                       R64 R63 K127 ["startLocalServer"]
      734 GETGLOBAL                        R64 K129 ["startExternalServer"]
      736 SETTABLEKS                       R64 R63 K129 ["startExternalServer"]
      738 SETTABLEKS                       R51 R63 K135 ["setToolEnabledStates"]
      740 SETTABLEKS                       R49 R63 K136 ["TOOL_AVAILABILITY"]
      742 CLOSEUPVALS                      R50
      743 RETURN                           R63 1
