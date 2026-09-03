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
        2 JUMPIFNOT                        R1 ; [+76]
        3 MOVE                             R2 R1
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["command"]
        9 LOADNIL                          R8
       10 GETUPVAL                         R9 0
       11 GETTABLEKS                       R9 R9 K2 ["FFlagAssistantAskInputTool"]
       13 JUMPIFNOT                        R9 ; [+7]
       14 GETUPVAL                         R10 1
       15 GETTABLE                         R9 R10 R7
       16 JUMPIFNOTEQKNIL                  R9 ; [+2]
       18 LOADB                            R8 0 +1
       19 LOADB                            R8 1
       20 JUMP                             ; [+6]
       21 GETUPVAL                         R10 2
       22 GETTABLE                         R9 R10 R7
       23 JUMPIFNOTEQKNIL                  R9 ; [+2]
       25 LOADB                            R8 0 +1
       26 LOADB                            R8 1
       27 JUMPIFNOT                        R8 ; [+9]
       28 GETIMPORT                        R9 K4 [error]
       30 LOADK                            R11 K5 ["Slash command %* already registered"]
       31 MOVE                             R13 R7
       32 NAMECALL                         R11 R11 K6 ["format"]
       34 CALL                             R11 2 1
       35 MOVE                             R10 R11
       36 CALL                             R9 1 0
       37 GETUPVAL                         R11 3
       38 GETTABLEKS                       R11 R11 K7 ["CommandDelimiter"]
       40 NAMECALL                         R9 R7 K8 ["find"]
       42 CALL                             R9 2 1
       43 JUMPIFNOT                        R9 ; [+12]
       44 GETIMPORT                        R9 K4 [error]
       46 LOADK                            R11 K9 ["Slash command %* cannot contain the delimiter \"%*\""]
       47 MOVE                             R13 R7
       48 GETUPVAL                         R14 3
       49 GETTABLEKS                       R14 R14 K7 ["CommandDelimiter"]
       51 NAMECALL                         R11 R11 K6 ["format"]
       53 CALL                             R11 3 1
       54 MOVE                             R10 R11
       55 CALL                             R9 1 0
       56 GETUPVAL                         R9 2
       57 GETTABLEKS                       R10 R6 K10 ["mapToToolCall"]
       59 SETTABLE                         R10 R9 R7
       60 GETUPVAL                         R9 4
       61 GETTABLEKS                       R10 R6 K11 ["getDescription"]
       63 SETTABLE                         R10 R9 R7
       64 GETUPVAL                         R9 1
       65 SETTABLE                         R6 R9 R7
       66 GETUPVAL                         R10 5
       67 FASTCALL2                        TABLE_INSERT R10 R7 ; [+4]
       69 MOVE                             R11 R7
       70 GETIMPORT                        R9 K14 [table.insert]
       72 CALL                             R9 2 0
       73 FORGLOOP                         R2 2 ; [-67]
       75 GETIMPORT                        R2 K16 [table.sort]
       77 GETUPVAL                         R3 5
       78 CALL                             R2 1 0
       79 GETTABLEKS                       R2 R0 K17 ["getPreExecuteWarning"]
       81 JUMPIFNOT                        R2 ; [+10]
       82 GETUPVAL                         R2 6
       83 GETTABLEKS                       R3 R0 K18 ["definition"]
       85 GETTABLEKS                       R3 R3 K18 ["definition"]
       87 GETTABLEKS                       R3 R3 K19 ["name"]
       89 GETTABLEKS                       R4 R0 K17 ["getPreExecuteWarning"]
       91 SETTABLE                         R4 R2 R3
       92 GETTABLEKS                       R2 R0 K20 ["toolCallOptions"]
       94 JUMPIFNOT                        R2 ; [+10]
       95 GETUPVAL                         R2 7
       96 GETTABLEKS                       R3 R0 K18 ["definition"]
       98 GETTABLEKS                       R3 R3 K18 ["definition"]
      100 GETTABLEKS                       R3 R3 K19 ["name"]
      102 GETTABLEKS                       R4 R0 K20 ["toolCallOptions"]
      104 SETTABLE                         R4 R2 R3
      105 GETTABLEKS                       R2 R0 K21 ["availableDataModelTypes"]
      107 JUMPIFNOT                        R2 ; [+18]
      108 GETUPVAL                         R2 0
      109 GETTABLEKS                       R2 R2 K22 ["FFlagAssistantStandaloneDataModel"]
      111 JUMPIF                           R2 ; [+4]
      112 GETUPVAL                         R2 8
      113 GETTABLEKS                       R3 R0 K21 ["availableDataModelTypes"]
      115 CALL                             R2 1 0
      116 GETUPVAL                         R2 9
      117 GETTABLEKS                       R3 R0 K18 ["definition"]
      119 GETTABLEKS                       R3 R3 K18 ["definition"]
      121 GETTABLEKS                       R3 R3 K19 ["name"]
      123 GETTABLEKS                       R4 R0 K21 ["availableDataModelTypes"]
      125 SETTABLE                         R4 R2 R3
      126 GETTABLEKS                       R2 R0 K11 ["getDescription"]
      128 JUMPIFNOT                        R2 ; [+10]
      129 GETUPVAL                         R2 10
      130 GETTABLEKS                       R3 R0 K18 ["definition"]
      132 GETTABLEKS                       R3 R3 K18 ["definition"]
      134 GETTABLEKS                       R3 R3 K19 ["name"]
      136 GETTABLEKS                       R4 R0 K11 ["getDescription"]
      138 SETTABLE                         R4 R2 R3
      139 GETUPVAL                         R2 11
      140 GETTABLEKS                       R2 R2 K23 ["addTool"]
      142 GETTABLEKS                       R3 R0 K18 ["definition"]
      144 CALL                             R2 1 0
      145 RETURN                           R0 0

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
       12 GETIMPORT                        R1 K1 [pcall]
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          VAL R0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

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
        8 LOADNIL                          R8
        9 GETUPVAL                         R9 0
       10 GETTABLEKS                       R9 R9 K3 ["FFlagAssistantAskInputTool"]
       12 JUMPIFNOT                        R9 ; [+7]
       13 GETUPVAL                         R10 1
       14 GETTABLE                         R9 R10 R7
       15 JUMPIFNOTEQKNIL                  R9 ; [+2]
       17 LOADB                            R8 0 +1
       18 LOADB                            R8 1
       19 JUMP                             ; [+6]
       20 GETUPVAL                         R10 2
       21 GETTABLE                         R9 R10 R7
       22 JUMPIFNOTEQKNIL                  R9 ; [+2]
       24 LOADB                            R8 0 +1
       25 LOADB                            R8 1
       26 JUMPIFNOT                        R8 ; [+9]
       27 GETIMPORT                        R9 K5 [error]
       29 LOADK                            R11 K6 ["Mode command %* collides with an existing tool slash command"]
       30 MOVE                             R13 R7
       31 NAMECALL                         R11 R11 K7 ["format"]
       33 CALL                             R11 2 1
       34 MOVE                             R10 R11
       35 CALL                             R9 1 0
       36 GETUPVAL                         R10 3
       37 GETTABLE                         R9 R10 R7
       38 JUMPIFNOT                        R9 ; [+9]
       39 GETIMPORT                        R9 K5 [error]
       41 LOADK                            R11 K8 ["Mode command %* already registered"]
       42 MOVE                             R13 R7
       43 NAMECALL                         R11 R11 K7 ["format"]
       45 CALL                             R11 2 1
       46 MOVE                             R10 R11
       47 CALL                             R9 1 0
       48 GETUPVAL                         R9 3
       49 SETTABLE                         R6 R9 R7
       50 GETUPVAL                         R10 4
       51 FASTCALL2                        TABLE_INSERT R10 R7 ; [+4]
       53 MOVE                             R11 R7
       54 GETIMPORT                        R9 K11 [table.insert]
       56 CALL                             R9 2 0
       57 JUMPIFNOT                        R1 ; [+5]
       58 GETUPVAL                         R9 5
       59 NEWCLOSURE                       R10 P0
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R6
       62 SETTABLE                         R10 R9 R7
       63 FORGLOOP                         R2 2 ; [-60]
       65 GETIMPORT                        R2 K13 [table.sort]
       67 GETUPVAL                         R3 4
       68 CALL                             R2 1 0
       69 RETURN                           R0 0

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
       10 LOADNIL                          R7
       11 GETUPVAL                         R8 1
       12 GETTABLEKS                       R8 R8 K1 ["FFlagAssistantAskInputTool"]
       14 JUMPIFNOT                        R8 ; [+7]
       15 GETUPVAL                         R9 2
       16 GETTABLE                         R8 R9 R5
       17 JUMPIFNOTEQKNIL                  R8 ; [+2]
       19 LOADB                            R7 0 +1
       20 LOADB                            R7 1
       21 JUMP                             ; [+6]
       22 GETUPVAL                         R9 3
       23 GETTABLE                         R8 R9 R5
       24 JUMPIFNOTEQKNIL                  R8 ; [+2]
       26 LOADB                            R7 0 +1
       27 LOADB                            R7 1
       28 JUMPIF                           R7 ; [+10]
       29 GETUPVAL                         R9 4
       30 GETTABLE                         R8 R9 R5
       31 JUMPIF                           R8 ; [+7]
       32 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       34 MOVE                             R9 R1
       35 MOVE                             R10 R5
       36 GETIMPORT                        R8 K4 [table.insert]
       38 CALL                             R8 2 0
       39 FORGLOOP                         R2 2 ; [-30]
       41 RETURN                           R1 1

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
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 NEWTABLE                         R1 0 1
        5 MOVE                             R2 R0
        6 SETLIST                          R1 R2 1 [1]
        8 RETURN                           R1 1

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["get"]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 1
        9 JUMPIFNOT                        R2 ; [+32]
       10 DUPTABLE                         R3 K7 [{["command"], ["continueWithLLM"] = True, ["getDescription"], ["runToolChain"], ["mapToToolCall"]}]
       11 GETTABLEKS                       R4 R2 K8 ["name"]
       13 SETTABLEKS                       R4 R3 K1 ["command"]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R2
       17 SETTABLEKS                       R4 R3 K4 ["getDescription"]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K9 ["FFlagAssistantAskInputTool"]
       22 JUMPIFNOT                        R5 ; [+4]
       23 NEWCLOSURE                       R4 P1
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R2
       26 JUMP                             ; [+1]
       27 LOADNIL                          R4
       28 SETTABLEKS                       R4 R3 K5 ["runToolChain"]
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R5 R5 K9 ["FFlagAssistantAskInputTool"]
       33 JUMPIFNOT                        R5 ; [+2]
       34 LOADNIL                          R4
       35 JUMP                             ; [+3]
       36 NEWCLOSURE                       R4 P2
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R4 R3 K6 ["mapToToolCall"]
       41 RETURN                           R3 1
       42 LOADNIL                          R3
       43 RETURN                           R3 1

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getHandler"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_18:
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
       28 GETTABLEKS                       R0 R0 K0 ["clear"]
       30 CALL                             R0 0 0
       31 RETURN                           R0 0

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
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["DEPRECATED_PropertyRows"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["DataModelType"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Flags"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K8 ["Components"]
       37 GETTABLEKS                       R6 R6 K13 ["ContentWidgets"]
       39 GETTABLEKS                       R6 R6 K14 ["InputRequestedContentWidget"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Parent"]
       46 GETTABLEKS                       R7 R7 K15 ["ModelContextProtocol"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K16 ["Skills"]
       53 GETTABLEKS                       R8 R8 K17 ["SkillRegistry"]
       55 CALL                             R7 1 1
       56 GETTABLEKS                       R8 R1 K18 ["Engine"]
       58 GETTABLEKS                       R8 R8 K19 ["Providers"]
       60 GETTABLEKS                       R8 R8 K20 ["ToolNames"]
       62 GETIMPORT                        R9 K5 [require]
       64 GETTABLEKS                       R10 R0 K21 ["Types"]
       66 CALL                             R9 1 1
       67 GETTABLEKS                       R10 R6 K22 ["ToolRegistry"]
       69 DUPTABLE                         R11 K27 [{["CommandPrefix"] = "/", ["CommandDelimiter"] = " "}]
       70 NEWTABLE                         R12 0 0
       72 NEWTABLE                         R13 0 0
       74 NEWTABLE                         R14 0 0
       76 NEWTABLE                         R15 0 0
       78 NEWTABLE                         R16 0 0
       80 NEWTABLE                         R17 0 0
       82 NEWTABLE                         R18 0 0
       84 NEWTABLE                         R19 0 0
       86 NEWTABLE                         R20 0 0
       88 NEWTABLE                         R21 0 0
       90 NEWTABLE                         R22 0 0
       92 NEWTABLE                         R23 0 0
       94 DUPCLOSURE                       R24 K28 [PROTO_0]
       95 CAPTURE                          VAL R3
       96 NEWCLOSURE                       R25 P1
       97 CAPTURE                          VAL R4
       98 CAPTURE                          REF R14
       99 CAPTURE                          REF R12
      100 CAPTURE                          VAL R11
      101 CAPTURE                          REF R13
      102 CAPTURE                          REF R15
      103 CAPTURE                          REF R19
      104 CAPTURE                          VAL R21
      105 CAPTURE                          VAL R24
      106 CAPTURE                          VAL R20
      107 CAPTURE                          VAL R23
      108 CAPTURE                          VAL R10
      109 SETTABLEKS                       R25 R11 K29 ["registerTool"]
      111 NEWCLOSURE                       R25 P2
      112 CAPTURE                          REF R19
      113 CAPTURE                          VAL R21
      114 CAPTURE                          REF R22
      115 CAPTURE                          VAL R20
      116 CAPTURE                          VAL R10
      117 SETTABLEKS                       R25 R11 K30 ["unregisterTool"]
      119 NEWCLOSURE                       R25 P3
      120 CAPTURE                          VAL R4
      121 CAPTURE                          REF R14
      122 CAPTURE                          REF R12
      123 CAPTURE                          REF R16
      124 CAPTURE                          REF R17
      125 CAPTURE                          REF R18
      126 SETTABLEKS                       R25 R11 K31 ["registerModeCommands"]
      128 NEWCLOSURE                       R25 P4
      129 CAPTURE                          REF R16
      130 SETTABLEKS                       R25 R11 K32 ["getModeForCommand"]
      132 NEWCLOSURE                       R25 P5
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R4
      135 CAPTURE                          REF R14
      136 CAPTURE                          REF R12
      137 CAPTURE                          REF R16
      138 NEWCLOSURE                       R26 P6
      139 CAPTURE                          REF R15
      140 CAPTURE                          VAL R25
      141 CAPTURE                          REF R17
      142 SETTABLEKS                       R26 R11 K33 ["getRegisteredSlashCommands"]
      144 NEWCLOSURE                       R26 P7
      145 CAPTURE                          REF R14
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R8
      149 SETTABLEKS                       R26 R11 K34 ["getSlashCommandDefinition"]
      151 NEWCLOSURE                       R26 P8
      152 CAPTURE                          REF R13
      153 CAPTURE                          REF R18
      154 CAPTURE                          VAL R7
      155 SETTABLEKS                       R26 R11 K35 ["getSlashCommandDescription"]
      157 NEWCLOSURE                       R26 P9
      158 CAPTURE                          REF R12
      159 CAPTURE                          VAL R7
      160 CAPTURE                          VAL R8
      161 SETTABLEKS                       R26 R11 K36 ["getSlashCommandTransformation"]
      163 NEWCLOSURE                       R26 P10
      164 CAPTURE                          REF R22
      165 CAPTURE                          REF R19
      166 CAPTURE                          VAL R10
      167 SETTABLEKS                       R26 R11 K37 ["getPreExecuteWarningResult"]
      169 NEWCLOSURE                       R26 P11
      170 CAPTURE                          REF R22
      171 SETTABLEKS                       R26 R11 K38 ["setToolAlwaysAccepted"]
      173 DUPCLOSURE                       R26 K39 [PROTO_20]
      174 CAPTURE                          VAL R21
      175 SETTABLEKS                       R26 R11 K40 ["getToolCallOptions"]
      177 DUPCLOSURE                       R26 K41 [PROTO_21]
      178 CAPTURE                          VAL R20
      179 SETTABLEKS                       R26 R11 K42 ["getToolAvailableDataModelTypes"]
      181 DUPCLOSURE                       R26 K43 [PROTO_22]
      182 CAPTURE                          VAL R23
      183 SETTABLEKS                       R26 R11 K44 ["getToolGetDescriptionFunction"]
      185 NEWCLOSURE                       R26 P15
      186 CAPTURE                          REF R22
      187 SETTABLEKS                       R26 R11 K45 ["clearAlwaysAcceptedTools"]
      189 NEWCLOSURE                       R26 P16
      190 CAPTURE                          REF R12
      191 CAPTURE                          REF R15
      192 CAPTURE                          REF R14
      193 CAPTURE                          REF R13
      194 CAPTURE                          REF R16
      195 CAPTURE                          REF R17
      196 CAPTURE                          REF R18
      197 CAPTURE                          REF R19
      198 CAPTURE                          REF R22
      199 CAPTURE                          VAL R10
      200 SETTABLEKS                       R26 R11 K46 ["clear"]
      202 CLOSEUPVALS                      R12
      203 RETURN                           R11 1
