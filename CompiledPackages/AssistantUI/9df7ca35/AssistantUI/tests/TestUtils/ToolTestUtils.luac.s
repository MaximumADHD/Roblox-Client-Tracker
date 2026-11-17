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
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_3:
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
       13 JUMPIF                           R3 ; [+20]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K0 ["new"]
       17 DUPTABLE                         R5 K6 [{"implementation", "identity"}]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K7 ["ImplementationKind"]
       21 GETTABLEKS                       R6 R6 K8 ["Callback"]
       23 SETTABLEKS                       R6 R5 K4 ["implementation"]
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R6 R6 K9 ["Identity"]
       28 GETTABLEKS                       R6 R6 K10 ["Edit"]
       30 SETTABLEKS                       R6 R5 K5 ["identity"]
       32 CALL                             R4 1 1
       33 MOVE                             R3 R4
       34 FASTCALL2K                       ASSERT R3 K11 ; [+5]
       36 MOVE                             R5 R3
       37 LOADK                            R6 K11 ["Networking is nil"]
       38 GETIMPORT                        R4 K3 [assert]
       40 CALL                             R4 2 0
       41 DUPCLOSURE                       R4 K12 [PROTO_2]
       42 SETTABLEKS                       R4 R2 K13 ["hasUI"]
       44 JUMPIFNOT                        R1 ; [+4]
       45 MOVE                             R4 R1
       46 MOVE                             R5 R2
       47 CALL                             R4 1 1
       48 MOVE                             R2 R4
       49 GETUPVAL                         R4 2
       50 GETTABLEKS                       R4 R4 K14 ["setup"]
       52 MOVE                             R5 R2
       53 CALL                             R4 1 0
       54 GETUPVAL                         R4 3
       55 DUPTABLE                         R5 K18 [{"clientIdentifier", "net", "EnvironmentOverride"}]
       56 GETUPVAL                         R6 4
       57 GETTABLEKS                       R6 R6 K19 ["getMcpClientIdentifier"]
       59 CALL                             R6 0 1
       60 SETTABLEKS                       R6 R5 K15 ["clientIdentifier"]
       62 SETTABLEKS                       R3 R5 K16 ["net"]
       64 SETTABLEKS                       R2 R5 K17 ["EnvironmentOverride"]
       66 CALL                             R4 1 0
       67 NEWTABLE                         R4 0 0
       69 MOVE                             R5 R0
       70 LOADNIL                          R6
       71 LOADNIL                          R7
       72 FORGPREP                         R5
       73 FASTCALL1                        TOSTRING R8 ; [+3]
       74 MOVE                             R11 R8
       75 GETIMPORT                        R10 K21 [tostring]
       77 CALL                             R10 1 1
       78 SETTABLE                         R9 R4 R10
       79 FORGLOOP                         R5 2 ; [-7]
       81 GETUPVAL                         R5 5
       82 GETTABLEKS                       R5 R5 K22 ["createTools"]
       84 DUPTABLE                         R6 K24 [{"tools", "net"}]
       85 SETTABLEKS                       R4 R6 K23 ["tools"]
       87 SETTABLEKS                       R3 R6 K16 ["net"]
       89 CALL                             R5 1 1
       90 GETUPVAL                         R6 5
       91 GETTABLEKS                       R6 R6 K25 ["registerTools"]
       93 MOVE                             R7 R5
       94 CALL                             R6 1 0
       95 NEWTABLE                         R6 0 0
       97 MOVE                             R7 R5
       98 LOADNIL                          R8
       99 LOADNIL                          R9
      100 FORGPREP                         R7
      101 FASTCALL1                        TONUMBER R10 ; [+3]
      102 MOVE                             R13 R10
      103 GETIMPORT                        R12 K27 [tonumber]
      105 CALL                             R12 1 1
      106 LOADK                            R15 K28 ["Tool name %* is not a number string"]
      107 MOVE                             R17 R10
      108 NAMECALL                         R15 R15 K29 ["format"]
      110 CALL                             R15 2 1
      111 FASTCALL2                        ASSERT R12 R15 ; [+4]
      113 MOVE                             R14 R12
      114 GETIMPORT                        R13 K3 [assert]
      116 CALL                             R13 2 0
      117 SETTABLE                         R11 R6 R12
      118 FORGLOOP                         R7 2 ; [-18]
      120 MOVE                             R7 R6
      121 MOVE                             R8 R2
      122 RETURN                           R7 2

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
       11 GETTABLEKS                       R3 R1 K6 ["Parent"]
       13 GETTABLEKS                       R3 R3 K7 ["DMNetworking"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K8 ["Util"]
       20 GETTABLEKS                       R4 R4 K9 ["DataModelType"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K10 ["Guest"]
       27 GETTABLEKS                       R5 R5 K11 ["Environment"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R1 K10 ["Guest"]
       34 GETTABLEKS                       R6 R6 K12 ["JsonEnvironment"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETTABLEKS                       R7 R1 K6 ["Parent"]
       41 GETTABLEKS                       R7 R7 K13 ["ModelContextProtocol"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K5 [require]
       46 GETTABLEKS                       R8 R1 K14 ["Tools"]
       48 GETTABLEKS                       R8 R8 K15 ["ToolTypes"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K5 [require]
       53 GETTABLEKS                       R9 R1 K14 ["Tools"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R10 R1 K16 ["Types"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K5 [require]
       63 GETTABLEKS                       R11 R1 K17 ["Components"]
       65 GETTABLEKS                       R11 R11 K18 ["UIToolRegistry"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K5 [require]
       70 GETTABLEKS                       R12 R1 K10 ["Guest"]
       72 GETTABLEKS                       R12 R12 K19 ["startGuest"]
       74 CALL                             R11 1 1
       75 LOADK                            R14 K20 ["Packages"]
       76 NAMECALL                         R12 R1 K3 ["FindFirstAncestor"]
       78 CALL                             R12 2 1
       79 GETTABLEKS                       R12 R12 K21 ["Dev"]
       81 GETIMPORT                        R13 K5 [require]
       83 GETTABLEKS                       R14 R12 K22 ["JestGlobals"]
       85 CALL                             R13 1 1
       86 GETTABLEKS                       R14 R13 K23 ["afterEach"]
       88 DUPCLOSURE                       R15 K24 [PROTO_1]
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R10
       91 SETTABLEKS                       R15 R0 K23 ["afterEach"]
       93 DUPCLOSURE                       R15 K25 [PROTO_3]
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R8
      100 SETTABLEKS                       R15 R0 K26 ["toolSetup"]
      102 NEWTABLE                         R15 0 4
      104 DUPTABLE                         R16 K32 [{["label"] = "unspecified", ["targetDataModel"] = , ["identity"]}]
      105 GETTABLEKS                       R17 R2 K33 ["FOCUSED"]
      107 SETTABLEKS                       R17 R16 K31 ["identity"]
      109 DUPTABLE                         R17 K34 [{"label", "targetDataModel", "identity"}]
      110 GETTABLEKS                       R18 R3 K16 ["Types"]
      112 GETTABLEKS                       R18 R18 K35 ["Edit"]
      114 SETTABLEKS                       R18 R17 K27 ["label"]
      116 GETTABLEKS                       R18 R3 K16 ["Types"]
      118 GETTABLEKS                       R18 R18 K35 ["Edit"]
      120 SETTABLEKS                       R18 R17 K29 ["targetDataModel"]
      122 GETTABLEKS                       R18 R2 K36 ["Identity"]
      124 GETTABLEKS                       R18 R18 K35 ["Edit"]
      126 SETTABLEKS                       R18 R17 K31 ["identity"]
      128 DUPTABLE                         R18 K34 [{"label", "targetDataModel", "identity"}]
      129 GETTABLEKS                       R19 R3 K16 ["Types"]
      131 GETTABLEKS                       R19 R19 K37 ["Client"]
      133 SETTABLEKS                       R19 R18 K27 ["label"]
      135 GETTABLEKS                       R19 R3 K16 ["Types"]
      137 GETTABLEKS                       R19 R19 K37 ["Client"]
      139 SETTABLEKS                       R19 R18 K29 ["targetDataModel"]
      141 GETTABLEKS                       R19 R2 K36 ["Identity"]
      143 GETTABLEKS                       R19 R19 K38 ["PlayClient"]
      145 SETTABLEKS                       R19 R18 K31 ["identity"]
      147 DUPTABLE                         R19 K34 [{"label", "targetDataModel", "identity"}]
      148 GETTABLEKS                       R20 R3 K16 ["Types"]
      150 GETTABLEKS                       R20 R20 K39 ["Server"]
      152 SETTABLEKS                       R20 R19 K27 ["label"]
      154 GETTABLEKS                       R20 R3 K16 ["Types"]
      156 GETTABLEKS                       R20 R20 K39 ["Server"]
      158 SETTABLEKS                       R20 R19 K29 ["targetDataModel"]
      160 GETTABLEKS                       R20 R2 K36 ["Identity"]
      162 GETTABLEKS                       R20 R20 K40 ["PlayServer"]
      164 SETTABLEKS                       R20 R19 K31 ["identity"]
      166 SETLIST                          R15 R16 4 [1]
      168 SETTABLEKS                       R15 R0 K41 ["WIRE_TARGET_CASES"]
      170 DUPCLOSURE                       R15 K42 [PROTO_4]
      171 SETTABLEKS                       R15 R0 K43 ["createTestLoadedCode"]
      173 DUPCLOSURE                       R15 K44 [PROTO_7]
      174 CAPTURE                          VAL R0
      175 SETTABLEKS                       R15 R0 K45 ["addCommandExecutionDependencies"]
      177 DUPCLOSURE                       R15 K46 [PROTO_8]
      178 SETTABLEKS                       R15 R0 K47 ["textContentAtIndex"]
      180 DUPCLOSURE                       R15 K48 [PROTO_9]
      181 CAPTURE                          VAL R0
      182 SETTABLEKS                       R15 R0 K49 ["stringAtIndex"]
      184 DUPCLOSURE                       R15 K50 [PROTO_10]
      185 SETTABLEKS                       R15 R0 K51 ["invoke"]
      187 RETURN                           R0 1
