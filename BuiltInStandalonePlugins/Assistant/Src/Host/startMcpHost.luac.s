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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+25]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["getFocusedDataModelType"]
        6 CALL                             R1 0 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K1 ["Types"]
       10 GETTABLEKS                       R2 R2 K2 ["Unknown"]
       12 JUMPIFNOTEQ                      R1 R2 ; [+15]
       14 GETUPVAL                         R2 3
       15 CALL                             R2 0 1
       16 LOADK                            R4 K3 ["Place is not open"]
       17 NAMECALL                         R2 R2 K4 ["addText"]
       19 CALL                             R2 2 1
       20 LOADB                            R4 1
       21 NAMECALL                         R2 R2 K5 ["setError"]
       23 CALL                             R2 2 1
       24 NAMECALL                         R2 R2 K6 ["build"]
       26 CALL                             R2 1 -1
       27 RETURN                           R2 -1
       28 LOADNIL                          R1
       29 GETUPVAL                         R2 4
       30 CALL                             R2 0 1
       31 JUMPIFNOT                        R2 ; [+43]
       32 GETIMPORT                        R2 K8 [pcall]
       34 GETUPVAL                         R3 5
       35 GETTABLEKS                       R3 R3 K9 ["getHandler"]
       37 GETTABLEKS                       R4 R0 K10 ["name"]
       39 CALL                             R2 2 2
       40 JUMPIF                           R2 ; [+32]
       41 GETIMPORT                        R4 K12 [warn]
       43 LOADK                            R5 K13 ["[startMcpHost] Failed to get handler for tool:"]
       44 GETTABLEKS                       R6 R0 K10 ["name"]
       46 LOADK                            R7 K14 [":"]
       47 FASTCALL1                        TOSTRING R3 ; [+3]
       48 MOVE                             R9 R3
       49 GETIMPORT                        R8 K16 [tostring]
       51 CALL                             R8 1 1
       52 CALL                             R4 4 0
       53 GETUPVAL                         R4 3
       54 CALL                             R4 0 1
       55 LOADK                            R7 K17 ["Tool handler not found: %*"]
       56 GETTABLEKS                       R9 R0 K10 ["name"]
       58 NAMECALL                         R7 R7 K18 ["format"]
       60 CALL                             R7 2 1
       61 MOVE                             R6 R7
       62 NAMECALL                         R4 R4 K4 ["addText"]
       64 CALL                             R4 2 1
       65 LOADB                            R6 1
       66 NAMECALL                         R4 R4 K5 ["setError"]
       68 CALL                             R4 2 1
       69 NAMECALL                         R4 R4 K6 ["build"]
       71 CALL                             R4 1 -1
       72 RETURN                           R4 -1
       73 MOVE                             R1 R3
       74 JUMP                             ; [+7]
       75 GETUPVAL                         R2 5
       76 GETTABLEKS                       R2 R2 K9 ["getHandler"]
       78 GETTABLEKS                       R3 R0 K10 ["name"]
       80 CALL                             R2 1 1
       81 MOVE                             R1 R2
       82 GETTABLEKS                       R2 R0 K19 ["meta"]
       84 GETUPVAL                         R3 6
       85 CALL                             R3 0 1
       86 JUMPIFNOT                        R3 ; [+41]
       87 GETUPVAL                         R3 7
       88 GETTABLEKS                       R3 R3 K20 ["getToolAvailableDataModelTypes"]
       90 GETTABLEKS                       R4 R0 K10 ["name"]
       92 CALL                             R3 1 1
       93 GETIMPORT                        R4 K8 [pcall]
       95 NEWCLOSURE                       R5 P0
       96 CAPTURE                          UPVAL U8
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R3
       99 CAPTURE                          REF R2
      100 CALL                             R4 1 2
      101 JUMPIF                           R4 ; [+19]
      102 GETUPVAL                         R6 3
      103 CALL                             R6 0 1
      104 FASTCALL1                        TOSTRING R5 ; [+3]
      105 MOVE                             R9 R5
      106 GETIMPORT                        R8 K16 [tostring]
      108 CALL                             R8 1 1
      109 NAMECALL                         R6 R6 K4 ["addText"]
      111 CALL                             R6 2 1
      112 LOADB                            R8 1
      113 NAMECALL                         R6 R6 K5 ["setError"]
      115 CALL                             R6 2 1
      116 NAMECALL                         R6 R6 K6 ["build"]
      118 CALL                             R6 1 -1
      119 CLOSEUPVALS                      R2
      120 RETURN                           R6 -1
      121 MOVE                             R6 R2
      122 JUMPIF                           R6 ; [+2]
      123 NEWTABLE                         R6 0 0
      125 SETTABLEKS                       R5 R6 K21 ["targetDataModel"]
      127 MOVE                             R2 R6
      128 GETUPVAL                         R3 9
      129 GETTABLEKS                       R4 R0 K22 ["extra"]
      131 DUPTABLE                         R5 K25 [{"listTools", "callTool"}]
      132 GETTABLEKS                       R6 R0 K23 ["listTools"]
      134 SETTABLEKS                       R6 R5 K23 ["listTools"]
      136 NEWCLOSURE                       R6 P1
      137 CAPTURE                          UPVAL U10
      138 CAPTURE                          UPVAL U9
      139 CAPTURE                          VAL R0
      140 SETTABLEKS                       R6 R5 K24 ["callTool"]
      142 CALL                             R3 2 1
      143 GETUPVAL                         R4 4
      144 CALL                             R4 0 1
      145 JUMPIFNOT                        R4 ; [+42]
      146 GETIMPORT                        R4 K8 [pcall]
      148 MOVE                             R5 R1
      149 GETTABLEKS                       R6 R0 K26 ["args"]
      151 MOVE                             R7 R2
      152 MOVE                             R8 R3
      153 CALL                             R4 4 2
      154 JUMPIF                           R4 ; [+31]
      155 GETIMPORT                        R6 K12 [warn]
      157 LOADK                            R7 K27 ["[startMcpHost] Tool handler error for"]
      158 GETTABLEKS                       R8 R0 K10 ["name"]
      160 LOADK                            R9 K14 [":"]
      161 FASTCALL1                        TOSTRING R5 ; [+3]
      162 MOVE                             R11 R5
      163 GETIMPORT                        R10 K16 [tostring]
      165 CALL                             R10 1 1
      166 CALL                             R6 4 0
      167 GETUPVAL                         R6 3
      168 CALL                             R6 0 1
      169 FASTCALL1                        TOSTRING R5 ; [+3]
      170 MOVE                             R9 R5
      171 GETIMPORT                        R8 K16 [tostring]
      173 CALL                             R8 1 1
      174 NAMECALL                         R6 R6 K4 ["addText"]
      176 CALL                             R6 2 1
      177 LOADB                            R8 1
      178 NAMECALL                         R6 R6 K5 ["setError"]
      180 CALL                             R6 2 1
      181 NAMECALL                         R6 R6 K6 ["build"]
      183 CALL                             R6 1 -1
      184 CLOSEUPVALS                      R2
      185 RETURN                           R6 -1
      186 CLOSEUPVALS                      R2
      187 RETURN                           R5 1
      188 MOVE                             R4 R1
      189 GETTABLEKS                       R5 R0 K26 ["args"]
      191 MOVE                             R6 R2
      192 MOVE                             R7 R3
      193 CALL                             R4 3 -1
      194 CLOSEUPVALS                      R2
      195 RETURN                           R4 -1

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
       73 DUPTABLE                         R5 K20 [{["type"] = "string", ["enum"], ["description"]}]
       74 SETTABLEKS                       R2 R5 K18 ["enum"]
       76 GETUPVAL                         R7 1
       77 CALL                             R7 0 1
       78 JUMPIFNOT                        R7 ; [+12]
       79 LOADK                            R7 K21 ["The target datamodel to operate on, the tool can only be performed in those datamodel types. call %* to get current available datamodel types. if the target datamodel is not available in current mode, consider using %* to switch to the desired mode and then use the tools. This is a required argument."]
       80 GETUPVAL                         R9 2
       81 GETTABLEKS                       R9 R9 K22 ["GetStudioState"]
       83 GETUPVAL                         R10 2
       84 GETTABLEKS                       R10 R10 K23 ["StartStopPlay"]
       86 NAMECALL                         R7 R7 K24 ["format"]
       88 CALL                             R7 3 1
       89 MOVE                             R6 R7
       90 JUMP                             ; [+8]
       91 LOADK                            R7 K25 ["The target datamodel to operate on, the tool can only be performed in those datamodel types. if the target datamodel is not available in current mode, consider using %* to switch to the desired mode and then use the tools. This is a required argument."]
       92 GETUPVAL                         R9 2
       93 GETTABLEKS                       R9 R9 K23 ["StartStopPlay"]
       95 NAMECALL                         R7 R7 K24 ["format"]
       97 CALL                             R7 2 1
       98 MOVE                             R6 R7
       99 SETTABLEKS                       R6 R5 K19 ["description"]
      101 SETTABLEKS                       R5 R4 K11 ["datamodel_type"]
      103 GETIMPORT                        R4 K5 [table.clone]
      105 MOVE                             R5 R0
      106 CALL                             R4 1 1
      107 SETTABLEKS                       R3 R4 K6 ["inputSchema"]
      109 RETURN                           R4 1

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
       49 GETTABLEKS                       R2 R0 K7 ["assistantMode"]
       51 JUMPIFNOT                        R2 ; [+10]
       52 GETUPVAL                         R2 8
       53 MOVE                             R3 R1
       54 GETUPVAL                         R5 9
       55 GETTABLEKS                       R5 R5 K8 ["AssistantModeToolsAllowlist"]
       57 GETTABLEKS                       R6 R0 K7 ["assistantMode"]
       59 GETTABLE                         R4 R5 R6
       60 CALL                             R2 2 1
       61 MOVE                             R1 R2
       62 GETUPVAL                         R2 10
       63 CALL                             R2 0 1
       64 JUMPIFNOT                        R2 ; [+27]
       65 GETTABLEKS                       R2 R0 K9 ["isMultiPlayerClientAgent"]
       67 JUMPIFNOT                        R2 ; [+24]
       68 GETUPVAL                         R2 8
       69 MOVE                             R3 R1
       70 GETUPVAL                         R4 9
       71 GETTABLEKS                       R4 R4 K10 ["MultiPlayerTestTools"]
       73 CALL                             R2 2 1
       74 MOVE                             R1 R2
       75 GETTABLEKS                       R2 R0 K11 ["isMultiPlayerClientAgentRunning"]
       77 JUMPIF                           R2 ; [+14]
       78 GETUPVAL                         R2 4
       79 MOVE                             R3 R1
       80 NEWTABLE                         R4 0 2
       82 GETUPVAL                         R5 11
       83 GETTABLEKS                       R5 R5 K12 ["MultiPlayerAgentsCommunication"]
       85 GETUPVAL                         R6 11
       86 GETTABLEKS                       R6 R6 K13 ["WaitForMultiPlayerAgentsCommunication"]
       88 SETLIST                          R4 R5 2 [1]
       90 CALL                             R2 2 1
       91 MOVE                             R1 R2
       92 GETUPVAL                         R2 12
       93 CALL                             R2 0 1
       94 JUMPIFNOT                        R2 ; [+18]
       95 NEWTABLE                         R2 0 0
       97 MOVE                             R3 R1
       98 LOADNIL                          R4
       99 LOADNIL                          R5
      100 FORGPREP                         R3
      101 GETUPVAL                         R10 13
      102 MOVE                             R11 R7
      103 CALL                             R10 1 1
      104 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
      106 MOVE                             R9 R2
      107 GETIMPORT                        R8 K16 [table.insert]
      109 CALL                             R8 2 0
      110 FORGLOOP                         R3 2 ; [-10]
      112 MOVE                             R1 R2
      113 GETUPVAL                         R2 14
      114 MOVE                             R3 R1
      115 DUPTABLE                         R4 K20 [{["internal"] = True, ["useScreenCaptureSubagent"]}]
      116 GETTABLEKS                       R6 R0 K2 ["useInternalToolDefinitions"]
      118 JUMPIFNOT                        R6 ; [+2]
      119 LOADB                            R5 1
      120 JUMP                             ; [+1]
      121 LOADB                            R5 0
      122 SETTABLEKS                       R5 R4 K19 ["useScreenCaptureSubagent"]
      124 CALL                             R2 2 0
      125 DUPTABLE                         R2 K1 [{"tools"}]
      126 SETTABLEKS                       R1 R2 K0 ["tools"]
      128 RETURN                           R2 1

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
        0 LOADNIL                          R2
        1 GETTABLEKS                       R3 R0 K0 ["params"]
        3 JUMPIFNOT                        R3 ; [+9]
        4 GETTABLEKS                       R3 R0 K0 ["params"]
        6 GETTABLEKS                       R3 R3 K1 ["_meta"]
        8 JUMPIFNOT                        R3 ; [+4]
        9 GETTABLEKS                       R3 R0 K0 ["params"]
       11 GETTABLEKS                       R2 R3 K1 ["_meta"]
       13 JUMPIF                           R2 ; [+2]
       14 NEWTABLE                         R2 0 0
       16 LOADB                            R3 1
       17 SETTABLEKS                       R3 R2 K2 ["isInternal"]
       19 GETUPVAL                         R3 0
       20 MOVE                             R4 R2
       21 CALL                             R3 1 1
       22 RETURN                           R3 1

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
        3 DUPTABLE                         R1 K5 [{["name"] = "RobloxStudio", ["version"] = "0.1.0"}]
        4 GETUPVAL                         R2 1
        5 CALL                             R0 2 1
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          UPVAL U7
       13 CAPTURE                          UPVAL U8
       14 CAPTURE                          UPVAL U9
       15 CAPTURE                          UPVAL U10
       16 CAPTURE                          UPVAL U11
       17 CAPTURE                          UPVAL U12
       18 CAPTURE                          UPVAL U13
       19 CAPTURE                          UPVAL U14
       20 CAPTURE                          UPVAL U15
       21 CAPTURE                          UPVAL U16
       22 DUPTABLE                         R4 K8 [{["method"] = "ping"}]
       23 NEWCLOSURE                       R5 P1
       24 CAPTURE                          VAL R0
       25 NAMECALL                         R2 R0 K9 ["setRequestHandler"]
       27 CALL                             R2 3 0
       28 DUPTABLE                         R4 K11 [{["method"] = "tools/list"}]
       29 NEWCLOSURE                       R5 P2
       30 CAPTURE                          VAL R1
       31 NAMECALL                         R2 R0 K9 ["setRequestHandler"]
       33 CALL                             R2 3 0
       34 DUPTABLE                         R4 K13 [{["method"] = "tools/call"}]
       35 NEWCLOSURE                       R5 P3
       36 CAPTURE                          UPVAL U17
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U18
       39 CAPTURE                          UPVAL U19
       40 NAMECALL                         R2 R0 K9 ["setRequestHandler"]
       42 CALL                             R2 3 0
       43 RETURN                           R0 1

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
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K3 [{[1] = False, ["useScreenCaptureSubagent"] = False}]
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 2
        7 CALL                             R1 0 1
        8 JUMPIFNOT                        R1 ; [+18]
        9 NEWTABLE                         R1 0 0
       11 MOVE                             R2 R0
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 GETUPVAL                         R9 3
       16 MOVE                             R10 R6
       17 CALL                             R9 1 1
       18 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       20 MOVE                             R8 R1
       21 GETIMPORT                        R7 K6 [table.insert]
       23 CALL                             R7 2 0
       24 FORGLOOP                         R2 2 ; [-10]
       26 MOVE                             R0 R1
       27 DUPTABLE                         R1 K8 [{"tools"}]
       28 SETTABLEKS                       R0 R1 K7 ["tools"]
       30 RETURN                           R1 1

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
       56 DUPTABLE                         R10 K25 [{["messageGuid"], ["sessionId"], ["toolId"], ["toolName"], ["clientName"], ["isThirdPartyRequest"] = True, ["isSlashCommand"] = False, ["input"]}]
       57 SETTABLEKS                       R7 R10 K16 ["messageGuid"]
       59 GETUPVAL                         R12 2
       60 ORK                              R11 R12 K26 [""]
       61 SETTABLEKS                       R11 R10 K17 ["sessionId"]
       63 SETTABLEKS                       R8 R10 K18 ["toolId"]
       65 SETTABLEKS                       R4 R10 K19 ["toolName"]
       67 GETTABLEKS                       R11 R3 K27 ["client_name"]
       69 SETTABLEKS                       R11 R10 K20 ["clientName"]
       71 SETTABLEKS                       R5 R10 K24 ["input"]
       73 CALL                             R9 1 0
       74 GETUPVAL                         R9 3
       75 GETTABLEKS                       R9 R9 K28 ["getTimestampMilliseconds"]
       77 CALL                             R9 0 1
       78 LOADNIL                          R10
       79 GETUPVAL                         R11 4
       80 CALL                             R11 0 1
       81 JUMPIFNOT                        R11 ; [+13]
       82 GETUPVAL                         R11 5
       83 CALL                             R11 0 1
       84 JUMPIFNOT                        R11 ; [+10]
       85 DUPTABLE                         R11 K31 [{["isError"] = True, ["content"]}]
       86 NEWTABLE                         R12 0 1
       88 DUPTABLE                         R13 K35 [{["type"] = "text", ["text"] = "Tool calls are not allowed while in Play mode."}]
       89 SETLIST                          R12 R13 1 [1]
       91 SETTABLEKS                       R12 R11 K30 ["content"]
       93 MOVE                             R10 R11
       94 JUMP                             ; [+15]
       95 GETUPVAL                         R11 6
       96 DUPTABLE                         R12 K40 [{"name", "args", "meta", "extra", "listTools"}]
       97 SETTABLEKS                       R4 R12 K6 ["name"]
       99 SETTABLEKS                       R5 R12 K36 ["args"]
      101 SETTABLEKS                       R3 R12 K37 ["meta"]
      103 SETTABLEKS                       R1 R12 K38 ["extra"]
      105 GETUPVAL                         R13 7
      106 SETTABLEKS                       R13 R12 K39 ["listTools"]
      108 CALL                             R11 1 1
      109 MOVE                             R10 R11
      110 GETUPVAL                         R11 3
      111 GETTABLEKS                       R11 R11 K28 ["getTimestampMilliseconds"]
      113 CALL                             R11 0 1
      114 GETTABLEKS                       R12 R6 K41 ["logToolEnded"]
      116 DUPTABLE                         R13 K46 [{["messageGuid"], ["toolId"], ["toolName"], ["startTime"], ["startTimeAfterConfirmation"], ["endTime"], ["isError"], ["clientName"], ["isThirdPartyRequest"] = True, ["isSlashCommand"] = False, ["toolResultContent"]}]
      117 SETTABLEKS                       R7 R13 K16 ["messageGuid"]
      119 SETTABLEKS                       R8 R13 K18 ["toolId"]
      121 SETTABLEKS                       R4 R13 K19 ["toolName"]
      123 SETTABLEKS                       R9 R13 K42 ["startTime"]
      125 SETTABLEKS                       R9 R13 K43 ["startTimeAfterConfirmation"]
      127 SETTABLEKS                       R11 R13 K44 ["endTime"]
      129 GETTABLEKS                       R15 R10 K29 ["isError"]
      131 ORK                              R14 R15 K23 [False]
      132 SETTABLEKS                       R14 R13 K29 ["isError"]
      134 GETTABLEKS                       R14 R3 K27 ["client_name"]
      136 SETTABLEKS                       R14 R13 K20 ["clientName"]
      138 GETTABLEKS                       R14 R10 K30 ["content"]
      140 SETTABLEKS                       R14 R13 K45 ["toolResultContent"]
      142 CALL                             R12 1 0
      143 GETUPVAL                         R12 8
      144 MOVE                             R13 R10
      145 CALL                             R12 1 1
      146 MOVE                             R10 R12
      147 RETURN                           R10 1

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
        5 DUPTABLE                         R4 K6 [{["name"] = "RobloxStudio", ["version"] = "0.1.0"}]
        6 GETUPVAL                         R5 1
        7 CALL                             R3 2 1
        8 GETTABLEKS                       R4 R2 K7 ["sessionId"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K1 ["new"]
       13 LOADN                            R6 0
       14 CALL                             R5 1 1
       15 LOADNIL                          R6
       16 DUPTABLE                         R9 K10 [{["method"] = "initialize"}]
       17 NEWCLOSURE                       R10 P0
       18 CAPTURE                          VAL R3
       19 CAPTURE                          UPVAL U3
       20 NAMECALL                         R7 R3 K11 ["setRequestHandler"]
       22 CALL                             R7 3 0
       23 DUPTABLE                         R9 K13 [{["method"] = "ping"}]
       24 NEWCLOSURE                       R10 P1
       25 CAPTURE                          VAL R3
       26 NAMECALL                         R7 R3 K11 ["setRequestHandler"]
       28 CALL                             R7 3 0
       29 DUPCLOSURE                       R7 K14 [PROTO_20]
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          UPVAL U7
       34 DUPTABLE                         R10 K16 [{["method"] = "tools/list"}]
       35 DUPCLOSURE                       R11 K17 [PROTO_21]
       36 CAPTURE                          VAL R7
       37 NAMECALL                         R8 R3 K11 ["setRequestHandler"]
       39 CALL                             R8 3 0
       40 DUPTABLE                         R10 K19 [{["method"] = "tools/call"}]
       41 NEWCLOSURE                       R11 P4
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          UPVAL U8
       44 CAPTURE                          VAL R4
       45 CAPTURE                          UPVAL U9
       46 CAPTURE                          UPVAL U10
       47 CAPTURE                          VAL R1
       48 CAPTURE                          UPVAL U11
       49 CAPTURE                          VAL R7
       50 CAPTURE                          UPVAL U12
       51 NAMECALL                         R8 R3 K11 ["setRequestHandler"]
       53 CALL                             R8 3 0
       54 GETTABLEKS                       R8 R3 K20 ["onServerInitialized"]
       56 NEWCLOSURE                       R10 P5
       57 CAPTURE                          UPVAL U3
       58 CAPTURE                          VAL R4
       59 CAPTURE                          REF R6
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R3
       63 NAMECALL                         R8 R8 K21 ["Connect"]
       65 CALL                             R8 2 1
       66 GETUPVAL                         R9 13
       67 GETTABLEKS                       R9 R9 K22 ["registerServer"]
       69 MOVE                             R10 R3
       70 CALL                             R9 1 0
       71 DUPTABLE                         R9 K27 [{"promise", "server", "connectionCountObservable", "destructor"}]
       72 MOVE                             R12 R2
       73 NAMECALL                         R10 R3 K28 ["connect"]
       75 CALL                             R10 2 1
       76 SETTABLEKS                       R10 R9 K23 ["promise"]
       78 SETTABLEKS                       R3 R9 K24 ["server"]
       80 SETTABLEKS                       R5 R9 K25 ["connectionCountObservable"]
       82 NEWCLOSURE                       R10 P6
       83 CAPTURE                          VAL R8
       84 CAPTURE                          REF R6
       85 SETTABLEKS                       R10 R9 K26 ["destructor"]
       87 CLOSEUPVALS                      R6
       88 RETURN                           R9 1

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
       56 DUPTABLE                         R8 K19 [{["identifier"], ["transport"], ["clientOptions"], ["useStaticToolNames"] = True}]
       57 GETUPVAL                         R9 3
       58 GETTABLEKS                       R9 R9 K12 ["MCP_CLIENT_IDENTIFIER"]
       60 SETTABLEKS                       R9 R8 K15 ["identifier"]
       62 GETTABLEKS                       R9 R2 K5 ["transport"]
       64 SETTABLEKS                       R9 R8 K5 ["transport"]
       66 GETUPVAL                         R9 6
       67 SETTABLEKS                       R9 R8 K16 ["clientOptions"]
       69 MOVE                             R11 R8
       70 NAMECALL                         R9 R6 K20 ["addClient"]
       72 CALL                             R9 2 0
       73 GETUPVAL                         R9 1
       74 GETTABLEKS                       R9 R9 K0 ["new"]
       76 NEWCLOSURE                       R10 P1
       77 CAPTURE                          UPVAL U5
       78 CAPTURE                          UPVAL U7
       79 CAPTURE                          UPVAL U8
       80 CAPTURE                          VAL R1
       81 CAPTURE                          UPVAL U9
       82 CAPTURE                          UPVAL U10
       83 CAPTURE                          UPVAL U11
       84 CAPTURE                          UPVAL U6
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R3
       88 CAPTURE                          UPVAL U12
       89 CAPTURE                          UPVAL U13
       90 CALL                             R9 1 -1
       91 RETURN                           R9 -1

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
       58 GETTABLEKS                       R9 R9 K18 ["Util"]
       60 GETTABLEKS                       R9 R9 K20 ["StudioState"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K9 [require]
       65 GETTABLEKS                       R10 R0 K13 ["Src"]
       67 GETTABLEKS                       R10 R10 K21 ["Types"]
       69 CALL                             R9 1 1
       70 GETTABLEKS                       R10 R2 K22 ["Utils"]
       72 GETTABLEKS                       R10 R10 K23 ["DataModelType"]
       74 GETTABLEKS                       R11 R2 K22 ["Utils"]
       76 GETTABLEKS                       R11 R11 K24 ["EvalController"]
       78 GETTABLEKS                       R12 R2 K25 ["UIToolRegistry"]
       80 GETTABLEKS                       R13 R2 K26 ["Flags"]
       82 GETTABLEKS                       R13 R13 K27 ["Shared"]
       84 GETTABLEKS                       R13 R13 K28 ["FFlagDebugLogAssistantUI"]
       86 GETTABLEKS                       R14 R2 K26 ["Flags"]
       88 GETTABLEKS                       R14 R14 K27 ["Shared"]
       90 GETTABLEKS                       R14 R14 K29 ["FFlagMCPAssistantManagementMenu"]
       92 GETTABLEKS                       R15 R2 K26 ["Flags"]
       94 GETTABLEKS                       R15 R15 K27 ["Shared"]
       96 GETTABLEKS                       R15 R15 K30 ["FFlagAssistantUseVariantHttpTransport"]
       98 GETIMPORT                        R16 K9 [require]
      100 GETTABLEKS                       R17 R0 K13 ["Src"]
      102 GETTABLEKS                       R17 R17 K18 ["Util"]
      104 GETTABLEKS                       R17 R17 K31 ["StudioTools"]
      106 CALL                             R16 1 1
      107 GETIMPORT                        R17 K9 [require]
      109 GETTABLEKS                       R18 R0 K13 ["Src"]
      111 GETTABLEKS                       R18 R18 K26 ["Flags"]
      113 GETTABLEKS                       R18 R18 K32 ["FFlagSkipExternalToolsNoDebugMode"]
      115 CALL                             R17 1 1
      116 GETTABLEKS                       R18 R2 K26 ["Flags"]
      118 GETTABLEKS                       R18 R18 K27 ["Shared"]
      120 GETTABLEKS                       R18 R18 K33 ["getIsAssistantBackgroundDataModelToolCall"]
      122 GETIMPORT                        R19 K9 [require]
      124 GETTABLEKS                       R20 R0 K13 ["Src"]
      126 GETTABLEKS                       R20 R20 K26 ["Flags"]
      128 GETTABLEKS                       R20 R20 K34 ["FFlagAssistantFixToolDisappear"]
      130 CALL                             R19 1 1
      131 GETTABLEKS                       R20 R2 K26 ["Flags"]
      133 GETTABLEKS                       R20 R20 K27 ["Shared"]
      135 GETTABLEKS                       R20 R20 K35 ["FFlagAssistantEval"]
      137 GETTABLEKS                       R21 R2 K26 ["Flags"]
      139 GETTABLEKS                       R21 R21 K27 ["Shared"]
      141 GETTABLEKS                       R21 R21 K36 ["FFlagAssistantMultiPlayerAgents"]
      143 GETTABLEKS                       R22 R2 K26 ["Flags"]
      145 GETTABLEKS                       R22 R22 K27 ["Shared"]
      147 GETTABLEKS                       R22 R22 K37 ["FFlagAssistantMarkdownPlanMode"]
      149 GETTABLEKS                       R23 R2 K26 ["Flags"]
      151 GETTABLEKS                       R23 R23 K27 ["Shared"]
      153 GETTABLEKS                       R23 R23 K38 ["FFlagAssistantGetStudioState"]
      155 GETIMPORT                        R24 K9 [require]
      157 GETTABLEKS                       R25 R0 K13 ["Src"]
      159 GETTABLEKS                       R25 R25 K26 ["Flags"]
      161 GETTABLEKS                       R25 R25 K39 ["FFlagFixTargetIsNotReachable"]
      163 CALL                             R24 1 1
      164 GETTABLEKS                       R25 R2 K22 ["Utils"]
      166 GETTABLEKS                       R25 R25 K40 ["Tools"]
      168 GETTABLEKS                       R26 R6 K18 ["Util"]
      170 GETTABLEKS                       R26 R26 K41 ["Logging"]
      172 GETTABLEKS                       R27 R6 K21 ["Types"]
      174 GETTABLEKS                       R28 R6 K42 ["MultiplexedClient"]
      176 GETTABLEKS                       R29 R6 K18 ["Util"]
      178 GETTABLEKS                       R29 R29 K43 ["Observable"]
      180 GETTABLEKS                       R30 R6 K44 ["PeerTransport"]
      182 GETTABLEKS                       R31 R6 K45 ["Promise"]
      184 GETTABLEKS                       R32 R6 K46 ["Server"]
      186 GETTABLEKS                       R33 R6 K47 ["ServerRegistry"]
      188 GETTABLEKS                       R34 R6 K48 ["StreamableHttpClient"]
      190 GETTABLEKS                       R34 R34 K49 ["StreamableHttpClientTransport"]
      192 GETTABLEKS                       R35 R6 K50 ["ToolRegistry"]
      194 GETTABLEKS                       R36 R2 K51 ["IntegrationManagement"]
      196 GETTABLEKS                       R36 R36 K52 ["IntegrationManager"]
      198 GETTABLEKS                       R37 R2 K53 ["Guest"]
      200 GETTABLEKS                       R37 R37 K54 ["Environment"]
      202 GETTABLEKS                       R38 R6 K48 ["StreamableHttpClient"]
      204 GETTABLEKS                       R38 R38 K55 ["StreamingClientFactory"]
      206 GETTABLEKS                       R39 R6 K56 ["HttpVariantClientTransport"]
      208 GETTABLEKS                       R39 R39 K56 ["HttpVariantClientTransport"]
      210 GETTABLEKS                       R40 R2 K22 ["Utils"]
      212 GETTABLEKS                       R40 R40 K57 ["MultiDataModelToolUtil"]
      214 GETTABLEKS                       R41 R2 K22 ["Utils"]
      216 GETTABLEKS                       R41 R41 K58 ["Time"]
      218 GETTABLEKS                       R42 R2 K40 ["Tools"]
      220 GETTABLEKS                       R42 R42 K59 ["ToolTypes"]
      222 GETTABLEKS                       R42 R42 K60 ["ToolNames"]
      224 GETTABLEKS                       R43 R3 K61 ["join"]
      226 DUPTABLE                         R44 K63 [{"capabilities"}]
      227 DUPTABLE                         R45 K67 [{"experimental", "roots", "sampling"}]
      228 GETTABLEKS                       R46 R27 K68 ["emptyObject"]
      230 CALL                             R46 0 1
      231 SETTABLEKS                       R46 R45 K64 ["experimental"]
      233 GETTABLEKS                       R46 R27 K68 ["emptyObject"]
      235 CALL                             R46 0 1
      236 SETTABLEKS                       R46 R45 K65 ["roots"]
      238 GETTABLEKS                       R46 R27 K68 ["emptyObject"]
      240 CALL                             R46 0 1
      241 SETTABLEKS                       R46 R45 K66 ["sampling"]
      243 SETTABLEKS                       R45 R44 K62 ["capabilities"]
      245 DUPTABLE                         R45 K63 [{"capabilities"}]
      246 DUPTABLE                         R46 K72 [{"prompts", "resources", "tools"}]
      247 GETTABLEKS                       R47 R27 K68 ["emptyObject"]
      249 CALL                             R47 0 1
      250 SETTABLEKS                       R47 R46 K69 ["prompts"]
      252 GETTABLEKS                       R47 R27 K68 ["emptyObject"]
      254 CALL                             R47 0 1
      255 SETTABLEKS                       R47 R46 K70 ["resources"]
      257 DUPTABLE                         R47 K75 [{["listChanged"] = True}]
      258 SETTABLEKS                       R47 R46 K71 ["tools"]
      260 SETTABLEKS                       R46 R45 K62 ["capabilities"]
      262 GETIMPORT                        R46 K78 [table.freeze]
      264 NEWTABLE                         R47 64 0
      266 GETTABLEKS                       R48 R42 K79 ["AnimationGen"]
      268 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      269 SETTABLE                         R49 R47 R48
      270 GETTABLEKS                       R48 R42 K83 ["AssetInsert"]
      272 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      273 SETTABLE                         R49 R47 R48
      274 GETTABLEKS                       R48 R42 K84 ["AssetSearch"]
      276 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      277 SETTABLE                         R49 R47 R48
      278 GETTABLEKS                       R48 R42 K85 ["CharacterNavigation"]
      280 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      281 SETTABLE                         R49 R47 R48
      282 GETTABLEKS                       R48 R42 K86 ["CompleteTodoItems"]
      284 DUPTABLE                         R49 K88 [{["internal"] = True, ["external"] = False}]
      285 SETTABLE                         R49 R47 R48
      286 GETTABLEKS                       R48 R42 K89 ["CreateSkill"]
      288 DUPTABLE                         R49 K88 [{["internal"] = True, ["external"] = False}]
      289 SETTABLE                         R49 R47 R48
      290 GETTABLEKS                       R48 R42 K90 ["CreatorStoreInsert"]
      292 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      293 SETTABLE                         R49 R47 R48
      294 GETTABLEKS                       R48 R42 K91 ["CreatorStoreSearch"]
      296 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      297 SETTABLE                         R49 R47 R48
      298 GETTABLEKS                       R48 R42 K92 ["ExecuteLuau"]
      300 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      301 SETTABLE                         R49 R47 R48
      302 GETTABLEKS                       R48 R42 K93 ["FileSearch"]
      304 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      305 SETTABLE                         R49 R47 R48
      306 GETTABLEKS                       R48 R42 K94 ["FinalizePlan"]
      308 DUPTABLE                         R49 K88 [{["internal"] = True, ["external"] = False}]
      309 SETTABLE                         R49 R47 R48
      310 GETTABLEKS                       R48 R42 K95 ["FromHistory"]
      312 DUPTABLE                         R49 K88 [{["internal"] = True, ["external"] = False}]
      313 SETTABLE                         R49 R47 R48
      314 GETTABLEKS                       R48 R42 K96 ["UpdatePlan"]
      316 DUPTABLE                         R49 K88 [{["internal"] = True, ["external"] = False}]
      317 SETTABLE                         R49 R47 R48
      318 GETTABLEKS                       R48 R42 K97 ["GameTree"]
      320 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      321 SETTABLE                         R49 R47 R48
      322 GETTABLEKS                       R48 R42 K98 ["GetConsoleOutput"]
      324 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      325 SETTABLE                         R49 R47 R48
      326 GETTABLEKS                       R48 R42 K99 ["GrepSearch"]
      328 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      329 SETTABLE                         R49 R47 R48
      330 GETTABLEKS                       R48 R42 K100 ["HttpGet"]
      332 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      333 SETTABLE                         R49 R47 R48
      334 GETTABLEKS                       R48 R42 K101 ["InspectInstance"]
      336 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      337 SETTABLE                         R49 R47 R48
      338 GETTABLEKS                       R48 R42 K102 ["MaterialGen"]
      340 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      341 SETTABLE                         R49 R47 R48
      342 GETTABLEKS                       R48 R42 K103 ["MeshGen"]
      344 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      345 SETTABLE                         R49 R47 R48
      346 GETTABLEKS                       R48 R42 K104 ["MultiEdit"]
      348 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      349 SETTABLE                         R49 R47 R48
      350 GETTABLEKS                       R48 R42 K105 ["PrimitiveGen"]
      352 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      353 SETTABLE                         R49 R47 R48
      354 GETTABLEKS                       R48 R42 K106 ["QuestionAnswer"]
      356 DUPTABLE                         R49 K88 [{["internal"] = True, ["external"] = False}]
      357 SETTABLE                         R49 R47 R48
      358 GETTABLEKS                       R48 R42 K107 ["ReadFile"]
      360 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      361 SETTABLE                         R49 R47 R48
      362 GETTABLEKS                       R48 R42 K108 ["ScreenCapture"]
      364 DUPTABLE                         R49 K109 [{["internal"] = False, ["external"] = True}]
      365 SETTABLE                         R49 R47 R48
      366 GETTABLEKS                       R48 R42 K110 ["Skill"]
      368 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      369 SETTABLE                         R49 R47 R48
      370 GETTABLEKS                       R48 R42 K111 ["StartStopPlay"]
      372 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      373 SETTABLE                         R49 R47 R48
      374 GETTABLEKS                       R48 R42 K112 ["GetStudioState"]
      376 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      377 SETTABLE                         R49 R47 R48
      378 GETTABLEKS                       R48 R42 K113 ["StoreImage"]
      380 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      381 SETTABLE                         R49 R47 R48
      382 GETTABLEKS                       R48 R42 K114 ["Subagent"]
      384 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      385 SETTABLE                         R49 R47 R48
      386 GETTABLEKS                       R48 R42 K115 ["UploadImage"]
      388 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      389 SETTABLE                         R49 R47 R48
      390 GETTABLEKS                       R48 R42 K116 ["UserKeyboardInput"]
      392 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      393 SETTABLE                         R49 R47 R48
      394 GETTABLEKS                       R48 R42 K117 ["UserMouseInput"]
      396 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      397 SETTABLE                         R49 R47 R48
      398 GETTABLEKS                       R48 R42 K118 ["VideoCapture"]
      400 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      401 SETTABLE                         R49 R47 R48
      402 GETTABLEKS                       R48 R42 K119 ["WaitJobFinished"]
      404 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      405 SETTABLE                         R49 R47 R48
      406 GETTABLEKS                       R48 R42 K120 ["StartMultiPlayerAgents"]
      408 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      409 SETTABLE                         R49 R47 R48
      410 GETTABLEKS                       R48 R42 K121 ["StopMultiPlayerAgents"]
      412 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      413 SETTABLE                         R49 R47 R48
      414 GETTABLEKS                       R48 R42 K122 ["MultiPlayerAgentsCommunication"]
      416 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      417 SETTABLE                         R49 R47 R48
      418 GETTABLEKS                       R48 R42 K123 ["WaitForMultiPlayerAgentsCommunication"]
      420 DUPTABLE                         R49 K82 [{["internal"] = True, ["external"] = True}]
      421 SETTABLE                         R49 R47 R48
      422 CALL                             R46 1 1
      423 LOADNIL                          R47
      424 NEWCLOSURE                       R48 P0
      425 CAPTURE                          REF R47
      426 DUPCLOSURE                       R49 K124 [PROTO_1]
      427 DUPCLOSURE                       R50 K125 [PROTO_2]
      428 DUPCLOSURE                       R51 K126 [PROTO_3]
      429 CAPTURE                          VAL R49
      430 DUPCLOSURE                       R52 K127 [PROTO_4]
      431 CAPTURE                          VAL R35
      432 CAPTURE                          VAL R46
      433 DUPCLOSURE                       R53 K128 [PROTO_5]
      434 CAPTURE                          VAL R35
      435 CAPTURE                          VAL R46
      436 DUPCLOSURE                       R54 K129 [PROTO_8]
      437 CAPTURE                          VAL R24
      438 CAPTURE                          VAL R8
      439 CAPTURE                          VAL R10
      440 CAPTURE                          VAL R7
      441 CAPTURE                          VAL R22
      442 CAPTURE                          VAL R35
      443 CAPTURE                          VAL R18
      444 CAPTURE                          VAL R12
      445 CAPTURE                          VAL R40
      446 CAPTURE                          VAL R43
      447 CAPTURE                          VAL R54
      448 DUPCLOSURE                       R55 K130 [PROTO_9]
      449 CAPTURE                          VAL R12
      450 CAPTURE                          VAL R23
      451 CAPTURE                          VAL R42
      452 DUPCLOSURE                       R56 K131 [PROTO_10]
      453 CAPTURE                          VAL R12
      454 DUPCLOSURE                       R57 K132 [PROTO_11]
      455 NEWCLOSURE                       R58 P10
      456 CAPTURE                          VAL R32
      457 CAPTURE                          VAL R45
      458 CAPTURE                          VAL R53
      459 CAPTURE                          VAL R35
      460 CAPTURE                          VAL R20
      461 CAPTURE                          VAL R11
      462 CAPTURE                          VAL R50
      463 CAPTURE                          VAL R19
      464 CAPTURE                          REF R47
      465 CAPTURE                          VAL R49
      466 CAPTURE                          VAL R51
      467 CAPTURE                          VAL R16
      468 CAPTURE                          VAL R21
      469 CAPTURE                          VAL R42
      470 CAPTURE                          VAL R18
      471 CAPTURE                          VAL R55
      472 CAPTURE                          VAL R56
      473 CAPTURE                          VAL R54
      474 CAPTURE                          VAL R13
      475 CAPTURE                          VAL R25
      476 SETGLOBAL                        R58 K133 ["getBuiltinServer"]
      478 DUPCLOSURE                       R58 K134 [PROTO_17]
      479 CAPTURE                          VAL R33
      480 SETGLOBAL                        R58 K135 ["startLocalServer"]
      482 DUPCLOSURE                       R58 K136 [PROTO_26]
      483 CAPTURE                          VAL R32
      484 CAPTURE                          VAL R45
      485 CAPTURE                          VAL R29
      486 CAPTURE                          VAL R37
      487 CAPTURE                          VAL R52
      488 CAPTURE                          VAL R56
      489 CAPTURE                          VAL R18
      490 CAPTURE                          VAL R55
      491 CAPTURE                          VAL R1
      492 CAPTURE                          VAL R41
      493 CAPTURE                          VAL R17
      494 CAPTURE                          VAL R54
      495 CAPTURE                          VAL R57
      496 CAPTURE                          VAL R33
      497 SETGLOBAL                        R58 K137 ["startExternalServer"]
      499 DUPCLOSURE                       R58 K138 [PROTO_27]
      500 CAPTURE                          VAL R30
      501 DUPCLOSURE                       R59 K139 [PROTO_29]
      502 CAPTURE                          VAL R26
      503 CAPTURE                          VAL R13
      504 CAPTURE                          VAL R38
      505 CAPTURE                          VAL R1
      506 DUPCLOSURE                       R60 K140 [PROTO_32]
      507 CAPTURE                          VAL R30
      508 CAPTURE                          VAL R31
      509 CAPTURE                          VAL R28
      510 CAPTURE                          VAL R9
      511 CAPTURE                          VAL R27
      512 CAPTURE                          VAL R14
      513 CAPTURE                          VAL R44
      514 CAPTURE                          VAL R37
      515 CAPTURE                          VAL R36
      516 CAPTURE                          VAL R15
      517 CAPTURE                          VAL R39
      518 CAPTURE                          VAL R34
      519 CAPTURE                          VAL R20
      520 CAPTURE                          VAL R4
      521 DUPTABLE                         R61 K145 [{"promiseMcpHost", "configureModelContextProtocol", "startLocalServer", "startExternalServer", "setToolEnabledStates", "TOOL_AVAILABILITY"}]
      522 SETTABLEKS                       R60 R61 K141 ["promiseMcpHost"]
      524 SETTABLEKS                       R59 R61 K142 ["configureModelContextProtocol"]
      526 GETGLOBAL                        R62 K135 ["startLocalServer"]
      528 SETTABLEKS                       R62 R61 K135 ["startLocalServer"]
      530 GETGLOBAL                        R62 K137 ["startExternalServer"]
      532 SETTABLEKS                       R62 R61 K137 ["startExternalServer"]
      534 SETTABLEKS                       R48 R61 K143 ["setToolEnabledStates"]
      536 SETTABLEKS                       R46 R61 K144 ["TOOL_AVAILABILITY"]
      538 CLOSEUPVALS                      R47
      539 RETURN                           R61 1
