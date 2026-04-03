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

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getDefinitions"]
        3 CALL                             R0 0 1
        4 NEWTABLE                         R1 0 0
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETUPVAL                         R8 1
       11 GETTABLEKS                       R9 R6 K1 ["name"]
       13 GETTABLE                         R7 R8 R9
       14 JUMPIF                           R7 ; [+7]
       15 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       17 MOVE                             R8 R1
       18 MOVE                             R9 R6
       19 GETIMPORT                        R7 K4 [table.insert]
       21 CALL                             R7 2 0
       22 FORGLOOP                         R2 2 ; [-13]
       24 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getDefinitions"]
        3 CALL                             R0 0 1
        4 NEWTABLE                         R1 0 0
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETUPVAL                         R8 1
       11 GETTABLEKS                       R9 R6 K1 ["name"]
       13 GETTABLE                         R7 R8 R9
       14 JUMPIF                           R7 ; [+7]
       15 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       17 MOVE                             R8 R1
       18 MOVE                             R9 R6
       19 GETIMPORT                        R7 K4 [table.insert]
       21 CALL                             R7 2 0
       22 FORGLOOP                         R2 2 ; [-13]
       24 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["checkAndGetTargetDataModel"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["args"]
        6 GETTABLEKS                       R1 R2 K2 ["datamodel_type"]
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 3
       10 CALL                             R0 3 -1
       11 RETURN                           R0 -1

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getHandler"]
        3 GETTABLEKS                       R2 R0 K1 ["name"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R2 R0 K2 ["meta"]
        8 GETUPVAL                         R3 1
        9 CALL                             R3 0 1
       10 JUMPIFNOT                        R3 ; [+44]
       11 GETUPVAL                         R3 2
       12 CALL                             R3 0 1
       13 JUMPIFNOT                        R3 ; [+41]
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R3 R4 K3 ["getToolAvailableDataModelTypes"]
       17 GETTABLEKS                       R4 R0 K1 ["name"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K5 [pcall]
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          UPVAL U4
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R3
       26 CAPTURE                          REF R2
       27 CALL                             R4 1 2
       28 JUMPIF                           R4 ; [+19]
       29 GETUPVAL                         R6 5
       30 CALL                             R6 0 1
       31 FASTCALL1                        TOSTRING R5 ; [+3]
       32 MOVE                             R9 R5
       33 GETIMPORT                        R8 K7 [tostring]
       35 CALL                             R8 1 1
       36 NAMECALL                         R6 R6 K8 ["addText"]
       38 CALL                             R6 2 1
       39 LOADB                            R8 1
       40 NAMECALL                         R6 R6 K9 ["setError"]
       42 CALL                             R6 2 1
       43 NAMECALL                         R6 R6 K10 ["build"]
       45 CALL                             R6 1 -1
       46 CLOSEUPVALS                      R2
       47 RETURN                           R6 -1
       48 MOVE                             R6 R2
       49 JUMPIF                           R6 ; [+2]
       50 NEWTABLE                         R6 0 0
       52 SETTABLEKS                       R5 R6 K11 ["targetDataModel"]
       54 MOVE                             R2 R6
       55 GETUPVAL                         R3 6
       56 GETTABLEKS                       R4 R0 K12 ["extra"]
       58 DUPTABLE                         R5 K15 [{"listTools", "callTool"}]
       59 GETTABLEKS                       R6 R0 K13 ["listTools"]
       61 SETTABLEKS                       R6 R5 K13 ["listTools"]
       63 NEWCLOSURE                       R6 P1
       64 CAPTURE                          UPVAL U7
       65 CAPTURE                          UPVAL U6
       66 CAPTURE                          VAL R0
       67 SETTABLEKS                       R6 R5 K14 ["callTool"]
       69 CALL                             R3 2 1
       70 MOVE                             R4 R1
       71 GETTABLEKS                       R5 R0 K16 ["args"]
       73 MOVE                             R6 R2
       74 MOVE                             R7 R3
       75 CALL                             R4 3 -1
       76 CLOSEUPVALS                      R2
       77 RETURN                           R4 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["name"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["getToolAvailableDataModelTypes"]
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
       79 LOADK                            R6 K21 ["The target datamodel to operate on, the tool can only be performed in those datamodel types. if the target datamodel is not available in current mode, consider using start_stop_play to switch to the desired mode and then use the tools. This is a required argument."]
       80 SETTABLEKS                       R6 R5 K18 ["description"]
       82 SETTABLEKS                       R5 R4 K11 ["datamodel_type"]
       84 GETIMPORT                        R4 K5 [table.clone]
       86 MOVE                             R5 R0
       87 CALL                             R4 1 1
       88 SETTABLEKS                       R3 R4 K6 ["inputSchema"]
       90 RETURN                           R4 1

PROTO_9:
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
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R2 R3 K2 ["getDefinitions"]
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
       32 GETUPVAL                         R3 3
       33 GETTABLEKS                       R2 R3 K2 ["getDefinitions"]
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
       45 GETUPVAL                         R3 3
       46 GETTABLEKS                       R2 R3 K2 ["getDefinitions"]
       48 CALL                             R2 0 1
       49 MOVE                             R1 R2
       50 GETUPVAL                         R2 4
       51 CALL                             R2 0 1
       52 JUMPIFNOT                        R2 ; [+10]
       53 GETTABLEKS                       R2 R0 K4 ["includeDisabledTools"]
       55 JUMPIF                           R2 ; [+7]
       56 GETUPVAL                         R2 5
       57 JUMPIFNOT                        R2 ; [+5]
       58 GETUPVAL                         R2 6
       59 MOVE                             R3 R1
       60 GETUPVAL                         R4 5
       61 CALL                             R2 2 1
       62 MOVE                             R1 R2
       63 GETUPVAL                         R2 7
       64 CALL                             R2 0 1
       65 JUMPIFNOT                        R2 ; [+48]
       66 GETTABLEKS                       R2 R0 K5 ["assistantMode"]
       68 JUMPIFNOT                        R2 ; [+45]
       69 GETUPVAL                         R2 8
       70 MOVE                             R3 R1
       71 GETUPVAL                         R6 9
       72 GETTABLEKS                       R5 R6 K6 ["AssistantModeToolsAllowlist"]
       74 GETTABLEKS                       R6 R0 K5 ["assistantMode"]
       76 GETTABLE                         R4 R5 R6
       77 CALL                             R2 2 1
       78 MOVE                             R1 R2
       79 GETTABLEKS                       R3 R0 K5 ["assistantMode"]
       81 GETUPVAL                         R7 10
       82 GETTABLEKS                       R6 R7 K7 ["Types"]
       84 GETTABLEKS                       R5 R6 K8 ["AssistantMode"]
       86 GETTABLEKS                       R4 R5 K9 ["Test"]
       88 JUMPIFEQ                         R3 R4 ; [+2]
       90 LOADB                            R2 0 +1
       91 LOADB                            R2 1
       92 GETUPVAL                         R3 11
       93 CALL                             R3 0 1
       94 JUMPIFNOT                        R3 ; [+19]
       95 JUMPIFNOT                        R2 ; [+18]
       96 NEWTABLE                         R3 0 0
       98 MOVE                             R4 R1
       99 LOADNIL                          R5
      100 LOADNIL                          R6
      101 FORGPREP                         R4
      102 GETUPVAL                         R11 12
      103 MOVE                             R12 R8
      104 CALL                             R11 1 1
      105 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
      107 MOVE                             R10 R3
      108 GETIMPORT                        R9 K12 [table.insert]
      110 CALL                             R9 2 0
      111 FORGLOOP                         R4 2 ; [-10]
      113 MOVE                             R1 R3
      114 DUPTABLE                         R2 K1 [{"tools"}]
      115 SETTABLEKS                       R1 R2 K0 ["tools"]
      117 RETURN                           R2 1

PROTO_10:
        0 DUPTABLE                         R0 K1 [{"message"}]
        1 LOADK                            R2 K2 ["pong from "]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K3 ["_serverInfo"]
        5 GETTABLEKS                       R3 R4 K4 ["name"]
        7 CONCAT                           R1 R2 R3
        8 SETTABLEKS                       R1 R0 K0 ["message"]
       10 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["params"]
        3 CALL                             R2 1 1
        4 RETURN                           R2 1

PROTO_12:
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
       61 GETUPVAL                         R10 3
       62 GETTABLEKS                       R9 R10 K21 ["toString"]
       64 GETTABLEKS                       R10 R2 K14 ["arguments"]
       66 CALL                             R9 1 1
       67 NAMECALL                         R7 R7 K19 ["format"]
       69 CALL                             R7 2 1
       70 MOVE                             R6 R7
       71 CALL                             R5 1 0
       72 GETIMPORT                        R5 K17 [print]
       74 LOADK                            R7 K22 ["Result: %*"]
       75 GETUPVAL                         R10 3
       76 GETTABLEKS                       R9 R10 K21 ["toString"]
       78 MOVE                             R10 R4
       79 CALL                             R9 1 1
       80 NAMECALL                         R7 R7 K19 ["format"]
       82 CALL                             R7 2 1
       83 MOVE                             R6 R7
       84 CALL                             R5 1 0
       85 RETURN                           R4 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
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
       26 DUPTABLE                         R4 K7 [{"method"}]
       27 LOADK                            R5 K8 ["ping"]
       28 SETTABLEKS                       R5 R4 K6 ["method"]
       30 NEWCLOSURE                       R5 P1
       31 CAPTURE                          VAL R0
       32 NAMECALL                         R2 R0 K9 ["setRequestHandler"]
       34 CALL                             R2 3 0
       35 DUPTABLE                         R4 K7 [{"method"}]
       36 LOADK                            R5 K10 ["tools/list"]
       37 SETTABLEKS                       R5 R4 K6 ["method"]
       39 NEWCLOSURE                       R5 P2
       40 CAPTURE                          VAL R1
       41 NAMECALL                         R2 R0 K9 ["setRequestHandler"]
       43 CALL                             R2 3 0
       44 DUPTABLE                         R4 K7 [{"method"}]
       45 LOADK                            R5 K11 ["tools/call"]
       46 SETTABLEKS                       R5 R4 K6 ["method"]
       48 NEWCLOSURE                       R5 P3
       49 CAPTURE                          UPVAL U15
       50 CAPTURE                          VAL R1
       51 CAPTURE                          UPVAL U16
       52 CAPTURE                          UPVAL U17
       53 NAMECALL                         R2 R0 K9 ["setRequestHandler"]
       55 CALL                             R2 3 0
       56 RETURN                           R0 1

PROTO_14:
        0 GETGLOBAL                        R1 K0 ["getBuiltinServer"]
        2 CALL                             R1 0 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["registerServer"]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 MOVE                             R4 R0
        9 NAMECALL                         R2 R1 K2 ["connect"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_15:
        0 DUPTABLE                         R0 K1 [{"message"}]
        1 LOADK                            R2 K2 ["pong from %*"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K3 ["_serverInfo"]
        5 GETTABLEKS                       R4 R5 K4 ["name"]
        7 NAMECALL                         R2 R2 K5 ["format"]
        9 CALL                             R2 2 1
       10 MOVE                             R1 R2
       11 SETTABLEKS                       R1 R0 K0 ["message"]
       13 RETURN                           R0 1

PROTO_16:
        0 DUPTABLE                         R0 K1 [{"tools"}]
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 SETTABLEKS                       R1 R0 K0 ["tools"]
        5 RETURN                           R0 1

PROTO_17:
        0 DUPTABLE                         R0 K1 [{"tools"}]
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 SETTABLEKS                       R1 R0 K0 ["tools"]
        5 RETURN                           R0 1

PROTO_18:
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
       38 GETUPVAL                         R8 0
       39 GETTABLEKS                       R7 R8 K12 ["get"]
       41 CALL                             R7 0 1
       42 GETTABLEKS                       R6 R7 K13 ["EventLogger"]
       44 GETUPVAL                         R7 1
       45 LOADB                            R9 0
       46 NAMECALL                         R7 R7 K14 ["GenerateGUID"]
       48 CALL                             R7 2 1
       49 GETTABLEKS                       R8 R6 K15 ["logToolStarted"]
       51 DUPTABLE                         R9 K20 [{"messageGuid", "sessionId", "toolName", "clientName", "isThirdPartyRequest"}]
       52 SETTABLEKS                       R7 R9 K16 ["messageGuid"]
       54 GETUPVAL                         R11 2
       55 ORK                              R10 R11 K21 [""]
       56 SETTABLEKS                       R10 R9 K17 ["sessionId"]
       58 SETTABLEKS                       R4 R9 K18 ["toolName"]
       60 GETTABLEKS                       R10 R3 K22 ["client_name"]
       62 SETTABLEKS                       R10 R9 K19 ["clientName"]
       64 LOADB                            R10 1
       65 SETTABLEKS                       R10 R9 K5 ["isThirdPartyRequest"]
       67 CALL                             R8 1 0
       68 GETUPVAL                         R9 3
       69 GETTABLEKS                       R8 R9 K23 ["getTimestampMilliseconds"]
       71 CALL                             R8 0 1
       72 LOADNIL                          R9
       73 GETUPVAL                         R10 4
       74 CALL                             R10 0 1
       75 JUMPIFNOT                        R10 ; [+22]
       76 GETUPVAL                         R10 5
       77 CALL                             R10 0 1
       78 JUMPIFNOT                        R10 ; [+19]
       79 DUPTABLE                         R10 K26 [{"isError", "content"}]
       80 LOADB                            R11 1
       81 SETTABLEKS                       R11 R10 K24 ["isError"]
       83 NEWTABLE                         R11 0 1
       85 DUPTABLE                         R12 K29 [{"type", "text"}]
       86 LOADK                            R13 K28 ["text"]
       87 SETTABLEKS                       R13 R12 K27 ["type"]
       89 LOADK                            R13 K30 ["Tool calls are not allowed while in Play mode."]
       90 SETTABLEKS                       R13 R12 K28 ["text"]
       92 SETLIST                          R11 R12 1 [1]
       94 SETTABLEKS                       R11 R10 K25 ["content"]
       96 MOVE                             R9 R10
       97 JUMP                             ; [+15]
       98 GETUPVAL                         R10 6
       99 DUPTABLE                         R11 K35 [{"name", "args", "meta", "extra", "listTools"}]
      100 SETTABLEKS                       R4 R11 K6 ["name"]
      102 SETTABLEKS                       R5 R11 K31 ["args"]
      104 SETTABLEKS                       R3 R11 K32 ["meta"]
      106 SETTABLEKS                       R1 R11 K33 ["extra"]
      108 GETUPVAL                         R12 7
      109 SETTABLEKS                       R12 R11 K34 ["listTools"]
      111 CALL                             R10 1 1
      112 MOVE                             R9 R10
      113 GETUPVAL                         R11 3
      114 GETTABLEKS                       R10 R11 K23 ["getTimestampMilliseconds"]
      116 CALL                             R10 0 1
      117 GETTABLEKS                       R11 R6 K36 ["logToolEnded"]
      119 DUPTABLE                         R12 K41 [{"messageGuid", "toolId", "toolName", "startTime", "startTimeAfterConfirmation", "endTime", "isError", "clientName", "isThirdPartyRequest"}]
      120 SETTABLEKS                       R7 R12 K16 ["messageGuid"]
      122 LOADK                            R13 K21 [""]
      123 SETTABLEKS                       R13 R12 K37 ["toolId"]
      125 SETTABLEKS                       R4 R12 K18 ["toolName"]
      127 SETTABLEKS                       R8 R12 K38 ["startTime"]
      129 SETTABLEKS                       R8 R12 K39 ["startTimeAfterConfirmation"]
      131 SETTABLEKS                       R10 R12 K40 ["endTime"]
      133 GETTABLEKS                       R14 R9 K24 ["isError"]
      135 ORK                              R13 R14 K42 [False]
      136 SETTABLEKS                       R13 R12 K24 ["isError"]
      138 GETTABLEKS                       R13 R3 K22 ["client_name"]
      140 SETTABLEKS                       R13 R12 K19 ["clientName"]
      142 LOADB                            R13 1
      143 SETTABLEKS                       R13 R12 K5 ["isThirdPartyRequest"]
      145 CALL                             R11 1 0
      146 RETURN                           R9 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isActive"]
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
       25 GETTABLEKS                       R3 R1 K5 ["_meta"]
       27 GETTABLEKS                       R2 R3 K6 ["clients"]
       29 JUMPIFNOT                        R2 ; [+10]
       30 GETUPVAL                         R2 1
       31 GETTABLEKS                       R6 R1 K5 ["_meta"]
       33 GETTABLEKS                       R5 R6 K6 ["clients"]
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

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["get"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R1 R2 K1 ["EventLogger"]
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

PROTO_21:
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

PROTO_22:
        0 GETTABLEKS                       R2 R0 K0 ["transport"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["new"]
        5 DUPTABLE                         R4 K4 [{"name", "version"}]
        6 LOADK                            R5 K5 ["RobloxStudio"]
        7 SETTABLEKS                       R5 R4 K2 ["name"]
        9 LOADK                            R5 K6 ["0.1.0"]
       10 SETTABLEKS                       R5 R4 K3 ["version"]
       12 GETUPVAL                         R5 1
       13 CALL                             R3 2 1
       14 GETTABLEKS                       R4 R2 K7 ["sessionId"]
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R5 R6 K1 ["new"]
       19 LOADN                            R6 0
       20 CALL                             R5 1 1
       21 LOADNIL                          R6
       22 DUPTABLE                         R9 K9 [{"method"}]
       23 LOADK                            R10 K10 ["ping"]
       24 SETTABLEKS                       R10 R9 K8 ["method"]
       26 NEWCLOSURE                       R10 P0
       27 CAPTURE                          VAL R3
       28 NAMECALL                         R7 R3 K11 ["setRequestHandler"]
       30 CALL                             R7 3 0
       31 DUPCLOSURE                       R7 K12 [PROTO_16]
       32 CAPTURE                          UPVAL U3
       33 DUPTABLE                         R10 K9 [{"method"}]
       34 LOADK                            R11 K13 ["tools/list"]
       35 SETTABLEKS                       R11 R10 K8 ["method"]
       37 DUPCLOSURE                       R11 K14 [PROTO_17]
       38 CAPTURE                          UPVAL U3
       39 NAMECALL                         R8 R3 K11 ["setRequestHandler"]
       41 CALL                             R8 3 0
       42 DUPTABLE                         R10 K9 [{"method"}]
       43 LOADK                            R11 K15 ["tools/call"]
       44 SETTABLEKS                       R11 R10 K8 ["method"]
       46 NEWCLOSURE                       R11 P3
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          VAL R4
       50 CAPTURE                          UPVAL U6
       51 CAPTURE                          UPVAL U7
       52 CAPTURE                          VAL R1
       53 CAPTURE                          UPVAL U8
       54 CAPTURE                          VAL R7
       55 NAMECALL                         R8 R3 K11 ["setRequestHandler"]
       57 CALL                             R8 3 0
       58 GETTABLEKS                       R8 R3 K16 ["onServerInitialized"]
       60 NEWCLOSURE                       R10 P4
       61 CAPTURE                          UPVAL U4
       62 CAPTURE                          VAL R4
       63 CAPTURE                          REF R6
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R3
       67 NAMECALL                         R8 R8 K17 ["Connect"]
       69 CALL                             R8 2 1
       70 GETUPVAL                         R10 9
       71 GETTABLEKS                       R9 R10 K18 ["registerServer"]
       73 MOVE                             R10 R3
       74 CALL                             R9 1 0
       75 DUPTABLE                         R9 K23 [{"promise", "server", "connectionCountObservable", "destructor"}]
       76 MOVE                             R12 R2
       77 NAMECALL                         R10 R3 K24 ["connect"]
       79 CALL                             R10 2 1
       80 SETTABLEKS                       R10 R9 K19 ["promise"]
       82 SETTABLEKS                       R3 R9 K20 ["server"]
       84 SETTABLEKS                       R5 R9 K21 ["connectionCountObservable"]
       86 NEWCLOSURE                       R10 P5
       87 CAPTURE                          VAL R8
       88 CAPTURE                          REF R6
       89 SETTABLEKS                       R10 R9 K22 ["destructor"]
       91 CLOSEUPVALS                      R6
       92 RETURN                           R9 1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 LOADK                            R1 K1 ["Client->Side"]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K0 ["new"]
        8 LOADK                            R2 K2 ["Server<-Side"]
        9 CALL                             R1 1 1
       10 MOVE                             R4 R1
       11 LOADB                            R5 0
       12 NAMECALL                         R2 R0 K3 ["bindPeer"]
       14 CALL                             R2 3 0
       15 RETURN                           R0 2

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R3 K3 [Enum.WebStreamClientType.RawStream]
        3 MOVE                             R4 R0
        4 NAMECALL                         R1 R1 K4 ["CreateWebStreamClientInternal"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 1
        3 SETTABLEKS                       R1 R0 K0 ["ALL_LOGGING_ENABLED"]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R0 R1 K1 ["setStreamingClientCreationFunc"]
        8 DUPCLOSURE                       R1 K2 [PROTO_24]
        9 CAPTURE                          UPVAL U3
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_26:
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

PROTO_27:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+64]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["get"]
        6 CALL                             R2 0 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K1 ["getIntegrationsAsync"]
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
       31 GETUPVAL                         R12 5
       32 GETTABLEKS                       R11 R12 K6 ["new"]
       34 GETTABLEKS                       R12 R8 K4 ["url"]
       36 MOVE                             R13 R9
       37 CALL                             R11 2 1
       38 MOVE                             R10 R11
       39 JUMP                             ; [+8]
       40 GETUPVAL                         R12 6
       41 GETTABLEKS                       R11 R12 K6 ["new"]
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
       94 MOVE                             R4 R0
       95 GETUPVAL                         R5 8
       96 CALL                             R4 1 0
       97 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["new"]
        3 LOADK                            R5 K1 ["Client->Side"]
        4 CALL                             R4 1 1
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R5 R6 K0 ["new"]
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
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R6 R7 K7 ["reject"]
       29 LOADK                            R7 K8 ["Failed to start local MCP server"]
       30 CALL                             R6 1 -1
       31 RETURN                           R6 -1
       32 GETUPVAL                         R7 2
       33 GETTABLEKS                       R6 R7 K0 ["new"]
       35 DUPTABLE                         R7 K11 [{"name", "version"}]
       36 GETUPVAL                         R9 3
       37 GETTABLEKS                       R8 R9 K12 ["MCP_CLIENT_IDENTIFIER"]
       39 SETTABLEKS                       R8 R7 K9 ["name"]
       41 GETUPVAL                         R9 4
       42 GETTABLEKS                       R8 R9 K13 ["JSONRPC_VERSION"]
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
       57 GETUPVAL                         R10 3
       58 GETTABLEKS                       R9 R10 K12 ["MCP_CLIENT_IDENTIFIER"]
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
       76 GETUPVAL                         R10 1
       77 GETTABLEKS                       R9 R10 K0 ["new"]
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
       91 CALL                             R9 1 -1
       92 RETURN                           R9 -1

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
       15 GETTABLEKS                       R4 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["AssistantUI"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R0 K10 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["Dash"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Packages"]
       31 GETTABLEKS                       R5 R6 K13 ["LuauPolyfill"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R0 K10 ["Packages"]
       38 GETTABLEKS                       R6 R7 K14 ["ModelContextProtocol"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R7 R5 K15 ["Util"]
       43 GETTABLEKS                       R6 R7 K16 ["ToolResult"]
       45 GETIMPORT                        R7 K9 [require]
       47 GETTABLEKS                       R9 R0 K17 ["Src"]
       49 GETTABLEKS                       R8 R9 K18 ["Types"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R2 K19 ["UIToolRegistry"]
       54 GETTABLEKS                       R11 R2 K20 ["Flags"]
       56 GETTABLEKS                       R10 R11 K21 ["Shared"]
       58 GETTABLEKS                       R9 R10 K22 ["FFlagDebugLogAssistantUI"]
       60 GETTABLEKS                       R12 R2 K20 ["Flags"]
       62 GETTABLEKS                       R11 R12 K21 ["Shared"]
       64 GETTABLEKS                       R10 R11 K23 ["FFlagMCPAssistantManagementMenu"]
       66 GETTABLEKS                       R13 R2 K20 ["Flags"]
       68 GETTABLEKS                       R12 R13 K21 ["Shared"]
       70 GETTABLEKS                       R11 R12 K24 ["FFlagAssistantUseVariantHttpTransport"]
       72 GETTABLEKS                       R14 R2 K20 ["Flags"]
       74 GETTABLEKS                       R13 R14 K21 ["Shared"]
       76 GETTABLEKS                       R12 R13 K25 ["FFlagAssistantUseNewMeshGenTool"]
       78 GETIMPORT                        R13 K9 [require]
       80 GETTABLEKS                       R16 R0 K17 ["Src"]
       82 GETTABLEKS                       R15 R16 K20 ["Flags"]
       84 GETTABLEKS                       R14 R15 K26 ["FFlagDisableInternalScreenCapture"]
       86 CALL                             R13 1 1
       87 GETTABLEKS                       R16 R2 K20 ["Flags"]
       89 GETTABLEKS                       R15 R16 K21 ["Shared"]
       91 GETTABLEKS                       R14 R15 K27 ["FFlagDisableScreenCaptureForDefaultModel"]
       93 GETIMPORT                        R15 K9 [require]
       95 GETTABLEKS                       R18 R0 K17 ["Src"]
       97 GETTABLEKS                       R17 R18 K15 ["Util"]
       99 GETTABLEKS                       R16 R17 K28 ["StudioTools"]
      101 CALL                             R15 1 1
      102 GETIMPORT                        R16 K9 [require]
      104 GETTABLEKS                       R19 R0 K17 ["Src"]
      106 GETTABLEKS                       R18 R19 K20 ["Flags"]
      108 GETTABLEKS                       R17 R18 K29 ["FFlagSkipExternalToolsNoDebugMode"]
      110 CALL                             R16 1 1
      111 GETTABLEKS                       R19 R2 K20 ["Flags"]
      113 GETTABLEKS                       R18 R19 K21 ["Shared"]
      115 GETTABLEKS                       R17 R18 K30 ["FFlagAssistantTestModeDropdown"]
      117 GETTABLEKS                       R20 R2 K20 ["Flags"]
      119 GETTABLEKS                       R19 R20 K21 ["Shared"]
      121 GETTABLEKS                       R18 R19 K31 ["FFlagAssistantTestModeToolArgPatch"]
      123 GETIMPORT                        R19 K9 [require]
      125 GETTABLEKS                       R22 R0 K17 ["Src"]
      127 GETTABLEKS                       R21 R22 K20 ["Flags"]
      129 GETTABLEKS                       R20 R21 K32 ["FFlagAssistantFixToolDisappear"]
      131 CALL                             R19 1 1
      132 GETTABLEKS                       R21 R2 K33 ["Utils"]
      134 GETTABLEKS                       R20 R21 K34 ["Tools"]
      136 GETTABLEKS                       R22 R5 K15 ["Util"]
      138 GETTABLEKS                       R21 R22 K35 ["Logging"]
      140 GETTABLEKS                       R22 R5 K18 ["Types"]
      142 GETTABLEKS                       R23 R5 K36 ["MultiplexedClient"]
      144 GETTABLEKS                       R25 R5 K15 ["Util"]
      146 GETTABLEKS                       R24 R25 K37 ["Observable"]
      148 GETTABLEKS                       R25 R5 K38 ["PeerTransport"]
      150 GETTABLEKS                       R26 R5 K39 ["Promise"]
      152 GETTABLEKS                       R27 R5 K40 ["Server"]
      154 GETTABLEKS                       R28 R5 K41 ["ServerRegistry"]
      156 GETTABLEKS                       R30 R5 K42 ["StreamableHttpClient"]
      158 GETTABLEKS                       R29 R30 K43 ["StreamableHttpClientTransport"]
      160 GETTABLEKS                       R30 R5 K44 ["ToolRegistry"]
      162 GETTABLEKS                       R32 R2 K45 ["IntegrationManagement"]
      164 GETTABLEKS                       R31 R32 K46 ["IntegrationManager"]
      166 GETTABLEKS                       R33 R2 K47 ["Guest"]
      168 GETTABLEKS                       R32 R33 K48 ["Environment"]
      170 GETTABLEKS                       R34 R5 K42 ["StreamableHttpClient"]
      172 GETTABLEKS                       R33 R34 K49 ["StreamingClientFactory"]
      174 GETTABLEKS                       R35 R5 K50 ["HttpVariantClientTransport"]
      176 GETTABLEKS                       R34 R35 K50 ["HttpVariantClientTransport"]
      178 GETTABLEKS                       R36 R2 K33 ["Utils"]
      180 GETTABLEKS                       R35 R36 K51 ["MultiDataModelToolUtil"]
      182 GETTABLEKS                       R37 R2 K33 ["Utils"]
      184 GETTABLEKS                       R36 R37 K52 ["Time"]
      186 GETTABLEKS                       R39 R2 K34 ["Tools"]
      188 GETTABLEKS                       R38 R39 K53 ["ToolTypes"]
      190 GETTABLEKS                       R37 R38 K54 ["ToolNames"]
      192 GETTABLEKS                       R38 R3 K55 ["join"]
      194 DUPTABLE                         R39 K57 [{"capabilities"}]
      195 DUPTABLE                         R40 K61 [{"experimental", "roots", "sampling"}]
      196 GETTABLEKS                       R41 R22 K62 ["emptyObject"]
      198 CALL                             R41 0 1
      199 SETTABLEKS                       R41 R40 K58 ["experimental"]
      201 GETTABLEKS                       R41 R22 K62 ["emptyObject"]
      203 CALL                             R41 0 1
      204 SETTABLEKS                       R41 R40 K59 ["roots"]
      206 GETTABLEKS                       R41 R22 K62 ["emptyObject"]
      208 CALL                             R41 0 1
      209 SETTABLEKS                       R41 R40 K60 ["sampling"]
      211 SETTABLEKS                       R40 R39 K56 ["capabilities"]
      213 DUPTABLE                         R40 K57 [{"capabilities"}]
      214 DUPTABLE                         R41 K66 [{"prompts", "resources", "tools"}]
      215 GETTABLEKS                       R42 R22 K62 ["emptyObject"]
      217 CALL                             R42 0 1
      218 SETTABLEKS                       R42 R41 K63 ["prompts"]
      220 GETTABLEKS                       R42 R22 K62 ["emptyObject"]
      222 CALL                             R42 0 1
      223 SETTABLEKS                       R42 R41 K64 ["resources"]
      225 DUPTABLE                         R42 K68 [{"listChanged"}]
      226 LOADB                            R43 1
      227 SETTABLEKS                       R43 R42 K67 ["listChanged"]
      229 SETTABLEKS                       R42 R41 K65 ["tools"]
      231 SETTABLEKS                       R41 R40 K56 ["capabilities"]
      233 NEWTABLE                         R41 4 0
      235 GETTABLEKS                       R42 R37 K69 ["InsertFromMarketplace"]
      237 MOVE                             R44 R12
      238 CALL                             R44 0 1
      239 NOT                              R43 R44
      240 SETTABLE                         R43 R41 R42
      241 GETTABLEKS                       R42 R37 K70 ["MaterialGen"]
      243 MOVE                             R44 R12
      244 CALL                             R44 0 1
      245 NOT                              R43 R44
      246 SETTABLE                         R43 R41 R42
      247 GETTABLEKS                       R42 R37 K71 ["MeshGen"]
      249 MOVE                             R44 R12
      250 CALL                             R44 0 1
      251 NOT                              R43 R44
      252 SETTABLE                         R43 R41 R42
      253 NEWTABLE                         R42 1 0
      255 GETTABLEKS                       R43 R37 K72 ["ScreenCapture"]
      257 LOADB                            R44 1
      258 SETTABLE                         R44 R42 R43
      259 LOADNIL                          R43
      260 NEWCLOSURE                       R44 P0
      261 CAPTURE                          REF R43
      262 DUPCLOSURE                       R45 K73 [PROTO_1]
      263 DUPCLOSURE                       R46 K74 [PROTO_2]
      264 CAPTURE                          VAL R45
      265 DUPCLOSURE                       R47 K75 [PROTO_3]
      266 CAPTURE                          VAL R30
      267 CAPTURE                          VAL R41
      268 DUPCLOSURE                       R48 K76 [PROTO_4]
      269 CAPTURE                          VAL R30
      270 CAPTURE                          VAL R42
      271 DUPCLOSURE                       R49 K77 [PROTO_7]
      272 CAPTURE                          VAL R30
      273 CAPTURE                          VAL R17
      274 CAPTURE                          VAL R18
      275 CAPTURE                          VAL R8
      276 CAPTURE                          VAL R35
      277 CAPTURE                          VAL R6
      278 CAPTURE                          VAL R38
      279 CAPTURE                          VAL R49
      280 DUPCLOSURE                       R50 K78 [PROTO_8]
      281 CAPTURE                          VAL R8
      282 NEWCLOSURE                       R51 P7
      283 CAPTURE                          VAL R27
      284 CAPTURE                          VAL R40
      285 CAPTURE                          VAL R14
      286 CAPTURE                          VAL R13
      287 CAPTURE                          VAL R48
      288 CAPTURE                          VAL R30
      289 CAPTURE                          VAL R19
      290 CAPTURE                          REF R43
      291 CAPTURE                          VAL R45
      292 CAPTURE                          VAL R17
      293 CAPTURE                          VAL R46
      294 CAPTURE                          VAL R15
      295 CAPTURE                          VAL R2
      296 CAPTURE                          VAL R18
      297 CAPTURE                          VAL R50
      298 CAPTURE                          VAL R49
      299 CAPTURE                          VAL R9
      300 CAPTURE                          VAL R20
      301 SETGLOBAL                        R51 K79 ["getBuiltinServer"]
      303 DUPCLOSURE                       R51 K80 [PROTO_14]
      304 CAPTURE                          VAL R28
      305 SETGLOBAL                        R51 K81 ["startLocalServer"]
      307 DUPCLOSURE                       R51 K82 [PROTO_22]
      308 CAPTURE                          VAL R27
      309 CAPTURE                          VAL R40
      310 CAPTURE                          VAL R24
      311 CAPTURE                          VAL R47
      312 CAPTURE                          VAL R32
      313 CAPTURE                          VAL R1
      314 CAPTURE                          VAL R36
      315 CAPTURE                          VAL R16
      316 CAPTURE                          VAL R49
      317 CAPTURE                          VAL R28
      318 SETGLOBAL                        R51 K83 ["startExternalServer"]
      320 DUPCLOSURE                       R51 K84 [PROTO_23]
      321 CAPTURE                          VAL R25
      322 DUPCLOSURE                       R52 K85 [PROTO_25]
      323 CAPTURE                          VAL R21
      324 CAPTURE                          VAL R9
      325 CAPTURE                          VAL R33
      326 CAPTURE                          VAL R1
      327 DUPCLOSURE                       R53 K86 [PROTO_28]
      328 CAPTURE                          VAL R25
      329 CAPTURE                          VAL R26
      330 CAPTURE                          VAL R23
      331 CAPTURE                          VAL R7
      332 CAPTURE                          VAL R22
      333 CAPTURE                          VAL R10
      334 CAPTURE                          VAL R39
      335 CAPTURE                          VAL R32
      336 CAPTURE                          VAL R31
      337 CAPTURE                          VAL R11
      338 CAPTURE                          VAL R34
      339 CAPTURE                          VAL R29
      340 DUPTABLE                         R54 K90 [{"promiseMcpHost", "configureModelContextProtocol", "startLocalServer", "startExternalServer", "setToolEnabledStates"}]
      341 SETTABLEKS                       R53 R54 K87 ["promiseMcpHost"]
      343 SETTABLEKS                       R52 R54 K88 ["configureModelContextProtocol"]
      345 GETGLOBAL                        R55 K81 ["startLocalServer"]
      347 SETTABLEKS                       R55 R54 K81 ["startLocalServer"]
      349 GETGLOBAL                        R55 K83 ["startExternalServer"]
      351 SETTABLEKS                       R55 R54 K83 ["startExternalServer"]
      353 SETTABLEKS                       R44 R54 K89 ["setToolEnabledStates"]
      355 CLOSEUPVALS                      R43
      356 RETURN                           R54 1
