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
       41 DUPTABLE                         R5 K15 [{"clientIdentifier", "networking", "EnvironmentOverride"}]
       42 GETUPVAL                         R6 4
       43 GETTABLEKS                       R6 R6 K16 ["getMcpClientIdentifier"]
       45 CALL                             R6 0 1
       46 SETTABLEKS                       R6 R5 K12 ["clientIdentifier"]
       48 SETTABLEKS                       R3 R5 K13 ["networking"]
       50 SETTABLEKS                       R2 R5 K14 ["EnvironmentOverride"]
       52 CALL                             R4 1 0
       53 NEWTABLE                         R4 0 0
       55 MOVE                             R5 R0
       56 LOADNIL                          R6
       57 LOADNIL                          R7
       58 FORGPREP                         R5
       59 FASTCALL1                        TOSTRING R8 ; [+3]
       60 MOVE                             R11 R8
       61 GETIMPORT                        R10 K18 [tostring]
       63 CALL                             R10 1 1
       64 SETTABLE                         R9 R4 R10
       65 FORGLOOP                         R5 2 ; [-7]
       67 GETUPVAL                         R5 5
       68 GETTABLEKS                       R5 R5 K19 ["createBridges"]
       70 DUPTABLE                         R6 K21 [{"networking", "environment"}]
       71 SETTABLEKS                       R3 R6 K13 ["networking"]
       73 SETTABLEKS                       R2 R6 K20 ["environment"]
       75 CALL                             R5 1 1
       76 GETUPVAL                         R6 6
       77 GETTABLEKS                       R6 R6 K22 ["createTools"]
       79 DUPTABLE                         R7 K25 [{"tools", "networking", "bridges"}]
       80 SETTABLEKS                       R4 R7 K23 ["tools"]
       82 SETTABLEKS                       R3 R7 K13 ["networking"]
       84 SETTABLEKS                       R5 R7 K24 ["bridges"]
       86 CALL                             R6 1 1
       87 GETUPVAL                         R7 6
       88 GETTABLEKS                       R7 R7 K26 ["registerTools"]
       90 MOVE                             R8 R6
       91 CALL                             R7 1 0
       92 NEWTABLE                         R7 0 0
       94 MOVE                             R8 R6
       95 LOADNIL                          R9
       96 LOADNIL                          R10
       97 FORGPREP                         R8
       98 FASTCALL1                        TONUMBER R11 ; [+3]
       99 MOVE                             R14 R11
      100 GETIMPORT                        R13 K28 [tonumber]
      102 CALL                             R13 1 1
      103 LOADK                            R17 K29 ["Tool name %* is not a number string"]
      104 MOVE                             R19 R11
      105 NAMECALL                         R17 R17 K30 ["format"]
      107 CALL                             R17 2 1
      108 MOVE                             R16 R17
      109 FASTCALL2                        ASSERT R13 R16 ; [+4]
      111 MOVE                             R15 R13
      112 GETIMPORT                        R14 K9 [assert]
      114 CALL                             R14 2 0
      115 SETTABLE                         R12 R7 R13
      116 FORGLOOP                         R8 2 ; [-19]
      118 MOVE                             R8 R7
      119 MOVE                             R9 R2
      120 RETURN                           R8 2

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
       30 GETTABLEKS                       R6 R1 K9 ["Guest"]
       32 GETTABLEKS                       R6 R6 K11 ["JsonEnvironment"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K5 [require]
       37 GETTABLEKS                       R7 R1 K7 ["Parent"]
       39 GETTABLEKS                       R7 R7 K12 ["ModelContextProtocol"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K5 [require]
       44 GETTABLEKS                       R8 R1 K13 ["Tools"]
       46 GETTABLEKS                       R8 R8 K14 ["ToolTypes"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K5 [require]
       51 GETTABLEKS                       R9 R1 K13 ["Tools"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R10 R1 K15 ["Types"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K5 [require]
       61 GETTABLEKS                       R11 R1 K16 ["Components"]
       63 GETTABLEKS                       R11 R11 K17 ["UIToolRegistry"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K5 [require]
       68 GETTABLEKS                       R12 R1 K9 ["Guest"]
       70 GETTABLEKS                       R12 R12 K18 ["startGuest"]
       72 CALL                             R11 1 1
       73 LOADK                            R14 K19 ["Packages"]
       74 NAMECALL                         R12 R1 K3 ["FindFirstAncestor"]
       76 CALL                             R12 2 1
       77 GETTABLEKS                       R12 R12 K20 ["Dev"]
       79 GETIMPORT                        R13 K5 [require]
       81 GETTABLEKS                       R14 R12 K21 ["JestGlobals"]
       83 CALL                             R13 1 1
       84 GETTABLEKS                       R14 R13 K22 ["afterEach"]
       86 DUPCLOSURE                       R15 K23 [PROTO_1]
       87 CAPTURE                          VAL R14
       88 CAPTURE                          VAL R10
       89 SETTABLEKS                       R15 R0 K22 ["afterEach"]
       91 DUPCLOSURE                       R15 K24 [PROTO_3]
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R8
       99 SETTABLEKS                       R15 R0 K25 ["toolSetup"]
      101 DUPCLOSURE                       R15 K26 [PROTO_4]
      102 SETTABLEKS                       R15 R0 K27 ["createTestLoadedCode"]
      104 DUPCLOSURE                       R15 K28 [PROTO_7]
      105 CAPTURE                          VAL R0
      106 SETTABLEKS                       R15 R0 K29 ["addCommandExecutionDependencies"]
      108 DUPCLOSURE                       R15 K30 [PROTO_8]
      109 SETTABLEKS                       R15 R0 K31 ["textContentAtIndex"]
      111 DUPCLOSURE                       R15 K32 [PROTO_9]
      112 CAPTURE                          VAL R0
      113 SETTABLEKS                       R15 R0 K33 ["stringAtIndex"]
      115 DUPCLOSURE                       R15 K34 [PROTO_10]
      116 SETTABLEKS                       R15 R0 K35 ["invoke"]
      118 RETURN                           R0 1
