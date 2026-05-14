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
       14 JUMPIF                           R7 ; [+7]
       15 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       17 MOVE                             R8 R1
       18 MOVE                             R9 R6
       19 GETIMPORT                        R7 K4 [table.insert]
       21 CALL                             R7 2 0
       22 FORGLOOP                         R2 2 ; [-13]
       24 RETURN                           R1 1

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
       14 JUMPIF                           R7 ; [+7]
       15 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       17 MOVE                             R8 R1
       18 MOVE                             R9 R6
       19 GETIMPORT                        R7 K4 [table.insert]
       21 CALL                             R7 2 0
       22 FORGLOOP                         R2 2 ; [-13]
       24 RETURN                           R1 1

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
        1 GETTABLEKS                       R1 R1 K0 ["getHandler"]
        3 GETTABLEKS                       R2 R0 K1 ["name"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R2 R0 K2 ["meta"]
        8 GETUPVAL                         R3 1
        9 CALL                             R3 0 1
       10 JUMPIF                           R3 ; [+6]
       11 GETUPVAL                         R3 2
       12 CALL                             R3 0 1
       13 JUMPIFNOT                        R3 ; [+44]
       14 GETUPVAL                         R3 3
       15 CALL                             R3 0 1
       16 JUMPIFNOT                        R3 ; [+41]
       17 GETUPVAL                         R3 4
       18 GETTABLEKS                       R3 R3 K3 ["getToolAvailableDataModelTypes"]
       20 GETTABLEKS                       R4 R0 K1 ["name"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [pcall]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R3
       29 CAPTURE                          REF R2
       30 CALL                             R4 1 2
       31 JUMPIF                           R4 ; [+19]
       32 GETUPVAL                         R6 6
       33 CALL                             R6 0 1
       34 FASTCALL1                        TOSTRING R5 ; [+3]
       35 MOVE                             R9 R5
       36 GETIMPORT                        R8 K7 [tostring]
       38 CALL                             R8 1 1
       39 NAMECALL                         R6 R6 K8 ["addText"]
       41 CALL                             R6 2 1
       42 LOADB                            R8 1
       43 NAMECALL                         R6 R6 K9 ["setError"]
       45 CALL                             R6 2 1
       46 NAMECALL                         R6 R6 K10 ["build"]
       48 CALL                             R6 1 -1
       49 CLOSEUPVALS                      R2
       50 RETURN                           R6 -1
       51 MOVE                             R6 R2
       52 JUMPIF                           R6 ; [+2]
       53 NEWTABLE                         R6 0 0
       55 SETTABLEKS                       R5 R6 K11 ["targetDataModel"]
       57 MOVE                             R2 R6
       58 GETUPVAL                         R3 7
       59 GETTABLEKS                       R4 R0 K12 ["extra"]
       61 DUPTABLE                         R5 K15 [{"listTools", "callTool"}]
       62 GETTABLEKS                       R6 R0 K13 ["listTools"]
       64 SETTABLEKS                       R6 R5 K13 ["listTools"]
       66 NEWCLOSURE                       R6 P1
       67 CAPTURE                          UPVAL U8
       68 CAPTURE                          UPVAL U7
       69 CAPTURE                          VAL R0
       70 SETTABLEKS                       R6 R5 K14 ["callTool"]
       72 CALL                             R3 2 1
       73 MOVE                             R4 R1
       74 GETTABLEKS                       R5 R0 K16 ["args"]
       76 MOVE                             R6 R2
       77 MOVE                             R7 R3
       78 CALL                             R4 3 -1
       79 CLOSEUPVALS                      R2
       80 RETURN                           R4 -1

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

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 RETURN                           R0 1

PROTO_20:
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
       49 GETTABLEKS                       R8 R6 K15 ["logToolStarted"]
       51 DUPTABLE                         R9 K21 [{"messageGuid", "sessionId", "toolName", "clientName", "isThirdPartyRequest", "args"}]
       52 SETTABLEKS                       R7 R9 K16 ["messageGuid"]
       54 GETUPVAL                         R11 2
       55 ORK                              R10 R11 K22 [""]
       56 SETTABLEKS                       R10 R9 K17 ["sessionId"]
       58 SETTABLEKS                       R4 R9 K18 ["toolName"]
       60 GETTABLEKS                       R10 R3 K23 ["client_name"]
       62 SETTABLEKS                       R10 R9 K19 ["clientName"]
       64 LOADB                            R10 1
       65 SETTABLEKS                       R10 R9 K5 ["isThirdPartyRequest"]
       67 GETUPVAL                         R11 3
       68 GETTABLEKS                       R11 R11 K24 ["Subagent"]
       70 JUMPIFNOTEQ                      R4 R11 ; [+7]
       72 GETUPVAL                         R10 1
       73 MOVE                             R12 R5
       74 NAMECALL                         R10 R10 K25 ["JSONEncode"]
       76 CALL                             R10 2 1
       77 JUMP                             ; [+1]
       78 LOADNIL                          R10
       79 SETTABLEKS                       R10 R9 K20 ["args"]
       81 CALL                             R8 1 0
       82 GETUPVAL                         R8 4
       83 GETTABLEKS                       R8 R8 K26 ["getTimestampMilliseconds"]
       85 CALL                             R8 0 1
       86 LOADNIL                          R9
       87 GETUPVAL                         R10 5
       88 CALL                             R10 0 1
       89 JUMPIFNOT                        R10 ; [+22]
       90 GETUPVAL                         R10 6
       91 CALL                             R10 0 1
       92 JUMPIFNOT                        R10 ; [+19]
       93 DUPTABLE                         R10 K29 [{"isError", "content"}]
       94 LOADB                            R11 1
       95 SETTABLEKS                       R11 R10 K27 ["isError"]
       97 NEWTABLE                         R11 0 1
       99 DUPTABLE                         R12 K32 [{"type", "text"}]
      100 LOADK                            R13 K31 ["text"]
      101 SETTABLEKS                       R13 R12 K30 ["type"]
      103 LOADK                            R13 K33 ["Tool calls are not allowed while in Play mode."]
      104 SETTABLEKS                       R13 R12 K31 ["text"]
      106 SETLIST                          R11 R12 1 [1]
      108 SETTABLEKS                       R11 R10 K28 ["content"]
      110 MOVE                             R9 R10
      111 JUMP                             ; [+15]
      112 GETUPVAL                         R10 7
      113 DUPTABLE                         R11 K37 [{"name", "args", "meta", "extra", "listTools"}]
      114 SETTABLEKS                       R4 R11 K6 ["name"]
      116 SETTABLEKS                       R5 R11 K20 ["args"]
      118 SETTABLEKS                       R3 R11 K34 ["meta"]
      120 SETTABLEKS                       R1 R11 K35 ["extra"]
      122 GETUPVAL                         R12 8
      123 SETTABLEKS                       R12 R11 K36 ["listTools"]
      125 CALL                             R10 1 1
      126 MOVE                             R9 R10
      127 GETUPVAL                         R10 4
      128 GETTABLEKS                       R10 R10 K26 ["getTimestampMilliseconds"]
      130 CALL                             R10 0 1
      131 GETTABLEKS                       R11 R6 K38 ["logToolEnded"]
      133 DUPTABLE                         R12 K43 [{"messageGuid", "toolId", "toolName", "startTime", "startTimeAfterConfirmation", "endTime", "isError", "clientName", "isThirdPartyRequest", "args"}]
      134 SETTABLEKS                       R7 R12 K16 ["messageGuid"]
      136 LOADK                            R13 K22 [""]
      137 SETTABLEKS                       R13 R12 K39 ["toolId"]
      139 SETTABLEKS                       R4 R12 K18 ["toolName"]
      141 SETTABLEKS                       R8 R12 K40 ["startTime"]
      143 SETTABLEKS                       R8 R12 K41 ["startTimeAfterConfirmation"]
      145 SETTABLEKS                       R10 R12 K42 ["endTime"]
      147 GETTABLEKS                       R14 R9 K27 ["isError"]
      149 ORK                              R13 R14 K44 [False]
      150 SETTABLEKS                       R13 R12 K27 ["isError"]
      152 GETTABLEKS                       R13 R3 K23 ["client_name"]
      154 SETTABLEKS                       R13 R12 K19 ["clientName"]
      156 LOADB                            R13 1
      157 SETTABLEKS                       R13 R12 K5 ["isThirdPartyRequest"]
      159 GETUPVAL                         R14 3
      160 GETTABLEKS                       R14 R14 K24 ["Subagent"]
      162 JUMPIFNOTEQ                      R4 R14 ; [+7]
      164 GETUPVAL                         R13 1
      165 MOVE                             R15 R5
      166 NAMECALL                         R13 R13 K25 ["JSONEncode"]
      168 CALL                             R13 2 1
      169 JUMP                             ; [+1]
      170 LOADNIL                          R13
      171 SETTABLEKS                       R13 R12 K20 ["args"]
      173 CALL                             R11 1 0
      174 RETURN                           R9 1

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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
       23 LOADK                            R10 K10 ["ping"]
       24 SETTABLEKS                       R10 R9 K8 ["method"]
       26 NEWCLOSURE                       R10 P0
       27 CAPTURE                          VAL R3
       28 NAMECALL                         R7 R3 K11 ["setRequestHandler"]
       30 CALL                             R7 3 0
       31 DUPCLOSURE                       R7 K12 [PROTO_18]
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          UPVAL U5
       35 DUPTABLE                         R10 K9 [{"method"}]
       36 LOADK                            R11 K13 ["tools/list"]
       37 SETTABLEKS                       R11 R10 K8 ["method"]
       39 DUPCLOSURE                       R11 K14 [PROTO_19]
       40 CAPTURE                          VAL R7
       41 NAMECALL                         R8 R3 K11 ["setRequestHandler"]
       43 CALL                             R8 3 0
       44 DUPTABLE                         R10 K9 [{"method"}]
       45 LOADK                            R11 K15 ["tools/call"]
       46 SETTABLEKS                       R11 R10 K8 ["method"]
       48 NEWCLOSURE                       R11 P3
       49 CAPTURE                          UPVAL U6
       50 CAPTURE                          UPVAL U7
       51 CAPTURE                          VAL R4
       52 CAPTURE                          UPVAL U8
       53 CAPTURE                          UPVAL U9
       54 CAPTURE                          UPVAL U10
       55 CAPTURE                          VAL R1
       56 CAPTURE                          UPVAL U11
       57 CAPTURE                          VAL R7
       58 NAMECALL                         R8 R3 K11 ["setRequestHandler"]
       60 CALL                             R8 3 0
       61 GETTABLEKS                       R8 R3 K16 ["onServerInitialized"]
       63 NEWCLOSURE                       R10 P4
       64 CAPTURE                          UPVAL U6
       65 CAPTURE                          VAL R4
       66 CAPTURE                          REF R6
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R3
       70 NAMECALL                         R8 R8 K17 ["Connect"]
       72 CALL                             R8 2 1
       73 GETUPVAL                         R9 12
       74 GETTABLEKS                       R9 R9 K18 ["registerServer"]
       76 MOVE                             R10 R3
       77 CALL                             R9 1 0
       78 DUPTABLE                         R9 K23 [{"promise", "server", "connectionCountObservable", "destructor"}]
       79 MOVE                             R12 R2
       80 NAMECALL                         R10 R3 K24 ["connect"]
       82 CALL                             R10 2 1
       83 SETTABLEKS                       R10 R9 K19 ["promise"]
       85 SETTABLEKS                       R3 R9 K20 ["server"]
       87 SETTABLEKS                       R5 R9 K21 ["connectionCountObservable"]
       89 NEWCLOSURE                       R10 P5
       90 CAPTURE                          VAL R8
       91 CAPTURE                          REF R6
       92 SETTABLEKS                       R10 R9 K22 ["destructor"]
       94 CLOSEUPVALS                      R6
       95 RETURN                           R9 1

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R3 K3 [Enum.WebStreamClientType.RawStream]
        3 MOVE                             R4 R0
        4 NAMECALL                         R1 R1 K4 ["CreateWebStreamClientInternal"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 1
        3 SETTABLEKS                       R1 R0 K0 ["ALL_LOGGING_ENABLED"]
        5 GETUPVAL                         R0 2
        6 GETTABLEKS                       R0 R0 K1 ["setStreamingClientCreationFunc"]
        8 DUPCLOSURE                       R1 K2 [PROTO_26]
        9 CAPTURE                          UPVAL U3
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_28:
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

PROTO_29:
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

PROTO_30:
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
      175 GETTABLEKS                       R27 R2 K21 ["Utils"]
      177 GETTABLEKS                       R27 R27 K42 ["Tools"]
      179 GETTABLEKS                       R28 R6 K18 ["Util"]
      181 GETTABLEKS                       R28 R28 K43 ["Logging"]
      183 GETTABLEKS                       R29 R6 K20 ["Types"]
      185 GETTABLEKS                       R30 R6 K44 ["MultiplexedClient"]
      187 GETTABLEKS                       R31 R6 K18 ["Util"]
      189 GETTABLEKS                       R31 R31 K45 ["Observable"]
      191 GETTABLEKS                       R32 R6 K46 ["PeerTransport"]
      193 GETTABLEKS                       R33 R6 K47 ["Promise"]
      195 GETTABLEKS                       R34 R6 K48 ["Server"]
      197 GETTABLEKS                       R35 R6 K49 ["ServerRegistry"]
      199 GETTABLEKS                       R36 R6 K50 ["StreamableHttpClient"]
      201 GETTABLEKS                       R36 R36 K51 ["StreamableHttpClientTransport"]
      203 GETTABLEKS                       R37 R6 K52 ["ToolRegistry"]
      205 GETTABLEKS                       R38 R2 K53 ["IntegrationManagement"]
      207 GETTABLEKS                       R38 R38 K54 ["IntegrationManager"]
      209 GETTABLEKS                       R39 R2 K55 ["Guest"]
      211 GETTABLEKS                       R39 R39 K56 ["Environment"]
      213 GETTABLEKS                       R40 R6 K50 ["StreamableHttpClient"]
      215 GETTABLEKS                       R40 R40 K57 ["StreamingClientFactory"]
      217 GETTABLEKS                       R41 R6 K58 ["HttpVariantClientTransport"]
      219 GETTABLEKS                       R41 R41 K58 ["HttpVariantClientTransport"]
      221 GETTABLEKS                       R42 R2 K21 ["Utils"]
      223 GETTABLEKS                       R42 R42 K59 ["MultiDataModelToolUtil"]
      225 GETTABLEKS                       R43 R2 K21 ["Utils"]
      227 GETTABLEKS                       R43 R43 K60 ["Time"]
      229 GETTABLEKS                       R44 R2 K42 ["Tools"]
      231 GETTABLEKS                       R44 R44 K61 ["ToolTypes"]
      233 GETTABLEKS                       R44 R44 K62 ["ToolNames"]
      235 GETTABLEKS                       R45 R3 K63 ["join"]
      237 DUPTABLE                         R46 K65 [{"capabilities"}]
      238 DUPTABLE                         R47 K69 [{"experimental", "roots", "sampling"}]
      239 GETTABLEKS                       R48 R29 K70 ["emptyObject"]
      241 CALL                             R48 0 1
      242 SETTABLEKS                       R48 R47 K66 ["experimental"]
      244 GETTABLEKS                       R48 R29 K70 ["emptyObject"]
      246 CALL                             R48 0 1
      247 SETTABLEKS                       R48 R47 K67 ["roots"]
      249 GETTABLEKS                       R48 R29 K70 ["emptyObject"]
      251 CALL                             R48 0 1
      252 SETTABLEKS                       R48 R47 K68 ["sampling"]
      254 SETTABLEKS                       R47 R46 K64 ["capabilities"]
      256 DUPTABLE                         R47 K65 [{"capabilities"}]
      257 DUPTABLE                         R48 K74 [{"prompts", "resources", "tools"}]
      258 GETTABLEKS                       R49 R29 K70 ["emptyObject"]
      260 CALL                             R49 0 1
      261 SETTABLEKS                       R49 R48 K71 ["prompts"]
      263 GETTABLEKS                       R49 R29 K70 ["emptyObject"]
      265 CALL                             R49 0 1
      266 SETTABLEKS                       R49 R48 K72 ["resources"]
      268 DUPTABLE                         R49 K76 [{"listChanged"}]
      269 LOADB                            R50 1
      270 SETTABLEKS                       R50 R49 K75 ["listChanged"]
      272 SETTABLEKS                       R49 R48 K73 ["tools"]
      274 SETTABLEKS                       R48 R47 K64 ["capabilities"]
      276 NEWTABLE                         R48 8 0
      278 GETTABLEKS                       R49 R44 K77 ["InsertFromMarketplace"]
      280 MOVE                             R51 R15
      281 CALL                             R51 0 1
      282 JUMPIFNOT                        R51 ; [+2]
      283 LOADNIL                          R50
      284 JUMP                             ; [+3]
      285 MOVE                             R51 R14
      286 CALL                             R51 0 1
      287 NOT                              R50 R51
      288 SETTABLE                         R50 R48 R49
      289 GETTABLEKS                       R49 R44 K78 ["MaterialGen"]
      291 MOVE                             R51 R14
      292 CALL                             R51 0 1
      293 NOT                              R50 R51
      294 SETTABLE                         R50 R48 R49
      295 GETTABLEKS                       R49 R44 K79 ["MeshGen"]
      297 MOVE                             R51 R14
      298 CALL                             R51 0 1
      299 NOT                              R50 R51
      300 SETTABLE                         R50 R48 R49
      301 GETTABLEKS                       R49 R44 K80 ["QuestionAnswer"]
      303 LOADB                            R50 1
      304 SETTABLE                         R50 R48 R49
      305 GETTABLEKS                       R49 R44 K81 ["FinalizePlan"]
      307 LOADB                            R50 1
      308 SETTABLE                         R50 R48 R49
      309 GETTABLEKS                       R49 R44 K82 ["CompleteTodoItems"]
      311 LOADB                            R50 1
      312 SETTABLE                         R50 R48 R49
      313 NEWTABLE                         R49 1 0
      315 GETTABLEKS                       R50 R44 K83 ["ScreenCapture"]
      317 LOADB                            R51 1
      318 SETTABLE                         R51 R49 R50
      319 LOADNIL                          R50
      320 NEWCLOSURE                       R51 P0
      321 CAPTURE                          REF R50
      322 DUPCLOSURE                       R52 K84 [PROTO_1]
      323 DUPCLOSURE                       R53 K85 [PROTO_2]
      324 DUPCLOSURE                       R54 K86 [PROTO_3]
      325 CAPTURE                          VAL R52
      326 DUPCLOSURE                       R55 K87 [PROTO_4]
      327 CAPTURE                          VAL R37
      328 CAPTURE                          VAL R48
      329 DUPCLOSURE                       R56 K88 [PROTO_5]
      330 CAPTURE                          VAL R37
      331 CAPTURE                          VAL R49
      332 DUPCLOSURE                       R57 K89 [PROTO_8]
      333 CAPTURE                          VAL R37
      334 CAPTURE                          VAL R23
      335 CAPTURE                          VAL R21
      336 CAPTURE                          VAL R22
      337 CAPTURE                          VAL R10
      338 CAPTURE                          VAL R42
      339 CAPTURE                          VAL R7
      340 CAPTURE                          VAL R45
      341 CAPTURE                          VAL R57
      342 DUPCLOSURE                       R58 K90 [PROTO_9]
      343 CAPTURE                          VAL R10
      344 CAPTURE                          VAL R44
      345 DUPCLOSURE                       R59 K91 [PROTO_10]
      346 CAPTURE                          VAL R10
      347 NEWCLOSURE                       R60 P9
      348 CAPTURE                          VAL R34
      349 CAPTURE                          VAL R47
      350 CAPTURE                          VAL R17
      351 CAPTURE                          VAL R16
      352 CAPTURE                          VAL R56
      353 CAPTURE                          VAL R37
      354 CAPTURE                          VAL R26
      355 CAPTURE                          VAL R9
      356 CAPTURE                          VAL R53
      357 CAPTURE                          VAL R24
      358 CAPTURE                          REF R50
      359 CAPTURE                          VAL R52
      360 CAPTURE                          VAL R23
      361 CAPTURE                          VAL R20
      362 CAPTURE                          VAL R54
      363 CAPTURE                          VAL R18
      364 CAPTURE                          VAL R2
      365 CAPTURE                          VAL R22
      366 CAPTURE                          VAL R58
      367 CAPTURE                          VAL R25
      368 CAPTURE                          VAL R59
      369 CAPTURE                          VAL R57
      370 CAPTURE                          VAL R11
      371 CAPTURE                          VAL R27
      372 SETGLOBAL                        R60 K92 ["getBuiltinServer"]
      374 DUPCLOSURE                       R60 K93 [PROTO_16]
      375 CAPTURE                          VAL R35
      376 SETGLOBAL                        R60 K94 ["startLocalServer"]
      378 DUPCLOSURE                       R60 K95 [PROTO_24]
      379 CAPTURE                          VAL R34
      380 CAPTURE                          VAL R47
      381 CAPTURE                          VAL R31
      382 CAPTURE                          VAL R55
      383 CAPTURE                          VAL R25
      384 CAPTURE                          VAL R59
      385 CAPTURE                          VAL R39
      386 CAPTURE                          VAL R1
      387 CAPTURE                          VAL R44
      388 CAPTURE                          VAL R43
      389 CAPTURE                          VAL R19
      390 CAPTURE                          VAL R57
      391 CAPTURE                          VAL R35
      392 SETGLOBAL                        R60 K96 ["startExternalServer"]
      394 DUPCLOSURE                       R60 K97 [PROTO_25]
      395 CAPTURE                          VAL R32
      396 DUPCLOSURE                       R61 K98 [PROTO_27]
      397 CAPTURE                          VAL R28
      398 CAPTURE                          VAL R11
      399 CAPTURE                          VAL R40
      400 CAPTURE                          VAL R1
      401 DUPCLOSURE                       R62 K99 [PROTO_30]
      402 CAPTURE                          VAL R32
      403 CAPTURE                          VAL R33
      404 CAPTURE                          VAL R30
      405 CAPTURE                          VAL R8
      406 CAPTURE                          VAL R29
      407 CAPTURE                          VAL R12
      408 CAPTURE                          VAL R46
      409 CAPTURE                          VAL R39
      410 CAPTURE                          VAL R38
      411 CAPTURE                          VAL R13
      412 CAPTURE                          VAL R41
      413 CAPTURE                          VAL R36
      414 CAPTURE                          VAL R26
      415 CAPTURE                          VAL R4
      416 DUPTABLE                         R63 K103 [{"promiseMcpHost", "configureModelContextProtocol", "startLocalServer", "startExternalServer", "setToolEnabledStates"}]
      417 SETTABLEKS                       R62 R63 K100 ["promiseMcpHost"]
      419 SETTABLEKS                       R61 R63 K101 ["configureModelContextProtocol"]
      421 GETGLOBAL                        R64 K94 ["startLocalServer"]
      423 SETTABLEKS                       R64 R63 K94 ["startLocalServer"]
      425 GETGLOBAL                        R64 K96 ["startExternalServer"]
      427 SETTABLEKS                       R64 R63 K96 ["startExternalServer"]
      429 SETTABLEKS                       R51 R63 K102 ["setToolEnabledStates"]
      431 CLOSEUPVALS                      R50
      432 RETURN                           R63 1
