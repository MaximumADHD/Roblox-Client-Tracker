PROTO_0:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R3 R1 K0 ["host"]
        3 JUMPIFNOT                        R3 ; [+10]
        4 GETIMPORT                        R3 K2 [require]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K3 ["MeshGenTool"]
        9 GETTABLEKS                       R4 R5 K4 ["MeshGenHost"]
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R2 R3 K5 ["bridge"]
       14 LOADNIL                          R3
       15 GETTABLEKS                       R4 R1 K6 ["guest"]
       17 JUMPIFNOT                        R4 ; [+10]
       18 GETIMPORT                        R4 K2 [require]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K3 ["MeshGenTool"]
       23 GETTABLEKS                       R5 R6 K7 ["MeshGenGuest"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R3 R4 K5 ["bridge"]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R4 R5 K8 ["prepareBridges"]
       31 MOVE                             R5 R0
       32 MOVE                             R6 R2
       33 MOVE                             R7 R3
       34 CALL                             R4 3 -1
       35 RETURN                           R4 -1

PROTO_1:
        0 DUPTABLE                         R2 K2 [{"messageId", "contentId"}]
        1 SETTABLEKS                       R0 R2 K0 ["messageId"]
        3 SETTABLEKS                       R1 R2 K1 ["contentId"]
        5 DUPTABLE                         R3 K4 [{"handlerArgs"}]
        6 SETTABLEKS                       R2 R3 K3 ["handlerArgs"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K5 ["createGuestContext"]
       11 GETUPVAL                         R5 1
       12 MOVE                             R6 R3
       13 GETUPVAL                         R7 2
       14 LOADNIL                          R8
       15 CALL                             R4 4 -1
       16 RETURN                           R4 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 MOVE                             R4 R0
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R1 K0 ["validatedArgs"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K1 ["propsInit"]
        9 MOVE                             R5 R2
       10 MOVE                             R6 R3
       11 MOVE                             R7 R1
       12 CALL                             R4 3 0
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K2 ["propsReady"]
       16 MOVE                             R5 R2
       17 MOVE                             R6 R1
       18 CALL                             R4 2 0
       19 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R1 K0 ["messageId"]
        3 JUMPIF                           R2 ; [+1]
        4 LOADK                            R2 K1 [""]
        5 JUMPIFNOT                        R1 ; [+3]
        6 GETTABLEKS                       R3 R1 K2 ["contentId"]
        8 JUMPIF                           R3 ; [+1]
        9 LOADK                            R3 K1 [""]
       10 GETUPVAL                         R4 0
       11 MOVE                             R5 R2
       12 MOVE                             R6 R3
       13 CALL                             R4 2 1
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R5 R6 K3 ["startGeneration"]
       17 MOVE                             R6 R4
       18 MOVE                             R7 R0
       19 CALL                             R5 2 -1
       20 RETURN                           R5 -1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["runWithProgressLoop"]
        3 GETTABLEKS                       R4 R2 K1 ["sendProgress"]
        5 GETUPVAL                         R5 1
        6 MOVE                             R6 R0
        7 MOVE                             R7 R1
        8 CALL                             R3 4 1
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K2 ["toString"]
       12 MOVE                             R5 R3
       13 CALL                             R4 1 1
       14 GETUPVAL                         R5 2
       15 CALL                             R5 0 1
       16 MOVE                             R7 R4
       17 NAMECALL                         R5 R5 K3 ["addText"]
       19 CALL                             R5 2 1
       20 NAMECALL                         R5 R5 K4 ["build"]
       22 CALL                             R5 1 -1
       23 RETURN                           R5 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["parseSlashCommandArgs"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 DUPTABLE                         R2 K3 [{"bbox", "maxTriangles"}]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K4 ["getOptionalBoolean"]
        9 GETTABLEKS                       R4 R1 K1 ["bbox"]
       11 CALL                             R3 1 1
       12 SETTABLEKS                       R3 R2 K1 ["bbox"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K5 ["getOptionalNumber"]
       17 GETTABLEKS                       R4 R1 K2 ["maxTriangles"]
       19 CALL                             R3 1 1
       20 SETTABLEKS                       R3 R2 K2 ["maxTriangles"]
       22 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["MeshGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["parseSlashCommandArgs"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 DUPTABLE                         R1 K3 [{"bbox", "maxTriangles"}]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K4 ["getOptionalBoolean"]
        9 GETTABLEKS                       R4 R2 K1 ["bbox"]
       11 CALL                             R3 1 1
       12 SETTABLEKS                       R3 R1 K1 ["bbox"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K5 ["getOptionalNumber"]
       17 GETTABLEKS                       R4 R2 K2 ["maxTriangles"]
       19 CALL                             R3 1 1
       20 SETTABLEKS                       R3 R1 K2 ["maxTriangles"]
       22 DUPTABLE                         R2 K10 [{"textPrompt", "size", "maxTriangles", "isManualRun", "useSelectedBoundingBox"}]
       23 SETTABLEKS                       R0 R2 K6 ["textPrompt"]
       25 LOADNIL                          R3
       26 SETTABLEKS                       R3 R2 K7 ["size"]
       28 GETTABLEKS                       R3 R1 K2 ["maxTriangles"]
       30 SETTABLEKS                       R3 R2 K2 ["maxTriangles"]
       32 LOADB                            R3 1
       33 SETTABLEKS                       R3 R2 K8 ["isManualRun"]
       35 GETTABLEKS                       R3 R1 K1 ["bbox"]
       37 SETTABLEKS                       R3 R2 K9 ["useSelectedBoundingBox"]
       39 DUPTABLE                         R3 K13 [{"name", "arguments"}]
       40 GETUPVAL                         R5 1
       41 GETTABLEKS                       R4 R5 K14 ["MeshGen"]
       43 SETTABLEKS                       R4 R3 K11 ["name"]
       45 SETTABLEKS                       R2 R3 K12 ["arguments"]
       47 RETURN                           R3 1

PROTO_8:
        0 DUPTABLE                         R0 K2 [{"type", "mode"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K4 ["Modes"]
        9 GETTABLEKS                       R1 R2 K5 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["mode"]
       13 RETURN                           R0 1

PROTO_9:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        4 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["MeshGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_11:
        0 GETIMPORT                        R2 K1 [require]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K2 ["MeshGenContentWidget"]
        5 CALL                             R2 1 1
        6 GETIMPORT                        R3 K1 [require]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K3 ["MeshGenTool"]
       11 GETTABLEKS                       R4 R5 K4 ["MeshGenGuest"]
       13 CALL                             R3 1 1
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R1
       18 GETUPVAL                         R5 2
       19 CALL                             R5 0 1
       20 JUMPIFNOT                        R5 ; [+9]
       21 GETUPVAL                         R6 3
       22 GETTABLEKS                       R5 R6 K5 ["registerHydrator"]
       24 GETTABLEKS                       R6 R2 K6 ["Type"]
       26 NEWCLOSURE                       R7 P1
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R3
       29 CALL                             R5 2 0
       30 NEWCLOSURE                       R5 P2
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R3
       33 NEWCLOSURE                       R6 P3
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          VAL R5
       36 CAPTURE                          UPVAL U5
       37 GETUPVAL                         R8 6
       38 GETTABLEKS                       R7 R8 K7 ["define"]
       40 CALL                             R7 0 1
       41 GETUPVAL                         R10 7
       42 GETTABLEKS                       R9 R10 K8 ["MeshGen"]
       44 NAMECALL                         R7 R7 K9 ["setName"]
       46 CALL                             R7 2 1
       47 LOADK                            R9 K10 ["Generates a textured mesh from a prompt using AI."]
       48 NAMECALL                         R7 R7 K11 ["setDescription"]
       50 CALL                             R7 2 1
       51 LOADK                            R9 K12 ["textPrompt"]
       52 DUPTABLE                         R10 K15 [{"type", "description"}]
       53 LOADK                            R11 K16 ["string"]
       54 SETTABLEKS                       R11 R10 K13 ["type"]
       56 LOADK                            R11 K17 ["The text prompt describing the mesh to generate."]
       57 SETTABLEKS                       R11 R10 K14 ["description"]
       59 NAMECALL                         R7 R7 K18 ["addArgument"]
       61 CALL                             R7 3 1
       62 LOADK                            R9 K19 ["size"]
       63 DUPTABLE                         R10 K22 [{"type", "description", "properties", "required"}]
       64 LOADK                            R11 K23 ["object"]
       65 SETTABLEKS                       R11 R10 K13 ["type"]
       67 LOADK                            R11 K24 ["The generation's bounding box size. The generation will try to fit within this volume. Try to approximate a good size based on textPrompt."]
       68 SETTABLEKS                       R11 R10 K14 ["description"]
       70 DUPTABLE                         R11 K28 [{"x", "y", "z"}]
       71 DUPTABLE                         R12 K15 [{"type", "description"}]
       72 LOADK                            R13 K29 ["number"]
       73 SETTABLEKS                       R13 R12 K13 ["type"]
       75 LOADK                            R13 K30 ["X dimension scalar."]
       76 SETTABLEKS                       R13 R12 K14 ["description"]
       78 SETTABLEKS                       R12 R11 K25 ["x"]
       80 DUPTABLE                         R12 K15 [{"type", "description"}]
       81 LOADK                            R13 K29 ["number"]
       82 SETTABLEKS                       R13 R12 K13 ["type"]
       84 LOADK                            R13 K31 ["Y dimension scalar."]
       85 SETTABLEKS                       R13 R12 K14 ["description"]
       87 SETTABLEKS                       R12 R11 K26 ["y"]
       89 DUPTABLE                         R12 K15 [{"type", "description"}]
       90 LOADK                            R13 K29 ["number"]
       91 SETTABLEKS                       R13 R12 K13 ["type"]
       93 LOADK                            R13 K32 ["Z dimension scalar."]
       94 SETTABLEKS                       R13 R12 K14 ["description"]
       96 SETTABLEKS                       R12 R11 K27 ["z"]
       98 SETTABLEKS                       R11 R10 K20 ["properties"]
      100 NEWTABLE                         R11 0 3
      102 LOADK                            R12 K25 ["x"]
      103 LOADK                            R13 K26 ["y"]
      104 LOADK                            R14 K27 ["z"]
      105 SETLIST                          R11 R12 3 [1]
      107 SETTABLEKS                       R11 R10 K21 ["required"]
      109 NAMECALL                         R7 R7 K33 ["addOptionalArgument"]
      111 CALL                             R7 3 1
      112 LOADK                            R9 K34 ["maxTriangles"]
      113 DUPTABLE                         R10 K15 [{"type", "description"}]
      114 LOADK                            R11 K29 ["number"]
      115 SETTABLEKS                       R11 R10 K13 ["type"]
      117 LOADK                            R12 K35 ["The maximum number of triangles for the generated mesh. If provided, this must be between %* and %* (inclusive)."]
      118 GETUPVAL                         R14 8
      119 GETUPVAL                         R15 9
      120 NAMECALL                         R12 R12 K36 ["format"]
      122 CALL                             R12 3 1
      123 MOVE                             R11 R12
      124 SETTABLEKS                       R11 R10 K14 ["description"]
      126 NAMECALL                         R7 R7 K33 ["addOptionalArgument"]
      128 CALL                             R7 3 1
      129 MOVE                             R9 R6
      130 NAMECALL                         R7 R7 K37 ["setHandler"]
      132 CALL                             R7 2 1
      133 NAMECALL                         R7 R7 K38 ["build"]
      135 CALL                             R7 1 1
      136 DUPCLOSURE                       R8 K39 [PROTO_5]
      137 CAPTURE                          UPVAL U10
      138 DUPTABLE                         R9 K43 [{"command", "getDescription", "mapToToolCall"}]
      139 LOADK                            R10 K44 ["generate"]
      140 SETTABLEKS                       R10 R9 K40 ["command"]
      142 DUPCLOSURE                       R10 K45 [PROTO_6]
      143 CAPTURE                          UPVAL U11
      144 SETTABLEKS                       R10 R9 K41 ["getDescription"]
      146 DUPCLOSURE                       R10 K46 [PROTO_7]
      147 CAPTURE                          UPVAL U10
      148 CAPTURE                          UPVAL U7
      149 SETTABLEKS                       R10 R9 K42 ["mapToToolCall"]
      151 DUPTABLE                         R10 K48 [{"transformInitialContent"}]
      152 NEWCLOSURE                       R11 P7
      153 CAPTURE                          VAL R2
      154 SETTABLEKS                       R11 R10 K47 ["transformInitialContent"]
      156 DUPTABLE                         R11 K56 [{"definition", "slashCommands", "contentWidgets", "streamTransform", "getPreExecuteWarning", "displayNameFunction", "toolCallOptions"}]
      157 SETTABLEKS                       R7 R11 K49 ["definition"]
      159 NEWTABLE                         R12 0 1
      161 MOVE                             R13 R9
      162 SETLIST                          R12 R13 1 [1]
      164 SETTABLEKS                       R12 R11 K50 ["slashCommands"]
      166 GETUPVAL                         R13 12
      167 CALL                             R13 0 1
      168 JUMPIFNOT                        R13 ; [+6]
      169 NEWTABLE                         R12 0 1
      171 MOVE                             R13 R2
      172 SETLIST                          R12 R13 1 [1]
      174 JUMP                             ; [+1]
      175 LOADNIL                          R12
      176 SETTABLEKS                       R12 R11 K51 ["contentWidgets"]
      178 SETTABLEKS                       R10 R11 K52 ["streamTransform"]
      180 DUPCLOSURE                       R12 K57 [PROTO_9]
      181 SETTABLEKS                       R12 R11 K53 ["getPreExecuteWarning"]
      183 DUPCLOSURE                       R12 K58 [PROTO_10]
      184 CAPTURE                          UPVAL U11
      185 SETTABLEKS                       R12 R11 K54 ["displayNameFunction"]
      187 DUPTABLE                         R12 K60 [{"resetTimeoutOnProgress"}]
      188 LOADB                            R13 1
      189 SETTABLEKS                       R13 R12 K59 ["resetTimeoutOnProgress"]
      191 SETTABLEKS                       R12 R11 K55 ["toolCallOptions"]
      193 RETURN                           R11 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantUseNewMeshGenTool must be enabled to use the new MeshGen tool"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["networking"]
       10 NAMECALL                         R2 R1 K4 ["IsHost"]
       12 CALL                             R2 1 1
       13 NAMECALL                         R3 R1 K5 ["IsGuest"]
       15 CALL                             R3 1 1
       16 DUPTABLE                         R5 K8 [{"host", "guest"}]
       17 SETTABLEKS                       R2 R5 K6 ["host"]
       19 SETTABLEKS                       R3 R5 K7 ["guest"]
       21 LOADNIL                          R6
       22 GETTABLEKS                       R7 R5 K6 ["host"]
       24 JUMPIFNOT                        R7 ; [+10]
       25 GETIMPORT                        R7 K10 [require]
       27 GETUPVAL                         R10 1
       28 GETTABLEKS                       R9 R10 K11 ["MeshGenTool"]
       30 GETTABLEKS                       R8 R9 K12 ["MeshGenHost"]
       32 CALL                             R7 1 1
       33 GETTABLEKS                       R6 R7 K13 ["bridge"]
       35 LOADNIL                          R7
       36 GETTABLEKS                       R8 R5 K7 ["guest"]
       38 JUMPIFNOT                        R8 ; [+10]
       39 GETIMPORT                        R8 K10 [require]
       41 GETUPVAL                         R11 1
       42 GETTABLEKS                       R10 R11 K11 ["MeshGenTool"]
       44 GETTABLEKS                       R9 R10 K14 ["MeshGenGuest"]
       46 CALL                             R8 1 1
       47 GETTABLEKS                       R7 R8 K13 ["bridge"]
       49 GETUPVAL                         R9 2
       50 GETTABLEKS                       R8 R9 K15 ["prepareBridges"]
       52 MOVE                             R9 R0
       53 MOVE                             R10 R6
       54 MOVE                             R11 R7
       55 CALL                             R8 3 1
       56 MOVE                             R4 R8
       57 JUMPIF                           R3 ; [+2]
       58 LOADNIL                          R5
       59 RETURN                           R5 1
       60 GETUPVAL                         R5 3
       61 MOVE                             R6 R0
       62 MOVE                             R7 R4
       63 CALL                             R5 2 1
       64 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Util"]
       18 GETTABLEKS                       R4 R5 K9 ["Serializer"]
       20 GETTABLEKS                       R3 R4 K10 ["SerializerRegistry"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["SlashCommandArgs"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K12 ["Tools"]
       34 GETTABLEKS                       R5 R6 K13 ["ToolTypes"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K8 ["Util"]
       41 GETTABLEKS                       R6 R7 K14 ["ToolUtils"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K15 ["Resources"]
       48 GETTABLEKS                       R8 R9 K16 ["Localization"]
       50 GETTABLEKS                       R7 R8 K17 ["Translator"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K1 [script]
       55 LOADK                            R9 K18 ["MeshGen"]
       56 NAMECALL                         R7 R7 K3 ["FindFirstAncestor"]
       58 CALL                             R7 2 1
       59 GETIMPORT                        R8 K5 [require]
       61 GETTABLEKS                       R10 R7 K19 ["MeshGenTool"]
       63 GETTABLEKS                       R9 R10 K20 ["MeshGenBridge"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K5 [require]
       68 GETTABLEKS                       R11 R7 K19 ["MeshGenTool"]
       70 GETTABLEKS                       R10 R11 K21 ["MeshGenBridgeTypes"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K5 [require]
       75 GETTABLEKS                       R11 R7 K22 ["MeshGenConstants"]
       77 CALL                             R10 1 1
       78 GETIMPORT                        R11 K5 [require]
       80 GETTABLEKS                       R12 R7 K23 ["MeshGenTypes"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K5 [require]
       85 GETTABLEKS                       R14 R0 K24 ["Flags"]
       87 GETTABLEKS                       R13 R14 K25 ["FFlagAssistantPersistConversations"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K5 [require]
       92 GETTABLEKS                       R15 R0 K24 ["Flags"]
       94 GETTABLEKS                       R14 R15 K26 ["FFlagAssistantRegisterWidgetsThroughTools"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K5 [require]
       99 GETTABLEKS                       R16 R0 K24 ["Flags"]
      101 GETTABLEKS                       R15 R16 K27 ["FFlagAssistantUseNewMeshGenTool"]
      103 CALL                             R14 1 1
      104 GETTABLEKS                       R16 R1 K8 ["Util"]
      106 GETTABLEKS                       R15 R16 K28 ["ToolBuilder"]
      108 GETTABLEKS                       R17 R1 K8 ["Util"]
      110 GETTABLEKS                       R16 R17 K29 ["ToolResult"]
      112 GETTABLEKS                       R17 R4 K30 ["ToolNames"]
      114 GETTABLEKS                       R18 R10 K31 ["MAX_TRIANGLES_LOWER_BOUND"]
      116 GETTABLEKS                       R19 R10 K32 ["MAX_TRIANGLES_UPPER_BOUND"]
      118 DUPCLOSURE                       R20 K33 [PROTO_0]
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R8
      121 DUPCLOSURE                       R21 K34 [PROTO_11]
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R16
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R17
      130 CAPTURE                          VAL R18
      131 CAPTURE                          VAL R19
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R13
      135 DUPCLOSURE                       R22 K35 [PROTO_12]
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R8
      139 CAPTURE                          VAL R21
      140 RETURN                           R22 1
