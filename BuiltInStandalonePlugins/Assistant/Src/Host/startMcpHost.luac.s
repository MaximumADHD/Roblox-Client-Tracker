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
       29 GETIMPORT                        R1 K9 [pcall]
       31 GETUPVAL                         R2 4
       32 GETTABLEKS                       R2 R2 K10 ["getHandler"]
       34 GETTABLEKS                       R3 R0 K11 ["name"]
       36 CALL                             R1 2 2
       37 JUMPIF                           R1 ; [+31]
       38 GETIMPORT                        R3 K13 [warn]
       40 LOADK                            R4 K14 ["[startMcpHost] Failed to get handler for tool:"]
       41 GETTABLEKS                       R5 R0 K11 ["name"]
       43 LOADK                            R6 K15 [":"]
       44 FASTCALL1                        TOSTRING R2 ; [+3]
       45 MOVE                             R8 R2
       46 GETIMPORT                        R7 K17 [tostring]
       48 CALL                             R7 1 1
       49 CALL                             R3 4 0
       50 GETUPVAL                         R3 3
       51 CALL                             R3 0 1
       52 LOADK                            R5 K18 ["Tool handler not found: %*"]
       53 GETTABLEKS                       R7 R0 K11 ["name"]
       55 NAMECALL                         R5 R5 K19 ["format"]
       57 CALL                             R5 2 1
       58 NAMECALL                         R3 R3 K5 ["addText"]
       60 CALL                             R3 2 1
       61 LOADB                            R5 1
       62 NAMECALL                         R3 R3 K6 ["setError"]
       64 CALL                             R3 2 1
       65 NAMECALL                         R3 R3 K7 ["build"]
       67 CALL                             R3 1 -1
       68 RETURN                           R3 -1
       69 GETTABLEKS                       R3 R0 K20 ["meta"]
       71 GETUPVAL                         R4 5
       72 GETTABLEKS                       R4 R4 K21 ["getToolAvailableDataModelTypes"]
       74 GETTABLEKS                       R5 R0 K11 ["name"]
       76 CALL                             R4 1 1
       77 GETIMPORT                        R5 K9 [pcall]
       79 NEWCLOSURE                       R6 P0
       80 CAPTURE                          UPVAL U6
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R4
       83 CAPTURE                          REF R3
       84 CALL                             R5 1 2
       85 JUMPIF                           R5 ; [+19]
       86 GETUPVAL                         R7 3
       87 CALL                             R7 0 1
       88 FASTCALL1                        TOSTRING R6 ; [+3]
       89 MOVE                             R10 R6
       90 GETIMPORT                        R9 K17 [tostring]
       92 CALL                             R9 1 1
       93 NAMECALL                         R7 R7 K5 ["addText"]
       95 CALL                             R7 2 1
       96 LOADB                            R9 1
       97 NAMECALL                         R7 R7 K6 ["setError"]
       99 CALL                             R7 2 1
      100 NAMECALL                         R7 R7 K7 ["build"]
      102 CALL                             R7 1 -1
      103 CLOSEUPVALS                      R3
      104 RETURN                           R7 -1
      105 MOVE                             R7 R3
      106 JUMPIF                           R7 ; [+2]
      107 NEWTABLE                         R7 0 0
      109 SETTABLEKS                       R6 R7 K22 ["targetDataModel"]
      111 MOVE                             R3 R7
      112 GETUPVAL                         R8 7
      113 GETTABLEKS                       R9 R0 K23 ["extra"]
      115 DUPTABLE                         R10 K26 [{"listTools", "callTool"}]
      116 GETTABLEKS                       R11 R0 K24 ["listTools"]
      118 SETTABLEKS                       R11 R10 K24 ["listTools"]
      120 NEWCLOSURE                       R11 P1
      121 CAPTURE                          UPVAL U8
      122 CAPTURE                          UPVAL U7
      123 CAPTURE                          VAL R0
      124 SETTABLEKS                       R11 R10 K25 ["callTool"]
      126 CALL                             R8 2 1
      127 GETUPVAL                         R9 9
      128 GETTABLEKS                       R9 R9 K27 ["tryRunAsync"]
      130 DUPTABLE                         R10 K31 [{"toolName", "handler", "args", "meta", "extra"}]
      131 GETTABLEKS                       R11 R0 K11 ["name"]
      133 SETTABLEKS                       R11 R10 K28 ["toolName"]
      135 SETTABLEKS                       R2 R10 K29 ["handler"]
      137 GETTABLEKS                       R11 R0 K30 ["args"]
      139 SETTABLEKS                       R11 R10 K30 ["args"]
      141 SETTABLEKS                       R3 R10 K20 ["meta"]
      143 SETTABLEKS                       R8 R10 K23 ["extra"]
      145 CALL                             R9 1 1
      146 JUMPIFNOT                        R9 ; [+2]
      147 CLOSEUPVALS                      R3
      148 RETURN                           R9 1
      149 GETIMPORT                        R10 K9 [pcall]
      151 MOVE                             R11 R2
      152 GETTABLEKS                       R12 R0 K30 ["args"]
      154 MOVE                             R13 R3
      155 MOVE                             R14 R8
      156 CALL                             R10 4 2
      157 JUMPIF                           R10 ; [+31]
      158 GETIMPORT                        R12 K13 [warn]
      160 LOADK                            R13 K32 ["[startMcpHost] Tool handler error for"]
      161 GETTABLEKS                       R14 R0 K11 ["name"]
      163 LOADK                            R15 K15 [":"]
      164 FASTCALL1                        TOSTRING R11 ; [+3]
      165 MOVE                             R17 R11
      166 GETIMPORT                        R16 K17 [tostring]
      168 CALL                             R16 1 1
      169 CALL                             R12 4 0
      170 GETUPVAL                         R12 3
      171 CALL                             R12 0 1
      172 FASTCALL1                        TOSTRING R11 ; [+3]
      173 MOVE                             R15 R11
      174 GETIMPORT                        R14 K17 [tostring]
      176 CALL                             R14 1 1
      177 NAMECALL                         R12 R12 K5 ["addText"]
      179 CALL                             R12 2 1
      180 LOADB                            R14 1
      181 NAMECALL                         R12 R12 K6 ["setError"]
      183 CALL                             R12 2 1
      184 NAMECALL                         R12 R12 K7 ["build"]
      186 CALL                             R12 1 -1
      187 CLOSEUPVALS                      R3
      188 RETURN                           R12 -1
      189 CLOSEUPVALS                      R3
      190 RETURN                           R11 1

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
       53 GETUPVAL                         R4 4
       54 MOVE                             R5 R0
       55 DUPTABLE                         R6 K15 [{[1] = "datamodel_type", ["required"] = True, ["schema"]}]
       56 DUPTABLE                         R7 K20 [{["type"] = "string", ["enum"], ["description"]}]
       57 SETTABLEKS                       R3 R7 K18 ["enum"]
       59 LOADK                            R8 K21 ["The target datamodel to operate on, the tool can only be performed in those datamodel types. call %* to get current available datamodel types. if the target datamodel is not available in current mode, consider using %* to switch to the desired mode and then use the tools. This is a required argument."]
       60 GETUPVAL                         R10 5
       61 GETTABLEKS                       R10 R10 K22 ["GetStudioState"]
       63 GETUPVAL                         R11 5
       64 GETTABLEKS                       R11 R11 K23 ["StartStopPlay"]
       66 NAMECALL                         R8 R8 K24 ["format"]
       68 CALL                             R8 3 1
       69 SETTABLEKS                       R8 R7 K19 ["description"]
       71 SETTABLEKS                       R7 R6 K14 ["schema"]
       73 CALL                             R4 2 -1
       74 RETURN                           R4 -1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["name"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["ListRobloxStudios"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+2]
        7 RETURN                           R0 1
        8 GETUPVAL                         R1 1
        9 MOVE                             R2 R0
       10 DUPTABLE                         R3 K6 [{[1] = "studio_id", ["required"] = True, ["schema"]}]
       11 DUPTABLE                         R4 K10 [{["type"] = "string", ["description"]}]
       12 LOADK                            R5 K11 ["Selects Roblox Studio instance, use the %* tool to get available instances"]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K1 ["ListRobloxStudios"]
       16 NAMECALL                         R5 R5 K12 ["format"]
       18 CALL                             R5 2 1
       19 SETTABLEKS                       R5 R4 K9 ["description"]
       21 SETTABLEKS                       R4 R3 K5 ["schema"]
       23 CALL                             R1 2 -1
       24 RETURN                           R1 -1

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
      143 NEWTABLE                         R2 0 0
      145 MOVE                             R3 R1
      146 LOADNIL                          R4
      147 LOADNIL                          R5
      148 FORGPREP                         R3
      149 GETUPVAL                         R8 10
      150 MOVE                             R9 R7
      151 CALL                             R8 1 1
      152 GETUPVAL                         R9 11
      153 GETTABLEKS                       R9 R9 K25 ["patchDefinitionWithAsyncArg"]
      155 MOVE                             R10 R8
      156 CALL                             R9 1 1
      157 MOVE                             R8 R9
      158 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
      160 MOVE                             R10 R2
      161 MOVE                             R11 R8
      162 GETIMPORT                        R9 K27 [table.insert]
      164 CALL                             R9 2 0
      165 FORGLOOP                         R3 2 ; [-17]
      167 MOVE                             R1 R2
      168 GETUPVAL                         R3 12
      169 MOVE                             R4 R1
      170 DUPTABLE                         R5 K31 [{["internal"] = True, ["useScreenCaptureSubagent"]}]
      171 GETTABLEKS                       R7 R0 K2 ["useInternalToolDefinitions"]
      173 JUMPIFNOT                        R7 ; [+2]
      174 LOADB                            R6 1
      175 JUMP                             ; [+1]
      176 LOADB                            R6 0
      177 SETTABLEKS                       R6 R5 K30 ["useScreenCaptureSubagent"]
      179 CALL                             R3 2 0
      180 DUPTABLE                         R3 K1 [{"tools"}]
      181 SETTABLEKS                       R1 R3 K0 ["tools"]
      183 RETURN                           R3 1

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
       49 JUMPIFNOT                        R5 ; [+33]
       50 GETIMPORT                        R5 K18 [print]
       52 LOADK                            R6 K19 ["TOOL CALL FINISHED: %*"]
       53 MOVE                             R8 R3
       54 NAMECALL                         R6 R6 K20 ["format"]
       56 CALL                             R6 2 1
       57 CALL                             R5 1 0
       58 GETIMPORT                        R5 K18 [print]
       60 LOADK                            R6 K21 ["Args: %*"]
       61 GETUPVAL                         R8 3
       62 GETTABLEKS                       R8 R8 K22 ["toString"]
       64 GETTABLEKS                       R9 R2 K14 ["arguments"]
       66 CALL                             R8 1 1
       67 NAMECALL                         R6 R6 K20 ["format"]
       69 CALL                             R6 2 1
       70 CALL                             R5 1 0
       71 GETIMPORT                        R5 K18 [print]
       73 LOADK                            R6 K23 ["Result: %*"]
       74 GETUPVAL                         R8 3
       75 GETTABLEKS                       R8 R8 K22 ["toString"]
       77 MOVE                             R9 R4
       78 CALL                             R8 1 1
       79 NAMECALL                         R6 R6 K20 ["format"]
       81 CALL                             R6 2 1
       82 CALL                             R5 1 0
       83 RETURN                           R4 1

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
        1 LOADK                            R1 K2 ["pong from %*"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K3 ["_serverInfo"]
        5 GETTABLEKS                       R3 R3 K4 ["name"]
        7 NAMECALL                         R1 R1 K5 ["format"]
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K0 ["message"]
       12 RETURN                           R0 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K3 [{[1] = False, ["useScreenCaptureSubagent"] = False}]
        5 CALL                             R1 2 0
        6 NEWTABLE                         R1 0 0
        8 MOVE                             R2 R0
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETUPVAL                         R7 2
       13 MOVE                             R8 R6
       14 CALL                             R7 1 1
       15 GETUPVAL                         R8 3
       16 GETTABLEKS                       R8 R8 K4 ["patchDefinitionWithAsyncArg"]
       18 MOVE                             R9 R7
       19 CALL                             R8 1 1
       20 MOVE                             R7 R8
       21 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       23 MOVE                             R9 R1
       24 MOVE                             R10 R7
       25 GETIMPORT                        R8 K7 [table.insert]
       27 CALL                             R8 2 0
       28 FORGLOOP                         R2 2 ; [-17]
       30 MOVE                             R0 R1
       31 GETUPVAL                         R2 4
       32 GETTABLEKS                       R2 R2 K8 ["FFlagAssistantMcpStudioIdRouting"]
       34 JUMPIFNOT                        R2 ; [+17]
       35 NEWTABLE                         R2 0 0
       37 MOVE                             R3 R0
       38 LOADNIL                          R4
       39 LOADNIL                          R5
       40 FORGPREP                         R3
       41 MOVE                             R9 R2
       42 GETUPVAL                         R10 5
       43 MOVE                             R11 R7
       44 CALL                             R10 1 -1
       45 FASTCALL                         TABLE_INSERT ; [+2]
       46 GETIMPORT                        R8 K7 [table.insert]
       48 CALL                             R8 -1 0
       49 FORGLOOP                         R3 2 ; [-9]
       51 MOVE                             R0 R2
       52 DUPTABLE                         R2 K10 [{"tools"}]
       53 SETTABLEKS                       R0 R2 K9 ["tools"]
       55 RETURN                           R2 1

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
       71 SETTABLEKS                       R8 R3 K17 ["toolId"]
       73 GETTABLEKS                       R9 R6 K18 ["logToolStarted"]
       75 DUPTABLE                         R10 K27 [{["messageGuid"], ["sessionId"], ["toolId"], ["toolName"], ["clientName"], ["isThirdPartyRequest"] = True, ["isSlashCommand"] = False, ["input"]}]
       76 SETTABLEKS                       R7 R10 K19 ["messageGuid"]
       78 GETUPVAL                         R12 4
       79 ORK                              R11 R12 K28 [""]
       80 SETTABLEKS                       R11 R10 K20 ["sessionId"]
       82 SETTABLEKS                       R8 R10 K17 ["toolId"]
       84 SETTABLEKS                       R4 R10 K21 ["toolName"]
       86 GETTABLEKS                       R11 R3 K29 ["client_name"]
       88 SETTABLEKS                       R11 R10 K22 ["clientName"]
       90 SETTABLEKS                       R5 R10 K26 ["input"]
       92 CALL                             R9 1 0
       93 GETUPVAL                         R9 5
       94 GETTABLEKS                       R9 R9 K30 ["getTimestampMilliseconds"]
       96 CALL                             R9 0 1
       97 LOADNIL                          R10
       98 GETUPVAL                         R11 1
       99 GETTABLEKS                       R11 R11 K31 ["FFlagSkipExternalToolsNoDebugMode"]
      101 JUMPIFNOT                        R11 ; [+13]
      102 GETUPVAL                         R11 6
      103 CALL                             R11 0 1
      104 JUMPIFNOT                        R11 ; [+10]
      105 DUPTABLE                         R11 K34 [{["isError"] = True, ["content"]}]
      106 NEWTABLE                         R12 0 1
      108 DUPTABLE                         R13 K38 [{["type"] = "text", ["text"] = "Tool calls are not allowed while in Play mode."}]
      109 SETLIST                          R12 R13 1 [1]
      111 SETTABLEKS                       R12 R11 K33 ["content"]
      113 MOVE                             R10 R11
      114 JUMP                             ; [+15]
      115 GETUPVAL                         R11 7
      116 DUPTABLE                         R12 K43 [{"name", "args", "meta", "extra", "listTools"}]
      117 SETTABLEKS                       R4 R12 K6 ["name"]
      119 SETTABLEKS                       R5 R12 K39 ["args"]
      121 SETTABLEKS                       R3 R12 K40 ["meta"]
      123 SETTABLEKS                       R1 R12 K41 ["extra"]
      125 GETUPVAL                         R13 8
      126 SETTABLEKS                       R13 R12 K42 ["listTools"]
      128 CALL                             R11 1 1
      129 MOVE                             R10 R11
      130 GETUPVAL                         R11 5
      131 GETTABLEKS                       R11 R11 K30 ["getTimestampMilliseconds"]
      133 CALL                             R11 0 1
      134 GETTABLEKS                       R12 R6 K44 ["logToolEnded"]
      136 DUPTABLE                         R13 K49 [{["messageGuid"], ["toolId"], ["toolName"], ["startTime"], ["startTimeAfterConfirmation"], ["endTime"], ["isError"], ["clientName"], ["isThirdPartyRequest"] = True, ["isSlashCommand"] = False, ["toolResultContent"]}]
      137 SETTABLEKS                       R7 R13 K19 ["messageGuid"]
      139 SETTABLEKS                       R8 R13 K17 ["toolId"]
      141 SETTABLEKS                       R4 R13 K21 ["toolName"]
      143 SETTABLEKS                       R9 R13 K45 ["startTime"]
      145 SETTABLEKS                       R9 R13 K46 ["startTimeAfterConfirmation"]
      147 SETTABLEKS                       R11 R13 K47 ["endTime"]
      149 GETTABLEKS                       R15 R10 K32 ["isError"]
      151 ORK                              R14 R15 K25 [False]
      152 SETTABLEKS                       R14 R13 K32 ["isError"]
      154 GETTABLEKS                       R14 R3 K29 ["client_name"]
      156 SETTABLEKS                       R14 R13 K22 ["clientName"]
      158 GETTABLEKS                       R14 R10 K33 ["content"]
      160 SETTABLEKS                       R14 R13 K48 ["toolResultContent"]
      162 CALL                             R12 1 0
      163 GETUPVAL                         R12 9
      164 MOVE                             R13 R10
      165 CALL                             R12 1 1
      166 MOVE                             R10 R12
      167 RETURN                           R10 1

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
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["connect"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_30:
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

PROTO_31:
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
       82 GETUPVAL                         R12 8
       83 GETTABLEKS                       R12 R12 K29 ["FFlagAssistantExternalMCPRetryOnStartFailure"]
       85 JUMPIFNOT                        R12 ; [+8]
       86 GETUPVAL                         R11 16
       87 GETTABLEKS                       R11 R11 K30 ["try"]
       89 NEWCLOSURE                       R12 P6
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R2
       92 CALL                             R11 1 1
       93 JUMP                             ; [+4]
       94 MOVE                             R13 R2
       95 NAMECALL                         R11 R3 K31 ["connect"]
       97 CALL                             R11 2 1
       98 SETTABLEKS                       R11 R10 K23 ["promise"]
      100 SETTABLEKS                       R3 R10 K24 ["server"]
      102 SETTABLEKS                       R5 R10 K25 ["connectionCountObservable"]
      104 SETTABLEKS                       R6 R10 K26 ["activeConnectionsObservable"]
      106 NEWCLOSURE                       R11 P7
      107 CAPTURE                          VAL R9
      108 CAPTURE                          REF R7
      109 SETTABLEKS                       R11 R10 K27 ["destructor"]
      111 CLOSEUPVALS                      R7
      112 RETURN                           R10 1

PROTO_32:
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

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R3 K3 [Enum.WebStreamClientType.RawStream]
        3 MOVE                             R4 R0
        4 NAMECALL                         R1 R1 K4 ["CreateWebStreamClientInternal"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["FFlagDebugLogAssistantUI"]
        4 SETTABLEKS                       R1 R0 K1 ["ALL_LOGGING_ENABLED"]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K2 ["setStreamingClientCreationFunc"]
        9 DUPCLOSURE                       R1 K3 [PROTO_33]
       10 CAPTURE                          UPVAL U3
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+5]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["setMCPDestructing"]
        6 LOADB                            R1 1
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K1 ["FFlagMCPAssistantManagementMenu"]
       11 JUMPIFNOT                        R0 ; [+5]
       12 GETUPVAL                         R0 3
       13 NAMECALL                         R0 R0 K2 ["close"]
       15 CALL                             R0 1 0
       16 JUMP                             ; [+4]
       17 GETUPVAL                         R0 4
       18 NAMECALL                         R0 R0 K2 ["close"]
       20 CALL                             R0 1 0
       21 GETUPVAL                         R0 5
       22 NAMECALL                         R0 R0 K2 ["close"]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_36:
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
       76 JUMPIF                           R2 ; [+28]
       77 GETUPVAL                         R4 8
       78 CALL                             R4 0 1
       79 JUMPIFNOT                        R4 ; [+5]
       80 GETUPVAL                         R4 9
       81 GETTABLEKS                       R4 R4 K16 ["setMCPDestructing"]
       83 LOADB                            R5 1
       84 CALL                             R4 1 0
       85 GETUPVAL                         R4 0
       86 GETTABLEKS                       R4 R4 K0 ["FFlagMCPAssistantManagementMenu"]
       88 JUMPIFNOT                        R4 ; [+5]
       89 GETUPVAL                         R4 7
       90 NAMECALL                         R4 R4 K17 ["close"]
       92 CALL                             R4 1 0
       93 JUMP                             ; [+4]
       94 GETUPVAL                         R4 10
       95 NAMECALL                         R4 R4 K17 ["close"]
       97 CALL                             R4 1 0
       98 GETUPVAL                         R4 11
       99 NAMECALL                         R4 R4 K17 ["close"]
      101 CALL                             R4 1 0
      102 MOVE                             R4 R1
      103 MOVE                             R5 R3
      104 CALL                             R4 1 0
      105 GETUPVAL                         R4 0
      106 GETTABLEKS                       R4 R4 K18 ["FFlagAssistantEval"]
      108 JUMPIFNOT                        R4 ; [+5]
      109 GETUPVAL                         R4 12
      110 GETTABLEKS                       R4 R4 K19 ["setMcpClient"]
      112 GETUPVAL                         R5 7
      113 CALL                             R4 1 0
      114 MOVE                             R4 R0
      115 GETUPVAL                         R5 7
      116 CALL                             R4 1 0
      117 RETURN                           R0 0

PROTO_37:
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
       48 CALL                             R7 0 1
       49 JUMPIFNOT                        R7 ; [+5]
       50 GETUPVAL                         R7 6
       51 GETTABLEKS                       R7 R7 K14 ["setMCPDestructing"]
       53 LOADB                            R8 0
       54 CALL                             R7 1 0
       55 NEWCLOSURE                       R7 P0
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          UPVAL U6
       58 CAPTURE                          UPVAL U7
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R3
       62 MOVE                             R10 R7
       63 NAMECALL                         R8 R0 K15 ["Connect"]
       65 CALL                             R8 2 0
       66 DUPTABLE                         R8 K20 [{["identifier"], ["transport"], ["clientOptions"], ["useStaticToolNames"] = True}]
       67 GETUPVAL                         R9 3
       68 GETTABLEKS                       R9 R9 K12 ["MCP_CLIENT_IDENTIFIER"]
       70 SETTABLEKS                       R9 R8 K16 ["identifier"]
       72 GETTABLEKS                       R9 R2 K5 ["transport"]
       74 SETTABLEKS                       R9 R8 K5 ["transport"]
       76 GETUPVAL                         R9 8
       77 SETTABLEKS                       R9 R8 K17 ["clientOptions"]
       79 MOVE                             R11 R8
       80 NAMECALL                         R9 R6 K21 ["addClient"]
       82 CALL                             R9 2 0
       83 GETUPVAL                         R9 1
       84 GETTABLEKS                       R9 R9 K0 ["new"]
       86 NEWCLOSURE                       R10 P1
       87 CAPTURE                          UPVAL U7
       88 CAPTURE                          UPVAL U9
       89 CAPTURE                          UPVAL U10
       90 CAPTURE                          VAL R1
       91 CAPTURE                          UPVAL U11
       92 CAPTURE                          UPVAL U12
       93 CAPTURE                          UPVAL U8
       94 CAPTURE                          VAL R6
       95 CAPTURE                          UPVAL U5
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R3
       99 CAPTURE                          UPVAL U13
      100 CALL                             R9 1 -1
      101 RETURN                           R9 -1

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
       84 GETTABLEKS                       R12 R2 K24 ["Utils"]
       86 GETTABLEKS                       R12 R12 K25 ["AsyncToolRunner"]
       88 GETTABLEKS                       R13 R2 K24 ["Utils"]
       90 GETTABLEKS                       R13 R13 K26 ["patchToolDefinition"]
       92 GETTABLEKS                       R14 R7 K19 ["Util"]
       94 GETTABLEKS                       R14 R14 K27 ["ToolResult"]
       96 GETTABLEKS                       R15 R2 K24 ["Utils"]
       98 GETTABLEKS                       R15 R15 K28 ["DataModelType"]
      100 GETTABLEKS                       R16 R2 K24 ["Utils"]
      102 GETTABLEKS                       R16 R16 K29 ["EvalController"]
      104 GETTABLEKS                       R17 R2 K30 ["UIToolRegistry"]
      106 GETTABLEKS                       R18 R2 K31 ["FlagUtils"]
      108 GETTABLEKS                       R18 R18 K32 ["getIsAssistantUseRemoteService"]
      110 GETTABLEKS                       R18 R18 K33 ["get"]
      112 GETTABLEKS                       R19 R2 K24 ["Utils"]
      114 GETTABLEKS                       R19 R19 K34 ["Tools"]
      116 GETTABLEKS                       R20 R7 K19 ["Util"]
      118 GETTABLEKS                       R20 R20 K35 ["Logging"]
      120 GETTABLEKS                       R21 R7 K22 ["Types"]
      122 GETTABLEKS                       R22 R7 K36 ["MultiplexedClient"]
      124 GETTABLEKS                       R23 R7 K19 ["Util"]
      126 GETTABLEKS                       R23 R23 K37 ["Observable"]
      128 GETTABLEKS                       R24 R7 K38 ["PeerTransport"]
      130 GETTABLEKS                       R25 R7 K39 ["Promise"]
      132 GETTABLEKS                       R26 R7 K40 ["Server"]
      134 GETTABLEKS                       R27 R7 K41 ["ServerRegistry"]
      136 GETTABLEKS                       R28 R7 K42 ["StreamableHttpClient"]
      138 GETTABLEKS                       R28 R28 K43 ["StreamableHttpClientTransport"]
      140 GETTABLEKS                       R29 R7 K44 ["ToolRegistry"]
      142 GETTABLEKS                       R30 R2 K45 ["IntegrationManagement"]
      144 GETTABLEKS                       R30 R30 K46 ["IntegrationManager"]
      146 GETTABLEKS                       R31 R2 K47 ["Guest"]
      148 GETTABLEKS                       R31 R31 K48 ["Environment"]
      150 GETTABLEKS                       R32 R7 K42 ["StreamableHttpClient"]
      152 GETTABLEKS                       R32 R32 K49 ["StreamingClientFactory"]
      154 GETTABLEKS                       R33 R7 K50 ["HttpVariantClientTransport"]
      156 GETTABLEKS                       R33 R33 K50 ["HttpVariantClientTransport"]
      158 GETTABLEKS                       R34 R2 K24 ["Utils"]
      160 GETTABLEKS                       R34 R34 K51 ["MultiDataModelToolUtil"]
      162 GETTABLEKS                       R35 R2 K24 ["Utils"]
      164 GETTABLEKS                       R35 R35 K52 ["Time"]
      166 GETTABLEKS                       R36 R2 K34 ["Tools"]
      168 GETTABLEKS                       R36 R36 K53 ["ToolTypes"]
      170 GETTABLEKS                       R36 R36 K54 ["ToolNames"]
      172 GETTABLEKS                       R37 R3 K55 ["join"]
      174 DUPTABLE                         R38 K57 [{"capabilities"}]
      175 DUPTABLE                         R39 K61 [{"experimental", "roots", "sampling"}]
      176 GETTABLEKS                       R40 R21 K62 ["emptyObject"]
      178 CALL                             R40 0 1
      179 SETTABLEKS                       R40 R39 K58 ["experimental"]
      181 GETTABLEKS                       R40 R21 K62 ["emptyObject"]
      183 CALL                             R40 0 1
      184 SETTABLEKS                       R40 R39 K59 ["roots"]
      186 GETTABLEKS                       R40 R21 K62 ["emptyObject"]
      188 CALL                             R40 0 1
      189 SETTABLEKS                       R40 R39 K60 ["sampling"]
      191 SETTABLEKS                       R39 R38 K56 ["capabilities"]
      193 DUPTABLE                         R39 K57 [{"capabilities"}]
      194 DUPTABLE                         R40 K66 [{"prompts", "resources", "tools"}]
      195 GETTABLEKS                       R41 R21 K62 ["emptyObject"]
      197 CALL                             R41 0 1
      198 SETTABLEKS                       R41 R40 K63 ["prompts"]
      200 GETTABLEKS                       R41 R21 K62 ["emptyObject"]
      202 CALL                             R41 0 1
      203 SETTABLEKS                       R41 R40 K64 ["resources"]
      205 DUPTABLE                         R41 K69 [{["listChanged"] = True}]
      206 SETTABLEKS                       R41 R40 K65 ["tools"]
      208 SETTABLEKS                       R40 R39 K56 ["capabilities"]
      210 GETIMPORT                        R40 K72 [table.freeze]
      212 NEWTABLE                         R41 64 0
      214 GETTABLEKS                       R42 R36 K73 ["AnimationGen"]
      216 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      217 SETTABLE                         R43 R41 R42
      218 GETTABLEKS                       R42 R36 K77 ["AskInput"]
      220 DUPTABLE                         R43 K79 [{["internal"] = True, ["external"] = False}]
      221 SETTABLE                         R43 R41 R42
      222 GETTABLEKS                       R42 R36 K80 ["AssetInsert"]
      224 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      225 SETTABLE                         R43 R41 R42
      226 GETTABLEKS                       R42 R36 K81 ["AssetSearch"]
      228 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      229 SETTABLE                         R43 R41 R42
      230 GETTABLEKS                       R42 R36 K82 ["AvatarAutoSetup"]
      232 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      233 SETTABLE                         R43 R41 R42
      234 GETTABLEKS                       R42 R36 K83 ["AvatarGen"]
      236 DUPTABLE                         R43 K84 [{"internal", "external"}]
      237 GETTABLEKS                       R44 R5 K85 ["FFlagAssistantAvatarGenTool"]
      239 SETTABLEKS                       R44 R43 K74 ["internal"]
      241 GETTABLEKS                       R44 R5 K85 ["FFlagAssistantAvatarGenTool"]
      243 SETTABLEKS                       R44 R43 K75 ["external"]
      245 SETTABLE                         R43 R41 R42
      246 GETTABLEKS                       R42 R36 K86 ["CapturePluginGui"]
      248 DUPTABLE                         R43 K84 [{"internal", "external"}]
      249 GETTABLEKS                       R44 R5 K87 ["FFlagAssistantCapturePluginGuiTool"]
      251 SETTABLEKS                       R44 R43 K74 ["internal"]
      253 GETTABLEKS                       R44 R5 K87 ["FFlagAssistantCapturePluginGuiTool"]
      255 SETTABLEKS                       R44 R43 K75 ["external"]
      257 SETTABLE                         R43 R41 R42
      258 GETTABLEKS                       R42 R36 K88 ["CharacterNavigation"]
      260 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      261 SETTABLE                         R43 R41 R42
      262 GETTABLEKS                       R42 R36 K89 ["CompleteTodoItems"]
      264 DUPTABLE                         R43 K79 [{["internal"] = True, ["external"] = False}]
      265 SETTABLE                         R43 R41 R42
      266 GETTABLEKS                       R42 R36 K90 ["CreateSkill"]
      268 DUPTABLE                         R43 K79 [{["internal"] = True, ["external"] = False}]
      269 SETTABLE                         R43 R41 R42
      270 GETTABLEKS                       R42 R36 K91 ["EditSkill"]
      272 DUPTABLE                         R43 K79 [{["internal"] = True, ["external"] = False}]
      273 SETTABLE                         R43 R41 R42
      274 GETTABLEKS                       R42 R36 K92 ["ExecuteLuau"]
      276 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      277 SETTABLE                         R43 R41 R42
      278 GETTABLEKS                       R42 R36 K93 ["FileSearch"]
      280 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      281 SETTABLE                         R43 R41 R42
      282 GETTABLEKS                       R42 R36 K94 ["FinalizePlan"]
      284 DUPTABLE                         R43 K79 [{["internal"] = True, ["external"] = False}]
      285 SETTABLE                         R43 R41 R42
      286 GETTABLEKS                       R42 R36 K95 ["FromHistory"]
      288 DUPTABLE                         R43 K79 [{["internal"] = True, ["external"] = False}]
      289 SETTABLE                         R43 R41 R42
      290 GETTABLEKS                       R42 R36 K96 ["GameTree"]
      292 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      293 SETTABLE                         R43 R41 R42
      294 GETTABLEKS                       R42 R36 K97 ["GenerateLayout"]
      296 DUPTABLE                         R43 K84 [{"internal", "external"}]
      297 GETTABLEKS                       R44 R5 K98 ["FFlagAssistantGenerateLayoutTool"]
      299 SETTABLEKS                       R44 R43 K74 ["internal"]
      301 GETTABLEKS                       R44 R5 K98 ["FFlagAssistantGenerateLayoutTool"]
      303 SETTABLEKS                       R44 R43 K75 ["external"]
      305 SETTABLE                         R43 R41 R42
      306 GETTABLEKS                       R42 R36 K99 ["GetConsoleOutput"]
      308 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      309 SETTABLE                         R43 R41 R42
      310 GETTABLEKS                       R42 R36 K100 ["GetStudioState"]
      312 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      313 SETTABLE                         R43 R41 R42
      314 GETTABLEKS                       R42 R36 K101 ["GrepSearch"]
      316 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      317 SETTABLE                         R43 R41 R42
      318 GETTABLEKS                       R42 R36 K102 ["HttpGet"]
      320 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      321 SETTABLE                         R43 R41 R42
      322 GETTABLEKS                       R42 R36 K103 ["InspectInstance"]
      324 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      325 SETTABLE                         R43 R41 R42
      326 GETTABLEKS                       R42 R36 K104 ["JobWait"]
      328 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      329 SETTABLE                         R43 R41 R42
      330 GETTABLEKS                       R42 R36 K105 ["ListPluginGuis"]
      332 DUPTABLE                         R43 K84 [{"internal", "external"}]
      333 GETTABLEKS                       R44 R5 K87 ["FFlagAssistantCapturePluginGuiTool"]
      335 SETTABLEKS                       R44 R43 K74 ["internal"]
      337 GETTABLEKS                       R44 R5 K87 ["FFlagAssistantCapturePluginGuiTool"]
      339 SETTABLEKS                       R44 R43 K75 ["external"]
      341 SETTABLE                         R43 R41 R42
      342 GETTABLEKS                       R42 R36 K106 ["ListRobloxStudios"]
      344 DUPTABLE                         R43 K107 [{["internal"] = False, ["external"]}]
      345 GETTABLEKS                       R44 R5 K108 ["FFlagUseStudioSideListTool"]
      347 SETTABLEKS                       R44 R43 K75 ["external"]
      349 SETTABLE                         R43 R41 R42
      350 GETTABLEKS                       R42 R36 K109 ["MaterialGen"]
      352 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      353 SETTABLE                         R43 R41 R42
      354 GETTABLEKS                       R42 R36 K110 ["MeshGen"]
      356 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      357 SETTABLE                         R43 R41 R42
      358 GETTABLEKS                       R42 R36 K111 ["MultiEdit"]
      360 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      361 SETTABLE                         R43 R41 R42
      362 GETTABLEKS                       R42 R36 K112 ["MultiPlayerAgentsCommunication"]
      364 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      365 SETTABLE                         R43 R41 R42
      366 GETTABLEKS                       R42 R36 K113 ["PlaytestLook"]
      368 DUPTABLE                         R43 K79 [{["internal"] = True, ["external"] = False}]
      369 SETTABLE                         R43 R41 R42
      370 GETTABLEKS                       R42 R36 K114 ["PrimitiveGen"]
      372 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      373 SETTABLE                         R43 R41 R42
      374 GETTABLEKS                       R42 R36 K115 ["QuestionAnswer"]
      376 DUPTABLE                         R43 K79 [{["internal"] = True, ["external"] = False}]
      377 SETTABLE                         R43 R41 R42
      378 GETTABLEKS                       R42 R36 K116 ["ReadFile"]
      380 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      381 SETTABLE                         R43 R41 R42
      382 GETTABLEKS                       R42 R36 K117 ["ScreenCapture"]
      384 DUPTABLE                         R43 K118 [{["internal"] = False, ["external"] = True}]
      385 SETTABLE                         R43 R41 R42
      386 GETTABLEKS                       R42 R36 K119 ["SegmentMesh"]
      388 DUPTABLE                         R43 K84 [{"internal", "external"}]
      389 GETTABLEKS                       R44 R5 K120 ["FFlagAssistantSegmentMeshTool"]
      391 SETTABLEKS                       R44 R43 K74 ["internal"]
      393 GETTABLEKS                       R44 R5 K120 ["FFlagAssistantSegmentMeshTool"]
      395 SETTABLEKS                       R44 R43 K75 ["external"]
      397 SETTABLE                         R43 R41 R42
      398 GETTABLEKS                       R42 R36 K121 ["Skill"]
      400 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      401 SETTABLE                         R43 R41 R42
      402 GETTABLEKS                       R42 R36 K122 ["StartMultiPlayerAgents"]
      404 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      405 SETTABLE                         R43 R41 R42
      406 GETTABLEKS                       R42 R36 K123 ["StartStopPlay"]
      408 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      409 SETTABLE                         R43 R41 R42
      410 GETTABLEKS                       R42 R36 K124 ["StopMultiPlayerAgents"]
      412 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      413 SETTABLE                         R43 R41 R42
      414 GETTABLEKS                       R42 R36 K125 ["StoreImage"]
      416 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      417 SETTABLE                         R43 R41 R42
      418 GETTABLEKS                       R42 R36 K126 ["Subagent"]
      420 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      421 SETTABLE                         R43 R41 R42
      422 GETTABLEKS                       R42 R36 K127 ["TextureGen"]
      424 DUPTABLE                         R43 K84 [{"internal", "external"}]
      425 GETTABLEKS                       R44 R5 K128 ["FFlagAssistantTextureGenTool"]
      427 SETTABLEKS                       R44 R43 K74 ["internal"]
      429 GETTABLEKS                       R44 R5 K128 ["FFlagAssistantTextureGenTool"]
      431 SETTABLEKS                       R44 R43 K75 ["external"]
      433 SETTABLE                         R43 R41 R42
      434 GETTABLEKS                       R42 R36 K129 ["UpdatePlan"]
      436 DUPTABLE                         R43 K79 [{["internal"] = True, ["external"] = False}]
      437 SETTABLE                         R43 R41 R42
      438 GETTABLEKS                       R42 R36 K130 ["UploadImage"]
      440 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      441 SETTABLE                         R43 R41 R42
      442 GETTABLEKS                       R42 R36 K131 ["UserKeyboardInput"]
      444 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      445 SETTABLE                         R43 R41 R42
      446 GETTABLEKS                       R42 R36 K132 ["UserMouseInput"]
      448 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      449 SETTABLE                         R43 R41 R42
      450 GETTABLEKS                       R42 R36 K133 ["VideoCapture"]
      452 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      453 SETTABLE                         R43 R41 R42
      454 GETTABLEKS                       R42 R36 K134 ["WaitForMultiPlayerAgentsCommunication"]
      456 DUPTABLE                         R43 K76 [{["internal"] = True, ["external"] = True}]
      457 SETTABLE                         R43 R41 R42
      458 CALL                             R40 1 1
      459 LOADNIL                          R41
      460 NEWCLOSURE                       R42 P0
      461 CAPTURE                          REF R41
      462 DUPCLOSURE                       R43 K135 [PROTO_1]
      463 DUPCLOSURE                       R44 K136 [PROTO_2]
      464 DUPCLOSURE                       R45 K137 [PROTO_3]
      465 DUPCLOSURE                       R46 K138 [PROTO_4]
      466 DUPCLOSURE                       R47 K139 [PROTO_5]
      467 CAPTURE                          VAL R43
      468 DUPCLOSURE                       R48 K140 [PROTO_6]
      469 CAPTURE                          VAL R29
      470 CAPTURE                          VAL R40
      471 DUPCLOSURE                       R49 K141 [PROTO_7]
      472 CAPTURE                          VAL R29
      473 CAPTURE                          VAL R40
      474 DUPCLOSURE                       R50 K142 [PROTO_10]
      475 CAPTURE                          VAL R5
      476 CAPTURE                          VAL R8
      477 CAPTURE                          VAL R15
      478 CAPTURE                          VAL R14
      479 CAPTURE                          VAL R29
      480 CAPTURE                          VAL R17
      481 CAPTURE                          VAL R34
      482 CAPTURE                          VAL R37
      483 CAPTURE                          VAL R50
      484 CAPTURE                          VAL R12
      485 DUPCLOSURE                       R51 K143 [PROTO_11]
      486 CAPTURE                          VAL R17
      487 CAPTURE                          VAL R5
      488 CAPTURE                          VAL R31
      489 CAPTURE                          VAL R15
      490 CAPTURE                          VAL R13
      491 CAPTURE                          VAL R36
      492 DUPCLOSURE                       R52 K144 [PROTO_12]
      493 CAPTURE                          VAL R36
      494 CAPTURE                          VAL R13
      495 DUPCLOSURE                       R53 K145 [PROTO_13]
      496 CAPTURE                          VAL R25
      497 CAPTURE                          VAL R21
      498 DUPCLOSURE                       R54 K146 [PROTO_14]
      499 CAPTURE                          VAL R17
      500 DUPCLOSURE                       R55 K147 [PROTO_15]
      501 NEWCLOSURE                       R56 P14
      502 CAPTURE                          VAL R26
      503 CAPTURE                          VAL R39
      504 CAPTURE                          VAL R49
      505 CAPTURE                          VAL R29
      506 CAPTURE                          VAL R5
      507 CAPTURE                          VAL R16
      508 CAPTURE                          VAL R44
      509 CAPTURE                          REF R41
      510 CAPTURE                          VAL R9
      511 CAPTURE                          VAL R43
      512 CAPTURE                          VAL R47
      513 CAPTURE                          VAL R36
      514 CAPTURE                          VAL R51
      515 CAPTURE                          VAL R12
      516 CAPTURE                          VAL R54
      517 CAPTURE                          VAL R50
      518 CAPTURE                          VAL R19
      519 SETGLOBAL                        R56 K148 ["getBuiltinServer"]
      521 DUPCLOSURE                       R56 K149 [PROTO_21]
      522 CAPTURE                          VAL R27
      523 SETGLOBAL                        R56 K150 ["startLocalServer"]
      525 DUPCLOSURE                       R56 K151 [PROTO_31]
      526 CAPTURE                          VAL R26
      527 CAPTURE                          VAL R39
      528 CAPTURE                          VAL R23
      529 CAPTURE                          VAL R31
      530 CAPTURE                          VAL R48
      531 CAPTURE                          VAL R54
      532 CAPTURE                          VAL R51
      533 CAPTURE                          VAL R12
      534 CAPTURE                          VAL R5
      535 CAPTURE                          VAL R52
      536 CAPTURE                          VAL R53
      537 CAPTURE                          VAL R1
      538 CAPTURE                          VAL R35
      539 CAPTURE                          VAL R50
      540 CAPTURE                          VAL R55
      541 CAPTURE                          VAL R27
      542 CAPTURE                          VAL R25
      543 SETGLOBAL                        R56 K152 ["startExternalServer"]
      545 DUPCLOSURE                       R56 K153 [PROTO_32]
      546 CAPTURE                          VAL R24
      547 DUPCLOSURE                       R57 K154 [PROTO_34]
      548 CAPTURE                          VAL R20
      549 CAPTURE                          VAL R5
      550 CAPTURE                          VAL R32
      551 CAPTURE                          VAL R1
      552 DUPCLOSURE                       R58 K155 [PROTO_37]
      553 CAPTURE                          VAL R24
      554 CAPTURE                          VAL R25
      555 CAPTURE                          VAL R22
      556 CAPTURE                          VAL R10
      557 CAPTURE                          VAL R21
      558 CAPTURE                          VAL R18
      559 CAPTURE                          VAL R11
      560 CAPTURE                          VAL R5
      561 CAPTURE                          VAL R38
      562 CAPTURE                          VAL R31
      563 CAPTURE                          VAL R30
      564 CAPTURE                          VAL R33
      565 CAPTURE                          VAL R28
      566 CAPTURE                          VAL R4
      567 DUPTABLE                         R59 K164 [{["promiseMcpHost"], ["configureModelContextProtocol"], ["startLocalServer"], ["startExternalServer"], ["setToolEnabledStates"], ["TOOL_AVAILABILITY"], ["patchToolDefinitionWithStudioId"], ["resolveStudioIdToolCall"], ["STUDIO_SESSION_MISMATCH_CODE"] = -32010}]
      568 SETTABLEKS                       R58 R59 K156 ["promiseMcpHost"]
      570 SETTABLEKS                       R57 R59 K157 ["configureModelContextProtocol"]
      572 GETGLOBAL                        R60 K150 ["startLocalServer"]
      574 SETTABLEKS                       R60 R59 K150 ["startLocalServer"]
      576 GETGLOBAL                        R60 K152 ["startExternalServer"]
      578 SETTABLEKS                       R60 R59 K152 ["startExternalServer"]
      580 SETTABLEKS                       R42 R59 K158 ["setToolEnabledStates"]
      582 SETTABLEKS                       R40 R59 K159 ["TOOL_AVAILABILITY"]
      584 SETTABLEKS                       R52 R59 K160 ["patchToolDefinitionWithStudioId"]
      586 SETTABLEKS                       R53 R59 K161 ["resolveStudioIdToolCall"]
      588 CLOSEUPVALS                      R41
      589 RETURN                           R59 1
