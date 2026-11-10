PROTO_0:
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
       89 JUMPIFNOT                        R2 ; [+10]
       90 GETUPVAL                         R2 6
       91 GETTABLEKS                       R3 R0 K16 ["definition"]
       93 GETTABLEKS                       R3 R3 K16 ["definition"]
       95 GETTABLEKS                       R3 R3 K17 ["name"]
       97 GETTABLEKS                       R4 R0 K19 ["availableDataModelTypes"]
       99 SETTABLE                         R4 R2 R3
      100 GETTABLEKS                       R2 R0 K9 ["getDescription"]
      102 JUMPIFNOT                        R2 ; [+10]
      103 GETUPVAL                         R2 7
      104 GETTABLEKS                       R3 R0 K16 ["definition"]
      106 GETTABLEKS                       R3 R3 K16 ["definition"]
      108 GETTABLEKS                       R3 R3 K17 ["name"]
      110 GETTABLEKS                       R4 R0 K9 ["getDescription"]
      112 SETTABLE                         R4 R2 R3
      113 GETUPVAL                         R2 8
      114 GETTABLEKS                       R2 R2 K20 ["addTool"]
      116 GETTABLEKS                       R3 R0 K16 ["definition"]
      118 CALL                             R2 1 0
      119 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["removeTool"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["description"]
        3 RETURN                           R0 1

PROTO_9:
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

PROTO_10:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 NEWTABLE                         R1 0 1
        5 MOVE                             R2 R0
        6 SETLIST                          R1 R2 1 [1]
        8 RETURN                           R1 1

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

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getSlashCommandDefinition"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 LOADB                            R2 0
        6 JUMPIFEQKNIL                     R1 ; [+7]
        8 GETTABLEKS                       R3 R1 K1 ["researchPreview"]
       10 JUMPIFEQKB                       R3 TRUE ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1

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
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["ModelContextProtocol"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Skills"]
       32 GETTABLEKS                       R5 R5 K12 ["SkillRegistry"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K13 ["Engine"]
       37 GETTABLEKS                       R5 R5 K14 ["Providers"]
       39 GETTABLEKS                       R5 R5 K15 ["ToolNames"]
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K16 ["Types"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R7 R3 K17 ["ToolRegistry"]
       48 DUPTABLE                         R8 K22 [{["CommandPrefix"] = "/", ["CommandDelimiter"] = " "}]
       49 NEWTABLE                         R9 0 0
       51 NEWTABLE                         R10 0 0
       53 NEWTABLE                         R11 0 0
       55 NEWTABLE                         R12 0 0
       57 NEWTABLE                         R13 0 0
       59 NEWTABLE                         R14 0 0
       61 NEWTABLE                         R15 0 0
       63 NEWTABLE                         R16 0 0
       65 NEWTABLE                         R17 0 0
       67 NEWTABLE                         R18 0 0
       69 NEWTABLE                         R19 0 0
       71 NEWCLOSURE                       R20 P0
       72 CAPTURE                          REF R10
       73 CAPTURE                          VAL R8
       74 CAPTURE                          REF R9
       75 CAPTURE                          REF R11
       76 CAPTURE                          REF R15
       77 CAPTURE                          VAL R17
       78 CAPTURE                          VAL R16
       79 CAPTURE                          VAL R19
       80 CAPTURE                          VAL R7
       81 SETTABLEKS                       R20 R8 K23 ["registerTool"]
       83 NEWCLOSURE                       R20 P1
       84 CAPTURE                          REF R15
       85 CAPTURE                          VAL R17
       86 CAPTURE                          REF R18
       87 CAPTURE                          VAL R16
       88 CAPTURE                          VAL R7
       89 SETTABLEKS                       R20 R8 K24 ["unregisterTool"]
       91 NEWCLOSURE                       R20 P2
       92 CAPTURE                          REF R10
       93 CAPTURE                          REF R12
       94 CAPTURE                          REF R13
       95 CAPTURE                          REF R14
       96 SETTABLEKS                       R20 R8 K25 ["registerModeCommands"]
       98 NEWCLOSURE                       R20 P3
       99 CAPTURE                          REF R12
      100 SETTABLEKS                       R20 R8 K26 ["getModeForCommand"]
      102 NEWCLOSURE                       R20 P4
      103 CAPTURE                          VAL R4
      104 CAPTURE                          REF R10
      105 CAPTURE                          REF R12
      106 NEWCLOSURE                       R21 P5
      107 CAPTURE                          REF R11
      108 CAPTURE                          VAL R20
      109 CAPTURE                          REF R13
      110 SETTABLEKS                       R21 R8 K27 ["getRegisteredSlashCommands"]
      112 NEWCLOSURE                       R21 P6
      113 CAPTURE                          REF R10
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R5
      116 SETTABLEKS                       R21 R8 K28 ["getSlashCommandDefinition"]
      118 DUPCLOSURE                       R21 K29 [PROTO_12]
      119 CAPTURE                          VAL R8
      120 SETTABLEKS                       R21 R8 K30 ["isSlashCommandResearchPreview"]
      122 NEWCLOSURE                       R21 P8
      123 CAPTURE                          REF R9
      124 CAPTURE                          REF R14
      125 CAPTURE                          VAL R4
      126 SETTABLEKS                       R21 R8 K31 ["getSlashCommandDescription"]
      128 NEWCLOSURE                       R21 P9
      129 CAPTURE                          REF R18
      130 CAPTURE                          REF R15
      131 CAPTURE                          VAL R7
      132 SETTABLEKS                       R21 R8 K32 ["getPreExecuteWarningResult"]
      134 NEWCLOSURE                       R21 P10
      135 CAPTURE                          REF R18
      136 SETTABLEKS                       R21 R8 K33 ["setToolAlwaysAccepted"]
      138 DUPCLOSURE                       R21 K34 [PROTO_17]
      139 CAPTURE                          VAL R17
      140 SETTABLEKS                       R21 R8 K35 ["getToolCallOptions"]
      142 DUPCLOSURE                       R21 K36 [PROTO_18]
      143 CAPTURE                          VAL R16
      144 SETTABLEKS                       R21 R8 K37 ["getToolAvailableDataModelTypes"]
      146 DUPCLOSURE                       R21 K38 [PROTO_19]
      147 CAPTURE                          VAL R19
      148 SETTABLEKS                       R21 R8 K39 ["getToolGetDescriptionFunction"]
      150 NEWCLOSURE                       R21 P14
      151 CAPTURE                          REF R18
      152 SETTABLEKS                       R21 R8 K40 ["clearAlwaysAcceptedTools"]
      154 NEWCLOSURE                       R21 P15
      155 CAPTURE                          REF R11
      156 CAPTURE                          REF R10
      157 CAPTURE                          REF R9
      158 CAPTURE                          REF R12
      159 CAPTURE                          REF R13
      160 CAPTURE                          REF R14
      161 CAPTURE                          REF R15
      162 CAPTURE                          REF R18
      163 CAPTURE                          VAL R7
      164 SETTABLEKS                       R21 R8 K41 ["clear"]
      166 CLOSEUPVALS                      R9
      167 RETURN                           R8 1
