PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clear"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_0]
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["Implementations"]
        6 GETTABLEKS                       R4 R4 K2 ["CallbackNetworking"]
        8 GETTABLEKS                       R4 R4 K0 ["new"]
       10 DUPTABLE                         R5 K6 [{["isHost"] = True, ["isGuest"] = True}]
       11 CALL                             R4 1 -1
       12 CALL                             R3 -1 1
       13 JUMPIF                           R2 ; [+5]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K0 ["new"]
       17 CALL                             R4 0 1
       18 MOVE                             R2 R4
       19 FASTCALL2K                       ASSERT R2 K7 ; [+5]
       21 MOVE                             R5 R2
       22 LOADK                            R6 K7 ["Environment is nil"]
       23 GETIMPORT                        R4 K9 [assert]
       25 CALL                             R4 2 0
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          VAL R3
       28 SETTABLEKS                       R4 R2 K10 ["getNetworking"]
       30 JUMPIFNOT                        R1 ; [+4]
       31 MOVE                             R4 R1
       32 MOVE                             R5 R2
       33 CALL                             R4 1 1
       34 MOVE                             R2 R4
       35 GETUPVAL                         R4 2
       36 GETTABLEKS                       R4 R4 K11 ["setup"]
       38 MOVE                             R5 R2
       39 CALL                             R4 1 0
       40 GETUPVAL                         R4 3
       41 DUPTABLE                         R5 K16 [{["clientIdentifier"] = "TEST_CLIENT", ["networking"], ["EnvironmentOverride"]}]
       42 SETTABLEKS                       R3 R5 K14 ["networking"]
       44 SETTABLEKS                       R2 R5 K15 ["EnvironmentOverride"]
       46 CALL                             R4 1 0
       47 NEWTABLE                         R4 0 0
       49 MOVE                             R5 R0
       50 LOADNIL                          R6
       51 LOADNIL                          R7
       52 FORGPREP                         R5
       53 FASTCALL1                        TOSTRING R8 ; [+3]
       54 MOVE                             R11 R8
       55 GETIMPORT                        R10 K18 [tostring]
       57 CALL                             R10 1 1
       58 SETTABLE                         R9 R4 R10
       59 FORGLOOP                         R5 2 ; [-7]
       61 LOADNIL                          R5
       62 GETUPVAL                         R6 4
       63 GETTABLEKS                       R6 R6 K19 ["FFlagAssistantSplitToolsAndWidgets"]
       65 JUMPIFNOT                        R6 ; [+10]
       66 GETUPVAL                         R6 5
       67 GETTABLEKS                       R6 R6 K20 ["createBridges"]
       69 DUPTABLE                         R7 K22 [{"networking", "environment"}]
       70 SETTABLEKS                       R3 R7 K14 ["networking"]
       72 SETTABLEKS                       R2 R7 K21 ["environment"]
       74 CALL                             R6 1 1
       75 MOVE                             R5 R6
       76 GETUPVAL                         R6 6
       77 GETTABLEKS                       R6 R6 K23 ["createTools"]
       79 DUPTABLE                         R7 K26 [{"tools", "networking", "bridges"}]
       80 SETTABLEKS                       R4 R7 K24 ["tools"]
       82 SETTABLEKS                       R3 R7 K14 ["networking"]
       84 SETTABLEKS                       R5 R7 K25 ["bridges"]
       86 CALL                             R6 1 1
       87 GETUPVAL                         R7 6
       88 GETTABLEKS                       R7 R7 K27 ["registerTools"]
       90 MOVE                             R8 R6
       91 CALL                             R7 1 0
       92 NEWTABLE                         R7 0 0
       94 MOVE                             R8 R6
       95 LOADNIL                          R9
       96 LOADNIL                          R10
       97 FORGPREP                         R8
       98 FASTCALL1                        TONUMBER R11 ; [+3]
       99 MOVE                             R14 R11
      100 GETIMPORT                        R13 K29 [tonumber]
      102 CALL                             R13 1 1
      103 LOADK                            R17 K30 ["Tool name %* is not a number string"]
      104 MOVE                             R19 R11
      105 NAMECALL                         R17 R17 K31 ["format"]
      107 CALL                             R17 2 1
      108 MOVE                             R16 R17
      109 FASTCALL2                        ASSERT R13 R16 ; [+4]
      111 MOVE                             R15 R13
      112 GETIMPORT                        R14 K9 [assert]
      114 CALL                             R14 2 0
      115 SETTABLE                         R12 R7 R13
      116 FORGLOOP                         R8 2 ; [-19]
      118 GETUPVAL                         R8 7
      119 GETTABLEKS                       R8 R8 K32 ["get"]
      121 CALL                             R8 0 1
      122 FASTCALL2K                       ASSERT R8 K33 ; [+5]
      124 MOVE                             R10 R8
      125 LOADK                            R11 K33 ["ExternalHooks is not initialized"]
      126 GETIMPORT                        R9 K9 [assert]
      128 CALL                             R9 2 0
      129 MOVE                             R9 R7
      130 MOVE                             R10 R2
      131 RETURN                           R9 2

