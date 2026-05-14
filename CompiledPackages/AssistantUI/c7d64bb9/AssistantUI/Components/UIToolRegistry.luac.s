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
       63 GETTABLEKS                       R2 R0 K16 ["contentWidgets"]
       65 JUMPIFNOT                        R2 ; [+13]
       66 GETUPVAL                         R3 5
       67 GETTABLEKS                       R3 R3 K17 ["registerWidgetList"]
       69 MOVE                             R4 R2
       70 CALL                             R3 1 1
       71 GETUPVAL                         R4 6
       72 GETTABLEKS                       R5 R0 K18 ["definition"]
       74 GETTABLEKS                       R5 R5 K18 ["definition"]
       76 GETTABLEKS                       R5 R5 K19 ["name"]
       78 SETTABLE                         R3 R4 R5
       79 GETTABLEKS                       R3 R0 K20 ["streamTransform"]
       81 JUMPIFNOT                        R3 ; [+10]
       82 GETUPVAL                         R3 7
       83 GETTABLEKS                       R4 R0 K18 ["definition"]
       85 GETTABLEKS                       R4 R4 K18 ["definition"]
       87 GETTABLEKS                       R4 R4 K19 ["name"]
       89 GETTABLEKS                       R5 R0 K20 ["streamTransform"]
       91 SETTABLE                         R5 R3 R4
       92 GETTABLEKS                       R3 R0 K21 ["getPreExecuteWarning"]
       94 JUMPIFNOT                        R3 ; [+10]
       95 GETUPVAL                         R3 8
       96 GETTABLEKS                       R4 R0 K18 ["definition"]
       98 GETTABLEKS                       R4 R4 K18 ["definition"]
      100 GETTABLEKS                       R4 R4 K19 ["name"]
      102 GETTABLEKS                       R5 R0 K21 ["getPreExecuteWarning"]
      104 SETTABLE                         R5 R3 R4
      105 GETTABLEKS                       R3 R0 K22 ["displayNameFunction"]
      107 JUMPIFNOT                        R3 ; [+10]
      108 GETUPVAL                         R3 9
      109 GETTABLEKS                       R4 R0 K18 ["definition"]
      111 GETTABLEKS                       R4 R4 K18 ["definition"]
      113 GETTABLEKS                       R4 R4 K19 ["name"]
      115 GETTABLEKS                       R5 R0 K22 ["displayNameFunction"]
      117 SETTABLE                         R5 R3 R4
      118 GETTABLEKS                       R3 R0 K23 ["toolCallOptions"]
      120 JUMPIFNOT                        R3 ; [+10]
      121 GETUPVAL                         R3 10
      122 GETTABLEKS                       R4 R0 K18 ["definition"]
      124 GETTABLEKS                       R4 R4 K18 ["definition"]
      126 GETTABLEKS                       R4 R4 K19 ["name"]
      128 GETTABLEKS                       R5 R0 K23 ["toolCallOptions"]
      130 SETTABLE                         R5 R3 R4
      131 GETTABLEKS                       R3 R0 K24 ["availableDataModelTypes"]
      133 JUMPIFNOT                        R3 ; [+14]
      134 GETUPVAL                         R3 11
      135 GETTABLEKS                       R4 R0 K24 ["availableDataModelTypes"]
      137 CALL                             R3 1 0
      138 GETUPVAL                         R3 12
      139 GETTABLEKS                       R4 R0 K18 ["definition"]
      141 GETTABLEKS                       R4 R4 K18 ["definition"]
      143 GETTABLEKS                       R4 R4 K19 ["name"]
      145 GETTABLEKS                       R5 R0 K24 ["availableDataModelTypes"]
      147 SETTABLE                         R5 R3 R4
      148 GETTABLEKS                       R3 R0 K10 ["getDescription"]
      150 JUMPIFNOT                        R3 ; [+10]
      151 GETUPVAL                         R3 13
      152 GETTABLEKS                       R4 R0 K18 ["definition"]
      154 GETTABLEKS                       R4 R4 K18 ["definition"]
      156 GETTABLEKS                       R4 R4 K19 ["name"]
      158 GETTABLEKS                       R5 R0 K10 ["getDescription"]
      160 SETTABLE                         R5 R3 R4
      161 GETUPVAL                         R3 14
      162 GETTABLEKS                       R3 R3 K25 ["addTool"]
      164 GETTABLEKS                       R4 R0 K18 ["definition"]
      166 CALL                             R3 1 0
      167 RETURN                           R0 0

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
       16 LOADNIL                          R2
       17 SETTABLE                         R2 R1 R0
       18 GETUPVAL                         R2 6
       19 GETTABLE                         R1 R2 R0
       20 JUMPIFNOT                        R1 ; [+5]
       21 MOVE                             R2 R1
       22 CALL                             R2 0 0
       23 GETUPVAL                         R2 6
       24 LOADNIL                          R3
       25 SETTABLE                         R3 R2 R0
       26 GETIMPORT                        R2 K1 [pcall]
       28 NEWCLOSURE                       R3 P0
       29 CAPTURE                          UPVAL U7
       30 CAPTURE                          VAL R0
       31 CALL                             R2 1 0
       32 RETURN                           R0 0

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
        2 JUMPIFNOT                        R2 ; [+5]
        3 DUPTABLE                         R2 K1 [{"shouldConfirm"}]
        4 LOADB                            R3 0
        5 SETTABLEKS                       R3 R2 K0 ["shouldConfirm"]
        7 RETURN                           R2 1
        8 GETUPVAL                         R3 1
        9 GETTABLE                         R2 R3 R0
       10 JUMPIFNOT                        R2 ; [+5]
       11 MOVE                             R3 R2
       12 MOVE                             R4 R0
       13 MOVE                             R5 R1
       14 CALL                             R3 2 -1
       15 RETURN                           R3 -1
       16 GETIMPORT                        R3 K3 [pcall]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R0
       21 CALL                             R3 1 2
       22 JUMPIFNOT                        R3 ; [+2]
       23 JUMPIFNOTEQKNIL                  R4 ; [+6]
       25 DUPTABLE                         R5 K1 [{"shouldConfirm"}]
       26 LOADB                            R6 1
       27 SETTABLEKS                       R6 R5 K0 ["shouldConfirm"]
       29 RETURN                           R5 1
       30 LOADNIL                          R5
       31 RETURN                           R5 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+3]
        3 MOVE                             R2 R1
        4 CALL                             R2 0 -1
        5 RETURN                           R2 -1
        6 RETURN                           R0 1

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
       27 NEWTABLE                         R0 0 0
       29 SETUPVAL                         R0 9
       30 NEWTABLE                         R0 0 0
       32 SETUPVAL                         R0 10
       33 GETUPVAL                         R0 11
       34 GETTABLEKS                       R0 R0 K0 ["clear"]
       36 CALL                             R0 0 0
       37 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["ContentWidgetRegistry"]
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
       40 GETTABLEKS                       R6 R3 K14 ["ToolRegistry"]
       42 DUPTABLE                         R7 K18 [{"None", "CommandPrefix", "CommandDelimiter"}]
       43 LOADK                            R8 K19 ["none"]
       44 SETTABLEKS                       R8 R7 K15 ["None"]
       46 LOADK                            R8 K20 ["/"]
       47 SETTABLEKS                       R8 R7 K16 ["CommandPrefix"]
       49 LOADK                            R8 K21 [" "]
       50 SETTABLEKS                       R8 R7 K17 ["CommandDelimiter"]
       52 NEWTABLE                         R8 0 0
       54 NEWTABLE                         R9 0 0
       56 NEWTABLE                         R10 0 0
       58 NEWTABLE                         R11 0 0
       60 NEWTABLE                         R12 0 0
       62 NEWTABLE                         R13 0 0
       64 NEWTABLE                         R14 0 0
       66 NEWTABLE                         R15 0 0
       68 NEWTABLE                         R16 0 0
       70 NEWTABLE                         R17 0 0
       72 NEWTABLE                         R18 0 0
       74 NEWTABLE                         R19 0 0
       76 NEWTABLE                         R20 0 0
       78 NEWTABLE                         R21 0 0
       80 NEWTABLE                         R22 0 0
       82 DUPCLOSURE                       R23 K22 [PROTO_0]
       83 CAPTURE                          VAL R2
       84 NEWCLOSURE                       R24 P1
       85 CAPTURE                          REF R8
       86 CAPTURE                          VAL R7
       87 CAPTURE                          REF R9
       88 CAPTURE                          VAL R10
       89 CAPTURE                          REF R11
       90 CAPTURE                          VAL R1
       91 CAPTURE                          REF R21
       92 CAPTURE                          REF R15
       93 CAPTURE                          REF R16
       94 CAPTURE                          REF R18
       95 CAPTURE                          VAL R19
       96 CAPTURE                          VAL R23
       97 CAPTURE                          VAL R17
       98 CAPTURE                          VAL R22
       99 CAPTURE                          VAL R6
      100 SETTABLEKS                       R24 R7 K23 ["registerTool"]
      102 NEWCLOSURE                       R24 P2
      103 CAPTURE                          REF R15
      104 CAPTURE                          REF R16
      105 CAPTURE                          REF R18
      106 CAPTURE                          VAL R19
      107 CAPTURE                          REF R20
      108 CAPTURE                          VAL R17
      109 CAPTURE                          REF R21
      110 CAPTURE                          VAL R6
      111 SETTABLEKS                       R24 R7 K24 ["unregisterTool"]
      113 NEWCLOSURE                       R24 P3
      114 CAPTURE                          REF R8
      115 CAPTURE                          REF R12
      116 CAPTURE                          REF R13
      117 CAPTURE                          REF R14
      118 SETTABLEKS                       R24 R7 K25 ["registerModeCommands"]
      120 NEWCLOSURE                       R24 P4
      121 CAPTURE                          REF R12
      122 SETTABLEKS                       R24 R7 K26 ["getModeForCommand"]
      124 NEWCLOSURE                       R24 P5
      125 CAPTURE                          REF R13
      126 CAPTURE                          REF R11
      127 SETTABLEKS                       R24 R7 K27 ["getRegisteredSlashCommands"]
      129 DUPCLOSURE                       R24 K28 [PROTO_8]
      130 CAPTURE                          VAL R10
      131 SETTABLEKS                       R24 R7 K29 ["getSlashCommandDefinition"]
      133 NEWCLOSURE                       R24 P7
      134 CAPTURE                          REF R9
      135 CAPTURE                          REF R14
      136 SETTABLEKS                       R24 R7 K30 ["getSlashCommandDescription"]
      138 NEWCLOSURE                       R24 P8
      139 CAPTURE                          REF R8
      140 SETTABLEKS                       R24 R7 K31 ["getSlashCommandTransformation"]
      142 NEWCLOSURE                       R24 P9
      143 CAPTURE                          REF R15
      144 SETTABLEKS                       R24 R7 K32 ["getStreamTransform"]
      146 NEWCLOSURE                       R24 P10
      147 CAPTURE                          REF R20
      148 CAPTURE                          REF R16
      149 CAPTURE                          VAL R6
      150 SETTABLEKS                       R24 R7 K33 ["getPreExecuteWarningResult"]
      152 NEWCLOSURE                       R24 P11
      153 CAPTURE                          REF R18
      154 SETTABLEKS                       R24 R7 K34 ["getToolDisplayName"]
      156 NEWCLOSURE                       R24 P12
      157 CAPTURE                          REF R20
      158 SETTABLEKS                       R24 R7 K35 ["setToolAlwaysAccepted"]
      160 DUPCLOSURE                       R24 K36 [PROTO_16]
      161 CAPTURE                          VAL R19
      162 SETTABLEKS                       R24 R7 K37 ["getToolCallOptions"]
      164 DUPCLOSURE                       R24 K38 [PROTO_17]
      165 CAPTURE                          VAL R17
      166 SETTABLEKS                       R24 R7 K39 ["getToolAvailableDataModelTypes"]
      168 DUPCLOSURE                       R24 K40 [PROTO_18]
      169 CAPTURE                          VAL R22
      170 SETTABLEKS                       R24 R7 K41 ["getToolGetDescriptionFunction"]
      172 NEWCLOSURE                       R24 P16
      173 CAPTURE                          REF R20
      174 SETTABLEKS                       R24 R7 K42 ["clearAlwaysAcceptedTools"]
      176 NEWCLOSURE                       R24 P17
      177 CAPTURE                          REF R15
      178 CAPTURE                          REF R8
      179 CAPTURE                          REF R11
      180 CAPTURE                          REF R9
      181 CAPTURE                          REF R12
      182 CAPTURE                          REF R13
      183 CAPTURE                          REF R14
      184 CAPTURE                          REF R16
      185 CAPTURE                          REF R18
      186 CAPTURE                          REF R20
      187 CAPTURE                          REF R21
      188 CAPTURE                          VAL R6
      189 SETTABLEKS                       R24 R7 K43 ["clear"]
      191 CLOSEUPVALS                      R8
      192 RETURN                           R7 1
