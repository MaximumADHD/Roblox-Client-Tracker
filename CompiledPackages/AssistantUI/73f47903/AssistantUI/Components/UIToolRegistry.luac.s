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
       64 CALL                             R2 0 1
       65 JUMPIF                           R2 ; [+29]
       66 GETTABLEKS                       R2 R0 K16 ["contentWidgets"]
       68 JUMPIFNOT                        R2 ; [+13]
       69 GETUPVAL                         R3 6
       70 GETTABLEKS                       R3 R3 K17 ["registerWidgetList"]
       72 MOVE                             R4 R2
       73 CALL                             R3 1 1
       74 GETUPVAL                         R4 7
       75 GETTABLEKS                       R5 R0 K18 ["definition"]
       77 GETTABLEKS                       R5 R5 K18 ["definition"]
       79 GETTABLEKS                       R5 R5 K19 ["name"]
       81 SETTABLE                         R3 R4 R5
       82 GETTABLEKS                       R3 R0 K20 ["displayNameFunction"]
       84 JUMPIFNOT                        R3 ; [+10]
       85 GETUPVAL                         R3 8
       86 GETTABLEKS                       R4 R0 K18 ["definition"]
       88 GETTABLEKS                       R4 R4 K18 ["definition"]
       90 GETTABLEKS                       R4 R4 K19 ["name"]
       92 GETTABLEKS                       R5 R0 K20 ["displayNameFunction"]
       94 SETTABLE                         R5 R3 R4
       95 GETTABLEKS                       R2 R0 K21 ["streamTransform"]
       97 JUMPIFNOT                        R2 ; [+10]
       98 GETUPVAL                         R2 9
       99 GETTABLEKS                       R3 R0 K18 ["definition"]
      101 GETTABLEKS                       R3 R3 K18 ["definition"]
      103 GETTABLEKS                       R3 R3 K19 ["name"]
      105 GETTABLEKS                       R4 R0 K21 ["streamTransform"]
      107 SETTABLE                         R4 R2 R3
      108 GETTABLEKS                       R2 R0 K22 ["getPreExecuteWarning"]
      110 JUMPIFNOT                        R2 ; [+10]
      111 GETUPVAL                         R2 10
      112 GETTABLEKS                       R3 R0 K18 ["definition"]
      114 GETTABLEKS                       R3 R3 K18 ["definition"]
      116 GETTABLEKS                       R3 R3 K19 ["name"]
      118 GETTABLEKS                       R4 R0 K22 ["getPreExecuteWarning"]
      120 SETTABLE                         R4 R2 R3
      121 GETTABLEKS                       R2 R0 K23 ["toolCallOptions"]
      123 JUMPIFNOT                        R2 ; [+10]
      124 GETUPVAL                         R2 11
      125 GETTABLEKS                       R3 R0 K18 ["definition"]
      127 GETTABLEKS                       R3 R3 K18 ["definition"]
      129 GETTABLEKS                       R3 R3 K19 ["name"]
      131 GETTABLEKS                       R4 R0 K23 ["toolCallOptions"]
      133 SETTABLE                         R4 R2 R3
      134 GETTABLEKS                       R2 R0 K24 ["availableDataModelTypes"]
      136 JUMPIFNOT                        R2 ; [+14]
      137 GETUPVAL                         R2 12
      138 GETTABLEKS                       R3 R0 K24 ["availableDataModelTypes"]
      140 CALL                             R2 1 0
      141 GETUPVAL                         R2 13
      142 GETTABLEKS                       R3 R0 K18 ["definition"]
      144 GETTABLEKS                       R3 R3 K18 ["definition"]
      146 GETTABLEKS                       R3 R3 K19 ["name"]
      148 GETTABLEKS                       R4 R0 K24 ["availableDataModelTypes"]
      150 SETTABLE                         R4 R2 R3
      151 GETTABLEKS                       R2 R0 K10 ["getDescription"]
      153 JUMPIFNOT                        R2 ; [+10]
      154 GETUPVAL                         R2 14
      155 GETTABLEKS                       R3 R0 K18 ["definition"]
      157 GETTABLEKS                       R3 R3 K18 ["definition"]
      159 GETTABLEKS                       R3 R3 K19 ["name"]
      161 GETTABLEKS                       R4 R0 K10 ["getDescription"]
      163 SETTABLE                         R4 R2 R3
      164 GETUPVAL                         R2 15
      165 GETTABLEKS                       R2 R2 K25 ["addTool"]
      167 GETTABLEKS                       R3 R0 K18 ["definition"]
      169 CALL                             R2 1 0
      170 RETURN                           R0 0

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
       16 CALL                             R1 0 1
       17 JUMPIF                           R1 ; [+11]
       18 GETUPVAL                         R1 6
       19 LOADNIL                          R2
       20 SETTABLE                         R2 R1 R0
       21 GETUPVAL                         R2 7
       22 GETTABLE                         R1 R2 R0
       23 JUMPIFNOT                        R1 ; [+5]
       24 MOVE                             R2 R1
       25 CALL                             R2 0 0
       26 GETUPVAL                         R2 7
       27 LOADNIL                          R3
       28 SETTABLE                         R3 R2 R0
       29 GETIMPORT                        R1 K1 [pcall]
       31 NEWCLOSURE                       R2 P0
       32 CAPTURE                          UPVAL U8
       33 CAPTURE                          VAL R0
       34 CALL                             R1 1 0
       35 RETURN                           R0 0

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
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        4 GETUPVAL                         R1 1
        5 RETURN                           R1 1
        6 GETIMPORT                        R1 K3 [table.clone]
        8 GETUPVAL                         R2 1
        9 CALL                             R1 1 1
       10 JUMPIFNOT                        R0 ; [+5]
       11 GETIMPORT                        R2 K6 [string.lower]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R2
       17 GETUPVAL                         R3 0
       18 LOADNIL                          R4
       19 LOADNIL                          R5
       20 FORGPREP                         R3
       21 JUMPIFEQ                         R7 R2 ; [+8]
       23 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       25 MOVE                             R9 R1
       26 MOVE                             R10 R7
       27 GETIMPORT                        R8 K8 [table.insert]
       29 CALL                             R8 2 0
       30 FORGLOOP                         R3 2 ; [-10]
       32 GETIMPORT                        R3 K10 [table.sort]
       34 MOVE                             R4 R1
       35 CALL                             R3 1 0
       36 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_9:
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
       12 LOADNIL                          R3
       13 RETURN                           R3 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getHandler"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["toolDisplayNameFunction is deprecated."]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R2 1
       10 GETTABLE                         R1 R2 R0
       11 JUMPIFNOT                        R1 ; [+3]
       12 MOVE                             R2 R1
       13 CALL                             R2 0 -1
       14 RETURN                           R2 -1
       15 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 SETTABLE                         R2 R1 R0
        3 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_19:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_20:
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
       28 CALL                             R0 0 1
       29 JUMPIF                           R0 ; [+6]
       30 NEWTABLE                         R0 0 0
       32 SETUPVAL                         R0 10
       33 NEWTABLE                         R0 0 0
       35 SETUPVAL                         R0 11
       36 GETUPVAL                         R0 12
       37 GETTABLEKS                       R0 R0 K0 ["clear"]
       39 CALL                             R0 0 0
       40 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["DEPRECATED_ContentWidgetRegistry"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Util"]
       18 GETTABLEKS                       R3 R3 K8 ["DataModelType"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["ModelContextProtocol"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Components"]
       32 GETTABLEKS                       R5 R5 K12 ["PropertyRows"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Types"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K14 ["Flags"]
       44 GETTABLEKS                       R7 R7 K15 ["FFlagAssistantSplitToolsAndWidgets"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R3 K16 ["ToolRegistry"]
       49 DUPTABLE                         R8 K23 [{["None"] = "none", ["CommandPrefix"] = "/", ["CommandDelimiter"] = " "}]
       50 NEWTABLE                         R9 0 0
       52 NEWTABLE                         R10 0 0
       54 NEWTABLE                         R11 0 0
       56 NEWTABLE                         R12 0 0
       58 NEWTABLE                         R13 0 0
       60 NEWTABLE                         R14 0 0
       62 NEWTABLE                         R15 0 0
       64 NEWTABLE                         R16 0 0
       66 NEWTABLE                         R17 0 0
       68 NEWTABLE                         R18 0 0
       70 NEWTABLE                         R19 0 0
       72 NEWTABLE                         R20 0 0
       74 NEWTABLE                         R21 0 0
       76 NEWTABLE                         R22 0 0
       78 NEWTABLE                         R23 0 0
       80 DUPCLOSURE                       R24 K24 [PROTO_0]
       81 CAPTURE                          VAL R2
       82 NEWCLOSURE                       R25 P1
       83 CAPTURE                          REF R9
       84 CAPTURE                          VAL R8
       85 CAPTURE                          REF R10
       86 CAPTURE                          VAL R11
       87 CAPTURE                          REF R12
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R1
       90 CAPTURE                          REF R22
       91 CAPTURE                          REF R21
       92 CAPTURE                          REF R16
       93 CAPTURE                          REF R17
       94 CAPTURE                          VAL R19
       95 CAPTURE                          VAL R24
       96 CAPTURE                          VAL R18
       97 CAPTURE                          VAL R23
       98 CAPTURE                          VAL R7
       99 SETTABLEKS                       R25 R8 K25 ["registerTool"]
      101 NEWCLOSURE                       R25 P2
      102 CAPTURE                          REF R16
      103 CAPTURE                          REF R17
      104 CAPTURE                          VAL R19
      105 CAPTURE                          REF R20
      106 CAPTURE                          VAL R18
      107 CAPTURE                          VAL R6
      108 CAPTURE                          REF R21
      109 CAPTURE                          REF R22
      110 CAPTURE                          VAL R7
      111 SETTABLEKS                       R25 R8 K26 ["unregisterTool"]
      113 NEWCLOSURE                       R25 P3
      114 CAPTURE                          REF R9
      115 CAPTURE                          REF R13
      116 CAPTURE                          REF R14
      117 CAPTURE                          REF R15
      118 SETTABLEKS                       R25 R8 K27 ["registerModeCommands"]
      120 NEWCLOSURE                       R25 P4
      121 CAPTURE                          REF R13
      122 SETTABLEKS                       R25 R8 K28 ["getModeForCommand"]
      124 NEWCLOSURE                       R25 P5
      125 CAPTURE                          REF R14
      126 CAPTURE                          REF R12
      127 SETTABLEKS                       R25 R8 K29 ["getRegisteredSlashCommands"]
      129 DUPCLOSURE                       R25 K30 [PROTO_8]
      130 CAPTURE                          VAL R11
      131 SETTABLEKS                       R25 R8 K31 ["getSlashCommandDefinition"]
      133 NEWCLOSURE                       R25 P7
      134 CAPTURE                          REF R10
      135 CAPTURE                          REF R15
      136 SETTABLEKS                       R25 R8 K32 ["getSlashCommandDescription"]
      138 NEWCLOSURE                       R25 P8
      139 CAPTURE                          REF R9
      140 SETTABLEKS                       R25 R8 K33 ["getSlashCommandTransformation"]
      142 NEWCLOSURE                       R25 P9
      143 CAPTURE                          REF R16
      144 SETTABLEKS                       R25 R8 K34 ["getStreamTransform"]
      146 NEWCLOSURE                       R25 P10
      147 CAPTURE                          REF R20
      148 CAPTURE                          REF R17
      149 CAPTURE                          VAL R7
      150 SETTABLEKS                       R25 R8 K35 ["getPreExecuteWarningResult"]
      152 NEWCLOSURE                       R25 P11
      153 CAPTURE                          VAL R6
      154 CAPTURE                          REF R21
      155 SETTABLEKS                       R25 R8 K36 ["DEPRECATED_getToolDisplayName"]
      157 NEWCLOSURE                       R25 P12
      158 CAPTURE                          REF R20
      159 SETTABLEKS                       R25 R8 K37 ["setToolAlwaysAccepted"]
      161 DUPCLOSURE                       R25 K38 [PROTO_16]
      162 CAPTURE                          VAL R19
      163 SETTABLEKS                       R25 R8 K39 ["getToolCallOptions"]
      165 DUPCLOSURE                       R25 K40 [PROTO_17]
      166 CAPTURE                          VAL R18
      167 SETTABLEKS                       R25 R8 K41 ["getToolAvailableDataModelTypes"]
      169 DUPCLOSURE                       R25 K42 [PROTO_18]
      170 CAPTURE                          VAL R23
      171 SETTABLEKS                       R25 R8 K43 ["getToolGetDescriptionFunction"]
      173 NEWCLOSURE                       R25 P16
      174 CAPTURE                          REF R20
      175 SETTABLEKS                       R25 R8 K44 ["clearAlwaysAcceptedTools"]
      177 NEWCLOSURE                       R25 P17
      178 CAPTURE                          REF R16
      179 CAPTURE                          REF R9
      180 CAPTURE                          REF R12
      181 CAPTURE                          REF R10
      182 CAPTURE                          REF R13
      183 CAPTURE                          REF R14
      184 CAPTURE                          REF R15
      185 CAPTURE                          REF R17
      186 CAPTURE                          REF R20
      187 CAPTURE                          VAL R6
      188 CAPTURE                          REF R21
      189 CAPTURE                          REF R22
      190 CAPTURE                          VAL R7
      191 SETTABLEKS                       R25 R8 K45 ["clear"]
      193 CLOSEUPVALS                      R9
      194 RETURN                           R8 1
