PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["clear"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["new"]
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R6 R7 K1 ["Implementations"]
        6 GETTABLEKS                       R5 R6 K2 ["CallbackNetworking"]
        8 GETTABLEKS                       R4 R5 K0 ["new"]
       10 DUPTABLE                         R5 K5 [{"isHost", "isGuest"}]
       11 LOADB                            R6 1
       12 SETTABLEKS                       R6 R5 K3 ["isHost"]
       14 LOADB                            R6 1
       15 SETTABLEKS                       R6 R5 K4 ["isGuest"]
       17 CALL                             R4 1 -1
       18 CALL                             R3 -1 1
       19 JUMPIF                           R2 ; [+5]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R4 R5 K0 ["new"]
       23 CALL                             R4 0 1
       24 MOVE                             R2 R4
       25 FASTCALL2K                       ASSERT R2 K6 ; [+5]
       27 MOVE                             R5 R2
       28 LOADK                            R6 K6 ["Environment is nil"]
       29 GETIMPORT                        R4 K8 [assert]
       31 CALL                             R4 2 0
       32 NEWCLOSURE                       R4 P0
       33 CAPTURE                          VAL R3
       34 SETTABLEKS                       R4 R2 K9 ["getNetworking"]
       36 JUMPIFNOT                        R1 ; [+4]
       37 MOVE                             R4 R1
       38 MOVE                             R5 R2
       39 CALL                             R4 1 1
       40 MOVE                             R2 R4
       41 GETUPVAL                         R5 2
       42 GETTABLEKS                       R4 R5 K10 ["setup"]
       44 MOVE                             R5 R2
       45 GETUPVAL                         R6 3
       46 CALL                             R6 0 -1
       47 CALL                             R4 -1 0
       48 GETUPVAL                         R4 4
       49 DUPTABLE                         R5 K14 [{"clientIdentifier", "LLMRequestNetworking", "EnvironmentOverride"}]
       50 LOADK                            R6 K15 ["TEST_CLIENT"]
       51 SETTABLEKS                       R6 R5 K11 ["clientIdentifier"]
       53 SETTABLEKS                       R3 R5 K12 ["LLMRequestNetworking"]
       55 SETTABLEKS                       R2 R5 K13 ["EnvironmentOverride"]
       57 CALL                             R4 1 0
       58 NEWTABLE                         R4 0 0
       60 MOVE                             R5 R0
       61 LOADNIL                          R6
       62 LOADNIL                          R7
       63 FORGPREP                         R5
       64 FASTCALL1                        TOSTRING R8 ; [+3]
       65 MOVE                             R11 R8
       66 GETIMPORT                        R10 K17 [tostring]
       68 CALL                             R10 1 1
       69 SETTABLE                         R9 R4 R10
       70 FORGLOOP                         R5 2 ; [-7]
       72 GETUPVAL                         R6 5
       73 GETTABLEKS                       R5 R6 K18 ["createTools"]
       75 MOVE                             R6 R3
       76 MOVE                             R7 R4
       77 CALL                             R5 2 1
       78 GETUPVAL                         R7 5
       79 GETTABLEKS                       R6 R7 K19 ["registerTools"]
       81 MOVE                             R7 R5
       82 CALL                             R6 1 0
       83 NEWTABLE                         R6 0 0
       85 MOVE                             R7 R5
       86 LOADNIL                          R8
       87 LOADNIL                          R9
       88 FORGPREP                         R7
       89 FASTCALL1                        TONUMBER R10 ; [+3]
       90 MOVE                             R13 R10
       91 GETIMPORT                        R12 K21 [tonumber]
       93 CALL                             R12 1 1
       94 LOADK                            R16 K22 ["Tool name %* is not a number string"]
       95 MOVE                             R18 R10
       96 NAMECALL                         R16 R16 K23 ["format"]
       98 CALL                             R16 2 1
       99 MOVE                             R15 R16
      100 FASTCALL2                        ASSERT R12 R15 ; [+4]
      102 MOVE                             R14 R12
      103 GETIMPORT                        R13 K8 [assert]
      105 CALL                             R13 2 0
      106 SETTABLE                         R11 R6 R12
      107 FORGLOOP                         R7 2 ; [-19]
      109 GETUPVAL                         R8 6
      110 GETTABLEKS                       R7 R8 K24 ["get"]
      112 CALL                             R7 0 1
      113 FASTCALL2K                       ASSERT R7 K25 ; [+5]
      115 MOVE                             R9 R7
      116 LOADK                            R10 K25 ["ExternalHooks is not initialized"]
      117 GETIMPORT                        R8 K8 [assert]
      119 CALL                             R8 2 0
      120 MOVE                             R8 R6
      121 MOVE                             R9 R2
      122 RETURN                           R8 2

PROTO_4:
        0 GETIMPORT                        R1 K1 [loadstring]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 FASTCALL2K                       ASSERT R1 K2 ; [+5]
        6 MOVE                             R3 R1
        7 LOADK                            R4 K2 ["Failed to load code"]
        8 GETIMPORT                        R2 K4 [assert]
       10 CALL                             R2 2 0
       11 GETUPVAL                         R2 0
       12 ADDK                             R2 R2 K5 [1]
       13 SETUPVAL                         R2 0
       14 GETUPVAL                         R2 0
       15 MOVE                             R3 R1
       16 RETURN                           R2 2

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADB                            R3 0
        3 CALL                             R1 2 0
        4 LOADN                            R1 0
        5 GETTABLEKS                       R3 R0 K0 ["tools"]
        7 GETTABLEKS                       R2 R3 K1 ["executeLuau"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          REF R1
       11 SETTABLEKS                       R3 R2 K2 ["loadCode"]
       13 GETTABLEKS                       R3 R0 K0 ["tools"]
       15 GETTABLEKS                       R2 R3 K1 ["executeLuau"]
       17 DUPCLOSURE                       R3 K3 [PROTO_5]
       18 SETTABLEKS                       R3 R2 K4 ["stopCode"]
       20 CLOSEUPVALS                      R1
       21 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["textContentAtIndex"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETTABLEKS                       R3 R2 K1 ["text"]
        8 RETURN                           R3 1

PROTO_9:
        0 GETTABLEKS                       R5 R0 K0 ["definition"]
        2 GETTABLEKS                       R4 R5 K1 ["handler"]
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 MOVE                             R7 R3
        7 JUMPIF                           R7 ; [+2]
        8 NEWTABLE                         R7 0 0
       10 CALL                             R4 3 -1
       11 RETURN                           R4 -1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["streamTransform"]
        2 LOADB                            R3 0
        3 JUMPIFEQKNIL                     R1 ; [+8]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K1 ["None"]
        8 JUMPIFNOTEQ                      R1 R4 ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 LOADK                            R5 K2 ["Tool %* has no stream transform"]
       13 GETTABLEKS                       R9 R0 K3 ["definition"]
       15 GETTABLEKS                       R8 R9 K3 ["definition"]
       17 GETTABLEKS                       R7 R8 K4 ["name"]
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
       11 GETTABLEKS                       R4 R1 K6 ["Parent"]
       13 GETTABLEKS                       R3 R4 K7 ["DMNetworking"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R5 R1 K8 ["Guest"]
       20 GETTABLEKS                       R4 R5 K9 ["Environment"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R6 R1 K10 ["Hooks"]
       27 GETTABLEKS                       R5 R6 K11 ["ExternalHooks"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R7 R1 K12 ["Flags"]
       34 GETTABLEKS                       R6 R7 K13 ["FastSetting"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETTABLEKS                       R8 R1 K8 ["Guest"]
       41 GETTABLEKS                       R7 R8 K14 ["JsonEnvironment"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K5 [require]
       46 GETTABLEKS                       R9 R1 K6 ["Parent"]
       48 GETTABLEKS                       R8 R9 K15 ["ModelContextProtocol"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K5 [require]
       53 GETTABLEKS                       R10 R1 K12 ["Flags"]
       55 GETTABLEKS                       R9 R10 K16 ["ScopedFastSetting"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K5 [require]
       60 GETTABLEKS                       R11 R1 K17 ["Tools"]
       62 GETTABLEKS                       R10 R11 K18 ["ToolTypes"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K5 [require]
       67 GETTABLEKS                       R11 R1 K17 ["Tools"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K5 [require]
       72 GETTABLEKS                       R13 R1 K19 ["Components"]
       74 GETTABLEKS                       R12 R13 K20 ["UIToolRegistry"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K5 [require]
       79 GETTABLEKS                       R14 R1 K8 ["Guest"]
       81 GETTABLEKS                       R13 R14 K21 ["startGuest"]
       83 CALL                             R12 1 1
       84 LOADK                            R16 K22 ["Packages"]
       85 NAMECALL                         R14 R1 K3 ["FindFirstAncestor"]
       87 CALL                             R14 2 1
       88 GETTABLEKS                       R13 R14 K23 ["Dev"]
       90 GETIMPORT                        R14 K5 [require]
       92 GETTABLEKS                       R15 R13 K24 ["JestGlobals"]
       94 CALL                             R14 1 1
       95 GETIMPORT                        R15 K5 [require]
       97 GETTABLEKS                       R17 R1 K12 ["Flags"]
       99 GETTABLEKS                       R16 R17 K25 ["FFlagAssistantJsonEncoderUseHiddenMetatable"]
      101 CALL                             R15 1 1
      102 GETTABLEKS                       R16 R5 K26 ["createFFlag"]
      104 LOADK                            R17 K27 ["DisableCorescriptLoadstring"]
      105 LOADB                            R18 0
      106 CALL                             R16 2 1
      107 GETTABLEKS                       R17 R8 K28 ["ScopedFastFlagSetting"]
      109 GETTABLEKS                       R18 R14 K29 ["afterEach"]
      111 DUPCLOSURE                       R19 K30 [PROTO_1]
      112 CAPTURE                          VAL R18
      113 CAPTURE                          VAL R11
      114 SETTABLEKS                       R19 R0 K29 ["afterEach"]
      116 DUPCLOSURE                       R19 K31 [PROTO_3]
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R15
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R10
      123 CAPTURE                          VAL R4
      124 SETTABLEKS                       R19 R0 K32 ["toolSetup"]
      126 DUPCLOSURE                       R19 K33 [PROTO_6]
      127 CAPTURE                          VAL R17
      128 CAPTURE                          VAL R16
      129 SETTABLEKS                       R19 R0 K34 ["addCommandExecutionDependencies"]
      131 DUPCLOSURE                       R19 K35 [PROTO_7]
      132 SETTABLEKS                       R19 R0 K36 ["textContentAtIndex"]
      134 DUPCLOSURE                       R19 K37 [PROTO_8]
      135 CAPTURE                          VAL R0
      136 SETTABLEKS                       R19 R0 K38 ["stringAtIndex"]
      138 DUPCLOSURE                       R19 K39 [PROTO_9]
      139 SETTABLEKS                       R19 R0 K40 ["invoke"]
      141 DUPCLOSURE                       R19 K41 [PROTO_10]
      142 CAPTURE                          VAL R11
      143 SETTABLEKS                       R19 R0 K42 ["getStreamTransform"]
      145 RETURN                           R0 1
