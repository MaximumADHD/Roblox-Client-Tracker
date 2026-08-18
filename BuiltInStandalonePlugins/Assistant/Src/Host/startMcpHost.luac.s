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
      102 GETTABLEKS                       R17 R2 K25 ["Utils"]
      104 GETTABLEKS                       R17 R17 K31 ["Tools"]
      106 GETTABLEKS                       R18 R7 K19 ["Util"]
      108 GETTABLEKS                       R18 R18 K32 ["Logging"]
      110 GETTABLEKS                       R19 R7 K22 ["Types"]
      112 GETTABLEKS                       R20 R7 K33 ["MultiplexedClient"]
      114 GETTABLEKS                       R21 R7 K19 ["Util"]
      116 GETTABLEKS                       R21 R21 K34 ["Observable"]
      118 GETTABLEKS                       R22 R7 K35 ["PeerTransport"]
      120 GETTABLEKS                       R23 R7 K36 ["Promise"]
      122 GETTABLEKS                       R24 R7 K37 ["Server"]
      124 GETTABLEKS                       R25 R7 K38 ["ServerRegistry"]
      126 GETTABLEKS                       R26 R7 K39 ["StreamableHttpClient"]
      128 GETTABLEKS                       R26 R26 K40 ["StreamableHttpClientTransport"]
      130 GETTABLEKS                       R27 R7 K41 ["ToolRegistry"]
      132 GETTABLEKS                       R28 R2 K42 ["IntegrationManagement"]
      134 GETTABLEKS                       R28 R28 K43 ["IntegrationManager"]
      136 GETTABLEKS                       R29 R2 K44 ["Guest"]
      138 GETTABLEKS                       R29 R29 K45 ["Environment"]
      140 GETTABLEKS                       R30 R7 K39 ["StreamableHttpClient"]
      142 GETTABLEKS                       R30 R30 K46 ["StreamingClientFactory"]
      144 GETTABLEKS                       R31 R7 K47 ["HttpVariantClientTransport"]
      146 GETTABLEKS                       R31 R31 K47 ["HttpVariantClientTransport"]
      148 GETTABLEKS                       R32 R2 K25 ["Utils"]
      150 GETTABLEKS                       R32 R32 K48 ["MultiDataModelToolUtil"]
      152 GETTABLEKS                       R33 R2 K25 ["Utils"]
      154 GETTABLEKS                       R33 R33 K49 ["Time"]
      156 GETTABLEKS                       R34 R2 K31 ["Tools"]
      158 GETTABLEKS                       R34 R34 K50 ["ToolTypes"]
      160 GETTABLEKS                       R34 R34 K51 ["ToolNames"]
      162 GETTABLEKS                       R35 R3 K52 ["join"]
      164 DUPTABLE                         R36 K54 [{"capabilities"}]
      165 DUPTABLE                         R37 K58 [{"experimental", "roots", "sampling"}]
      166 GETTABLEKS                       R38 R19 K59 ["emptyObject"]
      168 CALL                             R38 0 1
      169 SETTABLEKS                       R38 R37 K55 ["experimental"]
      171 GETTABLEKS                       R38 R19 K59 ["emptyObject"]
      173 CALL                             R38 0 1
      174 SETTABLEKS                       R38 R37 K56 ["roots"]
      176 GETTABLEKS                       R38 R19 K59 ["emptyObject"]
      178 CALL                             R38 0 1
      179 SETTABLEKS                       R38 R37 K57 ["sampling"]
      181 SETTABLEKS                       R37 R36 K53 ["capabilities"]
      183 DUPTABLE                         R37 K54 [{"capabilities"}]
      184 DUPTABLE                         R38 K63 [{"prompts", "resources", "tools"}]
      185 GETTABLEKS                       R39 R19 K59 ["emptyObject"]
      187 CALL                             R39 0 1
      188 SETTABLEKS                       R39 R38 K60 ["prompts"]
      190 GETTABLEKS                       R39 R19 K59 ["emptyObject"]
      192 CALL                             R39 0 1
      193 SETTABLEKS                       R39 R38 K61 ["resources"]
      195 DUPTABLE                         R39 K66 [{["listChanged"] = True}]
      196 SETTABLEKS                       R39 R38 K62 ["tools"]
      198 SETTABLEKS                       R38 R37 K53 ["capabilities"]
      200 GETIMPORT                        R38 K69 [table.freeze]
      202 NEWTABLE                         R39 64 0
      204 GETTABLEKS                       R40 R34 K70 ["AnimationGen"]
      206 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      207 SETTABLE                         R41 R39 R40
      208 GETTABLEKS                       R40 R34 K74 ["AssetInsert"]
      210 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      211 SETTABLE                         R41 R39 R40
      212 GETTABLEKS                       R40 R34 K75 ["AssetSearch"]
      214 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      215 SETTABLE                         R41 R39 R40
      216 GETTABLEKS                       R40 R34 K76 ["AvatarAutoSetup"]
      218 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      219 SETTABLE                         R41 R39 R40
      220 GETTABLEKS                       R40 R34 K77 ["CharacterNavigation"]
      222 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      223 SETTABLE                         R41 R39 R40
      224 GETTABLEKS                       R40 R34 K78 ["CompleteTodoItems"]
      226 DUPTABLE                         R41 K80 [{["internal"] = True, ["external"] = False}]
      227 SETTABLE                         R41 R39 R40
      228 GETTABLEKS                       R40 R34 K81 ["CreateSkill"]
      230 DUPTABLE                         R41 K80 [{["internal"] = True, ["external"] = False}]
      231 SETTABLE                         R41 R39 R40
      232 GETTABLEKS                       R40 R34 K82 ["CreatorStoreInsert"]
      234 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      235 SETTABLE                         R41 R39 R40
      236 GETTABLEKS                       R40 R34 K83 ["CreatorStoreSearch"]
      238 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      239 SETTABLE                         R41 R39 R40
      240 GETTABLEKS                       R40 R34 K84 ["EditSkill"]
      242 DUPTABLE                         R41 K80 [{["internal"] = True, ["external"] = False}]
      243 SETTABLE                         R41 R39 R40
      244 GETTABLEKS                       R40 R34 K85 ["ExecuteLuau"]
      246 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      247 SETTABLE                         R41 R39 R40
      248 GETTABLEKS                       R40 R34 K86 ["FileSearch"]
      250 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      251 SETTABLE                         R41 R39 R40
      252 GETTABLEKS                       R40 R34 K87 ["FinalizePlan"]
      254 DUPTABLE                         R41 K80 [{["internal"] = True, ["external"] = False}]
      255 SETTABLE                         R41 R39 R40
      256 GETTABLEKS                       R40 R34 K88 ["FromHistory"]
      258 DUPTABLE                         R41 K80 [{["internal"] = True, ["external"] = False}]
      259 SETTABLE                         R41 R39 R40
      260 GETTABLEKS                       R40 R34 K89 ["GameTree"]
      262 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      263 SETTABLE                         R41 R39 R40
      264 GETTABLEKS                       R40 R34 K90 ["GetConsoleOutput"]
      266 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      267 SETTABLE                         R41 R39 R40
      268 GETTABLEKS                       R40 R34 K91 ["GetStudioState"]
      270 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      271 SETTABLE                         R41 R39 R40
      272 GETTABLEKS                       R40 R34 K92 ["GrepSearch"]
      274 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      275 SETTABLE                         R41 R39 R40
      276 GETTABLEKS                       R40 R34 K93 ["HttpGet"]
      278 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      279 SETTABLE                         R41 R39 R40
      280 GETTABLEKS                       R40 R34 K94 ["InspectInstance"]
      282 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      283 SETTABLE                         R41 R39 R40
      284 GETTABLEKS                       R40 R34 K95 ["JobRun"]
      286 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      287 SETTABLE                         R41 R39 R40
      288 GETTABLEKS                       R40 R34 K96 ["JobWait"]
      290 DUPTABLE                         R41 K97 [{["internal"] = True, ["external"]}]
      291 GETTABLEKS                       R43 R5 K98 ["FFlagAssistantSplitToolsAndWidgets"]
      293 NOT                              R42 R43
      294 SETTABLEKS                       R42 R41 K72 ["external"]
      296 SETTABLE                         R41 R39 R40
      297 GETTABLEKS                       R40 R34 K99 ["MaterialGen"]
      299 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      300 SETTABLE                         R41 R39 R40
      301 GETTABLEKS                       R40 R34 K100 ["MeshGen"]
      303 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      304 SETTABLE                         R41 R39 R40
      305 GETTABLEKS                       R40 R34 K101 ["MultiEdit"]
      307 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      308 SETTABLE                         R41 R39 R40
      309 GETTABLEKS                       R40 R34 K102 ["MultiPlayerAgentsCommunication"]
      311 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      312 SETTABLE                         R41 R39 R40
      313 GETTABLEKS                       R40 R34 K103 ["PlaytestLook"]
      315 DUPTABLE                         R41 K80 [{["internal"] = True, ["external"] = False}]
      316 SETTABLE                         R41 R39 R40
      317 GETTABLEKS                       R40 R34 K104 ["PrimitiveGen"]
      319 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      320 SETTABLE                         R41 R39 R40
      321 GETTABLEKS                       R40 R34 K105 ["QuestionAnswer"]
      323 DUPTABLE                         R41 K80 [{["internal"] = True, ["external"] = False}]
      324 SETTABLE                         R41 R39 R40
      325 GETTABLEKS                       R40 R34 K106 ["ReadFile"]
      327 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      328 SETTABLE                         R41 R39 R40
      329 GETTABLEKS                       R40 R34 K107 ["ScreenCapture"]
      331 DUPTABLE                         R41 K108 [{["internal"] = False, ["external"] = True}]
      332 SETTABLE                         R41 R39 R40
      333 GETTABLEKS                       R40 R34 K109 ["Skill"]
      335 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      336 SETTABLE                         R41 R39 R40
      337 GETTABLEKS                       R40 R34 K110 ["StartMultiPlayerAgents"]
      339 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      340 SETTABLE                         R41 R39 R40
      341 GETTABLEKS                       R40 R34 K111 ["StartStopPlay"]
      343 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      344 SETTABLE                         R41 R39 R40
      345 GETTABLEKS                       R40 R34 K112 ["StopMultiPlayerAgents"]
      347 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      348 SETTABLE                         R41 R39 R40
      349 GETTABLEKS                       R40 R34 K113 ["StoreImage"]
      351 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      352 SETTABLE                         R41 R39 R40
      353 GETTABLEKS                       R40 R34 K114 ["Subagent"]
      355 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      356 SETTABLE                         R41 R39 R40
      357 GETTABLEKS                       R40 R34 K115 ["UpdatePlan"]
      359 DUPTABLE                         R41 K80 [{["internal"] = True, ["external"] = False}]
      360 SETTABLE                         R41 R39 R40
      361 GETTABLEKS                       R40 R34 K116 ["UploadImage"]
      363 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      364 SETTABLE                         R41 R39 R40
      365 GETTABLEKS                       R40 R34 K117 ["UserKeyboardInput"]
      367 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      368 SETTABLE                         R41 R39 R40
      369 GETTABLEKS                       R40 R34 K118 ["UserMouseInput"]
      371 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      372 SETTABLE                         R41 R39 R40
      373 GETTABLEKS                       R40 R34 K119 ["VideoCapture"]
      375 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      376 SETTABLE                         R41 R39 R40
      377 GETTABLEKS                       R40 R34 K120 ["WaitForMultiPlayerAgentsCommunication"]
      379 DUPTABLE                         R41 K73 [{["internal"] = True, ["external"] = True}]
      380 SETTABLE                         R41 R39 R40
      381 GETTABLEKS                       R40 R34 K121 ["ListRobloxStudios"]
      383 DUPTABLE                         R41 K122 [{["internal"] = False, ["external"]}]
      384 GETTABLEKS                       R42 R5 K123 ["FFlagUseStudioSideListTool"]
      386 SETTABLEKS                       R42 R41 K72 ["external"]
      388 SETTABLE                         R41 R39 R40
      389 CALL                             R38 1 1
      390 LOADNIL                          R39
      391 NEWCLOSURE                       R40 P0
      392 CAPTURE                          REF R39
      393 DUPCLOSURE                       R41 K124 [PROTO_1]
      394 DUPCLOSURE                       R42 K125 [PROTO_2]
      395 DUPCLOSURE                       R43 K126 [PROTO_3]
      396 DUPCLOSURE                       R44 K127 [PROTO_4]
      397 DUPCLOSURE                       R45 K128 [PROTO_5]
      398 CAPTURE                          VAL R41
      399 DUPCLOSURE                       R46 K129 [PROTO_6]
      400 CAPTURE                          VAL R27
      401 CAPTURE                          VAL R38
      402 DUPCLOSURE                       R47 K130 [PROTO_7]
      403 CAPTURE                          VAL R27
      404 CAPTURE                          VAL R38
      405 DUPCLOSURE                       R48 K131 [PROTO_10]
      406 CAPTURE                          VAL R5
      407 CAPTURE                          VAL R8
      408 CAPTURE                          VAL R13
      409 CAPTURE                          VAL R12
      410 CAPTURE                          VAL R27
      411 CAPTURE                          VAL R16
      412 CAPTURE                          VAL R15
      413 CAPTURE                          VAL R32
      414 CAPTURE                          VAL R35
      415 CAPTURE                          VAL R48
      416 DUPCLOSURE                       R49 K132 [PROTO_11]
      417 CAPTURE                          VAL R15
      418 CAPTURE                          VAL R5
      419 CAPTURE                          VAL R29
      420 CAPTURE                          VAL R13
      421 CAPTURE                          VAL R34
      422 DUPCLOSURE                       R50 K133 [PROTO_12]
      423 CAPTURE                          VAL R34
      424 DUPCLOSURE                       R51 K134 [PROTO_13]
      425 CAPTURE                          VAL R23
      426 CAPTURE                          VAL R19
      427 DUPCLOSURE                       R52 K135 [PROTO_14]
      428 CAPTURE                          VAL R15
      429 DUPCLOSURE                       R53 K136 [PROTO_15]
      430 NEWCLOSURE                       R54 P14
      431 CAPTURE                          VAL R24
      432 CAPTURE                          VAL R37
      433 CAPTURE                          VAL R47
      434 CAPTURE                          VAL R27
      435 CAPTURE                          VAL R5
      436 CAPTURE                          VAL R14
      437 CAPTURE                          VAL R42
      438 CAPTURE                          REF R39
      439 CAPTURE                          VAL R9
      440 CAPTURE                          VAL R41
      441 CAPTURE                          VAL R45
      442 CAPTURE                          VAL R34
      443 CAPTURE                          VAL R16
      444 CAPTURE                          VAL R49
      445 CAPTURE                          VAL R52
      446 CAPTURE                          VAL R48
      447 CAPTURE                          VAL R17
      448 SETGLOBAL                        R54 K137 ["getBuiltinServer"]
      450 DUPCLOSURE                       R54 K138 [PROTO_21]
      451 CAPTURE                          VAL R25
      452 SETGLOBAL                        R54 K139 ["startLocalServer"]
      454 DUPCLOSURE                       R54 K140 [PROTO_30]
      455 CAPTURE                          VAL R24
      456 CAPTURE                          VAL R37
      457 CAPTURE                          VAL R21
      458 CAPTURE                          VAL R29
      459 CAPTURE                          VAL R46
      460 CAPTURE                          VAL R52
      461 CAPTURE                          VAL R16
      462 CAPTURE                          VAL R49
      463 CAPTURE                          VAL R5
      464 CAPTURE                          VAL R50
      465 CAPTURE                          VAL R51
      466 CAPTURE                          VAL R1
      467 CAPTURE                          VAL R33
      468 CAPTURE                          VAL R48
      469 CAPTURE                          VAL R53
      470 CAPTURE                          VAL R25
      471 SETGLOBAL                        R54 K141 ["startExternalServer"]
      473 DUPCLOSURE                       R54 K142 [PROTO_31]
      474 CAPTURE                          VAL R22
      475 DUPCLOSURE                       R55 K143 [PROTO_33]
      476 CAPTURE                          VAL R18
      477 CAPTURE                          VAL R5
      478 CAPTURE                          VAL R30
      479 CAPTURE                          VAL R1
      480 DUPCLOSURE                       R56 K144 [PROTO_36]
      481 CAPTURE                          VAL R22
      482 CAPTURE                          VAL R23
      483 CAPTURE                          VAL R20
      484 CAPTURE                          VAL R10
      485 CAPTURE                          VAL R19
      486 CAPTURE                          VAL R5
      487 CAPTURE                          VAL R11
      488 CAPTURE                          VAL R36
      489 CAPTURE                          VAL R29
      490 CAPTURE                          VAL R28
      491 CAPTURE                          VAL R31
      492 CAPTURE                          VAL R26
      493 CAPTURE                          VAL R4
      494 DUPTABLE                         R57 K153 [{["promiseMcpHost"], ["configureModelContextProtocol"], ["startLocalServer"], ["startExternalServer"], ["setToolEnabledStates"], ["TOOL_AVAILABILITY"], ["patchToolDefinitionWithStudioId"], ["resolveStudioIdToolCall"], ["STUDIO_SESSION_MISMATCH_CODE"] = -32010}]
      495 SETTABLEKS                       R56 R57 K145 ["promiseMcpHost"]
      497 SETTABLEKS                       R55 R57 K146 ["configureModelContextProtocol"]
      499 GETGLOBAL                        R58 K139 ["startLocalServer"]
      501 SETTABLEKS                       R58 R57 K139 ["startLocalServer"]
      503 GETGLOBAL                        R58 K141 ["startExternalServer"]
      505 SETTABLEKS                       R58 R57 K141 ["startExternalServer"]
      507 SETTABLEKS                       R40 R57 K147 ["setToolEnabledStates"]
      509 SETTABLEKS                       R38 R57 K148 ["TOOL_AVAILABILITY"]
      511 SETTABLEKS                       R50 R57 K149 ["patchToolDefinitionWithStudioId"]
      513 SETTABLEKS                       R51 R57 K150 ["resolveStudioIdToolCall"]
      515 CLOSEUPVALS                      R39
      516 RETURN                           R57 1
