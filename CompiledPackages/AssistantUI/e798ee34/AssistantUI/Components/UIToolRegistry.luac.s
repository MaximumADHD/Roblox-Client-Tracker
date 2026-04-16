PROTO_0:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R8 0
        5 GETTABLEKS                       R7 R8 K0 ["Types"]
        7 GETTABLEKS                       R6 R7 K1 ["Standalone"]
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
       21 GETUPVAL                         R11 1
       22 GETTABLEKS                       R10 R11 K6 ["CommandDelimiter"]
       24 NAMECALL                         R8 R7 K7 ["find"]
       26 CALL                             R8 2 1
       27 JUMPIFNOT                        R8 ; [+12]
       28 GETIMPORT                        R8 K3 [error]
       30 LOADK                            R10 K8 ["Slash command %* cannot contain the delimiter \"%*\""]
       31 MOVE                             R12 R7
       32 GETUPVAL                         R14 1
       33 GETTABLEKS                       R13 R14 K6 ["CommandDelimiter"]
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
       66 GETUPVAL                         R4 5
       67 GETTABLEKS                       R3 R4 K17 ["registerWidgetList"]
       69 MOVE                             R4 R2
       70 CALL                             R3 1 1
       71 GETUPVAL                         R4 6
       72 GETTABLEKS                       R7 R0 K18 ["definition"]
       74 GETTABLEKS                       R6 R7 K18 ["definition"]
       76 GETTABLEKS                       R5 R6 K19 ["name"]
       78 SETTABLE                         R3 R4 R5
       79 GETTABLEKS                       R3 R0 K20 ["streamTransform"]
       81 JUMPIFNOT                        R3 ; [+10]
       82 GETUPVAL                         R3 7
       83 GETTABLEKS                       R6 R0 K18 ["definition"]
       85 GETTABLEKS                       R5 R6 K18 ["definition"]
       87 GETTABLEKS                       R4 R5 K19 ["name"]
       89 GETTABLEKS                       R5 R0 K20 ["streamTransform"]
       91 SETTABLE                         R5 R3 R4
       92 GETTABLEKS                       R3 R0 K21 ["getPreExecuteWarning"]
       94 JUMPIFNOT                        R3 ; [+10]
       95 GETUPVAL                         R3 8
       96 GETTABLEKS                       R6 R0 K18 ["definition"]
       98 GETTABLEKS                       R5 R6 K18 ["definition"]
      100 GETTABLEKS                       R4 R5 K19 ["name"]
      102 GETTABLEKS                       R5 R0 K21 ["getPreExecuteWarning"]
      104 SETTABLE                         R5 R3 R4
      105 GETTABLEKS                       R3 R0 K22 ["displayNameFunction"]
      107 JUMPIFNOT                        R3 ; [+10]
      108 GETUPVAL                         R3 9
      109 GETTABLEKS                       R6 R0 K18 ["definition"]
      111 GETTABLEKS                       R5 R6 K18 ["definition"]
      113 GETTABLEKS                       R4 R5 K19 ["name"]
      115 GETTABLEKS                       R5 R0 K22 ["displayNameFunction"]
      117 SETTABLE                         R5 R3 R4
      118 GETTABLEKS                       R3 R0 K23 ["toolCallOptions"]
      120 JUMPIFNOT                        R3 ; [+10]
      121 GETUPVAL                         R3 10
      122 GETTABLEKS                       R6 R0 K18 ["definition"]
      124 GETTABLEKS                       R5 R6 K18 ["definition"]
      126 GETTABLEKS                       R4 R5 K19 ["name"]
      128 GETTABLEKS                       R5 R0 K23 ["toolCallOptions"]
      130 SETTABLE                         R5 R3 R4
      131 GETTABLEKS                       R3 R0 K24 ["availableDataModelTypes"]
      133 JUMPIFNOT                        R3 ; [+14]
      134 GETUPVAL                         R3 11
      135 GETTABLEKS                       R4 R0 K24 ["availableDataModelTypes"]
      137 CALL                             R3 1 0
      138 GETUPVAL                         R3 12
      139 GETTABLEKS                       R6 R0 K18 ["definition"]
      141 GETTABLEKS                       R5 R6 K18 ["definition"]
      143 GETTABLEKS                       R4 R5 K19 ["name"]
      145 GETTABLEKS                       R5 R0 K24 ["availableDataModelTypes"]
      147 SETTABLE                         R5 R3 R4
      148 GETTABLEKS                       R3 R0 K10 ["getDescription"]
      150 JUMPIFNOT                        R3 ; [+10]
      151 GETUPVAL                         R3 13
      152 GETTABLEKS                       R6 R0 K18 ["definition"]
      154 GETTABLEKS                       R5 R6 K18 ["definition"]
      156 GETTABLEKS                       R4 R5 K19 ["name"]
      158 GETTABLEKS                       R5 R0 K10 ["getDescription"]
      160 SETTABLE                         R5 R3 R4
      161 GETUPVAL                         R4 14
      162 GETTABLEKS                       R3 R4 K25 ["addTool"]
      164 GETTABLEKS                       R4 R0 K18 ["definition"]
      166 CALL                             R3 1 0
      167 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["removeTool"]
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
        1 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+3]
        3 MOVE                             R2 R1
        4 CALL                             R2 0 -1
        5 RETURN                           R2 -1
        6 LOADNIL                          R2
        7 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getHandler"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+3]
        3 MOVE                             R2 R1
        4 CALL                             R2 0 -1
        5 RETURN                           R2 -1
        6 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 SETTABLE                         R2 R1 R0
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_16:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_17:
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
       24 GETUPVAL                         R1 8
       25 GETTABLEKS                       R0 R1 K0 ["clear"]
       27 CALL                             R0 0 0
       28 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["ContentWidgetRegistry"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Util"]
       18 GETTABLEKS                       R3 R4 K8 ["DataModelType"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["ModelContextProtocol"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K11 ["Components"]
       32 GETTABLEKS                       R5 R6 K12 ["PropertyRows"]
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
       76 DUPCLOSURE                       R20 K22 [PROTO_0]
       77 CAPTURE                          VAL R2
       78 NEWCLOSURE                       R21 P1
       79 CAPTURE                          REF R8
       80 CAPTURE                          VAL R7
       81 CAPTURE                          REF R9
       82 CAPTURE                          VAL R10
       83 CAPTURE                          REF R11
       84 CAPTURE                          VAL R1
       85 CAPTURE                          REF R18
       86 CAPTURE                          REF R12
       87 CAPTURE                          REF R13
       88 CAPTURE                          REF R15
       89 CAPTURE                          VAL R16
       90 CAPTURE                          VAL R20
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R19
       93 CAPTURE                          VAL R6
       94 SETTABLEKS                       R21 R7 K23 ["registerTool"]
       96 NEWCLOSURE                       R21 P2
       97 CAPTURE                          REF R12
       98 CAPTURE                          REF R13
       99 CAPTURE                          REF R15
      100 CAPTURE                          VAL R16
      101 CAPTURE                          REF R17
      102 CAPTURE                          VAL R14
      103 CAPTURE                          REF R18
      104 CAPTURE                          VAL R6
      105 SETTABLEKS                       R21 R7 K24 ["unregisterTool"]
      107 NEWCLOSURE                       R21 P3
      108 CAPTURE                          REF R11
      109 SETTABLEKS                       R21 R7 K25 ["getRegisteredSlashCommands"]
      111 DUPCLOSURE                       R21 K26 [PROTO_5]
      112 CAPTURE                          VAL R10
      113 SETTABLEKS                       R21 R7 K27 ["getSlashCommandDefinition"]
      115 NEWCLOSURE                       R21 P5
      116 CAPTURE                          REF R9
      117 SETTABLEKS                       R21 R7 K28 ["getSlashCommandDescription"]
      119 NEWCLOSURE                       R21 P6
      120 CAPTURE                          REF R8
      121 SETTABLEKS                       R21 R7 K29 ["getSlashCommandTransformation"]
      123 NEWCLOSURE                       R21 P7
      124 CAPTURE                          REF R12
      125 SETTABLEKS                       R21 R7 K30 ["getStreamTransform"]
      127 NEWCLOSURE                       R21 P8
      128 CAPTURE                          REF R17
      129 CAPTURE                          REF R13
      130 CAPTURE                          VAL R6
      131 SETTABLEKS                       R21 R7 K31 ["getPreExecuteWarningResult"]
      133 NEWCLOSURE                       R21 P9
      134 CAPTURE                          REF R15
      135 SETTABLEKS                       R21 R7 K32 ["getToolDisplayName"]
      137 NEWCLOSURE                       R21 P10
      138 CAPTURE                          REF R17
      139 SETTABLEKS                       R21 R7 K33 ["setToolAlwaysAccepted"]
      141 DUPCLOSURE                       R21 K34 [PROTO_13]
      142 CAPTURE                          VAL R16
      143 SETTABLEKS                       R21 R7 K35 ["getToolCallOptions"]
      145 DUPCLOSURE                       R21 K36 [PROTO_14]
      146 CAPTURE                          VAL R14
      147 SETTABLEKS                       R21 R7 K37 ["getToolAvailableDataModelTypes"]
      149 DUPCLOSURE                       R21 K38 [PROTO_15]
      150 CAPTURE                          VAL R19
      151 SETTABLEKS                       R21 R7 K39 ["getToolGetDescriptionFunction"]
      153 NEWCLOSURE                       R21 P14
      154 CAPTURE                          REF R17
      155 SETTABLEKS                       R21 R7 K40 ["clearAlwaysAcceptedTools"]
      157 NEWCLOSURE                       R21 P15
      158 CAPTURE                          REF R12
      159 CAPTURE                          REF R8
      160 CAPTURE                          REF R11
      161 CAPTURE                          REF R9
      162 CAPTURE                          REF R13
      163 CAPTURE                          REF R15
      164 CAPTURE                          REF R17
      165 CAPTURE                          REF R18
      166 CAPTURE                          VAL R6
      167 SETTABLEKS                       R21 R7 K41 ["clear"]
      169 CLOSEUPVALS                      R8
      170 RETURN                           R7 1
