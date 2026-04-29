PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["stopCode"]
        3 GETTABLEKS                       R3 R1 K1 ["id"]
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["contentId"]
        7 JUMPIFNOT                        R0 ; [+17]
        8 LOADB                            R0 1
        9 SETUPVAL                         R0 2
       10 GETUPVAL                         R0 3
       11 GETUPVAL                         R3 4
       12 GETTABLEKS                       R2 R3 K1 ["codeRunStatus"]
       14 GETUPVAL                         R3 5
       15 DUPTABLE                         R4 K4 [{"id", "status"}]
       16 GETUPVAL                         R5 6
       17 SETTABLEKS                       R5 R4 K2 ["id"]
       19 LOADB                            R5 1
       20 SETTABLEKS                       R5 R4 K3 ["status"]
       22 NAMECALL                         R0 R0 K5 ["FireGuest"]
       24 CALL                             R0 4 0
       25 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["runCode"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 LOADB                            R4 0
        2 NAMECALL                         R2 R2 K0 ["GenerateGUID"]
        4 CALL                             R2 2 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["startRecording"]
        8 MOVE                             R4 R2
        9 CALL                             R3 1 0
       10 GETTABLEKS                       R3 R1 K2 ["id"]
       12 JUMPIFNOT                        R3 ; [+16]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R4 R5 K3 ["isRunning"]
       16 MOVE                             R5 R3
       17 CALL                             R4 1 1
       18 JUMPIFNOT                        R4 ; [+10]
       19 GETIMPORT                        R4 K5 [error]
       21 LOADK                            R6 K6 ["Code is already running with id: "]
       22 FASTCALL1                        TOSTRING R3 ; [+3]
       23 MOVE                             R8 R3
       24 GETIMPORT                        R7 K8 [tostring]
       26 CALL                             R7 1 1
       27 CONCAT                           R5 R6 R7
       28 CALL                             R4 1 0
       29 GETTABLEKS                       R4 R1 K9 ["code"]
       31 JUMPIF                           R3 ; [+25]
       32 JUMPIFNOT                        R4 ; [+24]
       33 GETUPVAL                         R6 2
       34 GETTABLEKS                       R5 R6 K10 ["loadCode"]
       36 MOVE                             R6 R4
       37 CALL                             R5 1 1
       38 MOVE                             R3 R5
       39 GETTABLEKS                       R6 R1 K11 ["contentId"]
       41 JUMPIFNOT                        R6 ; [+15]
       42 GETUPVAL                         R6 3
       43 GETUPVAL                         R9 4
       44 GETTABLEKS                       R8 R9 K12 ["bindCodeId"]
       46 MOVE                             R9 R0
       47 DUPTABLE                         R10 K14 [{"contentId", "newCodeId"}]
       48 GETTABLEKS                       R11 R1 K11 ["contentId"]
       50 SETTABLEKS                       R11 R10 K11 ["contentId"]
       52 SETTABLEKS                       R3 R10 K13 ["newCodeId"]
       54 NAMECALL                         R6 R6 K15 ["FireGuest"]
       56 CALL                             R6 4 0
       57 FASTCALL2K                       ASSERT R3 K16 ; [+5]
       59 MOVE                             R6 R3
       60 LOADK                            R7 K16 ["No loadedId provided or created"]
       61 GETIMPORT                        R5 K18 [assert]
       63 CALL                             R5 2 0
       64 LOADNIL                          R5
       65 LOADNIL                          R6
       66 LOADB                            R7 0
       67 GETIMPORT                        R8 K21 [task.delay]
       69 LOADK                            R9 K22 [0.1]
       70 NEWCLOSURE                       R10 P0
       71 CAPTURE                          REF R5
       72 CAPTURE                          VAL R1
       73 CAPTURE                          REF R7
       74 CAPTURE                          UPVAL U3
       75 CAPTURE                          UPVAL U4
       76 CAPTURE                          VAL R0
       77 CAPTURE                          REF R3
       78 CALL                             R8 2 0
       79 GETIMPORT                        R8 K24 [pcall]
       81 NEWCLOSURE                       R9 P1
       82 CAPTURE                          UPVAL U2
       83 CAPTURE                          REF R3
       84 CALL                             R8 1 2
       85 MOVE                             R5 R8
       86 MOVE                             R6 R9
       87 JUMPIFNOT                        R7 ; [+14]
       88 GETUPVAL                         R8 3
       89 GETUPVAL                         R11 4
       90 GETTABLEKS                       R10 R11 K25 ["codeRunStatus"]
       92 MOVE                             R11 R0
       93 DUPTABLE                         R12 K27 [{"id", "status"}]
       94 SETTABLEKS                       R3 R12 K2 ["id"]
       96 LOADB                            R13 0
       97 SETTABLEKS                       R13 R12 K26 ["status"]
       99 NAMECALL                         R8 R8 K15 ["FireGuest"]
      101 CALL                             R8 4 0
      102 GETUPVAL                         R9 1
      103 GETTABLEKS                       R8 R9 K28 ["endRecording"]
      105 MOVE                             R9 R2
      106 CALL                             R8 1 0
      107 DUPTABLE                         R8 K32 [{"success", "result", "loadedId"}]
      108 SETTABLEKS                       R5 R8 K29 ["success"]
      110 GETUPVAL                         R10 5
      111 GETTABLEKS                       R9 R10 K33 ["serializeToString"]
      113 MOVE                             R10 R6
      114 GETUPVAL                         R11 6
      115 CALL                             R11 0 1
      116 GETUPVAL                         R12 7
      117 CALL                             R12 0 -1
      118 CALL                             R9 -1 1
      119 SETTABLEKS                       R9 R8 K30 ["result"]
      121 SETTABLEKS                       R3 R8 K31 ["loadedId"]
      123 CLOSEUPVALS                      R3
      124 RETURN                           R8 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+7]
        3 GETUPVAL                         R3 1
        4 CALL                             R3 0 1
        5 JUMPIFNOT                        R3 ; [+4]
        6 JUMPIFNOT                        R1 ; [+3]
        7 GETTABLEKS                       R2 R1 K0 ["targetDataModel"]
        9 JUMPIF                           R2 ; [+1]
       10 LOADNIL                          R2
       11 GETUPVAL                         R3 2
       12 MOVE                             R4 R2
       13 MOVE                             R5 R0
       14 CALL                             R3 2 1
       15 GETTABLEKS                       R4 R3 K1 ["success"]
       17 JUMPIFNOT                        R4 ; [+11]
       18 GETUPVAL                         R4 3
       19 CALL                             R4 0 1
       20 GETTABLEKS                       R6 R3 K2 ["result"]
       22 NAMECALL                         R4 R4 K3 ["addText"]
       24 CALL                             R4 2 1
       25 NAMECALL                         R4 R4 K4 ["build"]
       27 CALL                             R4 1 -1
       28 RETURN                           R4 -1
       29 GETIMPORT                        R4 K6 [error]
       31 GETTABLEKS                       R5 R3 K2 ["result"]
       33 CALL                             R4 1 0
       34 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["ExecuteLuau"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 DUPTABLE                         R1 K2 [{"name", "arguments"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K3 ["ExecuteLuau"]
        4 SETTABLEKS                       R2 R1 K0 ["name"]
        6 DUPTABLE                         R2 K5 [{"code"}]
        7 SETTABLEKS                       R0 R2 K4 ["code"]
        9 SETTABLEKS                       R2 R1 K1 ["arguments"]
       11 RETURN                           R1 1

PROTO_9:
        0 DUPTABLE                         R0 K3 [{"type", "code", "expanded"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K4 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 LOADK                            R1 K5 [""]
        7 SETTABLEKS                       R1 R0 K1 ["code"]
        9 LOADB                            R1 0
       10 SETTABLEKS                       R1 R0 K2 ["expanded"]
       12 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["code"]
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["parseJSONForCode"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R1
       10 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["code"]
        3 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["input"]
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETTABLEKS                       R2 R0 K0 ["input"]
        5 GETTABLEKS                       R1 R2 K1 ["code"]
        7 JUMPIF                           R1 ; [+2]
        8 LOADNIL                          R2
        9 RETURN                           R2 1
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R1
       12 RETURN                           R2 1

PROTO_14:
        0 JUMPIFNOT                        R1 ; [+23]
        1 GETTABLEKS                       R2 R1 K0 ["code"]
        3 JUMPIFNOT                        R2 ; [+20]
        4 GETTABLEKS                       R3 R1 K0 ["code"]
        6 FASTCALL1                        TYPEOF R3 ; [+2]
        7 GETIMPORT                        R2 K2 [typeof]
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKS                    R2 K3 ["string"] ; [+13]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R3 R1 K0 ["code"]
       15 CALL                             R2 1 1
       16 JUMPIFNOT                        R2 ; [+7]
       17 DUPTABLE                         R3 K6 [{"shouldConfirm", "warningMessage"}]
       18 LOADB                            R4 1
       19 SETTABLEKS                       R4 R3 K4 ["shouldConfirm"]
       21 SETTABLEKS                       R2 R3 K5 ["warningMessage"]
       23 RETURN                           R3 1
       24 LOADNIL                          R2
       25 RETURN                           R2 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["ExecuteLuau"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETTABLEKS                       R2 R0 K1 ["environment"]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K2 ["stopCode"]
        7 DUPCLOSURE                       R6 K3 [PROTO_0]
        8 CAPTURE                          UPVAL U1
        9 NAMECALL                         R3 R1 K4 ["OnHostEvent"]
       11 CALL                             R3 3 0
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K5 ["bindCodeId"]
       15 DUPCLOSURE                       R6 K6 [PROTO_1]
       16 NAMECALL                         R3 R1 K7 ["OnGuestEvent"]
       18 CALL                             R3 3 0
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K8 ["codeRunStatus"]
       22 DUPCLOSURE                       R6 K9 [PROTO_2]
       23 NAMECALL                         R3 R1 K7 ["OnGuestEvent"]
       25 CALL                             R3 3 0
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K10 ["loadAndRunCodeAsync"]
       29 NEWCLOSURE                       R6 P3
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          VAL R2
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          UPVAL U5
       38 NAMECALL                         R3 R1 K11 ["OnHostInvokeAsync"]
       40 CALL                             R3 3 1
       41 NEWCLOSURE                       R4 P4
       42 CAPTURE                          UPVAL U6
       43 CAPTURE                          UPVAL U7
       44 CAPTURE                          VAL R3
       45 CAPTURE                          UPVAL U8
       46 GETUPVAL                         R6 9
       47 GETTABLEKS                       R5 R6 K12 ["define"]
       49 CALL                             R5 0 1
       50 GETUPVAL                         R8 10
       51 GETTABLEKS                       R7 R8 K13 ["ExecuteLuau"]
       53 NAMECALL                         R5 R5 K14 ["setName"]
       55 CALL                             R5 2 1
       56 LOADK                            R7 K15 ["Executes Luau code in Roblox Studio. Returns the result of the executed code or an error message if the code fails to execute."]
       57 NAMECALL                         R5 R5 K16 ["setDescription"]
       59 CALL                             R5 2 1
       60 LOADK                            R7 K17 ["code"]
       61 DUPTABLE                         R8 K20 [{"type", "description"}]
       62 LOADK                            R9 K21 ["string"]
       63 SETTABLEKS                       R9 R8 K18 ["type"]
       65 LOADK                            R9 K22 ["The Luau code to execute"]
       66 SETTABLEKS                       R9 R8 K19 ["description"]
       68 NAMECALL                         R5 R5 K23 ["addArgument"]
       70 CALL                             R5 3 1
       71 MOVE                             R7 R4
       72 NAMECALL                         R5 R5 K24 ["setHandler"]
       74 CALL                             R5 2 1
       75 NAMECALL                         R5 R5 K25 ["build"]
       77 CALL                             R5 1 1
       78 DUPTABLE                         R6 K29 [{"command", "getDescription", "mapToToolCall"}]
       79 LOADK                            R7 K30 ["run"]
       80 SETTABLEKS                       R7 R6 K26 ["command"]
       82 DUPCLOSURE                       R7 K31 [PROTO_7]
       83 CAPTURE                          UPVAL U11
       84 SETTABLEKS                       R7 R6 K27 ["getDescription"]
       86 DUPCLOSURE                       R7 K32 [PROTO_8]
       87 CAPTURE                          UPVAL U10
       88 SETTABLEKS                       R7 R6 K28 ["mapToToolCall"]
       90 DUPTABLE                         R7 K36 [{"transformInitialContent", "getTransformDeltaFn", "getTransformPreExecuteFn"}]
       91 DUPCLOSURE                       R8 K37 [PROTO_9]
       92 CAPTURE                          UPVAL U12
       93 SETTABLEKS                       R8 R7 K33 ["transformInitialContent"]
       95 DUPCLOSURE                       R8 K38 [PROTO_11]
       96 CAPTURE                          UPVAL U13
       97 SETTABLEKS                       R8 R7 K34 ["getTransformDeltaFn"]
       99 DUPCLOSURE                       R8 K39 [PROTO_13]
      100 SETTABLEKS                       R8 R7 K35 ["getTransformPreExecuteFn"]
      102 DUPTABLE                         R8 K47 [{"availableDataModelTypes", "definition", "slashCommands", "contentWidgets", "streamTransform", "getPreExecuteWarning", "displayNameFunction"}]
      103 GETUPVAL                         R10 6
      104 CALL                             R10 0 1
      105 JUMPIFNOT                        R10 ; [+23]
      106 GETUPVAL                         R10 7
      107 CALL                             R10 0 1
      108 JUMPIFNOT                        R10 ; [+20]
      109 NEWTABLE                         R9 0 3
      111 GETUPVAL                         R12 14
      112 GETTABLEKS                       R11 R12 K48 ["Types"]
      114 GETTABLEKS                       R10 R11 K49 ["Edit"]
      116 GETUPVAL                         R13 14
      117 GETTABLEKS                       R12 R13 K48 ["Types"]
      119 GETTABLEKS                       R11 R12 K50 ["Client"]
      121 GETUPVAL                         R14 14
      122 GETTABLEKS                       R13 R14 K48 ["Types"]
      124 GETTABLEKS                       R12 R13 K51 ["Server"]
      126 SETLIST                          R9 R10 3 [1]
      128 JUMPIF                           R9 ; [+1]
      129 LOADNIL                          R9
      130 SETTABLEKS                       R9 R8 K40 ["availableDataModelTypes"]
      132 SETTABLEKS                       R5 R8 K41 ["definition"]
      134 NEWTABLE                         R9 0 1
      136 MOVE                             R10 R6
      137 SETLIST                          R9 R10 1 [1]
      139 SETTABLEKS                       R9 R8 K42 ["slashCommands"]
      141 NEWTABLE                         R9 0 1
      143 GETUPVAL                         R10 12
      144 SETLIST                          R9 R10 1 [1]
      146 SETTABLEKS                       R9 R8 K43 ["contentWidgets"]
      148 SETTABLEKS                       R7 R8 K44 ["streamTransform"]
      150 DUPCLOSURE                       R9 K52 [PROTO_14]
      151 CAPTURE                          UPVAL U15
      152 SETTABLEKS                       R9 R8 K45 ["getPreExecuteWarning"]
      154 DUPCLOSURE                       R9 K53 [PROTO_15]
      155 CAPTURE                          UPVAL U11
      156 SETTABLEKS                       R9 R8 K46 ["displayNameFunction"]
      158 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Util"]
       17 GETTABLEKS                       R3 R4 K11 ["CheckCodeSafety"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R0 K10 ["Util"]
       24 GETTABLEKS                       R4 R5 K12 ["CommandExecution"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R0 K13 ["Parent"]
       31 GETTABLEKS                       R5 R6 K14 ["ModelContextProtocol"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R0 K10 ["Util"]
       38 GETTABLEKS                       R6 R7 K15 ["OutputParser"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R9 R0 K16 ["Components"]
       45 GETTABLEKS                       R8 R9 K17 ["ContentWidgets"]
       47 GETTABLEKS                       R7 R8 K18 ["RunCodeContentWidget"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R9 R0 K19 ["Tools"]
       54 GETTABLEKS                       R8 R9 K20 ["ToolTypes"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R10 R0 K10 ["Util"]
       61 GETTABLEKS                       R9 R10 K21 ["ToolUtils"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K9 [require]
       66 GETTABLEKS                       R12 R0 K22 ["Resources"]
       68 GETTABLEKS                       R11 R12 K23 ["Localization"]
       70 GETTABLEKS                       R10 R11 K24 ["Translator"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K9 [require]
       75 GETTABLEKS                       R11 R0 K25 ["Types"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K9 [require]
       80 GETTABLEKS                       R13 R0 K10 ["Util"]
       82 GETTABLEKS                       R12 R13 K26 ["DataModelType"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K9 [require]
       87 GETTABLEKS                       R14 R0 K27 ["Flags"]
       89 GETTABLEKS                       R13 R14 K28 ["FFlagAssistantExecuteLuaBackground"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K9 [require]
       94 GETTABLEKS                       R15 R0 K27 ["Flags"]
       96 GETTABLEKS                       R14 R15 K29 ["FFlagAssistantTestModeToolArgPatch"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K9 [require]
      101 GETTABLEKS                       R16 R0 K27 ["Flags"]
      103 GETTABLEKS                       R15 R16 K30 ["FIntExecuteLuauMaxJsonLength"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K9 [require]
      108 GETTABLEKS                       R17 R0 K27 ["Flags"]
      110 GETTABLEKS                       R16 R17 K31 ["FIntExecuteLuauMaxStringLength"]
      112 CALL                             R15 1 1
      113 GETTABLEKS                       R17 R4 K10 ["Util"]
      115 GETTABLEKS                       R16 R17 K32 ["ToolBuilder"]
      117 GETTABLEKS                       R18 R4 K10 ["Util"]
      119 GETTABLEKS                       R17 R18 K33 ["ToolResult"]
      121 GETTABLEKS                       R18 R7 K34 ["ToolNames"]
      123 GETTABLEKS                       R19 R6 K35 ["NETWORK_KEYS"]
      125 DUPCLOSURE                       R20 K36 [PROTO_16]
      126 CAPTURE                          VAL R19
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R17
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R18
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R11
      141 CAPTURE                          VAL R2
      142 RETURN                           R20 1
