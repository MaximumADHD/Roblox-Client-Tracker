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
        2 JUMPIFNOT                        R1 ; [+77]
        3 MOVE                             R2 R1
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["command"]
        9 LOADNIL                          R8
       10 GETUPVAL                         R9 0
       11 GETTABLEKS                       R9 R9 K2 ["getIsAskInputToolEnabled"]
       13 CALL                             R9 0 1
       14 JUMPIFNOT                        R9 ; [+7]
       15 GETUPVAL                         R10 1
       16 GETTABLE                         R9 R10 R7
       17 JUMPIFNOTEQKNIL                  R9 ; [+2]
       19 LOADB                            R8 0 +1
       20 LOADB                            R8 1
       21 JUMP                             ; [+6]
       22 GETUPVAL                         R10 2
       23 GETTABLE                         R9 R10 R7
       24 JUMPIFNOTEQKNIL                  R9 ; [+2]
       26 LOADB                            R8 0 +1
       27 LOADB                            R8 1
       28 JUMPIFNOT                        R8 ; [+9]
       29 GETIMPORT                        R9 K4 [error]
       31 LOADK                            R11 K5 ["Slash command %* already registered"]
       32 MOVE                             R13 R7
       33 NAMECALL                         R11 R11 K6 ["format"]
       35 CALL                             R11 2 1
       36 MOVE                             R10 R11
       37 CALL                             R9 1 0
       38 GETUPVAL                         R11 3
       39 GETTABLEKS                       R11 R11 K7 ["CommandDelimiter"]
       41 NAMECALL                         R9 R7 K8 ["find"]
       43 CALL                             R9 2 1
       44 JUMPIFNOT                        R9 ; [+12]
       45 GETIMPORT                        R9 K4 [error]
       47 LOADK                            R11 K9 ["Slash command %* cannot contain the delimiter \"%*\""]
       48 MOVE                             R13 R7
       49 GETUPVAL                         R14 3
       50 GETTABLEKS                       R14 R14 K7 ["CommandDelimiter"]
       52 NAMECALL                         R11 R11 K6 ["format"]
       54 CALL                             R11 3 1
       55 MOVE                             R10 R11
       56 CALL                             R9 1 0
       57 GETUPVAL                         R9 2
       58 GETTABLEKS                       R10 R6 K10 ["mapToToolCall"]
       60 SETTABLE                         R10 R9 R7
       61 GETUPVAL                         R9 4
       62 GETTABLEKS                       R10 R6 K11 ["getDescription"]
       64 SETTABLE                         R10 R9 R7
       65 GETUPVAL                         R9 1
       66 SETTABLE                         R6 R9 R7
       67 GETUPVAL                         R10 5
       68 FASTCALL2                        TABLE_INSERT R10 R7 ; [+4]
       70 MOVE                             R11 R7
       71 GETIMPORT                        R9 K14 [table.insert]
       73 CALL                             R9 2 0
       74 FORGLOOP                         R2 2 ; [-68]
       76 GETIMPORT                        R2 K16 [table.sort]
       78 GETUPVAL                         R3 5
       79 CALL                             R2 1 0
       80 GETUPVAL                         R2 6
       81 GETTABLEKS                       R2 R2 K17 ["FFlagAssistantSplitToolsAndWidgets"]
       83 JUMPIF                           R2 ; [+29]
       84 GETTABLEKS                       R2 R0 K18 ["contentWidgets"]
       86 JUMPIFNOT                        R2 ; [+13]
       87 GETUPVAL                         R3 7
       88 GETTABLEKS                       R3 R3 K19 ["registerWidgetList"]
       90 MOVE                             R4 R2
       91 CALL                             R3 1 1
       92 GETUPVAL                         R4 8
       93 GETTABLEKS                       R5 R0 K20 ["definition"]
       95 GETTABLEKS                       R5 R5 K20 ["definition"]
       97 GETTABLEKS                       R5 R5 K21 ["name"]
       99 SETTABLE                         R3 R4 R5
      100 GETTABLEKS                       R3 R0 K22 ["displayNameFunction"]
      102 JUMPIFNOT                        R3 ; [+10]
      103 GETUPVAL                         R3 9
      104 GETTABLEKS                       R4 R0 K20 ["definition"]
      106 GETTABLEKS                       R4 R4 K20 ["definition"]
      108 GETTABLEKS                       R4 R4 K21 ["name"]
      110 GETTABLEKS                       R5 R0 K22 ["displayNameFunction"]
      112 SETTABLE                         R5 R3 R4
      113 GETTABLEKS                       R2 R0 K23 ["streamTransform"]
      115 JUMPIFNOT                        R2 ; [+10]
      116 GETUPVAL                         R2 10
      117 GETTABLEKS                       R3 R0 K20 ["definition"]
      119 GETTABLEKS                       R3 R3 K20 ["definition"]
      121 GETTABLEKS                       R3 R3 K21 ["name"]
      123 GETTABLEKS                       R4 R0 K23 ["streamTransform"]
      125 SETTABLE                         R4 R2 R3
      126 GETTABLEKS                       R2 R0 K24 ["getPreExecuteWarning"]
      128 JUMPIFNOT                        R2 ; [+10]
      129 GETUPVAL                         R2 11
      130 GETTABLEKS                       R3 R0 K20 ["definition"]
      132 GETTABLEKS                       R3 R3 K20 ["definition"]
      134 GETTABLEKS                       R3 R3 K21 ["name"]
      136 GETTABLEKS                       R4 R0 K24 ["getPreExecuteWarning"]
      138 SETTABLE                         R4 R2 R3
      139 GETTABLEKS                       R2 R0 K25 ["toolCallOptions"]
      141 JUMPIFNOT                        R2 ; [+10]
      142 GETUPVAL                         R2 12
      143 GETTABLEKS                       R3 R0 K20 ["definition"]
      145 GETTABLEKS                       R3 R3 K20 ["definition"]
      147 GETTABLEKS                       R3 R3 K21 ["name"]
      149 GETTABLEKS                       R4 R0 K25 ["toolCallOptions"]
      151 SETTABLE                         R4 R2 R3
      152 GETTABLEKS                       R2 R0 K26 ["availableDataModelTypes"]
      154 JUMPIFNOT                        R2 ; [+18]
      155 GETUPVAL                         R2 6
      156 GETTABLEKS                       R2 R2 K27 ["FFlagAssistantStandaloneDataModel"]
      158 JUMPIF                           R2 ; [+4]
      159 GETUPVAL                         R2 13
      160 GETTABLEKS                       R3 R0 K26 ["availableDataModelTypes"]
      162 CALL                             R2 1 0
      163 GETUPVAL                         R2 14
      164 GETTABLEKS                       R3 R0 K20 ["definition"]
      166 GETTABLEKS                       R3 R3 K20 ["definition"]
      168 GETTABLEKS                       R3 R3 K21 ["name"]
      170 GETTABLEKS                       R4 R0 K26 ["availableDataModelTypes"]
      172 SETTABLE                         R4 R2 R3
      173 GETTABLEKS                       R2 R0 K11 ["getDescription"]
      175 JUMPIFNOT                        R2 ; [+10]
      176 GETUPVAL                         R2 15
      177 GETTABLEKS                       R3 R0 K20 ["definition"]
      179 GETTABLEKS                       R3 R3 K20 ["definition"]
      181 GETTABLEKS                       R3 R3 K21 ["name"]
      183 GETTABLEKS                       R4 R0 K11 ["getDescription"]
      185 SETTABLE                         R4 R2 R3
      186 GETUPVAL                         R2 16
      187 GETTABLEKS                       R2 R2 K28 ["addTool"]
      189 GETTABLEKS                       R3 R0 K20 ["definition"]
      191 CALL                             R2 1 0
      192 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["streamTransform"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R2 R0 K1 ["name"]
        6 GETTABLEKS                       R3 R0 K0 ["streamTransform"]
        8 SETTABLE                         R3 R1 R2
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K2 ["FFlagAssistantSplitToolsAndWidgets"]
       12 JUMPIF                           R1 ; [+9]
       13 GETTABLEKS                       R1 R0 K3 ["displayNameFunction"]
       15 JUMPIFNOT                        R1 ; [+6]
       16 GETUPVAL                         R1 2
       17 GETTABLEKS                       R2 R0 K1 ["name"]
       19 GETTABLEKS                       R3 R0 K3 ["displayNameFunction"]
       21 SETTABLE                         R3 R1 R2
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["removeTool"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_6:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETIMPORT                        R7 K2 [string.lower]
        6 MOVE                             R8 R6
        7 CALL                             R7 1 1
        8 LOADNIL                          R8
        9 GETUPVAL                         R9 0
       10 GETTABLEKS                       R9 R9 K3 ["getIsAskInputToolEnabled"]
       12 CALL                             R9 0 1
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
       28 GETIMPORT                        R9 K5 [error]
       30 LOADK                            R11 K6 ["Mode command %* collides with an existing tool slash command"]
       31 MOVE                             R13 R7
       32 NAMECALL                         R11 R11 K7 ["format"]
       34 CALL                             R11 2 1
       35 MOVE                             R10 R11
       36 CALL                             R9 1 0
       37 GETUPVAL                         R10 3
       38 GETTABLE                         R9 R10 R7
       39 JUMPIFNOT                        R9 ; [+9]
       40 GETIMPORT                        R9 K5 [error]
       42 LOADK                            R11 K8 ["Mode command %* already registered"]
       43 MOVE                             R13 R7
       44 NAMECALL                         R11 R11 K7 ["format"]
       46 CALL                             R11 2 1
       47 MOVE                             R10 R11
       48 CALL                             R9 1 0
       49 GETUPVAL                         R9 3
       50 SETTABLE                         R6 R9 R7
       51 GETUPVAL                         R10 4
       52 FASTCALL2                        TABLE_INSERT R10 R7 ; [+4]
       54 MOVE                             R11 R7
       55 GETIMPORT                        R9 K11 [table.insert]
       57 CALL                             R9 2 0
       58 JUMPIFNOT                        R1 ; [+5]
       59 GETUPVAL                         R9 5
       60 NEWCLOSURE                       R10 P0
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R6
       63 SETTABLE                         R10 R9 R7
       64 FORGLOOP                         R2 2 ; [-61]
       66 GETIMPORT                        R2 K13 [table.sort]
       68 GETUPVAL                         R3 4
       69 CALL                             R2 1 0
       70 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_8:
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
       12 GETTABLEKS                       R8 R8 K1 ["getIsAskInputToolEnabled"]
       14 CALL                             R8 0 1
       15 JUMPIFNOT                        R8 ; [+7]
       16 GETUPVAL                         R9 2
       17 GETTABLE                         R8 R9 R5
       18 JUMPIFNOTEQKNIL                  R8 ; [+2]
       20 LOADB                            R7 0 +1
       21 LOADB                            R7 1
       22 JUMP                             ; [+6]
       23 GETUPVAL                         R9 3
       24 GETTABLE                         R8 R9 R5
       25 JUMPIFNOTEQKNIL                  R8 ; [+2]
       27 LOADB                            R7 0 +1
       28 LOADB                            R7 1
       29 JUMPIF                           R7 ; [+10]
       30 GETUPVAL                         R9 4
       31 GETTABLE                         R8 R9 R5
       32 JUMPIF                           R8 ; [+7]
       33 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       35 MOVE                             R9 R1
       36 MOVE                             R10 R5
       37 GETIMPORT                        R8 K4 [table.insert]
       39 CALL                             R8 2 0
       40 FORGLOOP                         R2 2 ; [-31]
       42 RETURN                           R1 1

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["description"]
        3 RETURN                           R0 1

PROTO_11:
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

PROTO_12:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 NEWTABLE                         R1 0 1
        5 MOVE                             R2 R0
        6 SETLIST                          R1 R2 1 [1]
        8 RETURN                           R1 1

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
        9 JUMPIFNOT                        R2 ; [+34]
       10 DUPTABLE                         R3 K7 [{["command"], ["continueWithLLM"] = True, ["getDescription"], ["runToolChain"], ["mapToToolCall"]}]
       11 GETTABLEKS                       R4 R2 K8 ["name"]
       13 SETTABLEKS                       R4 R3 K1 ["command"]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R2
       17 SETTABLEKS                       R4 R3 K4 ["getDescription"]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K9 ["getIsAskInputToolEnabled"]
       22 CALL                             R5 0 1
       23 JUMPIFNOT                        R5 ; [+4]
       24 NEWCLOSURE                       R4 P1
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          VAL R2
       27 JUMP                             ; [+1]
       28 LOADNIL                          R4
       29 SETTABLEKS                       R4 R3 K5 ["runToolChain"]
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R5 R5 K9 ["getIsAskInputToolEnabled"]
       34 CALL                             R5 0 1
       35 JUMPIFNOT                        R5 ; [+2]
       36 LOADNIL                          R4
       37 JUMP                             ; [+3]
       38 NEWCLOSURE                       R4 P2
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R4 R3 K6 ["mapToToolCall"]
       43 RETURN                           R3 1
       44 LOADNIL                          R3
       45 RETURN                           R3 1

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getHandler"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_20:
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

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 SETTABLE                         R2 R1 R0
        3 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_24:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_26:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_27:
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
       27 NEWTABLE                         R0 0 0
       29 SETUPVAL                         R0 9
       30 GETUPVAL                         R0 10
       31 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantSplitToolsAndWidgets"]
       33 JUMPIF                           R0 ; [+6]
       34 NEWTABLE                         R0 0 0
       36 SETUPVAL                         R0 11
       37 NEWTABLE                         R0 0 0
       39 SETUPVAL                         R0 12
       40 GETUPVAL                         R0 13
       41 GETTABLEKS                       R0 R0 K1 ["clear"]
       43 CALL                             R0 0 0
       44 RETURN                           R0 0

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
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["DEPRECATED_PropertyRows"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Util"]
       32 GETTABLEKS                       R5 R5 K12 ["DataModelType"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["FlagUtils"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K14 ["Flags"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K10 ["Components"]
       49 GETTABLEKS                       R8 R8 K15 ["ContentWidgets"]
       51 GETTABLEKS                       R8 R8 K16 ["InputRequestedContentWidget"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K6 ["Parent"]
       58 GETTABLEKS                       R9 R9 K17 ["ModelContextProtocol"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K18 ["Skills"]
       65 GETTABLEKS                       R10 R10 K19 ["SkillRegistry"]
       67 CALL                             R9 1 1
       68 GETTABLEKS                       R10 R1 K20 ["Engine"]
       70 GETTABLEKS                       R10 R10 K21 ["Providers"]
       72 GETTABLEKS                       R10 R10 K22 ["ToolNames"]
       74 GETIMPORT                        R11 K5 [require]
       76 GETTABLEKS                       R12 R0 K23 ["Types"]
       78 CALL                             R11 1 1
       79 GETTABLEKS                       R12 R8 K24 ["ToolRegistry"]
       81 DUPTABLE                         R13 K31 [{["None"] = "none", ["CommandPrefix"] = "/", ["CommandDelimiter"] = " "}]
       82 NEWTABLE                         R14 0 0
       84 NEWTABLE                         R15 0 0
       86 NEWTABLE                         R16 0 0
       88 NEWTABLE                         R17 0 0
       90 NEWTABLE                         R18 0 0
       92 NEWTABLE                         R19 0 0
       94 NEWTABLE                         R20 0 0
       96 NEWTABLE                         R21 0 0
       98 NEWTABLE                         R22 0 0
      100 NEWTABLE                         R23 0 0
      102 NEWTABLE                         R24 0 0
      104 NEWTABLE                         R25 0 0
      106 NEWTABLE                         R26 0 0
      108 NEWTABLE                         R27 0 0
      110 NEWTABLE                         R28 0 0
      112 DUPCLOSURE                       R29 K32 [PROTO_0]
      113 CAPTURE                          VAL R4
      114 NEWCLOSURE                       R30 P1
      115 CAPTURE                          VAL R5
      116 CAPTURE                          REF R16
      117 CAPTURE                          REF R14
      118 CAPTURE                          VAL R13
      119 CAPTURE                          REF R15
      120 CAPTURE                          REF R17
      121 CAPTURE                          VAL R6
      122 CAPTURE                          VAL R2
      123 CAPTURE                          REF R27
      124 CAPTURE                          REF R26
      125 CAPTURE                          REF R21
      126 CAPTURE                          REF R22
      127 CAPTURE                          VAL R24
      128 CAPTURE                          VAL R29
      129 CAPTURE                          VAL R23
      130 CAPTURE                          VAL R28
      131 CAPTURE                          VAL R12
      132 SETTABLEKS                       R30 R13 K33 ["registerTool"]
      134 NEWCLOSURE                       R30 P2
      135 CAPTURE                          REF R21
      136 CAPTURE                          VAL R6
      137 CAPTURE                          REF R26
      138 SETTABLEKS                       R30 R13 K34 ["registerCloudTool"]
      140 NEWCLOSURE                       R30 P3
      141 CAPTURE                          REF R21
      142 CAPTURE                          REF R22
      143 CAPTURE                          VAL R24
      144 CAPTURE                          REF R25
      145 CAPTURE                          VAL R23
      146 CAPTURE                          VAL R6
      147 CAPTURE                          REF R26
      148 CAPTURE                          REF R27
      149 CAPTURE                          VAL R12
      150 SETTABLEKS                       R30 R13 K35 ["unregisterTool"]
      152 NEWCLOSURE                       R30 P4
      153 CAPTURE                          VAL R5
      154 CAPTURE                          REF R16
      155 CAPTURE                          REF R14
      156 CAPTURE                          REF R18
      157 CAPTURE                          REF R19
      158 CAPTURE                          REF R20
      159 SETTABLEKS                       R30 R13 K36 ["registerModeCommands"]
      161 NEWCLOSURE                       R30 P5
      162 CAPTURE                          REF R18
      163 SETTABLEKS                       R30 R13 K37 ["getModeForCommand"]
      165 NEWCLOSURE                       R30 P6
      166 CAPTURE                          VAL R9
      167 CAPTURE                          VAL R5
      168 CAPTURE                          REF R16
      169 CAPTURE                          REF R14
      170 CAPTURE                          REF R18
      171 NEWCLOSURE                       R31 P7
      172 CAPTURE                          REF R17
      173 CAPTURE                          VAL R30
      174 CAPTURE                          REF R19
      175 SETTABLEKS                       R31 R13 K38 ["getRegisteredSlashCommands"]
      177 NEWCLOSURE                       R31 P8
      178 CAPTURE                          REF R16
      179 CAPTURE                          VAL R9
      180 CAPTURE                          VAL R5
      181 CAPTURE                          VAL R10
      182 SETTABLEKS                       R31 R13 K39 ["getSlashCommandDefinition"]
      184 NEWCLOSURE                       R31 P9
      185 CAPTURE                          REF R15
      186 CAPTURE                          REF R20
      187 CAPTURE                          VAL R9
      188 SETTABLEKS                       R31 R13 K40 ["getSlashCommandDescription"]
      190 NEWCLOSURE                       R31 P10
      191 CAPTURE                          REF R14
      192 CAPTURE                          VAL R9
      193 CAPTURE                          VAL R10
      194 SETTABLEKS                       R31 R13 K41 ["getSlashCommandTransformation"]
      196 NEWCLOSURE                       R31 P11
      197 CAPTURE                          REF R21
      198 SETTABLEKS                       R31 R13 K42 ["getStreamTransform"]
      200 NEWCLOSURE                       R31 P12
      201 CAPTURE                          REF R25
      202 CAPTURE                          REF R22
      203 CAPTURE                          VAL R12
      204 SETTABLEKS                       R31 R13 K43 ["getPreExecuteWarningResult"]
      206 NEWCLOSURE                       R31 P13
      207 CAPTURE                          VAL R6
      208 CAPTURE                          REF R26
      209 SETTABLEKS                       R31 R13 K44 ["DEPRECATED_getToolDisplayName"]
      211 NEWCLOSURE                       R31 P14
      212 CAPTURE                          REF R25
      213 SETTABLEKS                       R31 R13 K45 ["setToolAlwaysAccepted"]
      215 DUPCLOSURE                       R31 K46 [PROTO_23]
      216 CAPTURE                          VAL R24
      217 SETTABLEKS                       R31 R13 K47 ["getToolCallOptions"]
      219 DUPCLOSURE                       R31 K48 [PROTO_24]
      220 CAPTURE                          VAL R23
      221 SETTABLEKS                       R31 R13 K49 ["getToolAvailableDataModelTypes"]
      223 DUPCLOSURE                       R31 K50 [PROTO_25]
      224 CAPTURE                          VAL R28
      225 SETTABLEKS                       R31 R13 K51 ["getToolGetDescriptionFunction"]
      227 NEWCLOSURE                       R31 P18
      228 CAPTURE                          REF R25
      229 SETTABLEKS                       R31 R13 K52 ["clearAlwaysAcceptedTools"]
      231 NEWCLOSURE                       R31 P19
      232 CAPTURE                          REF R21
      233 CAPTURE                          REF R14
      234 CAPTURE                          REF R17
      235 CAPTURE                          REF R16
      236 CAPTURE                          REF R15
      237 CAPTURE                          REF R18
      238 CAPTURE                          REF R19
      239 CAPTURE                          REF R20
      240 CAPTURE                          REF R22
      241 CAPTURE                          REF R25
      242 CAPTURE                          VAL R6
      243 CAPTURE                          REF R26
      244 CAPTURE                          REF R27
      245 CAPTURE                          VAL R12
      246 SETTABLEKS                       R31 R13 K53 ["clear"]
      248 CLOSEUPVALS                      R14
      249 RETURN                           R13 1
