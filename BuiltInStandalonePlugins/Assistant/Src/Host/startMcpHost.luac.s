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
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 GETIMPORT                        R3 K4 [table.move]
        6 MOVE                             R4 R1
        7 LOADN                            R5 1
        8 LENGTH                           R6 R1
        9 LENGTH                           R8 R2
       10 ADDK                             R7 R8 K5 [1]
       11 MOVE                             R8 R2
       12 CALL                             R3 5 0
       13 RETURN                           R2 1

PROTO_4:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 MOVE                             R3 R1
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETTABLE                         R8 R2 R7
        9 JUMPIFNOTEQKNIL                  R8 ; [+3]
       11 LOADB                            R8 1
       12 SETTABLE                         R8 R2 R7
       13 FORGLOOP                         R3 2 ; [-6]
       15 RETURN                           R2 1

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["checkAndGetTargetDataModel"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["args"]
        6 GETTABLEKS                       R1 R1 K2 ["datamodel_type"]
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 3
       10 CALL                             R0 3 -1
       11 RETURN                           R0 -1

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["name"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["ListRobloxStudios"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+2]
        7 RETURN                           R0 1
        8 GETIMPORT                        R1 K4 [table.clone]
       10 GETTABLEKS                       R2 R0 K5 ["inputSchema"]
       12 CALL                             R1 1 1
       13 GETTABLEKS                       R2 R1 K6 ["required"]
       15 JUMPIF                           R2 ; [+5]
       16 NEWTABLE                         R2 0 0
       18 SETTABLEKS                       R2 R1 K6 ["required"]
       20 JUMP                             ; [+7]
       21 GETIMPORT                        R2 K4 [table.clone]
       23 GETTABLEKS                       R3 R1 K6 ["required"]
       25 CALL                             R2 1 1
       26 SETTABLEKS                       R2 R1 K6 ["required"]
       28 GETTABLEKS                       R3 R1 K6 ["required"]
       30 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       32 LOADK                            R4 K7 ["Expected required to be present in input schema"]
       33 GETIMPORT                        R2 K9 [assert]
       35 CALL                             R2 2 0
       36 GETTABLEKS                       R3 R1 K6 ["required"]
       38 FASTCALL2K                       TABLE_INSERT R3 K10 ; [+4]
       40 LOADK                            R4 K10 ["studio_id"]
       41 GETIMPORT                        R2 K12 [table.insert]
       43 CALL                             R2 2 0
       44 GETTABLEKS                       R2 R1 K13 ["properties"]
       46 JUMPIF                           R2 ; [+5]
       47 NEWTABLE                         R2 0 0
       49 SETTABLEKS                       R2 R1 K13 ["properties"]
       51 JUMP                             ; [+7]
       52 GETIMPORT                        R2 K4 [table.clone]
       54 GETTABLEKS                       R3 R1 K13 ["properties"]
       56 CALL                             R2 1 1
       57 SETTABLEKS                       R2 R1 K13 ["properties"]
       59 GETTABLEKS                       R3 R1 K13 ["properties"]
       61 FASTCALL2K                       ASSERT R3 K14 ; [+4]
       63 LOADK                            R4 K14 ["Expected properties to be present in input schema"]
       64 GETIMPORT                        R2 K9 [assert]
       66 CALL                             R2 2 0
       67 GETTABLEKS                       R2 R1 K13 ["properties"]
       69 DUPTABLE                         R3 K19 [{["type"] = "string", ["description"] = "Selects Roblox Studio instance, use the list_roblox_studios tool to get available instances"}]
       70 SETTABLEKS                       R3 R2 K10 ["studio_id"]
       72 GETIMPORT                        R2 K4 [table.clone]
       74 MOVE                             R3 R0
       75 CALL                             R2 1 1
       76 SETTABLEKS                       R1 R2 K5 ["inputSchema"]
       78 RETURN                           R2 1

PROTO_13:
        0 JUMPIFEQKNIL                     R0 ; [+5]
        2 GETTABLEKS                       R2 R0 K0 ["studio_id"]
        4 JUMPIFNOTEQKNIL                  R2 ; [+4]
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 RETURN                           R2 2
        9 GETTABLEKS                       R2 R0 K0 ["studio_id"]
       11 JUMPIFEQ                         R2 R1 ; [+16]
       13 LOADNIL                          R2
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K1 ["reject"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K2 ["newMcpError"]
       20 LOADN                            R5 -32010
       21 LOADK                            R6 K3 ["Client proxy is out of date, restart to update"]
       22 DUPTABLE                         R7 K5 [{"studioSessionId"}]
       23 SETTABLEKS                       R1 R7 K4 ["studioSessionId"]
       25 CALL                             R4 3 -1
       26 CALL                             R3 -1 -1
       27 RETURN                           R2 -1
       28 GETIMPORT                        R2 K8 [table.clone]
       30 MOVE                             R3 R0
       31 CALL                             R2 1 1
       32 LOADNIL                          R3
       33 SETTABLEKS                       R3 R2 K0 ["studio_id"]
       35 MOVE                             R3 R2
       36 LOADNIL                          R4
       37 RETURN                           R3 2

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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
       40 JUMPIFNOT                        R2 ; [+35]
       41 GETTABLEKS                       R2 R0 K8 ["includeDisabledTools"]
       43 JUMPIF                           R2 ; [+32]
       44 GETUPVAL                         R2 5
       45 JUMPIFNOT                        R2 ; [+30]
       46 GETTABLEKS                       R3 R0 K9 ["isSubagent"]
       48 JUMPIFNOT                        R3 ; [+21]
       49 GETUPVAL                         R3 5
       50 GETUPVAL                         R4 6
       51 GETTABLEKS                       R4 R4 K10 ["SubagentOnlyTools"]
       53 GETIMPORT                        R5 K13 [table.clone]
       55 MOVE                             R6 R3
       56 CALL                             R5 1 1
       57 MOVE                             R6 R4
       58 LOADNIL                          R7
       59 LOADNIL                          R8
       60 FORGPREP                         R6
       61 GETTABLE                         R11 R5 R10
       62 JUMPIFNOTEQKNIL                  R11 ; [+3]
       64 LOADB                            R11 1
       65 SETTABLE                         R11 R5 R10
       66 FORGLOOP                         R6 2 ; [-6]
       68 MOVE                             R2 R5
       69 JUMP                             ; [+1]
       70 GETUPVAL                         R2 5
       71 GETUPVAL                         R3 7
       72 MOVE                             R4 R1
       73 MOVE                             R5 R2
       74 CALL                             R3 2 1
       75 MOVE                             R1 R3
       76 GETTABLEKS                       R2 R0 K14 ["assistantMode"]
       78 JUMPIFNOT                        R2 ; [+33]
       79 GETUPVAL                         R3 6
       80 GETTABLEKS                       R3 R3 K15 ["AssistantModeToolsAllowlist"]
       82 GETTABLEKS                       R4 R0 K14 ["assistantMode"]
       84 GETTABLE                         R2 R3 R4
       85 GETTABLEKS                       R3 R0 K9 ["isSubagent"]
       87 JUMPIFNOT                        R3 ; [+19]
       88 JUMPIFNOT                        R2 ; [+18]
       89 MOVE                             R3 R2
       90 GETUPVAL                         R4 6
       91 GETTABLEKS                       R4 R4 K10 ["SubagentOnlyTools"]
       93 GETIMPORT                        R5 K13 [table.clone]
       95 MOVE                             R6 R3
       96 CALL                             R5 1 1
       97 GETIMPORT                        R6 K17 [table.move]
       99 MOVE                             R7 R4
      100 LOADN                            R8 1
      101 LENGTH                           R9 R4
      102 LENGTH                           R11 R5
      103 ADDK                             R10 R11 K18 [1]
      104 MOVE                             R11 R5
      105 CALL                             R6 5 0
      106 MOVE                             R2 R5
      107 GETUPVAL                         R3 8
      108 MOVE                             R4 R1
      109 MOVE                             R5 R2
      110 CALL                             R3 2 1
      111 MOVE                             R1 R3
      112 GETUPVAL                         R2 2
      113 GETTABLEKS                       R2 R2 K19 ["FFlagAssistantMultiPlayerAgents"]
      115 JUMPIFNOT                        R2 ; [+27]
      116 GETTABLEKS                       R2 R0 K20 ["isMultiPlayerClientAgent"]
      118 JUMPIFNOT                        R2 ; [+24]
      119 GETUPVAL                         R2 8
      120 MOVE                             R3 R1
      121 GETUPVAL                         R4 6
      122 GETTABLEKS                       R4 R4 K21 ["MultiPlayerTestTools"]
      124 CALL                             R2 2 1
      125 MOVE                             R1 R2
      126 GETTABLEKS                       R2 R0 K22 ["isMultiPlayerClientAgentRunning"]
      128 JUMPIF                           R2 ; [+14]
      129 GETUPVAL                         R2 4
      130 MOVE                             R3 R1
      131 NEWTABLE                         R4 0 2
      133 GETUPVAL                         R5 9
      134 GETTABLEKS                       R5 R5 K23 ["MultiPlayerAgentsCommunication"]
      136 GETUPVAL                         R6 9
      137 GETTABLEKS                       R6 R6 K24 ["WaitForMultiPlayerAgentsCommunication"]
      139 SETLIST                          R4 R5 2 [1]
      141 CALL                             R2 2 1
      142 MOVE                             R1 R2
      143 GETUPVAL                         R2 10
      144 CALL                             R2 0 1
      145 JUMPIFNOT                        R2 ; [+18]
      146 NEWTABLE                         R2 0 0
      148 MOVE                             R3 R1
      149 LOADNIL                          R4
      150 LOADNIL                          R5
      151 FORGPREP                         R3
      152 GETUPVAL                         R10 11
      153 MOVE                             R11 R7
      154 CALL                             R10 1 1
      155 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
      157 MOVE                             R9 R2
      158 GETIMPORT                        R8 K26 [table.insert]
      160 CALL                             R8 2 0
      161 FORGLOOP                         R3 2 ; [-10]
      163 MOVE                             R1 R2
      164 GETUPVAL                         R2 12
      165 MOVE                             R3 R1
      166 DUPTABLE                         R4 K30 [{["internal"] = True, ["useScreenCaptureSubagent"]}]
      167 GETTABLEKS                       R6 R0 K2 ["useInternalToolDefinitions"]
      169 JUMPIFNOT                        R6 ; [+2]
      170 LOADB                            R5 1
      171 JUMP                             ; [+1]
      172 LOADB                            R5 0
      173 SETTABLEKS                       R5 R4 K29 ["useScreenCaptureSubagent"]
      175 CALL                             R2 2 0
      176 DUPTABLE                         R2 K1 [{"tools"}]
      177 SETTABLEKS                       R1 R2 K0 ["tools"]
      179 RETURN                           R2 1

PROTO_17:
        0 DUPTABLE                         R0 K1 [{"message"}]
        1 LOADK                            R2 K2 ["pong from "]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K3 ["_serverInfo"]
        5 GETTABLEKS                       R3 R3 K4 ["name"]
        7 CONCAT                           R1 R2 R3
        8 SETTABLEKS                       R1 R0 K0 ["message"]
       10 RETURN                           R0 1

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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
       27 GETUPVAL                         R1 4
       28 GETTABLEKS                       R1 R1 K7 ["FFlagAssistantMcpStudioIdRouting"]
       30 JUMPIFNOT                        R1 ; [+18]
       31 NEWTABLE                         R1 0 0
       33 MOVE                             R2 R0
       34 LOADNIL                          R3
       35 LOADNIL                          R4
       36 FORGPREP                         R2
       37 GETUPVAL                         R9 5
       38 MOVE                             R10 R6
       39 CALL                             R9 1 1
       40 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       42 MOVE                             R8 R1
       43 GETIMPORT                        R7 K6 [table.insert]
       45 CALL                             R7 2 0
       46 FORGLOOP                         R2 2 ; [-10]
       48 MOVE                             R0 R1
       49 DUPTABLE                         R1 K9 [{"tools"}]
       50 SETTABLEKS                       R0 R1 K8 ["tools"]
       52 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 RETURN                           R0 1

PROTO_26:
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
       45 GETTABLEKS                       R7 R7 K14 ["FFlagAssistantMcpStudioIdRouting"]
       47 JUMPIFNOT                        R7 ; [+13]
       48 GETUPVAL                         R7 2
       49 MOVE                             R8 R5
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R9 R9 K12 ["get"]
       53 CALL                             R9 0 1
       54 GETTABLEKS                       R9 R9 K15 ["getStudioSessionId"]
       56 CALL                             R9 0 -1
       57 CALL                             R7 -1 2
       58 JUMPIFNOT                        R8 ; [+1]
       59 RETURN                           R8 1
       60 MOVE                             R5 R7
       61 GETUPVAL                         R7 3
       62 LOADB                            R9 0
       63 NAMECALL                         R7 R7 K16 ["GenerateGUID"]
       65 CALL                             R7 2 1
       66 GETUPVAL                         R8 3
       67 LOADB                            R10 0
       68 NAMECALL                         R8 R8 K16 ["GenerateGUID"]
       70 CALL                             R8 2 1
       71 GETUPVAL                         R9 1
       72 GETTABLEKS                       R9 R9 K17 ["FFlagAssistantSplitToolsAndWidgets"]
       74 JUMPIFNOT                        R9 ; [+2]
       75 SETTABLEKS                       R8 R3 K18 ["toolId"]
       77 GETTABLEKS                       R9 R6 K19 ["logToolStarted"]
       79 DUPTABLE                         R10 K28 [{["messageGuid"], ["sessionId"], ["toolId"], ["toolName"], ["clientName"], ["isThirdPartyRequest"] = True, ["isSlashCommand"] = False, ["input"]}]
       80 SETTABLEKS                       R7 R10 K20 ["messageGuid"]
       82 GETUPVAL                         R12 4
       83 ORK                              R11 R12 K29 [""]
       84 SETTABLEKS                       R11 R10 K21 ["sessionId"]
       86 SETTABLEKS                       R8 R10 K18 ["toolId"]
       88 SETTABLEKS                       R4 R10 K22 ["toolName"]
       90 GETTABLEKS                       R11 R3 K30 ["client_name"]
       92 SETTABLEKS                       R11 R10 K23 ["clientName"]
       94 SETTABLEKS                       R5 R10 K27 ["input"]
       96 CALL                             R9 1 0
       97 GETUPVAL                         R9 5
       98 GETTABLEKS                       R9 R9 K31 ["getTimestampMilliseconds"]
      100 CALL                             R9 0 1
      101 LOADNIL                          R10
      102 GETUPVAL                         R11 1
      103 GETTABLEKS                       R11 R11 K32 ["FFlagSkipExternalToolsNoDebugMode"]
      105 JUMPIFNOT                        R11 ; [+13]
      106 GETUPVAL                         R11 6
      107 CALL                             R11 0 1
      108 JUMPIFNOT                        R11 ; [+10]
      109 DUPTABLE                         R11 K35 [{["isError"] = True, ["content"]}]
      110 NEWTABLE                         R12 0 1
      112 DUPTABLE                         R13 K39 [{["type"] = "text", ["text"] = "Tool calls are not allowed while in Play mode."}]
      113 SETLIST                          R12 R13 1 [1]
      115 SETTABLEKS                       R12 R11 K34 ["content"]
      117 MOVE                             R10 R11
      118 JUMP                             ; [+15]
      119 GETUPVAL                         R11 7
      120 DUPTABLE                         R12 K44 [{"name", "args", "meta", "extra", "listTools"}]
      121 SETTABLEKS                       R4 R12 K6 ["name"]
      123 SETTABLEKS                       R5 R12 K40 ["args"]
      125 SETTABLEKS                       R3 R12 K41 ["meta"]
      127 SETTABLEKS                       R1 R12 K42 ["extra"]
      129 GETUPVAL                         R13 8
      130 SETTABLEKS                       R13 R12 K43 ["listTools"]
      132 CALL                             R11 1 1
      133 MOVE                             R10 R11
      134 GETUPVAL                         R11 5
      135 GETTABLEKS                       R11 R11 K31 ["getTimestampMilliseconds"]
      137 CALL                             R11 0 1
      138 GETTABLEKS                       R12 R6 K45 ["logToolEnded"]
      140 DUPTABLE                         R13 K50 [{["messageGuid"], ["toolId"], ["toolName"], ["startTime"], ["startTimeAfterConfirmation"], ["endTime"], ["isError"], ["clientName"], ["isThirdPartyRequest"] = True, ["isSlashCommand"] = False, ["toolResultContent"]}]
      141 SETTABLEKS                       R7 R13 K20 ["messageGuid"]
      143 SETTABLEKS                       R8 R13 K18 ["toolId"]
      145 SETTABLEKS                       R4 R13 K22 ["toolName"]
      147 SETTABLEKS                       R9 R13 K46 ["startTime"]
      149 SETTABLEKS                       R9 R13 K47 ["startTimeAfterConfirmation"]
      151 SETTABLEKS                       R11 R13 K48 ["endTime"]
      153 GETTABLEKS                       R15 R10 K33 ["isError"]
      155 ORK                              R14 R15 K26 [False]
      156 SETTABLEKS                       R14 R13 K33 ["isError"]
      158 GETTABLEKS                       R14 R3 K30 ["client_name"]
      160 SETTABLEKS                       R14 R13 K23 ["clientName"]
      162 GETTABLEKS                       R14 R10 K34 ["content"]
      164 SETTABLEKS                       R14 R13 K49 ["toolResultContent"]
      166 CALL                             R12 1 0
      167 GETUPVAL                         R12 9
      168 MOVE                             R13 R10
      169 CALL                             R12 1 1
      170 MOVE                             R10 R12
      171 RETURN                           R10 1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isActive"]
        3 NAMECALL                         R0 R0 K1 ["get"]
        5 CALL                             R0 1 1
        6 JUMPIF                           R0 ; [+12]
        7 GETUPVAL                         R0 1
        8 LOADN                            R2 0
        9 NAMECALL                         R0 R0 K2 ["set"]
       11 CALL                             R0 2 0
       12 GETUPVAL                         R0 2
       13 NEWTABLE                         R2 0 0
       15 NAMECALL                         R0 R0 K2 ["set"]
       17 CALL                             R0 2 0
       18 JUMP                             ; [+46]
       19 GETUPVAL                         R0 3
       20 NAMECALL                         R0 R0 K3 ["ping"]
       22 CALL                             R0 1 1
       23 NAMECALL                         R0 R0 K4 ["await"]
       25 CALL                             R0 1 2
       26 JUMPIFNOT                        R0 ; [+27]
       27 JUMPIFNOT                        R1 ; [+26]
       28 GETTABLEKS                       R2 R1 K5 ["_meta"]
       30 JUMPIFNOT                        R2 ; [+23]
       31 GETTABLEKS                       R2 R1 K5 ["_meta"]
       33 GETTABLEKS                       R2 R2 K6 ["clients"]
       35 JUMPIFNOT                        R2 ; [+18]
       36 GETUPVAL                         R2 1
       37 GETTABLEKS                       R5 R1 K5 ["_meta"]
       39 GETTABLEKS                       R5 R5 K6 ["clients"]
       41 LENGTH                           R4 R5
       42 NAMECALL                         R2 R2 K2 ["set"]
       44 CALL                             R2 2 0
       45 GETUPVAL                         R2 2
       46 GETTABLEKS                       R4 R1 K5 ["_meta"]
       48 GETTABLEKS                       R4 R4 K6 ["clients"]
       50 NAMECALL                         R2 R2 K2 ["set"]
       52 CALL                             R2 2 0
       53 JUMP                             ; [+11]
       54 GETUPVAL                         R2 1
       55 LOADN                            R4 0
       56 NAMECALL                         R2 R2 K2 ["set"]
       58 CALL                             R2 2 0
       59 GETUPVAL                         R2 2
       60 NEWTABLE                         R4 0 0
       62 NAMECALL                         R2 R2 K2 ["set"]
       64 CALL                             R2 2 0
       65 GETIMPORT                        R0 K9 [task.wait]
       67 LOADN                            R1 5
       68 CALL                             R0 1 0
       69 JUMPBACK                         ; [-70]
       70 RETURN                           R0 0

PROTO_28:
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
       15 JUMPIF                           R2 ; [+9]
       16 GETIMPORT                        R2 K8 [task.spawn]
       18 NEWCLOSURE                       R3 P0
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U6
       23 CALL                             R2 1 1
       24 SETUPVAL                         R2 2
       25 RETURN                           R0 0

PROTO_29:
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

PROTO_30:
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
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R6 R6 K1 ["new"]
       18 NEWTABLE                         R7 0 0
       20 CALL                             R6 1 1
       21 LOADNIL                          R7
       22 DUPTABLE                         R10 K10 [{["method"] = "initialize"}]
       23 NEWCLOSURE                       R11 P0
       24 CAPTURE                          VAL R3
       25 CAPTURE                          UPVAL U3
       26 NAMECALL                         R8 R3 K11 ["setRequestHandler"]
       28 CALL                             R8 3 0
       29 DUPTABLE                         R10 K13 [{["method"] = "ping"}]
       30 NEWCLOSURE                       R11 P1
       31 CAPTURE                          VAL R3
       32 NAMECALL                         R8 R3 K11 ["setRequestHandler"]
       34 CALL                             R8 3 0
       35 DUPCLOSURE                       R8 K14 [PROTO_24]
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          UPVAL U7
       40 CAPTURE                          UPVAL U8
       41 CAPTURE                          UPVAL U9
       42 DUPTABLE                         R11 K16 [{["method"] = "tools/list"}]
       43 DUPCLOSURE                       R12 K17 [PROTO_25]
       44 CAPTURE                          VAL R8
       45 NAMECALL                         R9 R3 K11 ["setRequestHandler"]
       47 CALL                             R9 3 0
       48 DUPTABLE                         R11 K19 [{["method"] = "tools/call"}]
       49 NEWCLOSURE                       R12 P4
       50 CAPTURE                          UPVAL U3
       51 CAPTURE                          UPVAL U8
       52 CAPTURE                          UPVAL U10
       53 CAPTURE                          UPVAL U11
       54 CAPTURE                          VAL R4
       55 CAPTURE                          UPVAL U12
       56 CAPTURE                          VAL R1
       57 CAPTURE                          UPVAL U13
       58 CAPTURE                          VAL R8
       59 CAPTURE                          UPVAL U14
       60 NAMECALL                         R9 R3 K11 ["setRequestHandler"]
       62 CALL                             R9 3 0
       63 GETTABLEKS                       R9 R3 K20 ["onServerInitialized"]
       65 NEWCLOSURE                       R11 P5
       66 CAPTURE                          UPVAL U3
       67 CAPTURE                          VAL R4
       68 CAPTURE                          REF R7
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R3
       73 NAMECALL                         R9 R9 K21 ["Connect"]
       75 CALL                             R9 2 1
       76 GETUPVAL                         R10 15
       77 GETTABLEKS                       R10 R10 K22 ["registerServer"]
       79 MOVE                             R11 R3
       80 CALL                             R10 1 0
       81 DUPTABLE                         R10 K28 [{"promise", "server", "connectionCountObservable", "activeConnectionsObservable", "destructor"}]
       82 MOVE                             R13 R2
       83 NAMECALL                         R11 R3 K29 ["connect"]
       85 CALL                             R11 2 1
       86 SETTABLEKS                       R11 R10 K23 ["promise"]
       88 SETTABLEKS                       R3 R10 K24 ["server"]
       90 SETTABLEKS                       R5 R10 K25 ["connectionCountObservable"]
       92 SETTABLEKS                       R6 R10 K26 ["activeConnectionsObservable"]
       94 NEWCLOSURE                       R11 P6
       95 CAPTURE                          VAL R9
       96 CAPTURE                          REF R7
       97 SETTABLEKS                       R11 R10 K27 ["destructor"]
       99 CLOSEUPVALS                      R7
      100 RETURN                           R10 1

PROTO_31:
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

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R3 K3 [Enum.WebStreamClientType.RawStream]
        3 MOVE                             R4 R0
        4 NAMECALL                         R1 R1 K4 ["CreateWebStreamClientInternal"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        4 SETTABLEKS                       R1 R0 K1 ["ALL_LOGGING_ENABLED"]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K2 ["setStreamingClientCreationFunc"]
        9 DUPCLOSURE                       R1 K3 [PROTO_32]
       10 CAPTURE                          UPVAL U3
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseRemoteService"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["setMCPDestructing"]
        7 LOADB                            R1 1
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K2 ["FFlagMCPAssistantManagementMenu"]
       12 JUMPIFNOT                        R0 ; [+5]
       13 GETUPVAL                         R0 2
       14 NAMECALL                         R0 R0 K3 ["close"]
       16 CALL                             R0 1 0
       17 JUMP                             ; [+4]
       18 GETUPVAL                         R0 3
       19 NAMECALL                         R0 R0 K3 ["close"]
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 4
       23 NAMECALL                         R0 R0 K3 ["close"]
       25 CALL                             R0 1 0
       26 RETURN                           R0 0

PROTO_35:
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
       76 JUMPIF                           R2 ; [+29]
       77 GETUPVAL                         R4 0
       78 GETTABLEKS                       R4 R4 K16 ["FFlagAssistantUseRemoteService"]
       80 JUMPIFNOT                        R4 ; [+5]
       81 GETUPVAL                         R4 8
       82 GETTABLEKS                       R4 R4 K17 ["setMCPDestructing"]
       84 LOADB                            R5 1
       85 CALL                             R4 1 0
       86 GETUPVAL                         R4 0
       87 GETTABLEKS                       R4 R4 K0 ["FFlagMCPAssistantManagementMenu"]
       89 JUMPIFNOT                        R4 ; [+5]
       90 GETUPVAL                         R4 7
       91 NAMECALL                         R4 R4 K18 ["close"]
       93 CALL                             R4 1 0
       94 JUMP                             ; [+4]
       95 GETUPVAL                         R4 9
       96 NAMECALL                         R4 R4 K18 ["close"]
       98 CALL                             R4 1 0
       99 GETUPVAL                         R4 10
      100 NAMECALL                         R4 R4 K18 ["close"]
      102 CALL                             R4 1 0
      103 MOVE                             R4 R1
      104 MOVE                             R5 R3
      105 CALL                             R4 1 0
      106 GETUPVAL                         R4 0
      107 GETTABLEKS                       R4 R4 K19 ["FFlagAssistantEval"]
      109 JUMPIFNOT                        R4 ; [+5]
      110 GETUPVAL                         R4 11
      111 GETTABLEKS                       R4 R4 K20 ["setMcpClient"]
      113 GETUPVAL                         R5 7
      114 CALL                             R4 1 0
      115 MOVE                             R4 R0
      116 GETUPVAL                         R5 7
      117 CALL                             R4 1 0
      118 RETURN                           R0 0

PROTO_36:
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
       47 GETUPVAL                         R7 5
       48 GETTABLEKS                       R7 R7 K14 ["FFlagAssistantUseRemoteService"]
       50 JUMPIFNOT                        R7 ; [+5]
       51 GETUPVAL                         R7 6
       52 GETTABLEKS                       R7 R7 K15 ["setMCPDestructing"]
       54 LOADB                            R8 0
       55 CALL                             R7 1 0
       56 NEWCLOSURE                       R7 P0
       57 CAPTURE                          UPVAL U5
       58 CAPTURE                          UPVAL U6
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R3
       62 MOVE                             R10 R7
       63 NAMECALL                         R8 R0 K16 ["Connect"]
       65 CALL                             R8 2 0
       66 DUPTABLE                         R8 K21 [{["identifier"], ["transport"], ["clientOptions"], ["useStaticToolNames"] = True}]
       67 GETUPVAL                         R9 3
       68 GETTABLEKS                       R9 R9 K12 ["MCP_CLIENT_IDENTIFIER"]
       70 SETTABLEKS                       R9 R8 K17 ["identifier"]
       72 GETTABLEKS                       R9 R2 K5 ["transport"]
       74 SETTABLEKS                       R9 R8 K5 ["transport"]
       76 GETUPVAL                         R9 7
       77 SETTABLEKS                       R9 R8 K18 ["clientOptions"]
       79 MOVE                             R11 R8
       80 NAMECALL                         R9 R6 K22 ["addClient"]
       82 CALL                             R9 2 0
       83 GETUPVAL                         R9 1
       84 GETTABLEKS                       R9 R9 K0 ["new"]
       86 NEWCLOSURE                       R10 P1
       87 CAPTURE                          UPVAL U5
       88 CAPTURE                          UPVAL U8
       89 CAPTURE                          UPVAL U9
       90 CAPTURE                          VAL R1
       91 CAPTURE                          UPVAL U10
       92 CAPTURE                          UPVAL U11
       93 CAPTURE                          UPVAL U7
       94 CAPTURE                          VAL R6
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R3
       98 CAPTURE                          UPVAL U12
       99 CALL                             R9 1 -1
      100 RETURN                           R9 -1

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
       82 GETTABLEKS                       R11 R2 K23 ["ACPUtils"]
       84 GETTABLEKS                       R12 R7 K19 ["Util"]
       86 GETTABLEKS                       R12 R12 K24 ["ToolResult"]
       88 GETTABLEKS                       R13 R2 K25 ["Utils"]
       90 GETTABLEKS                       R13 R13 K26 ["DataModelType"]
       92 GETTABLEKS                       R14 R2 K25 ["Utils"]
       94 GETTABLEKS                       R14 R14 K27 ["EvalController"]
       96 GETTABLEKS                       R15 R2 K28 ["UIToolRegistry"]
       98 GETTABLEKS                       R16 R2 K29 ["FlagUtils"]
      100 GETTABLEKS                       R16 R16 K30 ["getIsAssistantBackgroundDataModelToolCall"]
      102 GETTABLEKS                       R17 R2 K29 ["FlagUtils"]
      104 GETTABLEKS                       R17 R17 K31 ["getIsAskInputToolLLMEnabled"]
      106 GETTABLEKS                       R18 R2 K25 ["Utils"]
      108 GETTABLEKS                       R18 R18 K32 ["Tools"]
      110 GETTABLEKS                       R19 R7 K19 ["Util"]
      112 GETTABLEKS                       R19 R19 K33 ["Logging"]
      114 GETTABLEKS                       R20 R7 K22 ["Types"]
      116 GETTABLEKS                       R21 R7 K34 ["MultiplexedClient"]
      118 GETTABLEKS                       R22 R7 K19 ["Util"]
      120 GETTABLEKS                       R22 R22 K35 ["Observable"]
      122 GETTABLEKS                       R23 R7 K36 ["PeerTransport"]
      124 GETTABLEKS                       R24 R7 K37 ["Promise"]
      126 GETTABLEKS                       R25 R7 K38 ["Server"]
      128 GETTABLEKS                       R26 R7 K39 ["ServerRegistry"]
      130 GETTABLEKS                       R27 R7 K40 ["StreamableHttpClient"]
      132 GETTABLEKS                       R27 R27 K41 ["StreamableHttpClientTransport"]
      134 GETTABLEKS                       R28 R7 K42 ["ToolRegistry"]
      136 GETTABLEKS                       R29 R2 K43 ["IntegrationManagement"]
      138 GETTABLEKS                       R29 R29 K44 ["IntegrationManager"]
      140 GETTABLEKS                       R30 R2 K45 ["Guest"]
      142 GETTABLEKS                       R30 R30 K46 ["Environment"]
      144 GETTABLEKS                       R31 R7 K40 ["StreamableHttpClient"]
      146 GETTABLEKS                       R31 R31 K47 ["StreamingClientFactory"]
      148 GETTABLEKS                       R32 R7 K48 ["HttpVariantClientTransport"]
      150 GETTABLEKS                       R32 R32 K48 ["HttpVariantClientTransport"]
      152 GETTABLEKS                       R33 R2 K25 ["Utils"]
      154 GETTABLEKS                       R33 R33 K49 ["MultiDataModelToolUtil"]
      156 GETTABLEKS                       R34 R2 K25 ["Utils"]
      158 GETTABLEKS                       R34 R34 K50 ["Time"]
      160 GETTABLEKS                       R35 R2 K32 ["Tools"]
      162 GETTABLEKS                       R35 R35 K51 ["ToolTypes"]
      164 GETTABLEKS                       R35 R35 K52 ["ToolNames"]
      166 GETTABLEKS                       R36 R3 K53 ["join"]
      168 DUPTABLE                         R37 K55 [{"capabilities"}]
      169 DUPTABLE                         R38 K59 [{"experimental", "roots", "sampling"}]
      170 GETTABLEKS                       R39 R20 K60 ["emptyObject"]
      172 CALL                             R39 0 1
      173 SETTABLEKS                       R39 R38 K56 ["experimental"]
      175 GETTABLEKS                       R39 R20 K60 ["emptyObject"]
      177 CALL                             R39 0 1
      178 SETTABLEKS                       R39 R38 K57 ["roots"]
      180 GETTABLEKS                       R39 R20 K60 ["emptyObject"]
      182 CALL                             R39 0 1
      183 SETTABLEKS                       R39 R38 K58 ["sampling"]
      185 SETTABLEKS                       R38 R37 K54 ["capabilities"]
      187 DUPTABLE                         R38 K55 [{"capabilities"}]
      188 DUPTABLE                         R39 K64 [{"prompts", "resources", "tools"}]
      189 GETTABLEKS                       R40 R20 K60 ["emptyObject"]
      191 CALL                             R40 0 1
      192 SETTABLEKS                       R40 R39 K61 ["prompts"]
      194 GETTABLEKS                       R40 R20 K60 ["emptyObject"]
      196 CALL                             R40 0 1
      197 SETTABLEKS                       R40 R39 K62 ["resources"]
      199 DUPTABLE                         R40 K67 [{["listChanged"] = True}]
      200 SETTABLEKS                       R40 R39 K63 ["tools"]
      202 SETTABLEKS                       R39 R38 K54 ["capabilities"]
      204 GETIMPORT                        R39 K70 [table.freeze]
      206 NEWTABLE                         R40 64 0
      208 GETTABLEKS                       R41 R35 K71 ["AnimationGen"]
      210 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      211 SETTABLE                         R42 R40 R41
      212 GETTABLEKS                       R41 R35 K75 ["AskInput"]
      214 DUPTABLE                         R42 K77 [{["internal"], ["external"] = False}]
      215 MOVE                             R43 R17
      216 CALL                             R43 0 1
      217 SETTABLEKS                       R43 R42 K72 ["internal"]
      219 SETTABLE                         R42 R40 R41
      220 GETTABLEKS                       R41 R35 K78 ["AssetInsert"]
      222 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      223 SETTABLE                         R42 R40 R41
      224 GETTABLEKS                       R41 R35 K79 ["AssetSearch"]
      226 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      227 SETTABLE                         R42 R40 R41
      228 GETTABLEKS                       R41 R35 K80 ["AvatarAutoSetup"]
      230 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      231 SETTABLE                         R42 R40 R41
      232 GETTABLEKS                       R41 R35 K81 ["CharacterNavigation"]
      234 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      235 SETTABLE                         R42 R40 R41
      236 GETTABLEKS                       R41 R35 K82 ["CompleteTodoItems"]
      238 DUPTABLE                         R42 K83 [{["internal"] = True, ["external"] = False}]
      239 SETTABLE                         R42 R40 R41
      240 GETTABLEKS                       R41 R35 K84 ["CreateSkill"]
      242 DUPTABLE                         R42 K83 [{["internal"] = True, ["external"] = False}]
      243 SETTABLE                         R42 R40 R41
      244 GETTABLEKS                       R41 R35 K85 ["CreatorStoreInsert"]
      246 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      247 SETTABLE                         R42 R40 R41
      248 GETTABLEKS                       R41 R35 K86 ["CreatorStoreSearch"]
      250 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      251 SETTABLE                         R42 R40 R41
      252 GETTABLEKS                       R41 R35 K87 ["EditSkill"]
      254 DUPTABLE                         R42 K83 [{["internal"] = True, ["external"] = False}]
      255 SETTABLE                         R42 R40 R41
      256 GETTABLEKS                       R41 R35 K88 ["ExecuteLuau"]
      258 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      259 SETTABLE                         R42 R40 R41
      260 GETTABLEKS                       R41 R35 K89 ["FileSearch"]
      262 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      263 SETTABLE                         R42 R40 R41
      264 GETTABLEKS                       R41 R35 K90 ["FinalizePlan"]
      266 DUPTABLE                         R42 K83 [{["internal"] = True, ["external"] = False}]
      267 SETTABLE                         R42 R40 R41
      268 GETTABLEKS                       R41 R35 K91 ["FromHistory"]
      270 DUPTABLE                         R42 K83 [{["internal"] = True, ["external"] = False}]
      271 SETTABLE                         R42 R40 R41
      272 GETTABLEKS                       R41 R35 K92 ["GameTree"]
      274 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      275 SETTABLE                         R42 R40 R41
      276 GETTABLEKS                       R41 R35 K93 ["GetConsoleOutput"]
      278 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      279 SETTABLE                         R42 R40 R41
      280 GETTABLEKS                       R41 R35 K94 ["GetStudioState"]
      282 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      283 SETTABLE                         R42 R40 R41
      284 GETTABLEKS                       R41 R35 K95 ["GrepSearch"]
      286 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      287 SETTABLE                         R42 R40 R41
      288 GETTABLEKS                       R41 R35 K96 ["HttpGet"]
      290 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      291 SETTABLE                         R42 R40 R41
      292 GETTABLEKS                       R41 R35 K97 ["InspectInstance"]
      294 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      295 SETTABLE                         R42 R40 R41
      296 GETTABLEKS                       R41 R35 K98 ["JobRun"]
      298 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      299 SETTABLE                         R42 R40 R41
      300 GETTABLEKS                       R41 R35 K99 ["JobWait"]
      302 DUPTABLE                         R42 K100 [{["internal"] = True, ["external"]}]
      303 GETTABLEKS                       R44 R5 K101 ["FFlagAssistantSplitToolsAndWidgets"]
      305 NOT                              R43 R44
      306 SETTABLEKS                       R43 R42 K73 ["external"]
      308 SETTABLE                         R42 R40 R41
      309 GETTABLEKS                       R41 R35 K102 ["MaterialGen"]
      311 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      312 SETTABLE                         R42 R40 R41
      313 GETTABLEKS                       R41 R35 K103 ["MeshGen"]
      315 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      316 SETTABLE                         R42 R40 R41
      317 GETTABLEKS                       R41 R35 K104 ["MultiEdit"]
      319 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      320 SETTABLE                         R42 R40 R41
      321 GETTABLEKS                       R41 R35 K105 ["MultiPlayerAgentsCommunication"]
      323 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      324 SETTABLE                         R42 R40 R41
      325 GETTABLEKS                       R41 R35 K106 ["PlaytestLook"]
      327 DUPTABLE                         R42 K83 [{["internal"] = True, ["external"] = False}]
      328 SETTABLE                         R42 R40 R41
      329 GETTABLEKS                       R41 R35 K107 ["PrimitiveGen"]
      331 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      332 SETTABLE                         R42 R40 R41
      333 GETTABLEKS                       R41 R35 K108 ["QuestionAnswer"]
      335 DUPTABLE                         R42 K83 [{["internal"] = True, ["external"] = False}]
      336 SETTABLE                         R42 R40 R41
      337 GETTABLEKS                       R41 R35 K109 ["ReadFile"]
      339 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      340 SETTABLE                         R42 R40 R41
      341 GETTABLEKS                       R41 R35 K110 ["ScreenCapture"]
      343 DUPTABLE                         R42 K111 [{["internal"] = False, ["external"] = True}]
      344 SETTABLE                         R42 R40 R41
      345 GETTABLEKS                       R41 R35 K112 ["SegmentMesh"]
      347 DUPTABLE                         R42 K113 [{"internal", "external"}]
      348 GETTABLEKS                       R43 R5 K114 ["FFlagAssistantSegmentMeshTool"]
      350 SETTABLEKS                       R43 R42 K72 ["internal"]
      352 GETTABLEKS                       R43 R5 K114 ["FFlagAssistantSegmentMeshTool"]
      354 SETTABLEKS                       R43 R42 K73 ["external"]
      356 SETTABLE                         R42 R40 R41
      357 GETTABLEKS                       R41 R35 K115 ["Skill"]
      359 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      360 SETTABLE                         R42 R40 R41
      361 GETTABLEKS                       R41 R35 K116 ["StartMultiPlayerAgents"]
      363 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      364 SETTABLE                         R42 R40 R41
      365 GETTABLEKS                       R41 R35 K117 ["StartStopPlay"]
      367 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      368 SETTABLE                         R42 R40 R41
      369 GETTABLEKS                       R41 R35 K118 ["StopMultiPlayerAgents"]
      371 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      372 SETTABLE                         R42 R40 R41
      373 GETTABLEKS                       R41 R35 K119 ["StoreImage"]
      375 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      376 SETTABLE                         R42 R40 R41
      377 GETTABLEKS                       R41 R35 K120 ["Subagent"]
      379 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      380 SETTABLE                         R42 R40 R41
      381 GETTABLEKS                       R41 R35 K121 ["TextureGen"]
      383 DUPTABLE                         R42 K113 [{"internal", "external"}]
      384 GETTABLEKS                       R43 R5 K122 ["FFlagAssistantTextureGenTool"]
      386 SETTABLEKS                       R43 R42 K72 ["internal"]
      388 GETTABLEKS                       R43 R5 K122 ["FFlagAssistantTextureGenTool"]
      390 SETTABLEKS                       R43 R42 K73 ["external"]
      392 SETTABLE                         R42 R40 R41
      393 GETTABLEKS                       R41 R35 K123 ["UpdatePlan"]
      395 DUPTABLE                         R42 K83 [{["internal"] = True, ["external"] = False}]
      396 SETTABLE                         R42 R40 R41
      397 GETTABLEKS                       R41 R35 K124 ["UploadImage"]
      399 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      400 SETTABLE                         R42 R40 R41
      401 GETTABLEKS                       R41 R35 K125 ["UserKeyboardInput"]
      403 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      404 SETTABLE                         R42 R40 R41
      405 GETTABLEKS                       R41 R35 K126 ["UserMouseInput"]
      407 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      408 SETTABLE                         R42 R40 R41
      409 GETTABLEKS                       R41 R35 K127 ["VideoCapture"]
      411 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      412 SETTABLE                         R42 R40 R41
      413 GETTABLEKS                       R41 R35 K128 ["WaitForMultiPlayerAgentsCommunication"]
      415 DUPTABLE                         R42 K74 [{["internal"] = True, ["external"] = True}]
      416 SETTABLE                         R42 R40 R41
      417 GETTABLEKS                       R41 R35 K129 ["ListRobloxStudios"]
      419 DUPTABLE                         R42 K130 [{["internal"] = False, ["external"]}]
      420 GETTABLEKS                       R43 R5 K131 ["FFlagUseStudioSideListTool"]
      422 SETTABLEKS                       R43 R42 K73 ["external"]
      424 SETTABLE                         R42 R40 R41
      425 CALL                             R39 1 1
      426 LOADNIL                          R40
      427 NEWCLOSURE                       R41 P0
      428 CAPTURE                          REF R40
      429 DUPCLOSURE                       R42 K132 [PROTO_1]
      430 DUPCLOSURE                       R43 K133 [PROTO_2]
      431 DUPCLOSURE                       R44 K134 [PROTO_3]
      432 DUPCLOSURE                       R45 K135 [PROTO_4]
      433 DUPCLOSURE                       R46 K136 [PROTO_5]
      434 CAPTURE                          VAL R42
      435 DUPCLOSURE                       R47 K137 [PROTO_6]
      436 CAPTURE                          VAL R28
      437 CAPTURE                          VAL R39
      438 DUPCLOSURE                       R48 K138 [PROTO_7]
      439 CAPTURE                          VAL R28
      440 CAPTURE                          VAL R39
      441 DUPCLOSURE                       R49 K139 [PROTO_10]
      442 CAPTURE                          VAL R5
      443 CAPTURE                          VAL R8
      444 CAPTURE                          VAL R13
      445 CAPTURE                          VAL R12
      446 CAPTURE                          VAL R28
      447 CAPTURE                          VAL R16
      448 CAPTURE                          VAL R15
      449 CAPTURE                          VAL R33
      450 CAPTURE                          VAL R36
      451 CAPTURE                          VAL R49
      452 DUPCLOSURE                       R50 K140 [PROTO_11]
      453 CAPTURE                          VAL R15
      454 CAPTURE                          VAL R5
      455 CAPTURE                          VAL R30
      456 CAPTURE                          VAL R13
      457 CAPTURE                          VAL R35
      458 DUPCLOSURE                       R51 K141 [PROTO_12]
      459 CAPTURE                          VAL R35
      460 DUPCLOSURE                       R52 K142 [PROTO_13]
      461 CAPTURE                          VAL R24
      462 CAPTURE                          VAL R20
      463 DUPCLOSURE                       R53 K143 [PROTO_14]
      464 CAPTURE                          VAL R15
      465 DUPCLOSURE                       R54 K144 [PROTO_15]
      466 NEWCLOSURE                       R55 P14
      467 CAPTURE                          VAL R25
      468 CAPTURE                          VAL R38
      469 CAPTURE                          VAL R48
      470 CAPTURE                          VAL R28
      471 CAPTURE                          VAL R5
      472 CAPTURE                          VAL R14
      473 CAPTURE                          VAL R43
      474 CAPTURE                          REF R40
      475 CAPTURE                          VAL R9
      476 CAPTURE                          VAL R42
      477 CAPTURE                          VAL R46
      478 CAPTURE                          VAL R35
      479 CAPTURE                          VAL R16
      480 CAPTURE                          VAL R50
      481 CAPTURE                          VAL R53
      482 CAPTURE                          VAL R49
      483 CAPTURE                          VAL R18
      484 SETGLOBAL                        R55 K145 ["getBuiltinServer"]
      486 DUPCLOSURE                       R55 K146 [PROTO_21]
      487 CAPTURE                          VAL R26
      488 SETGLOBAL                        R55 K147 ["startLocalServer"]
      490 DUPCLOSURE                       R55 K148 [PROTO_30]
      491 CAPTURE                          VAL R25
      492 CAPTURE                          VAL R38
      493 CAPTURE                          VAL R22
      494 CAPTURE                          VAL R30
      495 CAPTURE                          VAL R47
      496 CAPTURE                          VAL R53
      497 CAPTURE                          VAL R16
      498 CAPTURE                          VAL R50
      499 CAPTURE                          VAL R5
      500 CAPTURE                          VAL R51
      501 CAPTURE                          VAL R52
      502 CAPTURE                          VAL R1
      503 CAPTURE                          VAL R34
      504 CAPTURE                          VAL R49
      505 CAPTURE                          VAL R54
      506 CAPTURE                          VAL R26
      507 SETGLOBAL                        R55 K149 ["startExternalServer"]
      509 DUPCLOSURE                       R55 K150 [PROTO_31]
      510 CAPTURE                          VAL R23
      511 DUPCLOSURE                       R56 K151 [PROTO_33]
      512 CAPTURE                          VAL R19
      513 CAPTURE                          VAL R5
      514 CAPTURE                          VAL R31
      515 CAPTURE                          VAL R1
      516 DUPCLOSURE                       R57 K152 [PROTO_36]
      517 CAPTURE                          VAL R23
      518 CAPTURE                          VAL R24
      519 CAPTURE                          VAL R21
      520 CAPTURE                          VAL R10
      521 CAPTURE                          VAL R20
      522 CAPTURE                          VAL R5
      523 CAPTURE                          VAL R11
      524 CAPTURE                          VAL R37
      525 CAPTURE                          VAL R30
      526 CAPTURE                          VAL R29
      527 CAPTURE                          VAL R32
      528 CAPTURE                          VAL R27
      529 CAPTURE                          VAL R4
      530 DUPTABLE                         R58 K161 [{["promiseMcpHost"], ["configureModelContextProtocol"], ["startLocalServer"], ["startExternalServer"], ["setToolEnabledStates"], ["TOOL_AVAILABILITY"], ["patchToolDefinitionWithStudioId"], ["resolveStudioIdToolCall"], ["STUDIO_SESSION_MISMATCH_CODE"] = -32010}]
      531 SETTABLEKS                       R57 R58 K153 ["promiseMcpHost"]
      533 SETTABLEKS                       R56 R58 K154 ["configureModelContextProtocol"]
      535 GETGLOBAL                        R59 K147 ["startLocalServer"]
      537 SETTABLEKS                       R59 R58 K147 ["startLocalServer"]
      539 GETGLOBAL                        R59 K149 ["startExternalServer"]
      541 SETTABLEKS                       R59 R58 K149 ["startExternalServer"]
      543 SETTABLEKS                       R41 R58 K155 ["setToolEnabledStates"]
      545 SETTABLEKS                       R39 R58 K156 ["TOOL_AVAILABILITY"]
      547 SETTABLEKS                       R51 R58 K157 ["patchToolDefinitionWithStudioId"]
      549 SETTABLEKS                       R52 R58 K158 ["resolveStudioIdToolCall"]
      551 CLOSEUPVALS                      R40
      552 RETURN                           R58 1
