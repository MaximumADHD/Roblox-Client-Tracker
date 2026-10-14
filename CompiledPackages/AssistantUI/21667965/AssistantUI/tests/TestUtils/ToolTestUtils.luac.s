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
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_4:
        0 JUMPIF                           R2 ; [+5]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["new"]
        4 CALL                             R4 0 1
        5 MOVE                             R2 R4
        6 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        8 MOVE                             R5 R2
        9 LOADK                            R6 K1 ["Environment is nil"]
       10 GETIMPORT                        R4 K3 [assert]
       12 CALL                             R4 2 0
       13 LOADNIL                          R4
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K4 ["FFlagAssistantUseNewDMNetworking"]
       17 JUMPIFNOT                        R5 ; [+22]
       18 JUMPIF                           R3 ; [+40]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K0 ["new"]
       22 DUPTABLE                         R6 K7 [{"implementation", "identity"}]
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R7 R7 K8 ["ImplementationKind"]
       26 GETTABLEKS                       R7 R7 K9 ["Callback"]
       28 SETTABLEKS                       R7 R6 K5 ["implementation"]
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K10 ["Identity"]
       33 GETTABLEKS                       R7 R7 K11 ["Edit"]
       35 SETTABLEKS                       R7 R6 K6 ["identity"]
       37 CALL                             R5 1 1
       38 MOVE                             R3 R5
       39 JUMP                             ; [+19]
       40 LOADNIL                          R3
       41 GETUPVAL                         R5 3
       42 GETTABLEKS                       R5 R5 K0 ["new"]
       44 GETUPVAL                         R6 3
       45 GETTABLEKS                       R6 R6 K12 ["Implementations"]
       47 GETTABLEKS                       R6 R6 K13 ["CallbackNetworking"]
       49 GETTABLEKS                       R6 R6 K0 ["new"]
       51 DUPTABLE                         R7 K17 [{["isHost"] = True, ["isGuest"] = True}]
       52 CALL                             R6 1 -1
       53 CALL                             R5 -1 1
       54 MOVE                             R4 R5
       55 NEWCLOSURE                       R5 P0
       56 CAPTURE                          REF R4
       57 SETTABLEKS                       R5 R2 K18 ["getNetworkingOLD"]
       59 DUPCLOSURE                       R5 K19 [PROTO_3]
       60 SETTABLEKS                       R5 R2 K20 ["hasUI"]
       62 JUMPIFNOT                        R1 ; [+4]
       63 MOVE                             R5 R1
       64 MOVE                             R6 R2
       65 CALL                             R5 1 1
       66 MOVE                             R2 R5
       67 GETUPVAL                         R5 4
       68 GETTABLEKS                       R5 R5 K21 ["setup"]
       70 MOVE                             R6 R2
       71 CALL                             R5 1 0
       72 GETUPVAL                         R5 5
       73 DUPTABLE                         R6 K26 [{"clientIdentifier", "networkingOLD", "net", "EnvironmentOverride"}]
       74 GETUPVAL                         R7 6
       75 GETTABLEKS                       R7 R7 K27 ["getMcpClientIdentifier"]
       77 CALL                             R7 0 1
       78 SETTABLEKS                       R7 R6 K22 ["clientIdentifier"]
       80 SETTABLEKS                       R4 R6 K23 ["networkingOLD"]
       82 SETTABLEKS                       R3 R6 K24 ["net"]
       84 SETTABLEKS                       R2 R6 K25 ["EnvironmentOverride"]
       86 CALL                             R5 1 0
       87 NEWTABLE                         R5 0 0
       89 MOVE                             R6 R0
       90 LOADNIL                          R7
       91 LOADNIL                          R8
       92 FORGPREP                         R6
       93 FASTCALL1                        TOSTRING R9 ; [+3]
       94 MOVE                             R12 R9
       95 GETIMPORT                        R11 K29 [tostring]
       97 CALL                             R11 1 1
       98 SETTABLE                         R10 R5 R11
       99 FORGLOOP                         R6 2 ; [-7]
      101 LOADNIL                          R6
      102 GETUPVAL                         R7 1
      103 GETTABLEKS                       R7 R7 K4 ["FFlagAssistantUseNewDMNetworking"]
      105 JUMPIF                           R7 ; [+10]
      106 GETUPVAL                         R7 7
      107 GETTABLEKS                       R7 R7 K30 ["createBridges"]
      109 DUPTABLE                         R8 K32 [{"networkingOLD", "environment"}]
      110 SETTABLEKS                       R4 R8 K23 ["networkingOLD"]
      112 SETTABLEKS                       R2 R8 K31 ["environment"]
      114 CALL                             R7 1 1
      115 MOVE                             R6 R7
      116 GETUPVAL                         R7 8
      117 GETTABLEKS                       R7 R7 K33 ["createTools"]
      119 DUPTABLE                         R8 K36 [{"tools", "networkingOLD", "net", "bridges"}]
      120 SETTABLEKS                       R5 R8 K34 ["tools"]
      122 SETTABLEKS                       R4 R8 K23 ["networkingOLD"]
      124 SETTABLEKS                       R3 R8 K24 ["net"]
      126 SETTABLEKS                       R6 R8 K35 ["bridges"]
      128 CALL                             R7 1 1
      129 GETUPVAL                         R8 8
      130 GETTABLEKS                       R8 R8 K37 ["registerTools"]
      132 MOVE                             R9 R7
      133 CALL                             R8 1 0
      134 NEWTABLE                         R8 0 0
      136 MOVE                             R9 R7
      137 LOADNIL                          R10
      138 LOADNIL                          R11
      139 FORGPREP                         R9
      140 FASTCALL1                        TONUMBER R12 ; [+3]
      141 MOVE                             R15 R12
      142 GETIMPORT                        R14 K39 [tonumber]
      144 CALL                             R14 1 1
      145 LOADK                            R17 K40 ["Tool name %* is not a number string"]
      146 MOVE                             R19 R12
      147 NAMECALL                         R17 R17 K41 ["format"]
      149 CALL                             R17 2 1
      150 FASTCALL2                        ASSERT R14 R17 ; [+4]
      152 MOVE                             R16 R14
      153 GETIMPORT                        R15 K3 [assert]
      155 CALL                             R15 2 0
      156 SETTABLE                         R13 R8 R14
      157 FORGLOOP                         R9 2 ; [-18]
      159 MOVE                             R9 R8
      160 MOVE                             R10 R2
      161 CLOSEUPVALS                      R4
      162 RETURN                           R9 2

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 LOADN                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["tools"]
        3 GETTABLEKS                       R2 R2 K1 ["executeLuau"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          REF R1
        8 SETTABLEKS                       R3 R2 K2 ["loadCode"]
       10 GETTABLEKS                       R2 R0 K0 ["tools"]
       12 GETTABLEKS                       R2 R2 K1 ["executeLuau"]
       14 DUPCLOSURE                       R3 K3 [PROTO_7]
       15 SETTABLEKS                       R3 R2 K4 ["stopCode"]
       17 CLOSEUPVALS                      R1
       18 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["content"]
        2 GETTABLE                         R2 R3 R1
        3 LOADK                            R5 K1 ["No content found at index %*"]
        4 MOVE                             R7 R1
        5 NAMECALL                         R5 R5 K2 ["format"]
        7 CALL                             R5 2 1
        8 FASTCALL2                        ASSERT R2 R5 ; [+4]
       10 MOVE                             R4 R2
       11 GETIMPORT                        R3 K4 [assert]
       13 CALL                             R3 2 0
       14 GETTABLEKS                       R5 R2 K5 ["type"]
       16 JUMPIFEQKS                       R5 K6 ["text"] ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 LOADK                            R5 K7 ["Expected content at index %* to be of type \"text\", got %*"]
       21 MOVE                             R7 R1
       22 GETTABLEKS                       R8 R2 K5 ["type"]
       24 NAMECALL                         R5 R5 K2 ["format"]
       26 CALL                             R5 3 1
       27 FASTCALL2                        ASSERT R4 R5 ; [+3]
       29 GETIMPORT                        R3 K4 [assert]
       31 CALL                             R3 2 0
       32 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["textContentAtIndex"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETTABLEKS                       R3 R2 K1 ["text"]
        8 RETURN                           R3 1

PROTO_11:
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
       23 GETTABLEKS                       R5 R1 K7 ["Parent"]
       25 GETTABLEKS                       R5 R5 K9 ["DMNetworkingOLD"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K5 [require]
       30 GETTABLEKS                       R6 R1 K10 ["Util"]
       32 GETTABLEKS                       R6 R6 K11 ["DataModelType"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K5 [require]
       37 GETTABLEKS                       R7 R1 K12 ["Guest"]
       39 GETTABLEKS                       R7 R7 K13 ["Environment"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K5 [require]
       44 GETTABLEKS                       R8 R1 K14 ["Flags"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R9 R1 K12 ["Guest"]
       51 GETTABLEKS                       R9 R9 K15 ["JsonEnvironment"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R10 R1 K7 ["Parent"]
       58 GETTABLEKS                       R10 R10 K16 ["ModelContextProtocol"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K5 [require]
       63 GETTABLEKS                       R11 R1 K17 ["Tools"]
       65 GETTABLEKS                       R11 R11 K18 ["ToolTypes"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K5 [require]
       70 GETTABLEKS                       R12 R1 K17 ["Tools"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K5 [require]
       75 GETTABLEKS                       R13 R1 K19 ["Types"]
       77 CALL                             R12 1 1
       78 GETIMPORT                        R13 K5 [require]
       80 GETTABLEKS                       R14 R1 K20 ["Components"]
       82 GETTABLEKS                       R14 R14 K21 ["UIToolRegistry"]
       84 CALL                             R13 1 1
       85 GETIMPORT                        R14 K5 [require]
       87 GETTABLEKS                       R15 R1 K12 ["Guest"]
       89 GETTABLEKS                       R15 R15 K22 ["startGuest"]
       91 CALL                             R14 1 1
       92 LOADK                            R17 K23 ["Packages"]
       93 NAMECALL                         R15 R1 K3 ["FindFirstAncestor"]
       95 CALL                             R15 2 1
       96 GETTABLEKS                       R15 R15 K24 ["Dev"]
       98 GETIMPORT                        R16 K5 [require]
      100 GETTABLEKS                       R17 R15 K25 ["JestGlobals"]
      102 CALL                             R16 1 1
      103 GETTABLEKS                       R17 R16 K26 ["afterEach"]
      105 DUPCLOSURE                       R18 K27 [PROTO_1]
      106 CAPTURE                          VAL R17
      107 CAPTURE                          VAL R13
      108 SETTABLEKS                       R18 R0 K26 ["afterEach"]
      110 DUPCLOSURE                       R18 K28 [PROTO_4]
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R11
      120 SETTABLEKS                       R18 R0 K29 ["toolSetup"]
      122 NEWTABLE                         R18 0 4
      124 DUPTABLE                         R19 K35 [{["label"] = "unspecified", ["targetDataModel"] = , ["identity"]}]
      125 GETTABLEKS                       R20 R3 K36 ["FOCUSED"]
      127 SETTABLEKS                       R20 R19 K34 ["identity"]
      129 DUPTABLE                         R20 K37 [{"label", "targetDataModel", "identity"}]
      130 GETTABLEKS                       R21 R5 K19 ["Types"]
      132 GETTABLEKS                       R21 R21 K38 ["Edit"]
      134 SETTABLEKS                       R21 R20 K30 ["label"]
      136 GETTABLEKS                       R21 R5 K19 ["Types"]
      138 GETTABLEKS                       R21 R21 K38 ["Edit"]
      140 SETTABLEKS                       R21 R20 K32 ["targetDataModel"]
      142 GETTABLEKS                       R21 R3 K39 ["Identity"]
      144 GETTABLEKS                       R21 R21 K38 ["Edit"]
      146 SETTABLEKS                       R21 R20 K34 ["identity"]
      148 DUPTABLE                         R21 K37 [{"label", "targetDataModel", "identity"}]
      149 GETTABLEKS                       R22 R5 K19 ["Types"]
      151 GETTABLEKS                       R22 R22 K40 ["Client"]
      153 SETTABLEKS                       R22 R21 K30 ["label"]
      155 GETTABLEKS                       R22 R5 K19 ["Types"]
      157 GETTABLEKS                       R22 R22 K40 ["Client"]
      159 SETTABLEKS                       R22 R21 K32 ["targetDataModel"]
      161 GETTABLEKS                       R22 R3 K39 ["Identity"]
      163 GETTABLEKS                       R22 R22 K41 ["PlayClient"]
      165 SETTABLEKS                       R22 R21 K34 ["identity"]
      167 DUPTABLE                         R22 K37 [{"label", "targetDataModel", "identity"}]
      168 GETTABLEKS                       R23 R5 K19 ["Types"]
      170 GETTABLEKS                       R23 R23 K42 ["Server"]
      172 SETTABLEKS                       R23 R22 K30 ["label"]
      174 GETTABLEKS                       R23 R5 K19 ["Types"]
      176 GETTABLEKS                       R23 R23 K42 ["Server"]
      178 SETTABLEKS                       R23 R22 K32 ["targetDataModel"]
      180 GETTABLEKS                       R23 R3 K39 ["Identity"]
      182 GETTABLEKS                       R23 R23 K43 ["PlayServer"]
      184 SETTABLEKS                       R23 R22 K34 ["identity"]
      186 SETLIST                          R18 R19 4 [1]
      188 SETTABLEKS                       R18 R0 K44 ["WIRE_TARGET_CASES"]
      190 DUPCLOSURE                       R18 K45 [PROTO_5]
      191 SETTABLEKS                       R18 R0 K46 ["createTestLoadedCode"]
      193 DUPCLOSURE                       R18 K47 [PROTO_8]
      194 CAPTURE                          VAL R0
      195 SETTABLEKS                       R18 R0 K48 ["addCommandExecutionDependencies"]
      197 DUPCLOSURE                       R18 K49 [PROTO_9]
      198 SETTABLEKS                       R18 R0 K50 ["textContentAtIndex"]
      200 DUPCLOSURE                       R18 K51 [PROTO_10]
      201 CAPTURE                          VAL R0
      202 SETTABLEKS                       R18 R0 K52 ["stringAtIndex"]
      204 DUPCLOSURE                       R18 K53 [PROTO_11]
      205 SETTABLEKS                       R18 R0 K54 ["invoke"]
      207 RETURN                           R0 1
