PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["slashCommands"]
        2 JUMPIFNOT                        R1 ; [+58]
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
       48 GETUPVAL                         R9 3
       49 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
       51 MOVE                             R10 R7
       52 GETIMPORT                        R8 K13 [table.insert]
       54 CALL                             R8 2 0
       55 FORGLOOP                         R2 2 ; [-49]
       57 GETIMPORT                        R2 K15 [table.sort]
       59 GETUPVAL                         R3 3
       60 CALL                             R2 1 0
       61 GETUPVAL                         R2 4
       62 CALL                             R2 0 1
       63 JUMPIFNOT                        R2 ; [+16]
       64 GETTABLEKS                       R2 R0 K16 ["contentWidgets"]
       66 JUMPIFNOT                        R2 ; [+13]
       67 GETUPVAL                         R4 5
       68 GETTABLEKS                       R3 R4 K17 ["registerWidgetList"]
       70 MOVE                             R4 R2
       71 CALL                             R3 1 1
       72 GETUPVAL                         R4 6
       73 GETTABLEKS                       R7 R0 K18 ["definition"]
       75 GETTABLEKS                       R6 R7 K18 ["definition"]
       77 GETTABLEKS                       R5 R6 K19 ["name"]
       79 SETTABLE                         R3 R4 R5
       80 GETTABLEKS                       R2 R0 K20 ["streamTransform"]
       82 JUMPIFNOT                        R2 ; [+10]
       83 GETUPVAL                         R2 7
       84 GETTABLEKS                       R5 R0 K18 ["definition"]
       86 GETTABLEKS                       R4 R5 K18 ["definition"]
       88 GETTABLEKS                       R3 R4 K19 ["name"]
       90 GETTABLEKS                       R4 R0 K20 ["streamTransform"]
       92 SETTABLE                         R4 R2 R3
       93 GETTABLEKS                       R2 R0 K21 ["getPreExecuteWarning"]
       95 JUMPIFNOT                        R2 ; [+10]
       96 GETUPVAL                         R2 8
       97 GETTABLEKS                       R5 R0 K18 ["definition"]
       99 GETTABLEKS                       R4 R5 K18 ["definition"]
      101 GETTABLEKS                       R3 R4 K19 ["name"]
      103 GETTABLEKS                       R4 R0 K21 ["getPreExecuteWarning"]
      105 SETTABLE                         R4 R2 R3
      106 GETTABLEKS                       R2 R0 K22 ["displayNameFunction"]
      108 JUMPIFNOT                        R2 ; [+10]
      109 GETUPVAL                         R2 9
      110 GETTABLEKS                       R5 R0 K18 ["definition"]
      112 GETTABLEKS                       R4 R5 K18 ["definition"]
      114 GETTABLEKS                       R3 R4 K19 ["name"]
      116 GETTABLEKS                       R4 R0 K22 ["displayNameFunction"]
      118 SETTABLE                         R4 R2 R3
      119 GETTABLEKS                       R2 R0 K23 ["toolCallOptions"]
      121 JUMPIFNOT                        R2 ; [+10]
      122 GETUPVAL                         R2 10
      123 GETTABLEKS                       R5 R0 K18 ["definition"]
      125 GETTABLEKS                       R4 R5 K18 ["definition"]
      127 GETTABLEKS                       R3 R4 K19 ["name"]
      129 GETTABLEKS                       R4 R0 K23 ["toolCallOptions"]
      131 SETTABLE                         R4 R2 R3
      132 GETUPVAL                         R3 11
      133 GETTABLEKS                       R2 R3 K24 ["addTool"]
      135 GETTABLEKS                       R3 R0 K18 ["definition"]
      137 CALL                             R2 1 0
      138 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["removeTool"]
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
       12 GETUPVAL                         R1 4
       13 LOADNIL                          R2
       14 SETTABLE                         R2 R1 R0
       15 GETUPVAL                         R1 5
       16 CALL                             R1 0 1
       17 JUMPIFNOT                        R1 ; [+8]
       18 GETUPVAL                         R2 6
       19 GETTABLE                         R1 R2 R0
       20 JUMPIFNOT                        R1 ; [+5]
       21 MOVE                             R2 R1
       22 CALL                             R2 0 0
       23 GETUPVAL                         R2 6
       24 LOADNIL                          R3
       25 SETTABLE                         R3 R2 R0
       26 GETIMPORT                        R1 K1 [pcall]
       28 NEWCLOSURE                       R2 P0
       29 CAPTURE                          UPVAL U7
       30 CAPTURE                          VAL R0
       31 CALL                             R1 1 0
       32 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+3]
        3 MOVE                             R2 R1
        4 CALL                             R2 0 -1
        5 RETURN                           R2 -1
        6 LOADNIL                          R2
        7 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getHandler"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+3]
        3 MOVE                             R2 R1
        4 CALL                             R2 0 -1
        5 RETURN                           R2 -1
        6 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 SETTABLE                         R2 R1 R0
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_12:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_13:
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
       21 GETUPVAL                         R0 7
       22 CALL                             R0 0 1
       23 JUMPIFNOT                        R0 ; [+3]
       24 NEWTABLE                         R0 0 0
       26 SETUPVAL                         R0 8
       27 GETUPVAL                         R1 9
       28 GETTABLEKS                       R0 R1 K0 ["clear"]
       30 CALL                             R0 0 0
       31 RETURN                           R0 0

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
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["ModelContextProtocol"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Types"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Flags"]
       30 GETTABLEKS                       R5 R6 K12 ["FFlagAssistantRegisterWidgetsThroughTools"]
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R5 R2 K13 ["ToolRegistry"]
       35 DUPTABLE                         R6 K17 [{"None", "CommandPrefix", "CommandDelimiter"}]
       36 LOADK                            R7 K18 ["none"]
       37 SETTABLEKS                       R7 R6 K14 ["None"]
       39 LOADK                            R7 K19 ["/"]
       40 SETTABLEKS                       R7 R6 K15 ["CommandPrefix"]
       42 LOADK                            R7 K20 [" "]
       43 SETTABLEKS                       R7 R6 K16 ["CommandDelimiter"]
       45 NEWTABLE                         R7 0 0
       47 NEWTABLE                         R8 0 0
       49 NEWTABLE                         R9 0 0
       51 NEWTABLE                         R10 0 0
       53 NEWTABLE                         R11 0 0
       55 NEWTABLE                         R12 0 0
       57 NEWTABLE                         R13 0 0
       59 NEWTABLE                         R14 0 0
       61 NEWTABLE                         R15 0 0
       63 NEWCLOSURE                       R16 P0
       64 CAPTURE                          REF R7
       65 CAPTURE                          VAL R6
       66 CAPTURE                          REF R8
       67 CAPTURE                          REF R9
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R1
       70 CAPTURE                          REF R15
       71 CAPTURE                          REF R10
       72 CAPTURE                          REF R11
       73 CAPTURE                          REF R12
       74 CAPTURE                          VAL R13
       75 CAPTURE                          VAL R5
       76 SETTABLEKS                       R16 R6 K21 ["registerTool"]
       78 NEWCLOSURE                       R16 P1
       79 CAPTURE                          REF R10
       80 CAPTURE                          REF R11
       81 CAPTURE                          REF R12
       82 CAPTURE                          VAL R13
       83 CAPTURE                          REF R14
       84 CAPTURE                          VAL R4
       85 CAPTURE                          REF R15
       86 CAPTURE                          VAL R5
       87 SETTABLEKS                       R16 R6 K22 ["unregisterTool"]
       89 NEWCLOSURE                       R16 P2
       90 CAPTURE                          REF R9
       91 SETTABLEKS                       R16 R6 K23 ["getRegisteredSlashCommands"]
       93 NEWCLOSURE                       R16 P3
       94 CAPTURE                          REF R8
       95 SETTABLEKS                       R16 R6 K24 ["getSlashCommandDescription"]
       97 NEWCLOSURE                       R16 P4
       98 CAPTURE                          REF R7
       99 SETTABLEKS                       R16 R6 K25 ["getSlashCommandTransformation"]
      101 NEWCLOSURE                       R16 P5
      102 CAPTURE                          REF R10
      103 SETTABLEKS                       R16 R6 K26 ["getStreamTransform"]
      105 NEWCLOSURE                       R16 P6
      106 CAPTURE                          REF R14
      107 CAPTURE                          REF R11
      108 CAPTURE                          VAL R5
      109 SETTABLEKS                       R16 R6 K27 ["getPreExecuteWarningResult"]
      111 NEWCLOSURE                       R16 P7
      112 CAPTURE                          REF R12
      113 SETTABLEKS                       R16 R6 K28 ["getToolDisplayName"]
      115 NEWCLOSURE                       R16 P8
      116 CAPTURE                          REF R14
      117 SETTABLEKS                       R16 R6 K29 ["setToolAlwaysAccepted"]
      119 DUPCLOSURE                       R16 K30 [PROTO_11]
      120 CAPTURE                          VAL R13
      121 SETTABLEKS                       R16 R6 K31 ["getToolCallOptions"]
      123 NEWCLOSURE                       R16 P10
      124 CAPTURE                          REF R14
      125 SETTABLEKS                       R16 R6 K32 ["clearAlwaysAcceptedTools"]
      127 NEWCLOSURE                       R16 P11
      128 CAPTURE                          REF R10
      129 CAPTURE                          REF R7
      130 CAPTURE                          REF R9
      131 CAPTURE                          REF R8
      132 CAPTURE                          REF R11
      133 CAPTURE                          REF R12
      134 CAPTURE                          REF R14
      135 CAPTURE                          VAL R4
      136 CAPTURE                          REF R15
      137 CAPTURE                          VAL R5
      138 SETTABLEKS                       R16 R6 K33 ["clear"]
      140 CLOSEUPVALS                      R7
      141 RETURN                           R6 1
