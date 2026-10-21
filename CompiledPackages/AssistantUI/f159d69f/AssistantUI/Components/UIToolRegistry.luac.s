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
        2 JUMPIFNOT                        R1 ; [+58]
        3 MOVE                             R2 R1
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["command"]
        9 GETUPVAL                         R10 0
       10 GETTABLE                         R9 R10 R7
       11 JUMPIFNOTEQKNIL                  R9 ; [+2]
       13 LOADB                            R8 0 +1
       14 LOADB                            R8 1
       15 JUMPIFNOT                        R8 ; [+8]
       16 GETIMPORT                        R9 K3 [error]
       18 LOADK                            R10 K4 ["Slash command %* already registered"]
       19 MOVE                             R12 R7
       20 NAMECALL                         R10 R10 K5 ["format"]
       22 CALL                             R10 2 1
       23 CALL                             R9 1 0
       24 GETUPVAL                         R11 1
       25 GETTABLEKS                       R11 R11 K6 ["CommandDelimiter"]
       27 NAMECALL                         R9 R7 K7 ["find"]
       29 CALL                             R9 2 1
       30 JUMPIFNOT                        R9 ; [+11]
       31 GETIMPORT                        R9 K3 [error]
       33 LOADK                            R10 K8 ["Slash command %* cannot contain the delimiter \"%*\""]
       34 MOVE                             R12 R7
       35 GETUPVAL                         R13 1
       36 GETTABLEKS                       R13 R13 K6 ["CommandDelimiter"]
       38 NAMECALL                         R10 R10 K5 ["format"]
       40 CALL                             R10 3 1
       41 CALL                             R9 1 0
       42 GETUPVAL                         R9 2
       43 GETTABLEKS                       R10 R6 K9 ["getDescription"]
       45 SETTABLE                         R10 R9 R7
       46 GETUPVAL                         R9 0
       47 SETTABLE                         R6 R9 R7
       48 GETUPVAL                         R10 3
       49 FASTCALL2                        TABLE_INSERT R10 R7 ; [+4]
       51 MOVE                             R11 R7
       52 GETIMPORT                        R9 K12 [table.insert]
       54 CALL                             R9 2 0
       55 FORGLOOP                         R2 2 ; [-49]
       57 GETIMPORT                        R2 K14 [table.sort]
       59 GETUPVAL                         R3 3
       60 CALL                             R2 1 0
       61 GETTABLEKS                       R2 R0 K15 ["getPreExecuteWarning"]
       63 JUMPIFNOT                        R2 ; [+10]
       64 GETUPVAL                         R2 4
       65 GETTABLEKS                       R3 R0 K16 ["definition"]
       67 GETTABLEKS                       R3 R3 K16 ["definition"]
       69 GETTABLEKS                       R3 R3 K17 ["name"]
       71 GETTABLEKS                       R4 R0 K15 ["getPreExecuteWarning"]
       73 SETTABLE                         R4 R2 R3
       74 GETTABLEKS                       R2 R0 K18 ["toolCallOptions"]
       76 JUMPIFNOT                        R2 ; [+10]
       77 GETUPVAL                         R2 5
       78 GETTABLEKS                       R3 R0 K16 ["definition"]
       80 GETTABLEKS                       R3 R3 K16 ["definition"]
       82 GETTABLEKS                       R3 R3 K17 ["name"]
       84 GETTABLEKS                       R4 R0 K18 ["toolCallOptions"]
       86 SETTABLE                         R4 R2 R3
       87 GETTABLEKS                       R2 R0 K19 ["availableDataModelTypes"]
       89 JUMPIFNOT                        R2 ; [+18]
       90 GETUPVAL                         R2 6
       91 GETTABLEKS                       R2 R2 K20 ["FFlagAssistantStandaloneDataModel"]
       93 JUMPIF                           R2 ; [+4]
       94 GETUPVAL                         R2 7
       95 GETTABLEKS                       R3 R0 K19 ["availableDataModelTypes"]
       97 CALL                             R2 1 0
       98 GETUPVAL                         R2 8
       99 GETTABLEKS                       R3 R0 K16 ["definition"]
      101 GETTABLEKS                       R3 R3 K16 ["definition"]
      103 GETTABLEKS                       R3 R3 K17 ["name"]
      105 GETTABLEKS                       R4 R0 K19 ["availableDataModelTypes"]
      107 SETTABLE                         R4 R2 R3
      108 GETTABLEKS                       R2 R0 K9 ["getDescription"]
      110 JUMPIFNOT                        R2 ; [+10]
      111 GETUPVAL                         R2 9
      112 GETTABLEKS                       R3 R0 K16 ["definition"]
      114 GETTABLEKS                       R3 R3 K16 ["definition"]
      116 GETTABLEKS                       R3 R3 K17 ["name"]
      118 GETTABLEKS                       R4 R0 K9 ["getDescription"]
      120 SETTABLE                         R4 R2 R3
      121 GETUPVAL                         R2 10
      122 GETTABLEKS                       R2 R2 K21 ["addTool"]
      124 GETTABLEKS                       R3 R0 K16 ["definition"]
      126 CALL                             R2 1 0
      127 RETURN                           R0 0

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
        8 GETUPVAL                         R10 0
        9 GETTABLE                         R9 R10 R7
       10 JUMPIFNOTEQKNIL                  R9 ; [+2]
       12 LOADB                            R8 0 +1
       13 LOADB                            R8 1
       14 JUMPIFNOT                        R8 ; [+8]
       15 GETIMPORT                        R9 K4 [error]
       17 LOADK                            R10 K5 ["Mode command %* collides with an existing tool slash command"]
       18 MOVE                             R12 R7
       19 NAMECALL                         R10 R10 K6 ["format"]
       21 CALL                             R10 2 1
       22 CALL                             R9 1 0
       23 GETUPVAL                         R10 1
       24 GETTABLE                         R9 R10 R7
       25 JUMPIFNOT                        R9 ; [+8]
       26 GETIMPORT                        R9 K4 [error]
       28 LOADK                            R10 K7 ["Mode command %* already registered"]
       29 MOVE                             R12 R7
       30 NAMECALL                         R10 R10 K6 ["format"]
       32 CALL                             R10 2 1
       33 CALL                             R9 1 0
       34 GETUPVAL                         R9 1
       35 SETTABLE                         R6 R9 R7
       36 GETUPVAL                         R10 2
       37 FASTCALL2                        TABLE_INSERT R10 R7 ; [+4]
       39 MOVE                             R11 R7
       40 GETIMPORT                        R9 K10 [table.insert]
       42 CALL                             R9 2 0
       43 JUMPIFNOT                        R1 ; [+5]
       44 GETUPVAL                         R9 3
       45 NEWCLOSURE                       R10 P0
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R6
       48 SETTABLE                         R10 R9 R7
       49 FORGLOOP                         R2 2 ; [-46]
       51 GETIMPORT                        R2 K12 [table.sort]
       53 GETUPVAL                         R3 2
       54 CALL                             R2 1 0
       55 RETURN                           R0 0

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
       10 GETUPVAL                         R9 1
       11 GETTABLE                         R8 R9 R5
       12 JUMPIFNOTEQKNIL                  R8 ; [+2]
       14 LOADB                            R7 0 +1
       15 LOADB                            R7 1
       16 JUMPIF                           R7 ; [+10]
       17 GETUPVAL                         R9 2
       18 GETTABLE                         R8 R9 R5
       19 JUMPIF                           R8 ; [+7]
       20 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       22 MOVE                             R9 R1
       23 MOVE                             R10 R5
       24 GETIMPORT                        R8 K3 [table.insert]
       26 CALL                             R8 2 0
       27 FORGLOOP                         R2 2 ; [-18]
       29 RETURN                           R1 1

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
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["get"]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 1
        9 JUMPIFNOT                        R2 ; [+15]
       10 DUPTABLE                         R3 K6 [{["command"], ["continueWithLLM"] = True, ["getDescription"], ["runToolChain"]}]
       11 GETTABLEKS                       R4 R2 K7 ["name"]
       13 SETTABLEKS                       R4 R3 K1 ["command"]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R2
       17 SETTABLEKS                       R4 R3 K4 ["getDescription"]
       19 NEWCLOSURE                       R4 P1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R2
       22 SETTABLEKS                       R4 R3 K5 ["runToolChain"]
       24 RETURN                           R3 1
       25 LOADNIL                          R3
       26 RETURN                           R3 1

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getHandler"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 SETTABLE                         R2 R1 R0
        3 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_20:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_21:
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
       24 GETUPVAL                         R0 8
       25 GETTABLEKS                       R0 R0 K0 ["clear"]
       27 CALL                             R0 0 0
       28 RETURN                           R0 0

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
       18 GETTABLEKS                       R3 R3 K9 ["DataModelType"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Flags"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K6 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["ModelContextProtocol"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Skills"]
       37 GETTABLEKS                       R6 R6 K13 ["SkillRegistry"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R6 R1 K14 ["Engine"]
       42 GETTABLEKS                       R6 R6 K15 ["Providers"]
       44 GETTABLEKS                       R6 R6 K16 ["ToolNames"]
       46 GETIMPORT                        R7 K5 [require]
       48 GETTABLEKS                       R8 R0 K17 ["Types"]
       50 CALL                             R7 1 1
       51 GETTABLEKS                       R8 R4 K18 ["ToolRegistry"]
       53 DUPTABLE                         R9 K23 [{["CommandPrefix"] = "/", ["CommandDelimiter"] = " "}]
       54 NEWTABLE                         R10 0 0
       56 NEWTABLE                         R11 0 0
       58 NEWTABLE                         R12 0 0
       60 NEWTABLE                         R13 0 0
       62 NEWTABLE                         R14 0 0
       64 NEWTABLE                         R15 0 0
       66 NEWTABLE                         R16 0 0
       68 NEWTABLE                         R17 0 0
       70 NEWTABLE                         R18 0 0
       72 NEWTABLE                         R19 0 0
       74 NEWTABLE                         R20 0 0
       76 DUPCLOSURE                       R21 K24 [PROTO_0]
       77 CAPTURE                          VAL R2
       78 NEWCLOSURE                       R22 P1
       79 CAPTURE                          REF R11
       80 CAPTURE                          VAL R9
       81 CAPTURE                          REF R10
       82 CAPTURE                          REF R12
       83 CAPTURE                          REF R16
       84 CAPTURE                          VAL R18
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R21
       87 CAPTURE                          VAL R17
       88 CAPTURE                          VAL R20
       89 CAPTURE                          VAL R8
       90 SETTABLEKS                       R22 R9 K25 ["registerTool"]
       92 NEWCLOSURE                       R22 P2
       93 CAPTURE                          REF R16
       94 CAPTURE                          VAL R18
       95 CAPTURE                          REF R19
       96 CAPTURE                          VAL R17
       97 CAPTURE                          VAL R8
       98 SETTABLEKS                       R22 R9 K26 ["unregisterTool"]
      100 NEWCLOSURE                       R22 P3
      101 CAPTURE                          REF R11
      102 CAPTURE                          REF R13
      103 CAPTURE                          REF R14
      104 CAPTURE                          REF R15
      105 SETTABLEKS                       R22 R9 K27 ["registerModeCommands"]
      107 NEWCLOSURE                       R22 P4
      108 CAPTURE                          REF R13
      109 SETTABLEKS                       R22 R9 K28 ["getModeForCommand"]
      111 NEWCLOSURE                       R22 P5
      112 CAPTURE                          VAL R5
      113 CAPTURE                          REF R11
      114 CAPTURE                          REF R13
      115 NEWCLOSURE                       R23 P6
      116 CAPTURE                          REF R12
      117 CAPTURE                          VAL R22
      118 CAPTURE                          REF R14
      119 SETTABLEKS                       R23 R9 K29 ["getRegisteredSlashCommands"]
      121 NEWCLOSURE                       R23 P7
      122 CAPTURE                          REF R11
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R6
      125 SETTABLEKS                       R23 R9 K30 ["getSlashCommandDefinition"]
      127 NEWCLOSURE                       R23 P8
      128 CAPTURE                          REF R10
      129 CAPTURE                          REF R15
      130 CAPTURE                          VAL R5
      131 SETTABLEKS                       R23 R9 K31 ["getSlashCommandDescription"]
      133 NEWCLOSURE                       R23 P9
      134 CAPTURE                          REF R19
      135 CAPTURE                          REF R16
      136 CAPTURE                          VAL R8
      137 SETTABLEKS                       R23 R9 K32 ["getPreExecuteWarningResult"]
      139 NEWCLOSURE                       R23 P10
      140 CAPTURE                          REF R19
      141 SETTABLEKS                       R23 R9 K33 ["setToolAlwaysAccepted"]
      143 DUPCLOSURE                       R23 K34 [PROTO_17]
      144 CAPTURE                          VAL R18
      145 SETTABLEKS                       R23 R9 K35 ["getToolCallOptions"]
      147 DUPCLOSURE                       R23 K36 [PROTO_18]
      148 CAPTURE                          VAL R17
      149 SETTABLEKS                       R23 R9 K37 ["getToolAvailableDataModelTypes"]
      151 DUPCLOSURE                       R23 K38 [PROTO_19]
      152 CAPTURE                          VAL R20
      153 SETTABLEKS                       R23 R9 K39 ["getToolGetDescriptionFunction"]
      155 NEWCLOSURE                       R23 P14
      156 CAPTURE                          REF R19
      157 SETTABLEKS                       R23 R9 K40 ["clearAlwaysAcceptedTools"]
      159 NEWCLOSURE                       R23 P15
      160 CAPTURE                          REF R12
      161 CAPTURE                          REF R11
      162 CAPTURE                          REF R10
      163 CAPTURE                          REF R13
      164 CAPTURE                          REF R14
      165 CAPTURE                          REF R15
      166 CAPTURE                          REF R16
      167 CAPTURE                          REF R19
      168 CAPTURE                          VAL R8
      169 SETTABLEKS                       R23 R9 K41 ["clear"]
      171 CLOSEUPVALS                      R10
      172 RETURN                           R9 1
