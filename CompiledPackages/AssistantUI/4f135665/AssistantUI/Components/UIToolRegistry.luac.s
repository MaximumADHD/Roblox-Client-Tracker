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
       61 GETTABLEKS                       R2 R0 K16 ["contentWidgets"]
       63 JUMPIFNOT                        R2 ; [+13]
       64 GETUPVAL                         R4 4
       65 GETTABLEKS                       R3 R4 K17 ["registerWidgetList"]
       67 MOVE                             R4 R2
       68 CALL                             R3 1 1
       69 GETUPVAL                         R4 5
       70 GETTABLEKS                       R7 R0 K18 ["definition"]
       72 GETTABLEKS                       R6 R7 K18 ["definition"]
       74 GETTABLEKS                       R5 R6 K19 ["name"]
       76 SETTABLE                         R3 R4 R5
       77 GETTABLEKS                       R3 R0 K20 ["streamTransform"]
       79 JUMPIFNOT                        R3 ; [+10]
       80 GETUPVAL                         R3 6
       81 GETTABLEKS                       R6 R0 K18 ["definition"]
       83 GETTABLEKS                       R5 R6 K18 ["definition"]
       85 GETTABLEKS                       R4 R5 K19 ["name"]
       87 GETTABLEKS                       R5 R0 K20 ["streamTransform"]
       89 SETTABLE                         R5 R3 R4
       90 GETTABLEKS                       R3 R0 K21 ["getPreExecuteWarning"]
       92 JUMPIFNOT                        R3 ; [+10]
       93 GETUPVAL                         R3 7
       94 GETTABLEKS                       R6 R0 K18 ["definition"]
       96 GETTABLEKS                       R5 R6 K18 ["definition"]
       98 GETTABLEKS                       R4 R5 K19 ["name"]
      100 GETTABLEKS                       R5 R0 K21 ["getPreExecuteWarning"]
      102 SETTABLE                         R5 R3 R4
      103 GETTABLEKS                       R3 R0 K22 ["displayNameFunction"]
      105 JUMPIFNOT                        R3 ; [+10]
      106 GETUPVAL                         R3 8
      107 GETTABLEKS                       R6 R0 K18 ["definition"]
      109 GETTABLEKS                       R5 R6 K18 ["definition"]
      111 GETTABLEKS                       R4 R5 K19 ["name"]
      113 GETTABLEKS                       R5 R0 K22 ["displayNameFunction"]
      115 SETTABLE                         R5 R3 R4
      116 GETTABLEKS                       R3 R0 K23 ["toolCallOptions"]
      118 JUMPIFNOT                        R3 ; [+10]
      119 GETUPVAL                         R3 9
      120 GETTABLEKS                       R6 R0 K18 ["definition"]
      122 GETTABLEKS                       R5 R6 K18 ["definition"]
      124 GETTABLEKS                       R4 R5 K19 ["name"]
      126 GETTABLEKS                       R5 R0 K23 ["toolCallOptions"]
      128 SETTABLE                         R5 R3 R4
      129 GETUPVAL                         R4 10
      130 GETTABLEKS                       R3 R4 K24 ["addTool"]
      132 GETTABLEKS                       R4 R0 K18 ["definition"]
      134 CALL                             R3 1 0
      135 RETURN                           R0 0

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
       15 GETUPVAL                         R2 5
       16 GETTABLE                         R1 R2 R0
       17 JUMPIFNOT                        R1 ; [+5]
       18 MOVE                             R2 R1
       19 CALL                             R2 0 0
       20 GETUPVAL                         R2 5
       21 LOADNIL                          R3
       22 SETTABLE                         R3 R2 R0
       23 GETIMPORT                        R2 K1 [pcall]
       25 NEWCLOSURE                       R3 P0
       26 CAPTURE                          UPVAL U6
       27 CAPTURE                          VAL R0
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

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
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["ModelContextProtocol"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Types"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R2 K11 ["ToolRegistry"]
       28 DUPTABLE                         R5 K15 [{"None", "CommandPrefix", "CommandDelimiter"}]
       29 LOADK                            R6 K16 ["none"]
       30 SETTABLEKS                       R6 R5 K12 ["None"]
       32 LOADK                            R6 K17 ["/"]
       33 SETTABLEKS                       R6 R5 K13 ["CommandPrefix"]
       35 LOADK                            R6 K18 [" "]
       36 SETTABLEKS                       R6 R5 K14 ["CommandDelimiter"]
       38 NEWTABLE                         R6 0 0
       40 NEWTABLE                         R7 0 0
       42 NEWTABLE                         R8 0 0
       44 NEWTABLE                         R9 0 0
       46 NEWTABLE                         R10 0 0
       48 NEWTABLE                         R11 0 0
       50 NEWTABLE                         R12 0 0
       52 NEWTABLE                         R13 0 0
       54 NEWTABLE                         R14 0 0
       56 NEWCLOSURE                       R15 P0
       57 CAPTURE                          REF R6
       58 CAPTURE                          VAL R5
       59 CAPTURE                          REF R7
       60 CAPTURE                          REF R8
       61 CAPTURE                          VAL R1
       62 CAPTURE                          REF R14
       63 CAPTURE                          REF R9
       64 CAPTURE                          REF R10
       65 CAPTURE                          REF R11
       66 CAPTURE                          VAL R12
       67 CAPTURE                          VAL R4
       68 SETTABLEKS                       R15 R5 K19 ["registerTool"]
       70 NEWCLOSURE                       R15 P1
       71 CAPTURE                          REF R9
       72 CAPTURE                          REF R10
       73 CAPTURE                          REF R11
       74 CAPTURE                          VAL R12
       75 CAPTURE                          REF R13
       76 CAPTURE                          REF R14
       77 CAPTURE                          VAL R4
       78 SETTABLEKS                       R15 R5 K20 ["unregisterTool"]
       80 NEWCLOSURE                       R15 P2
       81 CAPTURE                          REF R8
       82 SETTABLEKS                       R15 R5 K21 ["getRegisteredSlashCommands"]
       84 NEWCLOSURE                       R15 P3
       85 CAPTURE                          REF R7
       86 SETTABLEKS                       R15 R5 K22 ["getSlashCommandDescription"]
       88 NEWCLOSURE                       R15 P4
       89 CAPTURE                          REF R6
       90 SETTABLEKS                       R15 R5 K23 ["getSlashCommandTransformation"]
       92 NEWCLOSURE                       R15 P5
       93 CAPTURE                          REF R9
       94 SETTABLEKS                       R15 R5 K24 ["getStreamTransform"]
       96 NEWCLOSURE                       R15 P6
       97 CAPTURE                          REF R13
       98 CAPTURE                          REF R10
       99 CAPTURE                          VAL R4
      100 SETTABLEKS                       R15 R5 K25 ["getPreExecuteWarningResult"]
      102 NEWCLOSURE                       R15 P7
      103 CAPTURE                          REF R11
      104 SETTABLEKS                       R15 R5 K26 ["getToolDisplayName"]
      106 NEWCLOSURE                       R15 P8
      107 CAPTURE                          REF R13
      108 SETTABLEKS                       R15 R5 K27 ["setToolAlwaysAccepted"]
      110 DUPCLOSURE                       R15 K28 [PROTO_11]
      111 CAPTURE                          VAL R12
      112 SETTABLEKS                       R15 R5 K29 ["getToolCallOptions"]
      114 NEWCLOSURE                       R15 P10
      115 CAPTURE                          REF R13
      116 SETTABLEKS                       R15 R5 K30 ["clearAlwaysAcceptedTools"]
      118 NEWCLOSURE                       R15 P11
      119 CAPTURE                          REF R9
      120 CAPTURE                          REF R6
      121 CAPTURE                          REF R8
      122 CAPTURE                          REF R7
      123 CAPTURE                          REF R10
      124 CAPTURE                          REF R11
      125 CAPTURE                          REF R13
      126 CAPTURE                          REF R14
      127 CAPTURE                          VAL R4
      128 SETTABLEKS                       R15 R5 K31 ["clear"]
      130 CLOSEUPVALS                      R6
      131 RETURN                           R5 1
