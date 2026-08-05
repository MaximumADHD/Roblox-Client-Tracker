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
        1 GETTABLEKS                       R1 R1 K0 ["FFlagFixTargetIsNotReachable"]
        3 JUMPIFNOT                        R1 ; [+25]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["getFocusedDataModelType"]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K2 ["Types"]
       11 GETTABLEKS                       R2 R2 K3 ["Unknown"]
       13 JUMPIFNOTEQ                      R1 R2 ; [+15]
       15 GETUPVAL                         R2 3
       16 CALL                             R2 0 1
       17 LOADK                            R4 K4 ["Place is not open"]
       18 NAMECALL                         R2 R2 K5 ["addText"]
       20 CALL                             R2 2 1
       21 LOADB                            R4 1
       22 NAMECALL                         R2 R2 K6 ["setError"]
       24 CALL                             R2 2 1
       25 NAMECALL                         R2 R2 K7 ["build"]
       27 CALL                             R2 1 -1
       28 RETURN                           R2 -1
       29 LOADNIL                          R1
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K8 ["FFlagAssistantMarkdownPlanMode"]
       33 JUMPIFNOT                        R2 ; [+43]
       34 GETIMPORT                        R2 K10 [pcall]
       36 GETUPVAL                         R3 4
       37 GETTABLEKS                       R3 R3 K11 ["getHandler"]
       39 GETTABLEKS                       R4 R0 K12 ["name"]
       41 CALL                             R2 2 2
       42 JUMPIF                           R2 ; [+32]
       43 GETIMPORT                        R4 K14 [warn]
       45 LOADK                            R5 K15 ["[startMcpHost] Failed to get handler for tool:"]
       46 GETTABLEKS                       R6 R0 K12 ["name"]
       48 LOADK                            R7 K16 [":"]
       49 FASTCALL1                        TOSTRING R3 ; [+3]
       50 MOVE                             R9 R3
       51 GETIMPORT                        R8 K18 [tostring]
       53 CALL                             R8 1 1
       54 CALL                             R4 4 0
       55 GETUPVAL                         R4 3
       56 CALL                             R4 0 1
       57 LOADK                            R7 K19 ["Tool handler not found: %*"]
       58 GETTABLEKS                       R9 R0 K12 ["name"]
       60 NAMECALL                         R7 R7 K20 ["format"]
       62 CALL                             R7 2 1
       63 MOVE                             R6 R7
       64 NAMECALL                         R4 R4 K5 ["addText"]
       66 CALL                             R4 2 1
       67 LOADB                            R6 1
       68 NAMECALL                         R4 R4 K6 ["setError"]
       70 CALL                             R4 2 1
       71 NAMECALL                         R4 R4 K7 ["build"]
       73 CALL                             R4 1 -1
       74 RETURN                           R4 -1
       75 MOVE                             R1 R3
       76 JUMP                             ; [+7]
       77 GETUPVAL                         R2 4
       78 GETTABLEKS                       R2 R2 K11 ["getHandler"]
       80 GETTABLEKS                       R3 R0 K12 ["name"]
       82 CALL                             R2 1 1
       83 MOVE                             R1 R2
       84 GETTABLEKS                       R2 R0 K21 ["meta"]
       86 GETUPVAL                         R3 5
       87 CALL                             R3 0 1
       88 JUMPIFNOT                        R3 ; [+41]
       89 GETUPVAL                         R3 6
       90 GETTABLEKS                       R3 R3 K22 ["getToolAvailableDataModelTypes"]
       92 GETTABLEKS                       R4 R0 K12 ["name"]
       94 CALL                             R3 1 1
       95 GETIMPORT                        R4 K10 [pcall]
       97 NEWCLOSURE                       R5 P0
       98 CAPTURE                          UPVAL U7
       99 CAPTURE                          VAL R0
      100 CAPTURE                          VAL R3
      101 CAPTURE                          REF R2
      102 CALL                             R4 1 2
      103 JUMPIF                           R4 ; [+19]
      104 GETUPVAL                         R6 3
      105 CALL                             R6 0 1
      106 FASTCALL1                        TOSTRING R5 ; [+3]
      107 MOVE                             R9 R5
      108 GETIMPORT                        R8 K18 [tostring]
      110 CALL                             R8 1 1
      111 NAMECALL                         R6 R6 K5 ["addText"]
      113 CALL                             R6 2 1
      114 LOADB                            R8 1
      115 NAMECALL                         R6 R6 K6 ["setError"]
      117 CALL                             R6 2 1
      118 NAMECALL                         R6 R6 K7 ["build"]
      120 CALL                             R6 1 -1
      121 CLOSEUPVALS                      R2
      122 RETURN                           R6 -1
      123 MOVE                             R6 R2
      124 JUMPIF                           R6 ; [+2]
      125 NEWTABLE                         R6 0 0
      127 SETTABLEKS                       R5 R6 K23 ["targetDataModel"]
      129 MOVE                             R2 R6
      130 GETUPVAL                         R3 8
      131 GETTABLEKS                       R4 R0 K24 ["extra"]
      133 DUPTABLE                         R5 K27 [{"listTools", "callTool"}]
      134 GETTABLEKS                       R6 R0 K25 ["listTools"]
      136 SETTABLEKS                       R6 R5 K25 ["listTools"]
      138 NEWCLOSURE                       R6 P1
      139 CAPTURE                          UPVAL U9
      140 CAPTURE                          UPVAL U8
      141 CAPTURE                          VAL R0
      142 SETTABLEKS                       R6 R5 K26 ["callTool"]
      144 CALL                             R3 2 1
      145 GETUPVAL                         R4 0
      146 GETTABLEKS                       R4 R4 K8 ["FFlagAssistantMarkdownPlanMode"]
      148 JUMPIFNOT                        R4 ; [+42]
      149 GETIMPORT                        R4 K10 [pcall]
      151 MOVE                             R5 R1
      152 GETTABLEKS                       R6 R0 K28 ["args"]
      154 MOVE                             R7 R2
      155 MOVE                             R8 R3
      156 CALL                             R4 4 2
      157 JUMPIF                           R4 ; [+31]
      158 GETIMPORT                        R6 K14 [warn]
      160 LOADK                            R7 K29 ["[startMcpHost] Tool handler error for"]
      161 GETTABLEKS                       R8 R0 K12 ["name"]
      163 LOADK                            R9 K16 [":"]
      164 FASTCALL1                        TOSTRING R5 ; [+3]
      165 MOVE                             R11 R5
      166 GETIMPORT                        R10 K18 [tostring]
      168 CALL                             R10 1 1
      169 CALL                             R6 4 0
      170 GETUPVAL                         R6 3
      171 CALL                             R6 0 1
      172 FASTCALL1                        TOSTRING R5 ; [+3]
      173 MOVE                             R9 R5
      174 GETIMPORT                        R8 K18 [tostring]
      176 CALL                             R8 1 1
      177 NAMECALL                         R6 R6 K5 ["addText"]
      179 CALL                             R6 2 1
      180 LOADB                            R8 1
      181 NAMECALL                         R6 R6 K6 ["setError"]
      183 CALL                             R6 2 1
      184 NAMECALL                         R6 R6 K7 ["build"]
      186 CALL                             R6 1 -1
      187 CLOSEUPVALS                      R2
      188 RETURN                           R6 -1
      189 CLOSEUPVALS                      R2
      190 RETURN                           R5 1
      191 MOVE                             R4 R1
      192 GETTABLEKS                       R5 R0 K28 ["args"]
      194 MOVE                             R6 R2
      195 MOVE                             R7 R3
      196 CALL                             R4 3 -1
      197 CLOSEUPVALS                      R2
      198 RETURN                           R4 -1

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
       12 LOADNIL                          R3
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K3 ["FFlagAssistantStandaloneDataModel"]
       16 JUMPIFNOT                        R4 ; [+35]
       17 NEWTABLE                         R3 0 0
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K4 ["get"]
       22 CALL                             R4 0 1
       23 GETTABLEKS                       R4 R4 K5 ["hasInternalPermission"]
       25 CALL                             R4 0 1
       26 MOVE                             R5 R2
       27 LOADNIL                          R6
       28 LOADNIL                          R7
       29 FORGPREP                         R5
       30 GETUPVAL                         R10 3
       31 GETTABLEKS                       R10 R10 K6 ["Types"]
       33 GETTABLEKS                       R10 R10 K7 ["Standalone"]
       35 JUMPIFNOTEQ                      R9 R10 ; [+2]
       37 JUMPIFNOT                        R4 ; [+7]
       38 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       40 MOVE                             R11 R3
       41 MOVE                             R12 R9
       42 GETIMPORT                        R10 K10 [table.insert]
       44 CALL                             R10 2 0
       45 FORGLOOP                         R5 2 ; [-16]
       47 LENGTH                           R5 R3
       48 JUMPIFNOTEQKN                    R5 K2 [0] ; [+4]
       50 RETURN                           R0 1
       51 JUMP                             ; [+1]
       52 MOVE                             R3 R2
       53 GETIMPORT                        R4 K12 [table.clone]
       55 GETTABLEKS                       R5 R0 K13 ["inputSchema"]
       57 CALL                             R4 1 1
       58 GETTABLEKS                       R5 R4 K14 ["required"]
       60 JUMPIF                           R5 ; [+5]
       61 NEWTABLE                         R5 0 0
       63 SETTABLEKS                       R5 R4 K14 ["required"]
       65 JUMP                             ; [+7]
       66 GETIMPORT                        R5 K12 [table.clone]
       68 GETTABLEKS                       R6 R4 K14 ["required"]
       70 CALL                             R5 1 1
       71 SETTABLEKS                       R5 R4 K14 ["required"]
       73 GETTABLEKS                       R6 R4 K14 ["required"]
       75 FASTCALL2K                       ASSERT R6 K15 ; [+4]
       77 LOADK                            R7 K15 ["Expected required to be present in input schema"]
       78 GETIMPORT                        R5 K17 [assert]
       80 CALL                             R5 2 0
       81 GETTABLEKS                       R6 R4 K14 ["required"]
       83 FASTCALL2K                       TABLE_INSERT R6 K18 ; [+4]
       85 LOADK                            R7 K18 ["datamodel_type"]
       86 GETIMPORT                        R5 K10 [table.insert]
       88 CALL                             R5 2 0
       89 GETTABLEKS                       R5 R4 K19 ["properties"]
       91 JUMPIF                           R5 ; [+5]
       92 NEWTABLE                         R5 0 0
       94 SETTABLEKS                       R5 R4 K19 ["properties"]
       96 JUMP                             ; [+7]
       97 GETIMPORT                        R5 K12 [table.clone]
       99 GETTABLEKS                       R6 R4 K19 ["properties"]
      101 CALL                             R5 1 1
      102 SETTABLEKS                       R5 R4 K19 ["properties"]
      104 GETTABLEKS                       R6 R4 K19 ["properties"]
      106 FASTCALL2K                       ASSERT R6 K20 ; [+4]
      108 LOADK                            R7 K20 ["Expected properties to be present in input schema"]
      109 GETIMPORT                        R5 K17 [assert]
      111 CALL                             R5 2 0
      112 GETTABLEKS                       R5 R4 K19 ["properties"]
      114 DUPTABLE                         R6 K25 [{["type"] = "string", ["enum"], ["description"]}]
      115 SETTABLEKS                       R3 R6 K23 ["enum"]
      117 GETUPVAL                         R8 1
      118 GETTABLEKS                       R8 R8 K26 ["FFlagAssistantGetStudioState"]
      120 JUMPIFNOT                        R8 ; [+12]
      121 LOADK                            R8 K27 ["The target datamodel to operate on, the tool can only be performed in those datamodel types. call %* to get current available datamodel types. if the target datamodel is not available in current mode, consider using %* to switch to the desired mode and then use the tools. This is a required argument."]
      122 GETUPVAL                         R10 4
      123 GETTABLEKS                       R10 R10 K28 ["GetStudioState"]
      125 GETUPVAL                         R11 4
      126 GETTABLEKS                       R11 R11 K29 ["StartStopPlay"]
      128 NAMECALL                         R8 R8 K30 ["format"]
      130 CALL                             R8 3 1
      131 MOVE                             R7 R8
      132 JUMP                             ; [+8]
      133 LOADK                            R8 K31 ["The target datamodel to operate on, the tool can only be performed in those datamodel types. if the target datamodel is not available in current mode, consider using %* to switch to the desired mode and then use the tools. This is a required argument."]
      134 GETUPVAL                         R10 4
      135 GETTABLEKS                       R10 R10 K29 ["StartStopPlay"]
      137 NAMECALL                         R8 R8 K30 ["format"]
      139 CALL                             R8 2 1
      140 MOVE                             R7 R8
      141 SETTABLEKS                       R7 R6 K24 ["description"]
      143 SETTABLEKS                       R6 R5 K18 ["datamodel_type"]
      145 GETIMPORT                        R5 K12 [table.clone]
      147 MOVE                             R6 R0
      148 CALL                             R5 1 1
      149 SETTABLEKS                       R4 R5 K13 ["inputSchema"]
      151 RETURN                           R5 1

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
       21 GETTABLEKS                       R2 R2 K4 ["FFlagAssistantEval"]
       23 JUMPIFNOT                        R2 ; [+13]
       24 GETUPVAL                         R2 3
       25 GETTABLEKS                       R2 R2 K5 ["getIsEvaluationRunning"]
       27 CALL                             R2 0 1
       28 JUMPIFNOT                        R2 ; [+8]
       29 GETUPVAL                         R2 4
       30 MOVE                             R3 R1
       31 GETUPVAL                         R4 3
       32 GETTABLEKS                       R4 R4 K6 ["getDisabledTools"]
       34 CALL                             R4 0 -1
       35 CALL                             R2 -1 1
       36 MOVE                             R1 R2
       37 GETUPVAL                         R2 2
       38 GETTABLEKS                       R2 R2 K7 ["FFlagAssistantFixToolDisappear"]
       40 JUMPIFNOT                        R2 ; [+10]
       41 GETTABLEKS                       R2 R0 K8 ["includeDisabledTools"]
       43 JUMPIF                           R2 ; [+7]
       44 GETUPVAL                         R2 5
       45 JUMPIFNOT                        R2 ; [+5]
       46 GETUPVAL                         R2 6
       47 MOVE                             R3 R1
       48 GETUPVAL                         R4 5
       49 CALL                             R2 2 1
       50 MOVE                             R1 R2
       51 GETTABLEKS                       R2 R0 K9 ["assistantMode"]
       53 JUMPIFNOT                        R2 ; [+10]
       54 GETUPVAL                         R2 7
       55 MOVE                             R3 R1
       56 GETUPVAL                         R5 8
       57 GETTABLEKS                       R5 R5 K10 ["AssistantModeToolsAllowlist"]
       59 GETTABLEKS                       R6 R0 K9 ["assistantMode"]
       61 GETTABLE                         R4 R5 R6
       62 CALL                             R2 2 1
       63 MOVE                             R1 R2
       64 GETUPVAL                         R2 2
       65 GETTABLEKS                       R2 R2 K11 ["FFlagAssistantMultiPlayerAgents"]
       67 JUMPIFNOT                        R2 ; [+27]
       68 GETTABLEKS                       R2 R0 K12 ["isMultiPlayerClientAgent"]
       70 JUMPIFNOT                        R2 ; [+24]
       71 GETUPVAL                         R2 7
       72 MOVE                             R3 R1
       73 GETUPVAL                         R4 8
       74 GETTABLEKS                       R4 R4 K13 ["MultiPlayerTestTools"]
       76 CALL                             R2 2 1
       77 MOVE                             R1 R2
       78 GETTABLEKS                       R2 R0 K14 ["isMultiPlayerClientAgentRunning"]
       80 JUMPIF                           R2 ; [+14]
       81 GETUPVAL                         R2 4
       82 MOVE                             R3 R1
       83 NEWTABLE                         R4 0 2
       85 GETUPVAL                         R5 9
       86 GETTABLEKS                       R5 R5 K15 ["MultiPlayerAgentsCommunication"]
       88 GETUPVAL                         R6 9
       89 GETTABLEKS                       R6 R6 K16 ["WaitForMultiPlayerAgentsCommunication"]
       91 SETLIST                          R4 R5 2 [1]
       93 CALL                             R2 2 1
       94 MOVE                             R1 R2
       95 GETUPVAL                         R2 10
       96 CALL                             R2 0 1
       97 JUMPIFNOT                        R2 ; [+18]
       98 NEWTABLE                         R2 0 0
      100 MOVE                             R3 R1
      101 LOADNIL                          R4
      102 LOADNIL                          R5
      103 FORGPREP                         R3
      104 GETUPVAL                         R10 11
      105 MOVE                             R11 R7
      106 CALL                             R10 1 1
      107 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
      109 MOVE                             R9 R2
      110 GETIMPORT                        R8 K19 [table.insert]
      112 CALL                             R8 2 0
      113 FORGLOOP                         R3 2 ; [-10]
      115 MOVE                             R1 R2
      116 GETUPVAL                         R2 12
      117 MOVE                             R3 R1
      118 DUPTABLE                         R4 K23 [{["internal"] = True, ["useScreenCaptureSubagent"]}]
      119 GETTABLEKS                       R6 R0 K2 ["useInternalToolDefinitions"]
      121 JUMPIFNOT                        R6 ; [+2]
      122 LOADB                            R5 1
      123 JUMP                             ; [+1]
      124 LOADB                            R5 0
      125 SETTABLEKS                       R5 R4 K22 ["useScreenCaptureSubagent"]
      127 CALL                             R2 2 0
      128 DUPTABLE                         R2 K1 [{"tools"}]
      129 SETTABLEKS                       R1 R2 K0 ["tools"]
      131 RETURN                           R2 1

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
       47 GETTABLEKS                       R5 R5 K16 ["FFlagDebugLogAssistantUI"]
       49 JUMPIFNOT                        R5 ; [+36]
       50 GETIMPORT                        R5 K18 [print]
       52 LOADK                            R7 K19 ["TOOL CALL FINISHED: %*"]
       53 MOVE                             R9 R3
       54 NAMECALL                         R7 R7 K20 ["format"]
       56 CALL                             R7 2 1
       57 MOVE                             R6 R7
       58 CALL                             R5 1 0
       59 GETIMPORT                        R5 K18 [print]
       61 LOADK                            R7 K21 ["Args: %*"]
       62 GETUPVAL                         R9 3
       63 GETTABLEKS                       R9 R9 K22 ["toString"]
       65 GETTABLEKS                       R10 R2 K14 ["arguments"]
       67 CALL                             R9 1 1
       68 NAMECALL                         R7 R7 K20 ["format"]
       70 CALL                             R7 2 1
       71 MOVE                             R6 R7
       72 CALL                             R5 1 0
       73 GETIMPORT                        R5 K18 [print]
       75 LOADK                            R7 K23 ["Result: %*"]
       76 GETUPVAL                         R9 3
       77 GETTABLEKS                       R9 R9 K22 ["toString"]
       79 MOVE                             R10 R4
       80 CALL                             R9 1 1
       81 NAMECALL                         R7 R7 K20 ["format"]
       83 CALL                             R7 2 1
       84 MOVE                             R6 R7
       85 CALL                             R5 1 0
       86 RETURN                           R4 1

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
       20 DUPTABLE                         R4 K8 [{["method"] = "ping"}]
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          VAL R0
       23 NAMECALL                         R2 R0 K9 ["setRequestHandler"]
       25 CALL                             R2 3 0
       26 DUPTABLE                         R4 K11 [{["method"] = "tools/list"}]
       27 NEWCLOSURE                       R5 P2
       28 CAPTURE                          VAL R1
       29 NAMECALL                         R2 R0 K9 ["setRequestHandler"]
       31 CALL                             R2 3 0
       32 DUPTABLE                         R4 K13 [{["method"] = "tools/call"}]
       33 NEWCLOSURE                       R5 P3
       34 CAPTURE                          UPVAL U15
       35 CAPTURE                          VAL R1
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U16
       38 NAMECALL                         R2 R0 K9 ["setRequestHandler"]
       40 CALL                             R2 3 0
       41 RETURN                           R0 1

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
       54 GETUPVAL                         R9 2
       55 GETTABLEKS                       R9 R9 K15 ["FFlagAssistantSplitToolsAndWidgets"]
       57 JUMPIFNOT                        R9 ; [+2]
       58 SETTABLEKS                       R8 R3 K16 ["toolId"]
       60 GETTABLEKS                       R9 R6 K17 ["logToolStarted"]
       62 DUPTABLE                         R10 K26 [{["messageGuid"], ["sessionId"], ["toolId"], ["toolName"], ["clientName"], ["isThirdPartyRequest"] = True, ["isSlashCommand"] = False, ["input"]}]
       63 SETTABLEKS                       R7 R10 K18 ["messageGuid"]
       65 GETUPVAL                         R12 3
       66 ORK                              R11 R12 K27 [""]
       67 SETTABLEKS                       R11 R10 K19 ["sessionId"]
       69 SETTABLEKS                       R8 R10 K16 ["toolId"]
       71 SETTABLEKS                       R4 R10 K20 ["toolName"]
       73 GETTABLEKS                       R11 R3 K28 ["client_name"]
       75 SETTABLEKS                       R11 R10 K21 ["clientName"]
       77 SETTABLEKS                       R5 R10 K25 ["input"]
       79 CALL                             R9 1 0
       80 GETUPVAL                         R9 4
       81 GETTABLEKS                       R9 R9 K29 ["getTimestampMilliseconds"]
       83 CALL                             R9 0 1
       84 LOADNIL                          R10
       85 GETUPVAL                         R11 2
       86 GETTABLEKS                       R11 R11 K30 ["FFlagSkipExternalToolsNoDebugMode"]
       88 JUMPIFNOT                        R11 ; [+13]
       89 GETUPVAL                         R11 5
       90 CALL                             R11 0 1
       91 JUMPIFNOT                        R11 ; [+10]
       92 DUPTABLE                         R11 K33 [{["isError"] = True, ["content"]}]
       93 NEWTABLE                         R12 0 1
       95 DUPTABLE                         R13 K37 [{["type"] = "text", ["text"] = "Tool calls are not allowed while in Play mode."}]
       96 SETLIST                          R12 R13 1 [1]
       98 SETTABLEKS                       R12 R11 K32 ["content"]
      100 MOVE                             R10 R11
      101 JUMP                             ; [+15]
      102 GETUPVAL                         R11 6
      103 DUPTABLE                         R12 K42 [{"name", "args", "meta", "extra", "listTools"}]
      104 SETTABLEKS                       R4 R12 K6 ["name"]
      106 SETTABLEKS                       R5 R12 K38 ["args"]
      108 SETTABLEKS                       R3 R12 K39 ["meta"]
      110 SETTABLEKS                       R1 R12 K40 ["extra"]
      112 GETUPVAL                         R13 7
      113 SETTABLEKS                       R13 R12 K41 ["listTools"]
      115 CALL                             R11 1 1
      116 MOVE                             R10 R11
      117 GETUPVAL                         R11 4
      118 GETTABLEKS                       R11 R11 K29 ["getTimestampMilliseconds"]
      120 CALL                             R11 0 1
      121 GETTABLEKS                       R12 R6 K43 ["logToolEnded"]
      123 DUPTABLE                         R13 K48 [{["messageGuid"], ["toolId"], ["toolName"], ["startTime"], ["startTimeAfterConfirmation"], ["endTime"], ["isError"], ["clientName"], ["isThirdPartyRequest"] = True, ["isSlashCommand"] = False, ["toolResultContent"]}]
      124 SETTABLEKS                       R7 R13 K18 ["messageGuid"]
      126 SETTABLEKS                       R8 R13 K16 ["toolId"]
      128 SETTABLEKS                       R4 R13 K20 ["toolName"]
      130 SETTABLEKS                       R9 R13 K44 ["startTime"]
      132 SETTABLEKS                       R9 R13 K45 ["startTimeAfterConfirmation"]
      134 SETTABLEKS                       R11 R13 K46 ["endTime"]
      136 GETTABLEKS                       R15 R10 K31 ["isError"]
      138 ORK                              R14 R15 K24 [False]
      139 SETTABLEKS                       R14 R13 K31 ["isError"]
      141 GETTABLEKS                       R14 R3 K28 ["client_name"]
      143 SETTABLEKS                       R14 R13 K21 ["clientName"]
      145 GETTABLEKS                       R14 R10 K32 ["content"]
      147 SETTABLEKS                       R14 R13 K47 ["toolResultContent"]
      149 CALL                             R12 1 0
      150 GETUPVAL                         R12 8
      151 MOVE                             R13 R10
      152 CALL                             R12 1 1
      153 MOVE                             R10 R12
      154 RETURN                           R10 1

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
       44 CAPTURE                          UPVAL U9
       45 CAPTURE                          VAL R4
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
        2 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        4 SETTABLEKS                       R1 R0 K1 ["ALL_LOGGING_ENABLED"]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K2 ["setStreamingClientCreationFunc"]
        9 DUPCLOSURE                       R1 K3 [PROTO_28]
       10 CAPTURE                          UPVAL U3
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagMCPAssistantManagementMenu"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["close"]
        7 CALL                             R0 1 0
        8 JUMP                             ; [+4]
        9 GETUPVAL                         R0 2
       10 NAMECALL                         R0 R0 K1 ["close"]
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 3
       14 NAMECALL                         R0 R0 K1 ["close"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagMCPAssistantManagementMenu"]
        3 JUMPIFNOT                        R2 ; [+65]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["get"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["getIntegrationsAsync"]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 1
       13 MOVE                             R4 R3
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 FORGPREP                         R4
       17 GETTABLEKS                       R9 R8 K3 ["disabled"]
       19 JUMPIF                           R9 ; [+47]
       20 GETUPVAL                         R9 3
       21 GETTABLEKS                       R11 R8 K4 ["label"]
       23 GETTABLEKS                       R12 R8 K5 ["url"]
       25 NAMECALL                         R9 R9 K6 ["getOrCreateAuthorizer"]
       27 CALL                             R9 3 1
       28 LOADNIL                          R10
       29 GETUPVAL                         R11 0
       30 GETTABLEKS                       R11 R11 K7 ["FFlagAssistantUseVariantHttpTransport"]
       32 JUMPIFNOT                        R11 ; [+9]
       33 GETUPVAL                         R11 4
       34 GETTABLEKS                       R11 R11 K8 ["new"]
       36 GETTABLEKS                       R12 R8 K5 ["url"]
       38 MOVE                             R13 R9
       39 CALL                             R11 2 1
       40 MOVE                             R10 R11
       41 JUMP                             ; [+8]
       42 GETUPVAL                         R11 5
       43 GETTABLEKS                       R11 R11 K8 ["new"]
       45 GETTABLEKS                       R12 R8 K5 ["url"]
       47 MOVE                             R13 R9
       48 CALL                             R11 2 1
       49 MOVE                             R10 R11
       50 DUPTABLE                         R11 K12 [{"identifier", "transport", "clientOptions"}]
       51 GETTABLEKS                       R12 R8 K4 ["label"]
       53 SETTABLEKS                       R12 R11 K9 ["identifier"]
       55 GETTABLEKS                       R12 R10 K10 ["transport"]
       57 SETTABLEKS                       R12 R11 K10 ["transport"]
       59 GETUPVAL                         R12 6
       60 SETTABLEKS                       R12 R11 K11 ["clientOptions"]
       62 GETUPVAL                         R12 7
       63 MOVE                             R14 R11
       64 NAMECALL                         R12 R12 K13 ["addClient"]
       66 CALL                             R12 2 0
       67 FORGLOOP                         R4 2 ; [-51]
       69 GETUPVAL                         R2 7
       70 NAMECALL                         R2 R2 K14 ["connectAll"]
       72 CALL                             R2 1 1
       73 NAMECALL                         R2 R2 K15 ["await"]
       75 CALL                             R2 1 2
       76 JUMPIF                           R2 ; [+20]
       77 GETUPVAL                         R4 0
       78 GETTABLEKS                       R4 R4 K0 ["FFlagMCPAssistantManagementMenu"]
       80 JUMPIFNOT                        R4 ; [+5]
       81 GETUPVAL                         R4 7
       82 NAMECALL                         R4 R4 K16 ["close"]
       84 CALL                             R4 1 0
       85 JUMP                             ; [+4]
       86 GETUPVAL                         R4 8
       87 NAMECALL                         R4 R4 K16 ["close"]
       89 CALL                             R4 1 0
       90 GETUPVAL                         R4 9
       91 NAMECALL                         R4 R4 K16 ["close"]
       93 CALL                             R4 1 0
       94 MOVE                             R4 R1
       95 MOVE                             R5 R3
       96 CALL                             R4 1 0
       97 GETUPVAL                         R4 0
       98 GETTABLEKS                       R4 R4 K17 ["FFlagAssistantEval"]
      100 JUMPIFNOT                        R4 ; [+5]
      101 GETUPVAL                         R4 10
      102 GETTABLEKS                       R4 R4 K18 ["setMcpClient"]
      104 GETUPVAL                         R5 7
      105 CALL                             R4 1 0
      106 MOVE                             R4 R0
      107 GETUPVAL                         R5 7
      108 CALL                             R4 1 0
      109 RETURN                           R0 0

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
       83 CAPTURE                          UPVAL U6
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R3
       87 CAPTURE                          UPVAL U11
       88 CALL                             R9 1 -1
       89 RETURN                           R9 -1

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
       38 GETTABLEKS                       R6 R0 K13 ["Src"]
       40 GETTABLEKS                       R6 R6 K16 ["Flags"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R0 K10 ["Packages"]
       47 GETTABLEKS                       R7 R7 K17 ["LuauPolyfill"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R0 K10 ["Packages"]
       54 GETTABLEKS                       R8 R8 K18 ["ModelContextProtocol"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R9 R0 K13 ["Src"]
       61 GETTABLEKS                       R9 R9 K19 ["Util"]
       63 GETTABLEKS                       R9 R9 K20 ["StudioState"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETTABLEKS                       R10 R0 K13 ["Src"]
       70 GETTABLEKS                       R10 R10 K19 ["Util"]
       72 GETTABLEKS                       R10 R10 K21 ["StudioTools"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETTABLEKS                       R11 R0 K13 ["Src"]
       79 GETTABLEKS                       R11 R11 K22 ["Types"]
       81 CALL                             R10 1 1
       82 GETTABLEKS                       R11 R7 K19 ["Util"]
       84 GETTABLEKS                       R11 R11 K23 ["ToolResult"]
       86 GETTABLEKS                       R12 R2 K24 ["Utils"]
       88 GETTABLEKS                       R12 R12 K25 ["DataModelType"]
       90 GETTABLEKS                       R13 R2 K24 ["Utils"]
       92 GETTABLEKS                       R13 R13 K26 ["EvalController"]
       94 GETTABLEKS                       R14 R2 K27 ["UIToolRegistry"]
       96 GETTABLEKS                       R15 R2 K28 ["FlagUtils"]
       98 GETTABLEKS                       R15 R15 K29 ["getIsAssistantBackgroundDataModelToolCall"]
      100 GETTABLEKS                       R16 R2 K24 ["Utils"]
      102 GETTABLEKS                       R16 R16 K30 ["Tools"]
      104 GETTABLEKS                       R17 R7 K19 ["Util"]
      106 GETTABLEKS                       R17 R17 K31 ["Logging"]
      108 GETTABLEKS                       R18 R7 K22 ["Types"]
      110 GETTABLEKS                       R19 R7 K32 ["MultiplexedClient"]
      112 GETTABLEKS                       R20 R7 K19 ["Util"]
      114 GETTABLEKS                       R20 R20 K33 ["Observable"]
      116 GETTABLEKS                       R21 R7 K34 ["PeerTransport"]
      118 GETTABLEKS                       R22 R7 K35 ["Promise"]
      120 GETTABLEKS                       R23 R7 K36 ["Server"]
      122 GETTABLEKS                       R24 R7 K37 ["ServerRegistry"]
      124 GETTABLEKS                       R25 R7 K38 ["StreamableHttpClient"]
      126 GETTABLEKS                       R25 R25 K39 ["StreamableHttpClientTransport"]
      128 GETTABLEKS                       R26 R7 K40 ["ToolRegistry"]
      130 GETTABLEKS                       R27 R2 K41 ["IntegrationManagement"]
      132 GETTABLEKS                       R27 R27 K42 ["IntegrationManager"]
      134 GETTABLEKS                       R28 R2 K43 ["Guest"]
      136 GETTABLEKS                       R28 R28 K44 ["Environment"]
      138 GETTABLEKS                       R29 R7 K38 ["StreamableHttpClient"]
      140 GETTABLEKS                       R29 R29 K45 ["StreamingClientFactory"]
      142 GETTABLEKS                       R30 R7 K46 ["HttpVariantClientTransport"]
      144 GETTABLEKS                       R30 R30 K46 ["HttpVariantClientTransport"]
      146 GETTABLEKS                       R31 R2 K24 ["Utils"]
      148 GETTABLEKS                       R31 R31 K47 ["MultiDataModelToolUtil"]
      150 GETTABLEKS                       R32 R2 K24 ["Utils"]
      152 GETTABLEKS                       R32 R32 K48 ["Time"]
      154 GETTABLEKS                       R33 R2 K30 ["Tools"]
      156 GETTABLEKS                       R33 R33 K49 ["ToolTypes"]
      158 GETTABLEKS                       R33 R33 K50 ["ToolNames"]
      160 GETTABLEKS                       R34 R3 K51 ["join"]
      162 DUPTABLE                         R35 K53 [{"capabilities"}]
      163 DUPTABLE                         R36 K57 [{"experimental", "roots", "sampling"}]
      164 GETTABLEKS                       R37 R18 K58 ["emptyObject"]
      166 CALL                             R37 0 1
      167 SETTABLEKS                       R37 R36 K54 ["experimental"]
      169 GETTABLEKS                       R37 R18 K58 ["emptyObject"]
      171 CALL                             R37 0 1
      172 SETTABLEKS                       R37 R36 K55 ["roots"]
      174 GETTABLEKS                       R37 R18 K58 ["emptyObject"]
      176 CALL                             R37 0 1
      177 SETTABLEKS                       R37 R36 K56 ["sampling"]
      179 SETTABLEKS                       R36 R35 K52 ["capabilities"]
      181 DUPTABLE                         R36 K53 [{"capabilities"}]
      182 DUPTABLE                         R37 K62 [{"prompts", "resources", "tools"}]
      183 GETTABLEKS                       R38 R18 K58 ["emptyObject"]
      185 CALL                             R38 0 1
      186 SETTABLEKS                       R38 R37 K59 ["prompts"]
      188 GETTABLEKS                       R38 R18 K58 ["emptyObject"]
      190 CALL                             R38 0 1
      191 SETTABLEKS                       R38 R37 K60 ["resources"]
      193 DUPTABLE                         R38 K65 [{["listChanged"] = True}]
      194 SETTABLEKS                       R38 R37 K61 ["tools"]
      196 SETTABLEKS                       R37 R36 K52 ["capabilities"]
      198 GETIMPORT                        R37 K68 [table.freeze]
      200 NEWTABLE                         R38 64 0
      202 GETTABLEKS                       R39 R33 K69 ["AnimationGen"]
      204 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      205 SETTABLE                         R40 R38 R39
      206 GETTABLEKS                       R39 R33 K73 ["AssetInsert"]
      208 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      209 SETTABLE                         R40 R38 R39
      210 GETTABLEKS                       R39 R33 K74 ["AssetSearch"]
      212 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      213 SETTABLE                         R40 R38 R39
      214 GETTABLEKS                       R39 R33 K75 ["CharacterNavigation"]
      216 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      217 SETTABLE                         R40 R38 R39
      218 GETTABLEKS                       R39 R33 K76 ["CompleteTodoItems"]
      220 DUPTABLE                         R40 K78 [{["internal"] = True, ["external"] = False}]
      221 SETTABLE                         R40 R38 R39
      222 GETTABLEKS                       R39 R33 K79 ["CreateSkill"]
      224 DUPTABLE                         R40 K78 [{["internal"] = True, ["external"] = False}]
      225 SETTABLE                         R40 R38 R39
      226 GETTABLEKS                       R39 R33 K80 ["EditSkill"]
      228 DUPTABLE                         R40 K78 [{["internal"] = True, ["external"] = False}]
      229 SETTABLE                         R40 R38 R39
      230 GETTABLEKS                       R39 R33 K81 ["CreatorStoreInsert"]
      232 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      233 SETTABLE                         R40 R38 R39
      234 GETTABLEKS                       R39 R33 K82 ["CreatorStoreSearch"]
      236 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      237 SETTABLE                         R40 R38 R39
      238 GETTABLEKS                       R39 R33 K83 ["ExecuteLuau"]
      240 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      241 SETTABLE                         R40 R38 R39
      242 GETTABLEKS                       R39 R33 K84 ["FileSearch"]
      244 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      245 SETTABLE                         R40 R38 R39
      246 GETTABLEKS                       R39 R33 K85 ["FinalizePlan"]
      248 DUPTABLE                         R40 K78 [{["internal"] = True, ["external"] = False}]
      249 SETTABLE                         R40 R38 R39
      250 GETTABLEKS                       R39 R33 K86 ["FromHistory"]
      252 DUPTABLE                         R40 K78 [{["internal"] = True, ["external"] = False}]
      253 SETTABLE                         R40 R38 R39
      254 GETTABLEKS                       R39 R33 K87 ["UpdatePlan"]
      256 DUPTABLE                         R40 K78 [{["internal"] = True, ["external"] = False}]
      257 SETTABLE                         R40 R38 R39
      258 GETTABLEKS                       R39 R33 K88 ["GameTree"]
      260 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      261 SETTABLE                         R40 R38 R39
      262 GETTABLEKS                       R39 R33 K89 ["GetConsoleOutput"]
      264 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      265 SETTABLE                         R40 R38 R39
      266 GETTABLEKS                       R39 R33 K90 ["GrepSearch"]
      268 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      269 SETTABLE                         R40 R38 R39
      270 GETTABLEKS                       R39 R33 K91 ["HttpGet"]
      272 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      273 SETTABLE                         R40 R38 R39
      274 GETTABLEKS                       R39 R33 K92 ["InspectInstance"]
      276 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      277 SETTABLE                         R40 R38 R39
      278 GETTABLEKS                       R39 R33 K93 ["MaterialGen"]
      280 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      281 SETTABLE                         R40 R38 R39
      282 GETTABLEKS                       R39 R33 K94 ["MeshGen"]
      284 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      285 SETTABLE                         R40 R38 R39
      286 GETTABLEKS                       R39 R33 K95 ["MultiEdit"]
      288 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      289 SETTABLE                         R40 R38 R39
      290 GETTABLEKS                       R39 R33 K96 ["PrimitiveGen"]
      292 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      293 SETTABLE                         R40 R38 R39
      294 GETTABLEKS                       R39 R33 K97 ["QuestionAnswer"]
      296 DUPTABLE                         R40 K78 [{["internal"] = True, ["external"] = False}]
      297 SETTABLE                         R40 R38 R39
      298 GETTABLEKS                       R39 R33 K98 ["ReadFile"]
      300 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      301 SETTABLE                         R40 R38 R39
      302 GETTABLEKS                       R39 R33 K99 ["ScreenCapture"]
      304 DUPTABLE                         R40 K100 [{["internal"] = False, ["external"] = True}]
      305 SETTABLE                         R40 R38 R39
      306 GETTABLEKS                       R39 R33 K101 ["Skill"]
      308 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      309 SETTABLE                         R40 R38 R39
      310 GETTABLEKS                       R39 R33 K102 ["StartStopPlay"]
      312 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      313 SETTABLE                         R40 R38 R39
      314 GETTABLEKS                       R39 R33 K103 ["GetStudioState"]
      316 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      317 SETTABLE                         R40 R38 R39
      318 GETTABLEKS                       R39 R33 K104 ["StoreImage"]
      320 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      321 SETTABLE                         R40 R38 R39
      322 GETTABLEKS                       R39 R33 K105 ["Subagent"]
      324 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      325 SETTABLE                         R40 R38 R39
      326 GETTABLEKS                       R39 R33 K106 ["UploadImage"]
      328 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      329 SETTABLE                         R40 R38 R39
      330 GETTABLEKS                       R39 R33 K107 ["UserKeyboardInput"]
      332 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      333 SETTABLE                         R40 R38 R39
      334 GETTABLEKS                       R39 R33 K108 ["UserMouseInput"]
      336 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      337 SETTABLE                         R40 R38 R39
      338 GETTABLEKS                       R39 R33 K109 ["VideoCapture"]
      340 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      341 SETTABLE                         R40 R38 R39
      342 GETTABLEKS                       R39 R33 K110 ["WaitJobFinished"]
      344 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      345 SETTABLE                         R40 R38 R39
      346 GETTABLEKS                       R39 R33 K111 ["StartMultiPlayerAgents"]
      348 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      349 SETTABLE                         R40 R38 R39
      350 GETTABLEKS                       R39 R33 K112 ["StopMultiPlayerAgents"]
      352 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      353 SETTABLE                         R40 R38 R39
      354 GETTABLEKS                       R39 R33 K113 ["MultiPlayerAgentsCommunication"]
      356 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      357 SETTABLE                         R40 R38 R39
      358 GETTABLEKS                       R39 R33 K114 ["WaitForMultiPlayerAgentsCommunication"]
      360 DUPTABLE                         R40 K72 [{["internal"] = True, ["external"] = True}]
      361 SETTABLE                         R40 R38 R39
      362 CALL                             R37 1 1
      363 LOADNIL                          R38
      364 NEWCLOSURE                       R39 P0
      365 CAPTURE                          REF R38
      366 DUPCLOSURE                       R40 K115 [PROTO_1]
      367 DUPCLOSURE                       R41 K116 [PROTO_2]
      368 DUPCLOSURE                       R42 K117 [PROTO_3]
      369 CAPTURE                          VAL R40
      370 DUPCLOSURE                       R43 K118 [PROTO_4]
      371 CAPTURE                          VAL R26
      372 CAPTURE                          VAL R37
      373 DUPCLOSURE                       R44 K119 [PROTO_5]
      374 CAPTURE                          VAL R26
      375 CAPTURE                          VAL R37
      376 DUPCLOSURE                       R45 K120 [PROTO_8]
      377 CAPTURE                          VAL R5
      378 CAPTURE                          VAL R8
      379 CAPTURE                          VAL R12
      380 CAPTURE                          VAL R11
      381 CAPTURE                          VAL R26
      382 CAPTURE                          VAL R15
      383 CAPTURE                          VAL R14
      384 CAPTURE                          VAL R31
      385 CAPTURE                          VAL R34
      386 CAPTURE                          VAL R45
      387 DUPCLOSURE                       R46 K121 [PROTO_9]
      388 CAPTURE                          VAL R14
      389 CAPTURE                          VAL R5
      390 CAPTURE                          VAL R28
      391 CAPTURE                          VAL R12
      392 CAPTURE                          VAL R33
      393 DUPCLOSURE                       R47 K122 [PROTO_10]
      394 CAPTURE                          VAL R14
      395 DUPCLOSURE                       R48 K123 [PROTO_11]
      396 NEWCLOSURE                       R49 P10
      397 CAPTURE                          VAL R23
      398 CAPTURE                          VAL R36
      399 CAPTURE                          VAL R44
      400 CAPTURE                          VAL R26
      401 CAPTURE                          VAL R5
      402 CAPTURE                          VAL R13
      403 CAPTURE                          VAL R41
      404 CAPTURE                          REF R38
      405 CAPTURE                          VAL R40
      406 CAPTURE                          VAL R42
      407 CAPTURE                          VAL R9
      408 CAPTURE                          VAL R33
      409 CAPTURE                          VAL R15
      410 CAPTURE                          VAL R46
      411 CAPTURE                          VAL R47
      412 CAPTURE                          VAL R45
      413 CAPTURE                          VAL R16
      414 SETGLOBAL                        R49 K124 ["getBuiltinServer"]
      416 DUPCLOSURE                       R49 K125 [PROTO_17]
      417 CAPTURE                          VAL R24
      418 SETGLOBAL                        R49 K126 ["startLocalServer"]
      420 DUPCLOSURE                       R49 K127 [PROTO_26]
      421 CAPTURE                          VAL R23
      422 CAPTURE                          VAL R36
      423 CAPTURE                          VAL R20
      424 CAPTURE                          VAL R28
      425 CAPTURE                          VAL R43
      426 CAPTURE                          VAL R47
      427 CAPTURE                          VAL R15
      428 CAPTURE                          VAL R46
      429 CAPTURE                          VAL R1
      430 CAPTURE                          VAL R5
      431 CAPTURE                          VAL R32
      432 CAPTURE                          VAL R45
      433 CAPTURE                          VAL R48
      434 CAPTURE                          VAL R24
      435 SETGLOBAL                        R49 K128 ["startExternalServer"]
      437 DUPCLOSURE                       R49 K129 [PROTO_27]
      438 CAPTURE                          VAL R21
      439 DUPCLOSURE                       R50 K130 [PROTO_29]
      440 CAPTURE                          VAL R17
      441 CAPTURE                          VAL R5
      442 CAPTURE                          VAL R29
      443 CAPTURE                          VAL R1
      444 DUPCLOSURE                       R51 K131 [PROTO_32]
      445 CAPTURE                          VAL R21
      446 CAPTURE                          VAL R22
      447 CAPTURE                          VAL R19
      448 CAPTURE                          VAL R10
      449 CAPTURE                          VAL R18
      450 CAPTURE                          VAL R5
      451 CAPTURE                          VAL R35
      452 CAPTURE                          VAL R28
      453 CAPTURE                          VAL R27
      454 CAPTURE                          VAL R30
      455 CAPTURE                          VAL R25
      456 CAPTURE                          VAL R4
      457 DUPTABLE                         R52 K136 [{"promiseMcpHost", "configureModelContextProtocol", "startLocalServer", "startExternalServer", "setToolEnabledStates", "TOOL_AVAILABILITY"}]
      458 SETTABLEKS                       R51 R52 K132 ["promiseMcpHost"]
      460 SETTABLEKS                       R50 R52 K133 ["configureModelContextProtocol"]
      462 GETGLOBAL                        R53 K126 ["startLocalServer"]
      464 SETTABLEKS                       R53 R52 K126 ["startLocalServer"]
      466 GETGLOBAL                        R53 K128 ["startExternalServer"]
      468 SETTABLEKS                       R53 R52 K128 ["startExternalServer"]
      470 SETTABLEKS                       R39 R52 K134 ["setToolEnabledStates"]
      472 SETTABLEKS                       R37 R52 K135 ["TOOL_AVAILABILITY"]
      474 CLOSEUPVALS                      R38
      475 RETURN                           R52 1