PROTO_4:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["ModuleScript"]
        3 CALL                             R1 1 1
        4 SETTABLEKS                       R0 R1 K4 ["Source"]
        6 GETIMPORT                        R2 K6 [debug]
        8 GETTABLEKS                       R2 R2 K7 ["loadmodule"]
       10 MOVE                             R3 R1
       11 CALL                             R2 1 2
       12 ORK                              R6 R3 K8 ["Failed to load code"]
       13 FASTCALL2                        ASSERT R2 R6 ; [+4]
       15 MOVE                             R5 R2
       16 GETIMPORT                        R4 K10 [assert]
       18 CALL                             R4 2 0
       19 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createTestLoadedCode"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 ADDK                             R2 R2 K1 [1]
        7 SETUPVAL                         R2 1
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R1
       10 RETURN                           R2 2

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 LOADN                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["tools"]
        3 GETTABLEKS                       R2 R2 K1 ["executeLuau"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          REF R1
        8 SETTABLEKS                       R3 R2 K2 ["loadCode"]
       10 GETTABLEKS                       R2 R0 K0 ["tools"]
       12 GETTABLEKS                       R2 R2 K1 ["executeLuau"]
       14 DUPCLOSURE                       R3 K3 [PROTO_6]
       15 SETTABLEKS                       R3 R2 K4 ["stopCode"]
       17 CLOSEUPVALS                      R1
       18 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["content"]
        2 GETTABLE                         R2 R3 R1
        3 LOADK                            R6 K1 ["No content found at index %*"]
        4 MOVE                             R8 R1
        5 NAMECALL                         R6 R6 K2 ["format"]
        7 CALL                             R6 2 1
        8 MOVE                             R5 R6
        9 FASTCALL2                        ASSERT R2 R5 ; [+4]
       11 MOVE                             R4 R2
       12 GETIMPORT                        R3 K4 [assert]
       14 CALL                             R3 2 0
       15 GETTABLEKS                       R5 R2 K5 ["type"]
       17 JUMPIFEQKS                       R5 K6 ["text"] ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 LOADK                            R6 K7 ["Expected content at index %* to be of type \"text\", got %*"]
       22 MOVE                             R8 R1
       23 GETTABLEKS                       R9 R2 K5 ["type"]
       25 NAMECALL                         R6 R6 K2 ["format"]
       27 CALL                             R6 3 1
       28 MOVE                             R5 R6
       29 FASTCALL2                        ASSERT R4 R5 ; [+3]
       31 GETIMPORT                        R3 K4 [assert]
       33 CALL                             R3 2 0
       34 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["textContentAtIndex"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETTABLEKS                       R3 R2 K1 ["text"]
        8 RETURN                           R3 1

PROTO_10:
        0 GETTABLEKS                       R4 R0 K0 ["definition"]
        2 GETTABLEKS                       R4 R4 K1 ["handler"]
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 MOVE                             R7 R3
        7 JUMPIF                           R7 ; [+2]
        8 NEWTABLE                         R7 0 0
       10 CALL                             R4 3 -1
       11 RETURN                           R4 -1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["streamTransform"]
        2 LOADB                            R3 0
        3 JUMPIFEQKNIL                     R1 ; [+8]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["None"]
        8 JUMPIFNOTEQ                      R1 R4 ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 LOADK                            R5 K2 ["Tool %* has no stream transform"]
       13 GETTABLEKS                       R7 R0 K3 ["definition"]
       15 GETTABLEKS                       R7 R7 K3 ["definition"]
       17 GETTABLEKS                       R7 R7 K4 ["name"]
       19 NAMECALL                         R5 R5 K5 ["format"]
       21 CALL                             R5 2 1
       22 MOVE                             R4 R5
       23 FASTCALL2                        ASSERT R3 R4 ; [+3]
       25 GETIMPORT                        R2 K7 [assert]
       27 CALL                             R2 2 0
       28 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["AssistantUI"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Bridges"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K5 [require]
       16 GETTABLEKS                       R4 R1 K7 ["Parent"]
       18 GETTABLEKS                       R4 R4 K8 ["DMNetworking"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R5 R1 K9 ["Guest"]
       25 GETTABLEKS                       R5 R5 K10 ["Environment"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K5 [require]
       30 GETTABLEKS                       R6 R1 K11 ["Hooks"]
       32 GETTABLEKS                       R6 R6 K12 ["RESTRICTED_ExternalHooks"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K5 [require]
       37 GETTABLEKS                       R7 R1 K13 ["Flags"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K5 [require]
       42 GETTABLEKS                       R8 R1 K9 ["Guest"]
       44 GETTABLEKS                       R8 R8 K14 ["JsonEnvironment"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R9 R1 K7 ["Parent"]
       51 GETTABLEKS                       R9 R9 K15 ["ModelContextProtocol"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R10 R1 K16 ["Tools"]
       58 GETTABLEKS                       R10 R10 K17 ["ToolTypes"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K5 [require]
       63 GETTABLEKS                       R11 R1 K16 ["Tools"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K5 [require]
       68 GETTABLEKS                       R12 R1 K18 ["Components"]
       70 GETTABLEKS                       R12 R12 K19 ["UIToolRegistry"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K5 [require]
       75 GETTABLEKS                       R13 R1 K9 ["Guest"]
       77 GETTABLEKS                       R13 R13 K20 ["startGuest"]
       79 CALL                             R12 1 1
       80 LOADK                            R15 K21 ["Packages"]
       81 NAMECALL                         R13 R1 K3 ["FindFirstAncestor"]
       83 CALL                             R13 2 1
       84 GETTABLEKS                       R13 R13 K22 ["Dev"]
       86 GETIMPORT                        R14 K5 [require]
       88 GETTABLEKS                       R15 R13 K23 ["JestGlobals"]
       90 CALL                             R14 1 1
       91 GETTABLEKS                       R15 R14 K24 ["afterEach"]
       93 DUPCLOSURE                       R16 K25 [PROTO_1]
       94 CAPTURE                          VAL R15
       95 CAPTURE                          VAL R11
       96 SETTABLEKS                       R16 R0 K24 ["afterEach"]
       98 DUPCLOSURE                       R16 K26 [PROTO_3]
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R5
      107 SETTABLEKS                       R16 R0 K27 ["toolSetup"]
      109 DUPCLOSURE                       R16 K28 [PROTO_4]
      110 SETTABLEKS                       R16 R0 K29 ["createTestLoadedCode"]
      112 DUPCLOSURE                       R16 K30 [PROTO_7]
      113 CAPTURE                          VAL R0
      114 SETTABLEKS                       R16 R0 K31 ["addCommandExecutionDependencies"]
      116 DUPCLOSURE                       R16 K32 [PROTO_8]
      117 SETTABLEKS                       R16 R0 K33 ["textContentAtIndex"]
      119 DUPCLOSURE                       R16 K34 [PROTO_9]
      120 CAPTURE                          VAL R0
      121 SETTABLEKS                       R16 R0 K35 ["stringAtIndex"]
      123 DUPCLOSURE                       R16 K36 [PROTO_10]
      124 SETTABLEKS                       R16 R0 K37 ["invoke"]
      126 DUPCLOSURE                       R16 K38 [PROTO_11]
      127 CAPTURE                          VAL R11
      128 SETTABLEKS                       R16 R0 K39 ["getStreamTransform"]
      130 RETURN                           R0 1
