PROTO_0:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R6 R6 K0 ["Types"]
        7 GETTABLEKS                       R6 R6 K1 ["Standalone"]
        9 JUMPIFNOTEQ                      R5 R6 ; [+5]
       11 GETIMPORT                        R6 K3 [error]
       13 LOADK                            R7 K4 ["Standalone should not be specified in available data model types"]
       14 CALL                             R6 1 0
       15 FORGLOOP                         R1 2 ; [-12]
       17 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["slashCommands"]
        2 JUMPIFNOT                        R1 ; [+60]
        3 MOVE                             R2 R1
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["command"]
        9 GETUPVAL                         R9 0
       10 GETTABLE                         R8 R9 R7
       11 JUMPIFNOT                        R8 ; [+9]
       12 GETIMPORT                        R8 K3 [error]
       14 LOADK                            R10 K4 ["Slash command %* already registered"]
       15 MOVE                             R12 R7
       16 NAMECALL                         R10 R10 K5 ["format"]
       18 CALL                             R10 2 1
       19 MOVE                             R9 R10
       20 CALL                             R8 1 0
       21 GETUPVAL                         R10 1
       22 GETTABLEKS                       R10 R10 K6 ["CommandDelimiter"]
       24 NAMECALL                         R8 R7 K7 ["find"]
       26 CALL                             R8 2 1
       27 JUMPIFNOT                        R8 ; [+12]
       28 GETIMPORT                        R8 K3 [error]
       30 LOADK                            R10 K8 ["Slash command %* cannot contain the delimiter \"%*\""]
       31 MOVE                             R12 R7
       32 GETUPVAL                         R13 1
       33 GETTABLEKS                       R13 R13 K6 ["CommandDelimiter"]
       35 NAMECALL                         R10 R10 K5 ["format"]
       37 CALL                             R10 3 1
       38 MOVE                             R9 R10
       39 CALL                             R8 1 0
       40 GETUPVAL                         R8 0
       41 GETTABLEKS                       R9 R6 K9 ["mapToToolCall"]
       43 SETTABLE                         R9 R8 R7
       44 GETUPVAL                         R8 2
       45 GETTABLEKS                       R9 R6 K10 ["getDescription"]
       47 SETTABLE                         R9 R8 R7
       48 GETUPVAL                         R8 3
       49 SETTABLE                         R6 R8 R7
       50 GETUPVAL                         R9 4
       51 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
       53 MOVE                             R10 R7
       54 GETIMPORT                        R8 K13 [table.insert]
       56 CALL                             R8 2 0
       57 FORGLOOP                         R2 2 ; [-51]
       59 GETIMPORT                        R2 K15 [table.sort]
       61 GETUPVAL                         R3 4
       62 CALL                             R2 1 0
       63 GETUPVAL                         R2 5
       64 GETTABLEKS                       R2 R2 K16 ["FFlagAssistantSplitToolsAndWidgets"]
       66 JUMPIF                           R2 ; [+29]
       67 GETTABLEKS                       R2 R0 K17 ["contentWidgets"]
       69 JUMPIFNOT                        R2 ; [+13]
       70 GETUPVAL                         R3 6
       71 GETTABLEKS                       R3 R3 K18 ["registerWidgetList"]
       73 MOVE                             R4 R2
       74 CALL                             R3 1 1
       75 GETUPVAL                         R4 7
       76 GETTABLEKS                       R5 R0 K19 ["definition"]
       78 GETTABLEKS                       R5 R5 K19 ["definition"]
       80 GETTABLEKS                       R5 R5 K20 ["name"]
       82 SETTABLE                         R3 R4 R5
       83 GETTABLEKS                       R3 R0 K21 ["displayNameFunction"]
       85 JUMPIFNOT                        R3 ; [+10]
       86 GETUPVAL                         R3 8
       87 GETTABLEKS                       R4 R0 K19 ["definition"]
       89 GETTABLEKS                       R4 R4 K19 ["definition"]
       91 GETTABLEKS                       R4 R4 K20 ["name"]
       93 GETTABLEKS                       R5 R0 K21 ["displayNameFunction"]
       95 SETTABLE                         R5 R3 R4
       96 GETTABLEKS                       R2 R0 K22 ["streamTransform"]
       98 JUMPIFNOT                        R2 ; [+10]
       99 GETUPVAL                         R2 9
      100 GETTABLEKS                       R3 R0 K19 ["definition"]
      102 GETTABLEKS                       R3 R3 K19 ["definition"]
      104 GETTABLEKS                       R3 R3 K20 ["name"]
      106 GETTABLEKS                       R4 R0 K22 ["streamTransform"]
      108 SETTABLE                         R4 R2 R3
      109 GETTABLEKS                       R2 R0 K23 ["getPreExecuteWarning"]
      111 JUMPIFNOT                        R2 ; [+10]
      112 GETUPVAL                         R2 10
      113 GETTABLEKS                       R3 R0 K19 ["definition"]
      115 GETTABLEKS                       R3 R3 K19 ["definition"]
      117 GETTABLEKS                       R3 R3 K20 ["name"]
      119 GETTABLEKS                       R4 R0 K23 ["getPreExecuteWarning"]
      121 SETTABLE                         R4 R2 R3
      122 GETTABLEKS                       R2 R0 K24 ["toolCallOptions"]
      124 JUMPIFNOT                        R2 ; [+10]
      125 GETUPVAL                         R2 11
      126 GETTABLEKS                       R3 R0 K19 ["definition"]
      128 GETTABLEKS                       R3 R3 K19 ["definition"]
      130 GETTABLEKS                       R3 R3 K20 ["name"]
      132 GETTABLEKS                       R4 R0 K24 ["toolCallOptions"]
      134 SETTABLE                         R4 R2 R3
      135 GETTABLEKS                       R2 R0 K25 ["availableDataModelTypes"]
      137 JUMPIFNOT                        R2 ; [+18]
      138 GETUPVAL                         R2 5
      139 GETTABLEKS                       R2 R2 K26 ["FFlagAssistantStandaloneDataModel"]
      141 JUMPIF                           R2 ; [+4]
      142 GETUPVAL                         R2 12
      143 GETTABLEKS                       R3 R0 K25 ["availableDataModelTypes"]
      145 CALL                             R2 1 0
      146 GETUPVAL                         R2 13
      147 GETTABLEKS                       R3 R0 K19 ["definition"]
      149 GETTABLEKS                       R3 R3 K19 ["definition"]
      151 GETTABLEKS                       R3 R3 K20 ["name"]
      153 GETTABLEKS                       R4 R0 K25 ["availableDataModelTypes"]
      155 SETTABLE                         R4 R2 R3
      156 GETTABLEKS                       R2 R0 K10 ["getDescription"]
      158 JUMPIFNOT                        R2 ; [+10]
      159 GETUPVAL                         R2 14
      160 GETTABLEKS                       R3 R0 K19 ["definition"]
      162 GETTABLEKS                       R3 R3 K19 ["definition"]
      164 GETTABLEKS                       R3 R3 K20 ["name"]
      166 GETTABLEKS                       R4 R0 K10 ["getDescription"]
      168 SETTABLE                         R4 R2 R3
      169 GETUPVAL                         R2 15
      170 GETTABLEKS                       R2 R2 K27 ["addTool"]
      172 GETTABLEKS                       R3 R0 K19 ["definition"]
      174 CALL                             R2 1 0
      175 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["removeTool"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 SETTABLE                         R2 R1 R0
        3 GETUPVAL                         R1 1
        4 LOADNIL                          R2
        5 SETTABLE                         R2 R1 R0
        6 GETUPVAL                         R1 2
        7 LOADNIL                          R2
        8 SETTABLE                         R2 R1 R0
        9 GETUPVAL                         R1 3
       10 LOADNIL                          R2
       11 SETTABLE                         R2 R1 R0
       12 GETUPVAL                         R1 4
       13 LOADNIL                          R2
       14 SETTABLE                         R2 R1 R0
       15 GETUPVAL                         R1 5
       16 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantSplitToolsAndWidgets"]
       18 JUMPIF                           R1 ; [+11]
       19 GETUPVAL                         R1 6
       20 LOADNIL                          R2
       21 SETTABLE                         R2 R1 R0
       22 GETUPVAL                         R2 7
       23 GETTABLE                         R1 R2 R0
       24 JUMPIFNOT                        R1 ; [+5]
       25 MOVE                             R2 R1
       26 CALL                             R2 0 0
       27 GETUPVAL                         R2 7
       28 LOADNIL                          R3
       29 SETTABLE                         R3 R2 R0
       30 GETIMPORT                        R1 K2 [pcall]
       32 NEWCLOSURE                       R2 P0
       33 CAPTURE                          UPVAL U8
       34 CAPTURE                          VAL R0
       35 CALL                             R1 1 0
       36 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_5:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETIMPORT                        R7 K2 [string.lower]
        6 MOVE                             R8 R6
        7 CALL                             R7 1 1
        8 GETUPVAL                         R9 0
        9 GETTABLE                         R8 R9 R7
       10 JUMPIFNOT                        R8 ; [+9]
       11 GETIMPORT                        R8 K4 [error]
       13 LOADK                            R10 K5 ["Mode command %* collides with an existing tool slash command"]
       14 MOVE                             R12 R7
       15 NAMECALL                         R10 R10 K6 ["format"]
       17 CALL                             R10 2 1
       18 MOVE                             R9 R10
       19 CALL                             R8 1 0
       20 GETUPVAL                         R9 1
       21 GETTABLE                         R8 R9 R7
       22 JUMPIFNOT                        R8 ; [+9]
       23 GETIMPORT                        R8 K4 [error]
       25 LOADK                            R10 K7 ["Mode command %* already registered"]
       26 MOVE                             R12 R7
       27 NAMECALL                         R10 R10 K6 ["format"]
       29 CALL                             R10 2 1
       30 MOVE                             R9 R10
       31 CALL                             R8 1 0
       32 GETUPVAL                         R8 1
       33 SETTABLE                         R6 R8 R7
       34 GETUPVAL                         R9 2
       35 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
       37 MOVE                             R10 R7
       38 GETIMPORT                        R8 K10 [table.insert]
       40 CALL                             R8 2 0
       41 JUMPIFNOT                        R1 ; [+5]
       42 GETUPVAL                         R8 3
       43 NEWCLOSURE                       R9 P0
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R6
       46 SETTABLE                         R9 R8 R7
       47 FORGLOOP                         R2 2 ; [-44]
       49 GETIMPORT                        R2 K12 [table.sort]
       51 GETUPVAL                         R3 2
       52 CALL                             R2 1 0
       53 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getAll"]
        3 CALL                             R0 0 1
        4 NEWTABLE                         R1 0 0
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETUPVAL                         R8 1
       11 GETTABLE                         R7 R8 R5
       12 JUMPIF                           R7 ; [+10]
       13 GETUPVAL                         R8 2
       14 GETTABLE                         R7 R8 R5
       15 JUMPIF                           R7 ; [+7]
       16 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       18 MOVE                             R8 R1
       19 MOVE                             R9 R5
       20 GETIMPORT                        R7 K3 [table.insert]
       22 CALL                             R7 2 0
       23 FORGLOOP                         R2 2 ; [-14]
       25 RETURN                           R1 1

PROTO_8:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 3
        6 FORGPREP                         R2
        7 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R6
       11 GETIMPORT                        R7 K4 [table.insert]
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 2 ; [-8]
       16 JUMPIFNOT                        R0 ; [+5]
       17 GETIMPORT                        R2 K7 [string.lower]
       19 MOVE                             R3 R0
       20 CALL                             R2 1 1
       21 JUMP                             ; [+1]
       22 LOADNIL                          R2
       23 GETUPVAL                         R3 2
       24 LOADNIL                          R4
       25 LOADNIL                          R5
       26 FORGPREP                         R3
       27 JUMPIFEQ                         R7 R2 ; [+8]
       29 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       31 MOVE                             R9 R1
       32 MOVE                             R10 R7
       33 GETIMPORT                        R8 K4 [table.insert]
       35 CALL                             R8 2 0
       36 FORGLOOP                         R3 2 ; [-10]
       38 GETIMPORT                        R3 K9 [table.sort]
       40 MOVE                             R4 R1
       41 CALL                             R3 1 0
       42 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["description"]
        3 RETURN                           R0 1

PROTO_10:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["Skill"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K5 [{"skill_name"}]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K0 ["name"]
       10 SETTABLEKS                       R3 R2 K4 ["skill_name"]
       12 SETTABLEKS                       R2 R1 K1 ["arguments"]
       14 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["get"]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 1
        9 JUMPIFNOT                        R2 ; [+15]
       10 DUPTABLE                         R3 K6 [{["command"], ["continueWithLLM"] = True, ["getDescription"], ["mapToToolCall"]}]
       11 GETTABLEKS                       R4 R2 K7 ["name"]
       13 SETTABLEKS                       R4 R3 K1 ["command"]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R2
       17 SETTABLEKS                       R4 R3 K4 ["getDescription"]
       19 NEWCLOSURE                       R4 P1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R2
       22 SETTABLEKS                       R4 R3 K5 ["mapToToolCall"]
       24 RETURN                           R3 1
       25 LOADNIL                          R3
       26 RETURN                           R3 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+3]
        3 MOVE                             R2 R1
        4 CALL                             R2 0 -1
        5 RETURN                           R2 -1
        6 GETUPVAL                         R3 1
        7 GETTABLE                         R2 R3 R0
        8 JUMPIFNOT                        R2 ; [+3]
        9 MOVE                             R3 R2
       10 CALL                             R3 0 -1
       11 RETURN                           R3 -1
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K0 ["get"]
       15 MOVE                             R4 R0
       16 CALL                             R3 1 1
       17 JUMPIFNOT                        R3 ; [+3]
       18 GETTABLEKS                       R4 R3 K1 ["description"]
       20 RETURN                           R4 1
       21 LOADNIL                          R4
       22 RETURN                           R4 1

PROTO_13:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K3 ["Skill"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K5 [{"skill_name"}]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K0 ["name"]
       10 SETTABLEKS                       R3 R2 K4 ["skill_name"]
       12 SETTABLEKS                       R2 R1 K1 ["arguments"]
       14 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["get"]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 1
        9 JUMPIFNOT                        R2 ; [+4]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R2
       13 RETURN                           R3 1
       14 LOADNIL                          R3
       15 RETURN                           R3 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getHandler"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+2]
        3 DUPTABLE                         R2 K2 [{[1] = False}]
        4 RETURN                           R2 1
        5 GETUPVAL                         R3 1
        6 GETTABLE                         R2 R3 R0
        7 JUMPIFNOT                        R2 ; [+5]
        8 MOVE                             R3 R2
        9 MOVE                             R4 R0
       10 MOVE                             R5 R1
       11 CALL                             R3 2 -1
       12 RETURN                           R3 -1
       13 GETIMPORT                        R3 K4 [pcall]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R0
       18 CALL                             R3 1 2
       19 JUMPIFNOT                        R3 ; [+2]
       20 JUMPIFNOTEQKNIL                  R4 ; [+3]
       22 DUPTABLE                         R5 K6 [{[1] = True}]
       23 RETURN                           R5 1
       24 LOADNIL                          R5
       25 RETURN                           R5 1

PROTO_18:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantSplitToolsAndWidgets"]
        3 NOT                              R2 R3
        4 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        6 LOADK                            R3 K1 ["toolDisplayNameFunction is deprecated."]
        7 GETIMPORT                        R1 K3 [assert]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R2 1
       11 GETTABLE                         R1 R2 R0
       12 JUMPIFNOT                        R1 ; [+3]
       13 MOVE                             R2 R1
       14 CALL                             R2 0 -1
       15 RETURN                           R2 -1
       16 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 SETTABLE                         R2 R1 R0
        3 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_23:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_24:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 NEWTABLE                         R0 0 0
        5 SETUPVAL                         R0 1
        6 NEWTABLE                         R0 0 0
        8 SETUPVAL                         R0 2
        9 NEWTABLE                         R0 0 0
       11 SETUPVAL                         R0 3
       12 NEWTABLE                         R0 0 0
       14 SETUPVAL                         R0 4
       15 NEWTABLE                         R0 0 0
       17 SETUPVAL                         R0 5
       18 NEWTABLE                         R0 0 0
       20 SETUPVAL                         R0 6
       21 NEWTABLE                         R0 0 0
       23 SETUPVAL                         R0 7
       24 NEWTABLE                         R0 0 0
       26 SETUPVAL                         R0 8
       27 GETUPVAL                         R0 9
       28 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantSplitToolsAndWidgets"]
       30 JUMPIF                           R0 ; [+6]
       31 NEWTABLE                         R0 0 0
       33 SETUPVAL                         R0 10
       34 NEWTABLE                         R0 0 0
       36 SETUPVAL                         R0 11
       37 GETUPVAL                         R0 12
       38 GETTABLEKS                       R0 R0 K1 ["clear"]
       40 CALL                             R0 0 0
       41 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantHarness"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["DEPRECATED_ContentWidgetRegistry"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["DataModelType"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Flags"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Components"]
       37 GETTABLEKS                       R6 R6 K13 ["ContentWidgets"]
       39 GETTABLEKS                       R6 R6 K14 ["InputRequestedContentWidget"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Parent"]
       46 GETTABLEKS                       R7 R7 K15 ["ModelContextProtocol"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K12 ["Components"]
       53 GETTABLEKS                       R8 R8 K16 ["PropertyRows"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K17 ["Skills"]
       60 GETTABLEKS                       R9 R9 K18 ["SkillRegistry"]
       62 CALL                             R8 1 1
       63 GETTABLEKS                       R9 R1 K19 ["Engine"]
       65 GETTABLEKS                       R9 R9 K20 ["Providers"]
       67 GETTABLEKS                       R9 R9 K21 ["ToolNames"]
       69 GETIMPORT                        R10 K5 [require]
       71 GETTABLEKS                       R11 R0 K22 ["Types"]
       73 CALL                             R10 1 1
       74 GETTABLEKS                       R11 R6 K23 ["ToolRegistry"]
       76 DUPTABLE                         R12 K30 [{["None"] = "none", ["CommandPrefix"] = "/", ["CommandDelimiter"] = " "}]
       77 NEWTABLE                         R13 0 0
       79 NEWTABLE                         R14 0 0
       81 NEWTABLE                         R15 0 0
       83 NEWTABLE                         R16 0 0
       85 NEWTABLE                         R17 0 0
       87 NEWTABLE                         R18 0 0
       89 NEWTABLE                         R19 0 0
       91 NEWTABLE                         R20 0 0
       93 NEWTABLE                         R21 0 0
       95 NEWTABLE                         R22 0 0
       97 NEWTABLE                         R23 0 0
       99 NEWTABLE                         R24 0 0
      101 NEWTABLE                         R25 0 0
      103 NEWTABLE                         R26 0 0
      105 NEWTABLE                         R27 0 0
      107 DUPCLOSURE                       R28 K31 [PROTO_0]
      108 CAPTURE                          VAL R3
      109 NEWCLOSURE                       R29 P1
      110 CAPTURE                          REF R13
      111 CAPTURE                          VAL R12
      112 CAPTURE                          REF R14
      113 CAPTURE                          VAL R15
      114 CAPTURE                          REF R16
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R2
      117 CAPTURE                          REF R26
      118 CAPTURE                          REF R25
      119 CAPTURE                          REF R20
      120 CAPTURE                          REF R21
      121 CAPTURE                          VAL R23
      122 CAPTURE                          VAL R28
      123 CAPTURE                          VAL R22
      124 CAPTURE                          VAL R27
      125 CAPTURE                          VAL R11
      126 SETTABLEKS                       R29 R12 K32 ["registerTool"]
      128 NEWCLOSURE                       R29 P2
      129 CAPTURE                          REF R20
      130 CAPTURE                          REF R21
      131 CAPTURE                          VAL R23
      132 CAPTURE                          REF R24
      133 CAPTURE                          VAL R22
      134 CAPTURE                          VAL R4
      135 CAPTURE                          REF R25
      136 CAPTURE                          REF R26
      137 CAPTURE                          VAL R11
      138 SETTABLEKS                       R29 R12 K33 ["unregisterTool"]
      140 NEWCLOSURE                       R29 P3
      141 CAPTURE                          REF R13
      142 CAPTURE                          REF R17
      143 CAPTURE                          REF R18
      144 CAPTURE                          REF R19
      145 SETTABLEKS                       R29 R12 K34 ["registerModeCommands"]
      147 NEWCLOSURE                       R29 P4
      148 CAPTURE                          REF R17
      149 SETTABLEKS                       R29 R12 K35 ["getModeForCommand"]
      151 NEWCLOSURE                       R29 P5
      152 CAPTURE                          VAL R8
      153 CAPTURE                          REF R13
      154 CAPTURE                          REF R17
      155 NEWCLOSURE                       R30 P6
      156 CAPTURE                          REF R16
      157 CAPTURE                          VAL R29
      158 CAPTURE                          REF R18
      159 SETTABLEKS                       R30 R12 K36 ["getRegisteredSlashCommands"]
      161 DUPCLOSURE                       R30 K37 [PROTO_11]
      162 CAPTURE                          VAL R15
      163 CAPTURE                          VAL R8
      164 CAPTURE                          VAL R9
      165 SETTABLEKS                       R30 R12 K38 ["getSlashCommandDefinition"]
      167 NEWCLOSURE                       R30 P8
      168 CAPTURE                          REF R14
      169 CAPTURE                          REF R19
      170 CAPTURE                          VAL R8
      171 SETTABLEKS                       R30 R12 K39 ["getSlashCommandDescription"]
      173 NEWCLOSURE                       R30 P9
      174 CAPTURE                          REF R13
      175 CAPTURE                          VAL R8
      176 CAPTURE                          VAL R9
      177 SETTABLEKS                       R30 R12 K40 ["getSlashCommandTransformation"]
      179 NEWCLOSURE                       R30 P10
      180 CAPTURE                          REF R20
      181 SETTABLEKS                       R30 R12 K41 ["getStreamTransform"]
      183 NEWCLOSURE                       R30 P11
      184 CAPTURE                          REF R24
      185 CAPTURE                          REF R21
      186 CAPTURE                          VAL R11
      187 SETTABLEKS                       R30 R12 K42 ["getPreExecuteWarningResult"]
      189 NEWCLOSURE                       R30 P12
      190 CAPTURE                          VAL R4
      191 CAPTURE                          REF R25
      192 SETTABLEKS                       R30 R12 K43 ["DEPRECATED_getToolDisplayName"]
      194 NEWCLOSURE                       R30 P13
      195 CAPTURE                          REF R24
      196 SETTABLEKS                       R30 R12 K44 ["setToolAlwaysAccepted"]
      198 DUPCLOSURE                       R30 K45 [PROTO_20]
      199 CAPTURE                          VAL R23
      200 SETTABLEKS                       R30 R12 K46 ["getToolCallOptions"]
      202 DUPCLOSURE                       R30 K47 [PROTO_21]
      203 CAPTURE                          VAL R22
      204 SETTABLEKS                       R30 R12 K48 ["getToolAvailableDataModelTypes"]
      206 DUPCLOSURE                       R30 K49 [PROTO_22]
      207 CAPTURE                          VAL R27
      208 SETTABLEKS                       R30 R12 K50 ["getToolGetDescriptionFunction"]
      210 NEWCLOSURE                       R30 P17
      211 CAPTURE                          REF R24
      212 SETTABLEKS                       R30 R12 K51 ["clearAlwaysAcceptedTools"]
      214 NEWCLOSURE                       R30 P18
      215 CAPTURE                          REF R20
      216 CAPTURE                          REF R13
      217 CAPTURE                          REF R16
      218 CAPTURE                          REF R14
      219 CAPTURE                          REF R17
      220 CAPTURE                          REF R18
      221 CAPTURE                          REF R19
      222 CAPTURE                          REF R21
      223 CAPTURE                          REF R24
      224 CAPTURE                          VAL R4
      225 CAPTURE                          REF R25
      226 CAPTURE                          REF R26
      227 CAPTURE                          VAL R11
      228 SETTABLEKS                       R30 R12 K52 ["clear"]
      230 CLOSEUPVALS                      R13
      231 RETURN                           R12 1
