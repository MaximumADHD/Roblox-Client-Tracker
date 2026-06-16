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
       73 DUPTABLE                         R5 K19 [{"type", "enum", "description"}]
       74 LOADK                            R6 K20 ["string"]
       75 SETTABLEKS                       R6 R5 K16 ["type"]
       77 SETTABLEKS                       R2 R5 K17 ["enum"]
       79 GETUPVAL                         R7 1
       80 CALL                             R7 0 1
       81 JUMPIFNOT                        R7 ; [+12]
       82 LOADK                            R7 K21 ["The target datamodel to operate on, the tool can only be performed in those datamodel types. call %* to get current available datamodel types. if the target datamodel is not available in current mode, consider using %* to switch to the desired mode and then use the tools. This is a required argument."]
       83 GETUPVAL                         R9 2
       84 GETTABLEKS                       R9 R9 K22 ["GetStudioState"]
       86 GETUPVAL                         R10 2
       87 GETTABLEKS                       R10 R10 K23 ["StartStopPlay"]
       89 NAMECALL                         R7 R7 K24 ["format"]
       91 CALL                             R7 3 1
       92 MOVE                             R6 R7
       93 JUMP                             ; [+8]
       94 LOADK                            R7 K25 ["The target datamodel to operate on, the tool can only be performed in those datamodel types. if the target datamodel is not available in current mode, consider using %* to switch to the desired mode and then use the tools. This is a required argument."]
       95 GETUPVAL                         R9 2
       96 GETTABLEKS                       R9 R9 K23 ["StartStopPlay"]
       98 NAMECALL                         R7 R7 K24 ["format"]
      100 CALL                             R7 2 1
      101 MOVE                             R6 R7
      102 SETTABLEKS                       R6 R5 K18 ["description"]
      104 SETTABLEKS                       R5 R4 K11 ["datamodel_type"]
      106 GETIMPORT                        R4 K5 [table.clone]
      108 MOVE                             R5 R0
      109 CALL                             R4 1 1
      110 SETTABLEKS                       R3 R4 K6 ["inputSchema"]
      112 RETURN                           R4 1

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
       67 JUMPIFNOT                        R2 ; [+27]
       68 GETTABLEKS                       R2 R0 K9 ["isMultiPlayerClientAgent"]
       70 JUMPIFNOT                        R2 ; [+24]
       71 GETUPVAL                         R2 9
       72 MOVE                             R3 R1
       73 GETUPVAL                         R4 10
       74 GETTABLEKS                       R4 R4 K10 ["MultiPlayerTestTools"]
       76 CALL                             R2 2 1
       77 MOVE                             R1 R2
       78 GETTABLEKS                       R2 R0 K11 ["isMultiPlayerClientAgentRunning"]
       80 JUMPIF                           R2 ; [+14]
       81 GETUPVAL                         R2 4
       82 MOVE                             R3 R1
       83 NEWTABLE                         R4 0 2
       85 GETUPVAL                         R5 12
       86 GETTABLEKS                       R5 R5 K12 ["MultiPlayerAgentsCommunication"]
       88 GETUPVAL                         R6 12
       89 GETTABLEKS                       R6 R6 K13 ["WaitForMultiPlayerAgentsCommunication"]
       91 SETLIST                          R4 R5 2 [1]
       93 CALL                             R2 2 1
       94 MOVE                             R1 R2
       95 GETUPVAL                         R2 13
       96 CALL                             R2 0 1
       97 JUMPIFNOT                        R2 ; [+18]
       98 NEWTABLE                         R2 0 0
      100 MOVE                             R3 R1
      101 LOADNIL                          R4
      102 LOADNIL                          R5
      103 FORGPREP                         R3
      104 GETUPVAL                         R10 14
      105 MOVE                             R11 R7
      106 CALL                             R10 1 1
      107 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
      109 MOVE                             R9 R2
      110 GETIMPORT                        R8 K16 [table.insert]
      112 CALL                             R8 2 0
      113 FORGLOOP                         R3 2 ; [-10]
      115 MOVE                             R1 R2
      116 GETUPVAL                         R2 15
      117 CALL                             R2 0 1
      118 JUMPIFNOT                        R2 ; [+15]
      119 GETUPVAL                         R2 16
      120 MOVE                             R3 R1
      121 DUPTABLE                         R4 K19 [{"internal", "useScreenCaptureSubagent"}]
      122 LOADB                            R5 1
      123 SETTABLEKS                       R5 R4 K17 ["internal"]
      125 GETTABLEKS                       R6 R0 K2 ["useInternalToolDefinitions"]
      127 JUMPIFNOT                        R6 ; [+2]
      128 LOADB                            R5 1
      129 JUMP                             ; [+1]
      130 LOADB                            R5 0
      131 SETTABLEKS                       R5 R4 K18 ["useScreenCaptureSubagent"]
      133 CALL                             R2 2 0
      134 DUPTABLE                         R2 K1 [{"tools"}]
      135 SETTABLEKS                       R1 R2 K0 ["tools"]
      137 RETURN                           R2 1

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
       28 CAPTURE                          UPVAL U17
       29 CAPTURE                          UPVAL U18
       30 DUPTABLE                         R4 K7 [{"method"}]
       31 LOADK                            R5 K8 ["ping"]
       32 SETTABLEKS                       R5 R4 K6 ["method"]
       34 NEWCLOSURE                       R5 P1
       35 CAPTURE                          VAL R0
       36 NAMECALL                         R2 R0 K9 ["setRequestHandler"]
       38 CALL                             R2 3 0
       39 DUPTABLE                         R4 K7 [{"method"}]
       40 LOADK                            R5 K10 ["tools/list"]
       41 SETTABLEKS                       R5 R4 K6 ["method"]
       43 NEWCLOSURE                       R5 P2
       44 CAPTURE                          UPVAL U17
       45 CAPTURE                          VAL R1
       46 NAMECALL                         R2 R0 K9 ["setRequestHandler"]
       48 CALL                             R2 3 0
       49 DUPTABLE                         R4 K7 [{"method"}]
       50 LOADK                            R5 K11 ["tools/call"]
       51 SETTABLEKS                       R5 R4 K6 ["method"]
       53 NEWCLOSURE                       R5 P3
       54 CAPTURE                          UPVAL U19
       55 CAPTURE                          VAL R1
       56 CAPTURE                          UPVAL U20
       57 CAPTURE                          UPVAL U21
       58 NAMECALL                         R2 R0 K9 ["setRequestHandler"]
       60 CALL                             R2 3 0
       61 RETURN                           R0 1

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
       15 GETUPVAL                         R1 3
       16 CALL                             R1 0 1
       17 JUMPIFNOT                        R1 ; [+18]
       18 NEWTABLE                         R1 0 0
       20 MOVE                             R2 R0
       21 LOADNIL                          R3
       22 LOADNIL                          R4
       23 FORGPREP                         R2
       24 GETUPVAL                         R9 4
       25 MOVE                             R10 R6
       26 CALL                             R9 1 1
       27 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       29 MOVE                             R8 R1
       30 GETIMPORT                        R7 K5 [table.insert]
       32 CALL                             R7 2 0
       33 FORGLOOP                         R2 2 ; [-10]
       35 MOVE                             R0 R1
       36 DUPTABLE                         R1 K7 [{"tools"}]
       37 SETTABLEKS                       R0 R1 K6 ["tools"]
       39 RETURN                           R1 1

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
       45 CAPTURE                          UPVAL U7
       46 CAPTURE                          UPVAL U8
       47 DUPTABLE                         R10 K9 [{"method"}]
       48 LOADK                            R11 K14 ["tools/list"]
       49 SETTABLEKS                       R11 R10 K8 ["method"]
       51 DUPCLOSURE                       R11 K15 [PROTO_21]
       52 CAPTURE                          VAL R7
       53 NAMECALL                         R8 R3 K11 ["setRequestHandler"]
       55 CALL                             R8 3 0
       56 DUPTABLE                         R10 K9 [{"method"}]
       57 LOADK                            R11 K16 ["tools/call"]
       58 SETTABLEKS                       R11 R10 K8 ["method"]
       60 NEWCLOSURE                       R11 P4
       61 CAPTURE                          UPVAL U3
       62 CAPTURE                          UPVAL U9
       63 CAPTURE                          VAL R4
       64 CAPTURE                          UPVAL U10
       65 CAPTURE                          UPVAL U11
       66 CAPTURE                          VAL R1
       67 CAPTURE                          UPVAL U12
       68 CAPTURE                          VAL R7
       69 CAPTURE                          UPVAL U13
       70 CAPTURE                          UPVAL U14
       71 NAMECALL                         R8 R3 K11 ["setRequestHandler"]
       73 CALL                             R8 3 0
       74 GETTABLEKS                       R8 R3 K17 ["onServerInitialized"]
       76 NEWCLOSURE                       R10 P5
       77 CAPTURE                          UPVAL U3
       78 CAPTURE                          VAL R4
       79 CAPTURE                          REF R6
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R3
       83 NAMECALL                         R8 R8 K18 ["Connect"]
       85 CALL                             R8 2 1
       86 GETUPVAL                         R9 15
       87 GETTABLEKS                       R9 R9 K19 ["registerServer"]
       89 MOVE                             R10 R3
       90 CALL                             R9 1 0
       91 DUPTABLE                         R9 K24 [{"promise", "server", "connectionCountObservable", "destructor"}]
       92 MOVE                             R12 R2
       93 NAMECALL                         R10 R3 K25 ["connect"]
       95 CALL                             R10 2 1
       96 SETTABLEKS                       R10 R9 K20 ["promise"]
       98 SETTABLEKS                       R3 R9 K21 ["server"]
      100 SETTABLEKS                       R5 R9 K22 ["connectionCountObservable"]
      102 NEWCLOSURE                       R10 P6
      103 CAPTURE                          VAL R8
      104 CAPTURE                          REF R6
      105 SETTABLEKS                       R10 R9 K23 ["destructor"]
      107 CLOSEUPVALS                      R6
      108 RETURN                           R9 1

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
      113 GETTABLEKS                       R18 R18 K32 ["FFlagAssistantStripStructuredContentForExternal"]
      115 CALL                             R17 1 1
      116 GETIMPORT                        R18 K9 [require]
      118 GETTABLEKS                       R19 R0 K13 ["Src"]
      120 GETTABLEKS                       R19 R19 K26 ["Flags"]
      122 GETTABLEKS                       R19 R19 K33 ["FFlagSkipExternalToolsNoDebugMode"]
      124 CALL                             R18 1 1
      125 GETTABLEKS                       R19 R2 K26 ["Flags"]
      127 GETTABLEKS                       R19 R19 K27 ["Shared"]
      129 GETTABLEKS                       R19 R19 K34 ["getAssistantModeEnabled"]
      131 GETTABLEKS                       R20 R2 K26 ["Flags"]
      133 GETTABLEKS                       R20 R20 K27 ["Shared"]
      135 GETTABLEKS                       R20 R20 K35 ["getIsAssistantBackgroundDataModelToolCall"]
      137 GETIMPORT                        R21 K9 [require]
      139 GETTABLEKS                       R22 R0 K13 ["Src"]
      141 GETTABLEKS                       R22 R22 K26 ["Flags"]
      143 GETTABLEKS                       R22 R22 K36 ["FFlagAssistantFixToolDisappear"]
      145 CALL                             R21 1 1
      146 GETTABLEKS                       R22 R2 K26 ["Flags"]
      148 GETTABLEKS                       R22 R22 K27 ["Shared"]
      150 GETTABLEKS                       R22 R22 K37 ["FFlagAssistantDynamicToolDescription"]
      152 GETTABLEKS                       R23 R2 K26 ["Flags"]
      154 GETTABLEKS                       R23 R23 K27 ["Shared"]
      156 GETTABLEKS                       R23 R23 K38 ["FFlagAssistantEval"]
      158 GETTABLEKS                       R24 R2 K26 ["Flags"]
      160 GETTABLEKS                       R24 R24 K27 ["Shared"]
      162 GETTABLEKS                       R24 R24 K39 ["FFlagAssistantMultiPlayerAgents"]
      164 GETTABLEKS                       R25 R2 K26 ["Flags"]
      166 GETTABLEKS                       R25 R25 K27 ["Shared"]
      168 GETTABLEKS                       R25 R25 K40 ["FFlagAssistantMarkdownPlanMode"]
      170 GETTABLEKS                       R26 R2 K26 ["Flags"]
      172 GETTABLEKS                       R26 R26 K27 ["Shared"]
      174 GETTABLEKS                       R26 R26 K41 ["FFlagAssistantGetStudioState"]
      176 GETIMPORT                        R27 K9 [require]
      178 GETTABLEKS                       R28 R0 K13 ["Src"]
      180 GETTABLEKS                       R28 R28 K26 ["Flags"]
      182 GETTABLEKS                       R28 R28 K42 ["FFlagFixTargetIsNotReachable"]
      184 CALL                             R27 1 1
      185 GETTABLEKS                       R28 R2 K22 ["Utils"]
      187 GETTABLEKS                       R28 R28 K43 ["Tools"]
      189 GETTABLEKS                       R29 R6 K18 ["Util"]
      191 GETTABLEKS                       R29 R29 K44 ["Logging"]
      193 GETTABLEKS                       R30 R6 K21 ["Types"]
      195 GETTABLEKS                       R31 R6 K45 ["MultiplexedClient"]
      197 GETTABLEKS                       R32 R6 K18 ["Util"]
      199 GETTABLEKS                       R32 R32 K46 ["Observable"]
      201 GETTABLEKS                       R33 R6 K47 ["PeerTransport"]
      203 GETTABLEKS                       R34 R6 K48 ["Promise"]
      205 GETTABLEKS                       R35 R6 K49 ["Server"]
      207 GETTABLEKS                       R36 R6 K50 ["ServerRegistry"]
      209 GETTABLEKS                       R37 R6 K51 ["StreamableHttpClient"]
      211 GETTABLEKS                       R37 R37 K52 ["StreamableHttpClientTransport"]
      213 GETTABLEKS                       R38 R6 K53 ["ToolRegistry"]
      215 GETTABLEKS                       R39 R2 K54 ["IntegrationManagement"]
      217 GETTABLEKS                       R39 R39 K55 ["IntegrationManager"]
      219 GETTABLEKS                       R40 R2 K56 ["Guest"]
      221 GETTABLEKS                       R40 R40 K57 ["Environment"]
      223 GETTABLEKS                       R41 R6 K51 ["StreamableHttpClient"]
      225 GETTABLEKS                       R41 R41 K58 ["StreamingClientFactory"]
      227 GETTABLEKS                       R42 R6 K59 ["HttpVariantClientTransport"]
      229 GETTABLEKS                       R42 R42 K59 ["HttpVariantClientTransport"]
      231 GETTABLEKS                       R43 R2 K22 ["Utils"]
      233 GETTABLEKS                       R43 R43 K60 ["MultiDataModelToolUtil"]
      235 GETTABLEKS                       R44 R2 K22 ["Utils"]
      237 GETTABLEKS                       R44 R44 K61 ["Time"]
      239 GETTABLEKS                       R45 R2 K43 ["Tools"]
      241 GETTABLEKS                       R45 R45 K62 ["ToolTypes"]
      243 GETTABLEKS                       R45 R45 K63 ["ToolNames"]
      245 GETTABLEKS                       R46 R3 K64 ["join"]
      247 DUPTABLE                         R47 K66 [{"capabilities"}]
      248 DUPTABLE                         R48 K70 [{"experimental", "roots", "sampling"}]
      249 GETTABLEKS                       R49 R30 K71 ["emptyObject"]
      251 CALL                             R49 0 1
      252 SETTABLEKS                       R49 R48 K67 ["experimental"]
      254 GETTABLEKS                       R49 R30 K71 ["emptyObject"]
      256 CALL                             R49 0 1
      257 SETTABLEKS                       R49 R48 K68 ["roots"]
      259 GETTABLEKS                       R49 R30 K71 ["emptyObject"]
      261 CALL                             R49 0 1
      262 SETTABLEKS                       R49 R48 K69 ["sampling"]
      264 SETTABLEKS                       R48 R47 K65 ["capabilities"]
      266 DUPTABLE                         R48 K66 [{"capabilities"}]
      267 DUPTABLE                         R49 K75 [{"prompts", "resources", "tools"}]
      268 GETTABLEKS                       R50 R30 K71 ["emptyObject"]
      270 CALL                             R50 0 1
      271 SETTABLEKS                       R50 R49 K72 ["prompts"]
      273 GETTABLEKS                       R50 R30 K71 ["emptyObject"]
      275 CALL                             R50 0 1
      276 SETTABLEKS                       R50 R49 K73 ["resources"]
      278 DUPTABLE                         R50 K77 [{"listChanged"}]
      279 LOADB                            R51 1
      280 SETTABLEKS                       R51 R50 K76 ["listChanged"]
      282 SETTABLEKS                       R50 R49 K74 ["tools"]
      284 SETTABLEKS                       R49 R48 K65 ["capabilities"]
      286 GETIMPORT                        R49 K80 [table.freeze]
      288 NEWTABLE                         R50 64 0
      290 GETTABLEKS                       R51 R45 K81 ["AnimationGen"]
      292 DUPTABLE                         R52 K84 [{"internal", "external"}]
      293 LOADB                            R53 1
      294 SETTABLEKS                       R53 R52 K82 ["internal"]
      296 LOADB                            R53 1
      297 SETTABLEKS                       R53 R52 K83 ["external"]
      299 SETTABLE                         R52 R50 R51
      300 GETTABLEKS                       R51 R45 K85 ["AssetInsert"]
      302 DUPTABLE                         R52 K84 [{"internal", "external"}]
      303 LOADB                            R53 1
      304 SETTABLEKS                       R53 R52 K82 ["internal"]
      306 LOADB                            R53 1
      307 SETTABLEKS                       R53 R52 K83 ["external"]
      309 SETTABLE                         R52 R50 R51
      310 GETTABLEKS                       R51 R45 K86 ["AssetSearch"]
      312 DUPTABLE                         R52 K84 [{"internal", "external"}]
      313 LOADB                            R53 1
      314 SETTABLEKS                       R53 R52 K82 ["internal"]
      316 LOADB                            R53 1
      317 SETTABLEKS                       R53 R52 K83 ["external"]
      319 SETTABLE                         R52 R50 R51
      320 GETTABLEKS                       R51 R45 K87 ["CharacterNavigation"]
      322 DUPTABLE                         R52 K84 [{"internal", "external"}]
      323 LOADB                            R53 1
      324 SETTABLEKS                       R53 R52 K82 ["internal"]
      326 LOADB                            R53 1
      327 SETTABLEKS                       R53 R52 K83 ["external"]
      329 SETTABLE                         R52 R50 R51
      330 GETTABLEKS                       R51 R45 K88 ["CompleteTodoItems"]
      332 DUPTABLE                         R52 K84 [{"internal", "external"}]
      333 LOADB                            R53 1
      334 SETTABLEKS                       R53 R52 K82 ["internal"]
      336 LOADB                            R53 0
      337 SETTABLEKS                       R53 R52 K83 ["external"]
      339 SETTABLE                         R52 R50 R51
      340 GETTABLEKS                       R51 R45 K89 ["CreatorStoreInsert"]
      342 DUPTABLE                         R52 K84 [{"internal", "external"}]
      343 LOADB                            R53 1
      344 SETTABLEKS                       R53 R52 K82 ["internal"]
      346 LOADB                            R53 1
      347 SETTABLEKS                       R53 R52 K83 ["external"]
      349 SETTABLE                         R52 R50 R51
      350 GETTABLEKS                       R51 R45 K90 ["CreatorStoreSearch"]
      352 DUPTABLE                         R52 K84 [{"internal", "external"}]
      353 LOADB                            R53 1
      354 SETTABLEKS                       R53 R52 K82 ["internal"]
      356 LOADB                            R53 1
      357 SETTABLEKS                       R53 R52 K83 ["external"]
      359 SETTABLE                         R52 R50 R51
      360 GETTABLEKS                       R51 R45 K91 ["ExecuteLuau"]
      362 DUPTABLE                         R52 K84 [{"internal", "external"}]
      363 LOADB                            R53 1
      364 SETTABLEKS                       R53 R52 K82 ["internal"]
      366 LOADB                            R53 1
      367 SETTABLEKS                       R53 R52 K83 ["external"]
      369 SETTABLE                         R52 R50 R51
      370 GETTABLEKS                       R51 R45 K92 ["FileSearch"]
      372 DUPTABLE                         R52 K84 [{"internal", "external"}]
      373 LOADB                            R53 1
      374 SETTABLEKS                       R53 R52 K82 ["internal"]
      376 LOADB                            R53 1
      377 SETTABLEKS                       R53 R52 K83 ["external"]
      379 SETTABLE                         R52 R50 R51
      380 GETTABLEKS                       R51 R45 K93 ["FinalizePlan"]
      382 DUPTABLE                         R52 K84 [{"internal", "external"}]
      383 LOADB                            R53 1
      384 SETTABLEKS                       R53 R52 K82 ["internal"]
      386 LOADB                            R53 0
      387 SETTABLEKS                       R53 R52 K83 ["external"]
      389 SETTABLE                         R52 R50 R51
      390 GETTABLEKS                       R51 R45 K94 ["FromHistory"]
      392 DUPTABLE                         R52 K84 [{"internal", "external"}]
      393 LOADB                            R53 1
      394 SETTABLEKS                       R53 R52 K82 ["internal"]
      396 LOADB                            R53 0
      397 SETTABLEKS                       R53 R52 K83 ["external"]
      399 SETTABLE                         R52 R50 R51
      400 GETTABLEKS                       R51 R45 K95 ["UpdatePlan"]
      402 DUPTABLE                         R52 K84 [{"internal", "external"}]
      403 LOADB                            R53 1
      404 SETTABLEKS                       R53 R52 K82 ["internal"]
      406 LOADB                            R53 0
      407 SETTABLEKS                       R53 R52 K83 ["external"]
      409 SETTABLE                         R52 R50 R51
      410 GETTABLEKS                       R51 R45 K96 ["GameTree"]
      412 DUPTABLE                         R52 K84 [{"internal", "external"}]
      413 LOADB                            R53 1
      414 SETTABLEKS                       R53 R52 K82 ["internal"]
      416 LOADB                            R53 1
      417 SETTABLEKS                       R53 R52 K83 ["external"]
      419 SETTABLE                         R52 R50 R51
      420 GETTABLEKS                       R51 R45 K97 ["GetConsoleOutput"]
      422 DUPTABLE                         R52 K84 [{"internal", "external"}]
      423 LOADB                            R53 1
      424 SETTABLEKS                       R53 R52 K82 ["internal"]
      426 LOADB                            R53 1
      427 SETTABLEKS                       R53 R52 K83 ["external"]
      429 SETTABLE                         R52 R50 R51
      430 GETTABLEKS                       R51 R45 K98 ["GrepSearch"]
      432 DUPTABLE                         R52 K84 [{"internal", "external"}]
      433 LOADB                            R53 1
      434 SETTABLEKS                       R53 R52 K82 ["internal"]
      436 LOADB                            R53 1
      437 SETTABLEKS                       R53 R52 K83 ["external"]
      439 SETTABLE                         R52 R50 R51
      440 GETTABLEKS                       R51 R45 K99 ["HttpGet"]
      442 DUPTABLE                         R52 K84 [{"internal", "external"}]
      443 LOADB                            R53 1
      444 SETTABLEKS                       R53 R52 K82 ["internal"]
      446 LOADB                            R53 1
      447 SETTABLEKS                       R53 R52 K83 ["external"]
      449 SETTABLE                         R52 R50 R51
      450 GETTABLEKS                       R51 R45 K100 ["InspectInstance"]
      452 DUPTABLE                         R52 K84 [{"internal", "external"}]
      453 LOADB                            R53 1
      454 SETTABLEKS                       R53 R52 K82 ["internal"]
      456 LOADB                            R53 1
      457 SETTABLEKS                       R53 R52 K83 ["external"]
      459 SETTABLE                         R52 R50 R51
      460 GETTABLEKS                       R51 R45 K101 ["MaterialGen"]
      462 DUPTABLE                         R52 K84 [{"internal", "external"}]
      463 LOADB                            R53 1
      464 SETTABLEKS                       R53 R52 K82 ["internal"]
      466 LOADB                            R53 1
      467 SETTABLEKS                       R53 R52 K83 ["external"]
      469 SETTABLE                         R52 R50 R51
      470 GETTABLEKS                       R51 R45 K102 ["MeshGen"]
      472 DUPTABLE                         R52 K84 [{"internal", "external"}]
      473 LOADB                            R53 1
      474 SETTABLEKS                       R53 R52 K82 ["internal"]
      476 LOADB                            R53 1
      477 SETTABLEKS                       R53 R52 K83 ["external"]
      479 SETTABLE                         R52 R50 R51
      480 GETTABLEKS                       R51 R45 K103 ["MultiEdit"]
      482 DUPTABLE                         R52 K84 [{"internal", "external"}]
      483 LOADB                            R53 1
      484 SETTABLEKS                       R53 R52 K82 ["internal"]
      486 LOADB                            R53 1
      487 SETTABLEKS                       R53 R52 K83 ["external"]
      489 SETTABLE                         R52 R50 R51
      490 GETTABLEKS                       R51 R45 K104 ["PrimitiveGen"]
      492 DUPTABLE                         R52 K84 [{"internal", "external"}]
      493 LOADB                            R53 1
      494 SETTABLEKS                       R53 R52 K82 ["internal"]
      496 LOADB                            R53 1
      497 SETTABLEKS                       R53 R52 K83 ["external"]
      499 SETTABLE                         R52 R50 R51
      500 GETTABLEKS                       R51 R45 K105 ["QuestionAnswer"]
      502 DUPTABLE                         R52 K84 [{"internal", "external"}]
      503 LOADB                            R53 1
      504 SETTABLEKS                       R53 R52 K82 ["internal"]
      506 LOADB                            R53 0
      507 SETTABLEKS                       R53 R52 K83 ["external"]
      509 SETTABLE                         R52 R50 R51
      510 GETTABLEKS                       R51 R45 K106 ["ReadFile"]
      512 DUPTABLE                         R52 K84 [{"internal", "external"}]
      513 LOADB                            R53 1
      514 SETTABLEKS                       R53 R52 K82 ["internal"]
      516 LOADB                            R53 1
      517 SETTABLEKS                       R53 R52 K83 ["external"]
      519 SETTABLE                         R52 R50 R51
      520 GETTABLEKS                       R51 R45 K107 ["ScreenCapture"]
      522 DUPTABLE                         R52 K84 [{"internal", "external"}]
      523 LOADB                            R53 0
      524 SETTABLEKS                       R53 R52 K82 ["internal"]
      526 LOADB                            R53 1
      527 SETTABLEKS                       R53 R52 K83 ["external"]
      529 SETTABLE                         R52 R50 R51
      530 GETTABLEKS                       R51 R45 K108 ["Skill"]
      532 DUPTABLE                         R52 K84 [{"internal", "external"}]
      533 LOADB                            R53 1
      534 SETTABLEKS                       R53 R52 K82 ["internal"]
      536 LOADB                            R53 1
      537 SETTABLEKS                       R53 R52 K83 ["external"]
      539 SETTABLE                         R52 R50 R51
      540 GETTABLEKS                       R51 R45 K109 ["StartStopPlay"]
      542 DUPTABLE                         R52 K84 [{"internal", "external"}]
      543 LOADB                            R53 1
      544 SETTABLEKS                       R53 R52 K82 ["internal"]
      546 LOADB                            R53 1
      547 SETTABLEKS                       R53 R52 K83 ["external"]
      549 SETTABLE                         R52 R50 R51
      550 GETTABLEKS                       R51 R45 K110 ["GetStudioState"]
      552 DUPTABLE                         R52 K84 [{"internal", "external"}]
      553 LOADB                            R53 1
      554 SETTABLEKS                       R53 R52 K82 ["internal"]
      556 LOADB                            R53 1
      557 SETTABLEKS                       R53 R52 K83 ["external"]
      559 SETTABLE                         R52 R50 R51
      560 GETTABLEKS                       R51 R45 K111 ["StoreImage"]
      562 DUPTABLE                         R52 K84 [{"internal", "external"}]
      563 LOADB                            R53 1
      564 SETTABLEKS                       R53 R52 K82 ["internal"]
      566 LOADB                            R53 1
      567 SETTABLEKS                       R53 R52 K83 ["external"]
      569 SETTABLE                         R52 R50 R51
      570 GETTABLEKS                       R51 R45 K112 ["Subagent"]
      572 DUPTABLE                         R52 K84 [{"internal", "external"}]
      573 LOADB                            R53 1
      574 SETTABLEKS                       R53 R52 K82 ["internal"]
      576 LOADB                            R53 1
      577 SETTABLEKS                       R53 R52 K83 ["external"]
      579 SETTABLE                         R52 R50 R51
      580 GETTABLEKS                       R51 R45 K113 ["UploadImage"]
      582 DUPTABLE                         R52 K84 [{"internal", "external"}]
      583 LOADB                            R53 1
      584 SETTABLEKS                       R53 R52 K82 ["internal"]
      586 LOADB                            R53 1
      587 SETTABLEKS                       R53 R52 K83 ["external"]
      589 SETTABLE                         R52 R50 R51
      590 GETTABLEKS                       R51 R45 K114 ["UserKeyboardInput"]
      592 DUPTABLE                         R52 K84 [{"internal", "external"}]
      593 LOADB                            R53 1
      594 SETTABLEKS                       R53 R52 K82 ["internal"]
      596 LOADB                            R53 1
      597 SETTABLEKS                       R53 R52 K83 ["external"]
      599 SETTABLE                         R52 R50 R51
      600 GETTABLEKS                       R51 R45 K115 ["UserMouseInput"]
      602 DUPTABLE                         R52 K84 [{"internal", "external"}]
      603 LOADB                            R53 1
      604 SETTABLEKS                       R53 R52 K82 ["internal"]
      606 LOADB                            R53 1
      607 SETTABLEKS                       R53 R52 K83 ["external"]
      609 SETTABLE                         R52 R50 R51
      610 GETTABLEKS                       R51 R45 K116 ["WaitJobFinished"]
      612 DUPTABLE                         R52 K84 [{"internal", "external"}]
      613 LOADB                            R53 1
      614 SETTABLEKS                       R53 R52 K82 ["internal"]
      616 LOADB                            R53 1
      617 SETTABLEKS                       R53 R52 K83 ["external"]
      619 SETTABLE                         R52 R50 R51
      620 GETTABLEKS                       R51 R45 K117 ["StartMultiPlayerAgents"]
      622 DUPTABLE                         R52 K84 [{"internal", "external"}]
      623 LOADB                            R53 1
      624 SETTABLEKS                       R53 R52 K82 ["internal"]
      626 LOADB                            R53 1
      627 SETTABLEKS                       R53 R52 K83 ["external"]
      629 SETTABLE                         R52 R50 R51
      630 GETTABLEKS                       R51 R45 K118 ["StopMultiPlayerAgents"]
      632 DUPTABLE                         R52 K84 [{"internal", "external"}]
      633 LOADB                            R53 1
      634 SETTABLEKS                       R53 R52 K82 ["internal"]
      636 LOADB                            R53 1
      637 SETTABLEKS                       R53 R52 K83 ["external"]
      639 SETTABLE                         R52 R50 R51
      640 GETTABLEKS                       R51 R45 K119 ["MultiPlayerAgentsCommunication"]
      642 DUPTABLE                         R52 K84 [{"internal", "external"}]
      643 LOADB                            R53 1
      644 SETTABLEKS                       R53 R52 K82 ["internal"]
      646 LOADB                            R53 1
      647 SETTABLEKS                       R53 R52 K83 ["external"]
      649 SETTABLE                         R52 R50 R51
      650 GETTABLEKS                       R51 R45 K120 ["WaitForMultiPlayerAgentsCommunication"]
      652 DUPTABLE                         R52 K84 [{"internal", "external"}]
      653 LOADB                            R53 1
      654 SETTABLEKS                       R53 R52 K82 ["internal"]
      656 LOADB                            R53 1
      657 SETTABLEKS                       R53 R52 K83 ["external"]
      659 SETTABLE                         R52 R50 R51
      660 CALL                             R49 1 1
      661 LOADNIL                          R50
      662 NEWCLOSURE                       R51 P0
      663 CAPTURE                          REF R50
      664 DUPCLOSURE                       R52 K121 [PROTO_1]
      665 DUPCLOSURE                       R53 K122 [PROTO_2]
      666 DUPCLOSURE                       R54 K123 [PROTO_3]
      667 CAPTURE                          VAL R52
      668 DUPCLOSURE                       R55 K124 [PROTO_4]
      669 CAPTURE                          VAL R38
      670 CAPTURE                          VAL R49
      671 DUPCLOSURE                       R56 K125 [PROTO_5]
      672 CAPTURE                          VAL R38
      673 CAPTURE                          VAL R49
      674 DUPCLOSURE                       R57 K126 [PROTO_8]
      675 CAPTURE                          VAL R27
      676 CAPTURE                          VAL R8
      677 CAPTURE                          VAL R10
      678 CAPTURE                          VAL R7
      679 CAPTURE                          VAL R25
      680 CAPTURE                          VAL R38
      681 CAPTURE                          VAL R20
      682 CAPTURE                          VAL R12
      683 CAPTURE                          VAL R43
      684 CAPTURE                          VAL R46
      685 CAPTURE                          VAL R57
      686 DUPCLOSURE                       R58 K127 [PROTO_9]
      687 CAPTURE                          VAL R12
      688 CAPTURE                          VAL R26
      689 CAPTURE                          VAL R45
      690 DUPCLOSURE                       R59 K128 [PROTO_10]
      691 CAPTURE                          VAL R12
      692 DUPCLOSURE                       R60 K129 [PROTO_11]
      693 NEWCLOSURE                       R61 P10
      694 CAPTURE                          VAL R35
      695 CAPTURE                          VAL R48
      696 CAPTURE                          VAL R56
      697 CAPTURE                          VAL R38
      698 CAPTURE                          VAL R23
      699 CAPTURE                          VAL R11
      700 CAPTURE                          VAL R53
      701 CAPTURE                          VAL R21
      702 CAPTURE                          REF R50
      703 CAPTURE                          VAL R52
      704 CAPTURE                          VAL R19
      705 CAPTURE                          VAL R54
      706 CAPTURE                          VAL R16
      707 CAPTURE                          VAL R24
      708 CAPTURE                          VAL R45
      709 CAPTURE                          VAL R20
      710 CAPTURE                          VAL R58
      711 CAPTURE                          VAL R22
      712 CAPTURE                          VAL R59
      713 CAPTURE                          VAL R57
      714 CAPTURE                          VAL R13
      715 CAPTURE                          VAL R28
      716 SETGLOBAL                        R61 K130 ["getBuiltinServer"]
      718 DUPCLOSURE                       R61 K131 [PROTO_17]
      719 CAPTURE                          VAL R36
      720 SETGLOBAL                        R61 K132 ["startLocalServer"]
      722 DUPCLOSURE                       R61 K133 [PROTO_26]
      723 CAPTURE                          VAL R35
      724 CAPTURE                          VAL R48
      725 CAPTURE                          VAL R32
      726 CAPTURE                          VAL R40
      727 CAPTURE                          VAL R55
      728 CAPTURE                          VAL R22
      729 CAPTURE                          VAL R59
      730 CAPTURE                          VAL R20
      731 CAPTURE                          VAL R58
      732 CAPTURE                          VAL R1
      733 CAPTURE                          VAL R44
      734 CAPTURE                          VAL R18
      735 CAPTURE                          VAL R57
      736 CAPTURE                          VAL R17
      737 CAPTURE                          VAL R60
      738 CAPTURE                          VAL R36
      739 SETGLOBAL                        R61 K134 ["startExternalServer"]
      741 DUPCLOSURE                       R61 K135 [PROTO_27]
      742 CAPTURE                          VAL R33
      743 DUPCLOSURE                       R62 K136 [PROTO_29]
      744 CAPTURE                          VAL R29
      745 CAPTURE                          VAL R13
      746 CAPTURE                          VAL R41
      747 CAPTURE                          VAL R1
      748 DUPCLOSURE                       R63 K137 [PROTO_32]
      749 CAPTURE                          VAL R33
      750 CAPTURE                          VAL R34
      751 CAPTURE                          VAL R31
      752 CAPTURE                          VAL R9
      753 CAPTURE                          VAL R30
      754 CAPTURE                          VAL R14
      755 CAPTURE                          VAL R47
      756 CAPTURE                          VAL R40
      757 CAPTURE                          VAL R39
      758 CAPTURE                          VAL R15
      759 CAPTURE                          VAL R42
      760 CAPTURE                          VAL R37
      761 CAPTURE                          VAL R23
      762 CAPTURE                          VAL R4
      763 DUPTABLE                         R64 K142 [{"promiseMcpHost", "configureModelContextProtocol", "startLocalServer", "startExternalServer", "setToolEnabledStates", "TOOL_AVAILABILITY"}]
      764 SETTABLEKS                       R63 R64 K138 ["promiseMcpHost"]
      766 SETTABLEKS                       R62 R64 K139 ["configureModelContextProtocol"]
      768 GETGLOBAL                        R65 K132 ["startLocalServer"]
      770 SETTABLEKS                       R65 R64 K132 ["startLocalServer"]
      772 GETGLOBAL                        R65 K134 ["startExternalServer"]
      774 SETTABLEKS                       R65 R64 K134 ["startExternalServer"]
      776 SETTABLEKS                       R51 R64 K140 ["setToolEnabledStates"]
      778 SETTABLEKS                       R49 R64 K141 ["TOOL_AVAILABILITY"]
      780 CLOSEUPVALS                      R50
      781 RETURN                           R64 1
