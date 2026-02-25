PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["slashCommands"]
        2 JUMPIFNOT                        R1 ; [+67]
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
       21 GETUPVAL                         R8 1
       22 CALL                             R8 0 1
       23 JUMPIFNOT                        R8 ; [+19]
       24 GETUPVAL                         R11 2
       25 GETTABLEKS                       R10 R11 K6 ["CommandDelimiter"]
       27 NAMECALL                         R8 R7 K7 ["find"]
       29 CALL                             R8 2 1
       30 JUMPIFNOT                        R8 ; [+12]
       31 GETIMPORT                        R8 K3 [error]
       33 LOADK                            R10 K8 ["Slash command %* cannot contain the delimiter \"%*\""]
       34 MOVE                             R12 R7
       35 GETUPVAL                         R14 2
       36 GETTABLEKS                       R13 R14 K6 ["CommandDelimiter"]
       38 NAMECALL                         R10 R10 K5 ["format"]
       40 CALL                             R10 3 1
       41 MOVE                             R9 R10
       42 CALL                             R8 1 0
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R9 R6 K9 ["mapToToolCall"]
       46 SETTABLE                         R9 R8 R7
       47 GETUPVAL                         R8 1
       48 CALL                             R8 0 1
       49 JUMPIFNOT                        R8 ; [+11]
       50 GETUPVAL                         R8 3
       51 GETTABLEKS                       R9 R6 K10 ["getDescription"]
       53 SETTABLE                         R9 R8 R7
       54 GETUPVAL                         R9 4
       55 FASTCALL2                        TABLE_INSERT R9 R7 ; [+4]
       57 MOVE                             R10 R7
       58 GETIMPORT                        R8 K13 [table.insert]
       60 CALL                             R8 2 0
       61 FORGLOOP                         R2 2 ; [-55]
       63 GETUPVAL                         R2 1
       64 CALL                             R2 0 1
       65 JUMPIFNOT                        R2 ; [+4]
       66 GETIMPORT                        R2 K15 [table.sort]
       68 GETUPVAL                         R3 4
       69 CALL                             R2 1 0
       70 GETUPVAL                         R2 5
       71 CALL                             R2 0 1
       72 JUMPIFNOT                        R2 ; [+16]
       73 GETTABLEKS                       R2 R0 K16 ["contentWidgets"]
       75 JUMPIFNOT                        R2 ; [+13]
       76 GETUPVAL                         R4 6
       77 GETTABLEKS                       R3 R4 K17 ["registerWidgetList"]
       79 MOVE                             R4 R2
       80 CALL                             R3 1 1
       81 GETUPVAL                         R4 7
       82 GETTABLEKS                       R7 R0 K18 ["definition"]
       84 GETTABLEKS                       R6 R7 K18 ["definition"]
       86 GETTABLEKS                       R5 R6 K19 ["name"]
       88 SETTABLE                         R3 R4 R5
       89 GETTABLEKS                       R2 R0 K20 ["streamTransform"]
       91 JUMPIFNOT                        R2 ; [+10]
       92 GETUPVAL                         R2 8
       93 GETTABLEKS                       R5 R0 K18 ["definition"]
       95 GETTABLEKS                       R4 R5 K18 ["definition"]
       97 GETTABLEKS                       R3 R4 K19 ["name"]
       99 GETTABLEKS                       R4 R0 K20 ["streamTransform"]
      101 SETTABLE                         R4 R2 R3
      102 GETTABLEKS                       R2 R0 K21 ["getPreExecuteWarning"]
      104 JUMPIFNOT                        R2 ; [+10]
      105 GETUPVAL                         R2 9
      106 GETTABLEKS                       R5 R0 K18 ["definition"]
      108 GETTABLEKS                       R4 R5 K18 ["definition"]
      110 GETTABLEKS                       R3 R4 K19 ["name"]
      112 GETTABLEKS                       R4 R0 K21 ["getPreExecuteWarning"]
      114 SETTABLE                         R4 R2 R3
      115 GETTABLEKS                       R2 R0 K22 ["displayNameFunction"]
      117 JUMPIFNOT                        R2 ; [+10]
      118 GETUPVAL                         R2 10
      119 GETTABLEKS                       R5 R0 K18 ["definition"]
      121 GETTABLEKS                       R4 R5 K18 ["definition"]
      123 GETTABLEKS                       R3 R4 K19 ["name"]
      125 GETTABLEKS                       R4 R0 K22 ["displayNameFunction"]
      127 SETTABLE                         R4 R2 R3
      128 GETUPVAL                         R2 11
      129 CALL                             R2 0 1
      130 JUMPIF                           R2 ; [+3]
      131 GETUPVAL                         R2 12
      132 CALL                             R2 0 1
      133 JUMPIFNOT                        R2 ; [+13]
      134 GETTABLEKS                       R2 R0 K23 ["toolCallOptions"]
      136 JUMPIFNOT                        R2 ; [+10]
      137 GETUPVAL                         R2 13
      138 GETTABLEKS                       R5 R0 K18 ["definition"]
      140 GETTABLEKS                       R4 R5 K18 ["definition"]
      142 GETTABLEKS                       R3 R4 K19 ["name"]
      144 GETTABLEKS                       R4 R0 K23 ["toolCallOptions"]
      146 SETTABLE                         R4 R2 R3
      147 GETUPVAL                         R3 14
      148 GETTABLEKS                       R2 R3 K24 ["addTool"]
      150 GETTABLEKS                       R3 R0 K18 ["definition"]
      152 CALL                             R2 1 0
      153 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["FFlagMCPAssistantSlashCommandMenu must be enabled to get registered slash commands"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 1
        9 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagMCPAssistantSlashCommandMenu must be enabled to get slash command descriptions"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R2 1
        9 GETTABLE                         R1 R2 R0
       10 JUMPIFNOT                        R1 ; [+3]
       11 MOVE                             R2 R1
       12 CALL                             R2 0 -1
       13 RETURN                           R2 -1
       14 LOADNIL                          R2
       15 RETURN                           R2 1

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
        6 GETUPVAL                         R0 2
        7 CALL                             R0 0 1
        8 JUMPIFNOT                        R0 ; [+6]
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
       25 CALL                             R0 0 1
       26 JUMPIFNOT                        R0 ; [+3]
       27 NEWTABLE                         R0 0 0
       29 SETUPVAL                         R0 9
       30 GETUPVAL                         R1 10
       31 GETTABLEKS                       R0 R1 K0 ["clear"]
       33 CALL                             R0 0 0
       34 RETURN                           R0 0

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
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Flags"]
       37 GETTABLEKS                       R6 R7 K13 ["FFlagEnableAssistantImageUpload"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R8 R0 K11 ["Flags"]
       44 GETTABLEKS                       R7 R8 K14 ["FFlagMCPAssistantLongRunningToolCalls"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R9 R0 K11 ["Flags"]
       51 GETTABLEKS                       R8 R9 K15 ["FFlagMCPAssistantSlashCommandMenu"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R2 K16 ["ToolRegistry"]
       56 DUPTABLE                         R9 K20 [{"None", "CommandPrefix", "CommandDelimiter"}]
       57 LOADK                            R10 K21 ["none"]
       58 SETTABLEKS                       R10 R9 K17 ["None"]
       60 LOADK                            R10 K22 ["/"]
       61 SETTABLEKS                       R10 R9 K18 ["CommandPrefix"]
       63 LOADK                            R10 K23 [" "]
       64 SETTABLEKS                       R10 R9 K19 ["CommandDelimiter"]
       66 NEWTABLE                         R10 0 0
       68 NEWTABLE                         R11 0 0
       70 NEWTABLE                         R12 0 0
       72 NEWTABLE                         R13 0 0
       74 NEWTABLE                         R14 0 0
       76 NEWTABLE                         R15 0 0
       78 NEWTABLE                         R16 0 0
       80 NEWTABLE                         R17 0 0
       82 NEWTABLE                         R18 0 0
       84 NEWCLOSURE                       R19 P0
       85 CAPTURE                          REF R10
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R9
       88 CAPTURE                          REF R11
       89 CAPTURE                          REF R12
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R1
       92 CAPTURE                          REF R18
       93 CAPTURE                          REF R13
       94 CAPTURE                          REF R14
       95 CAPTURE                          REF R15
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R16
       99 CAPTURE                          VAL R8
      100 SETTABLEKS                       R19 R9 K24 ["registerTool"]
      102 NEWCLOSURE                       R19 P1
      103 CAPTURE                          REF R13
      104 CAPTURE                          REF R14
      105 CAPTURE                          REF R15
      106 CAPTURE                          VAL R16
      107 CAPTURE                          REF R17
      108 CAPTURE                          VAL R4
      109 CAPTURE                          REF R18
      110 CAPTURE                          VAL R8
      111 SETTABLEKS                       R19 R9 K25 ["unregisterTool"]
      113 NEWCLOSURE                       R19 P2
      114 CAPTURE                          VAL R7
      115 CAPTURE                          REF R12
      116 SETTABLEKS                       R19 R9 K26 ["getRegisteredSlashCommands"]
      118 NEWCLOSURE                       R19 P3
      119 CAPTURE                          VAL R7
      120 CAPTURE                          REF R11
      121 SETTABLEKS                       R19 R9 K27 ["getSlashCommandDescription"]
      123 NEWCLOSURE                       R19 P4
      124 CAPTURE                          REF R10
      125 SETTABLEKS                       R19 R9 K28 ["getSlashCommandTransformation"]
      127 NEWCLOSURE                       R19 P5
      128 CAPTURE                          REF R13
      129 SETTABLEKS                       R19 R9 K29 ["getStreamTransform"]
      131 NEWCLOSURE                       R19 P6
      132 CAPTURE                          REF R17
      133 CAPTURE                          REF R14
      134 CAPTURE                          VAL R8
      135 SETTABLEKS                       R19 R9 K30 ["getPreExecuteWarningResult"]
      137 NEWCLOSURE                       R19 P7
      138 CAPTURE                          REF R15
      139 SETTABLEKS                       R19 R9 K31 ["getToolDisplayName"]
      141 NEWCLOSURE                       R19 P8
      142 CAPTURE                          REF R17
      143 SETTABLEKS                       R19 R9 K32 ["setToolAlwaysAccepted"]
      145 DUPCLOSURE                       R19 K33 [PROTO_11]
      146 CAPTURE                          VAL R16
      147 SETTABLEKS                       R19 R9 K34 ["getToolCallOptions"]
      149 NEWCLOSURE                       R19 P10
      150 CAPTURE                          REF R17
      151 SETTABLEKS                       R19 R9 K35 ["clearAlwaysAcceptedTools"]
      153 NEWCLOSURE                       R19 P11
      154 CAPTURE                          REF R13
      155 CAPTURE                          REF R10
      156 CAPTURE                          VAL R7
      157 CAPTURE                          REF R12
      158 CAPTURE                          REF R11
      159 CAPTURE                          REF R14
      160 CAPTURE                          REF R15
      161 CAPTURE                          REF R17
      162 CAPTURE                          VAL R4
      163 CAPTURE                          REF R18
      164 CAPTURE                          VAL R8
      165 SETTABLEKS                       R19 R9 K36 ["clear"]
      167 CLOSEUPVALS                      R10
      168 RETURN                           R9 1
