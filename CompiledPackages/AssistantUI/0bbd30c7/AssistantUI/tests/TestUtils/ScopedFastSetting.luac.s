PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["flagMappings"]
        3 GETTABLE                         R2 R3 R0
        4 LOADK                            R6 K1 ["No engine feature mapping found for flag %*"]
        5 MOVE                             R8 R0
        6 NAMECALL                         R6 R6 K2 ["format"]
        8 CALL                             R6 2 1
        9 MOVE                             R5 R6
       10 FASTCALL2                        ASSERT R2 R5 ; [+4]
       12 MOVE                             R4 R2
       13 GETIMPORT                        R3 K4 [assert]
       15 CALL                             R3 2 0
       16 GETIMPORT                        R3 K6 [game]
       18 MOVE                             R5 R2
       19 MOVE                             R6 R1
       20 NAMECALL                         R3 R3 K7 ["SetFastFlagForTesting"]
       22 CALL                             R3 3 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["flagMappings"]
        3 GETTABLE                         R2 R3 R0
        4 LOADK                            R6 K1 ["No engine feature mapping found for flag %*"]
        5 MOVE                             R8 R0
        6 NAMECALL                         R6 R6 K2 ["format"]
        8 CALL                             R6 2 1
        9 MOVE                             R5 R6
       10 FASTCALL2                        ASSERT R2 R5 ; [+4]
       12 MOVE                             R4 R2
       13 GETIMPORT                        R3 K4 [assert]
       15 CALL                             R3 2 0
       16 GETIMPORT                        R3 K6 [game]
       18 MOVE                             R5 R2
       19 MOVE                             R6 R1
       20 NAMECALL                         R3 R3 K7 ["SetFastIntForTesting"]
       22 CALL                             R3 3 0
       23 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["flagMappings"]
        3 GETTABLE                         R2 R3 R0
        4 LOADK                            R6 K1 ["No engine feature mapping found for flag %*"]
        5 MOVE                             R8 R0
        6 NAMECALL                         R6 R6 K2 ["format"]
        8 CALL                             R6 2 1
        9 MOVE                             R5 R6
       10 FASTCALL2                        ASSERT R2 R5 ; [+4]
       12 MOVE                             R4 R2
       13 GETIMPORT                        R3 K4 [assert]
       15 CALL                             R3 2 0
       16 GETIMPORT                        R3 K6 [game]
       18 MOVE                             R5 R2
       19 MOVE                             R6 R1
       20 NAMECALL                         R3 R3 K7 ["SetFastStringForTesting"]
       22 CALL                             R3 3 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETTABLEKS                       R5 R4 K0 ["origValue"]
        6 GETUPVAL                         R6 1
        7 SETTABLE                         R5 R6 R3
        8 GETTABLEKS                       R6 R4 K1 ["engineSetter"]
       10 JUMPIFNOT                        R6 ; [+4]
       11 MOVE                             R7 R6
       12 MOVE                             R8 R3
       13 MOVE                             R9 R5
       14 CALL                             R7 2 0
       15 FORGLOOP                         R0 2 ; [-12]
       17 GETIMPORT                        R0 K4 [table.clear]
       19 GETUPVAL                         R1 0
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFNOTEQKNIL                  R3 ; [+10]
        4 GETUPVAL                         R3 0
        5 DUPTABLE                         R4 K2 [{"origValue", "engineSetter"}]
        6 GETUPVAL                         R6 1
        7 GETTABLE                         R5 R6 R0
        8 SETTABLEKS                       R5 R4 K0 ["origValue"]
       10 SETTABLEKS                       R2 R4 K1 ["engineSetter"]
       12 SETTABLE                         R4 R3 R0
       13 GETUPVAL                         R3 1
       14 SETTABLE                         R1 R3 R0
       15 JUMPIFNOT                        R2 ; [+4]
       16 MOVE                             R3 R2
       17 MOVE                             R4 R0
       18 MOVE                             R5 R1
       19 CALL                             R3 2 0
       20 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 LOADNIL                          R5
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 GETUPVAL                         R5 1
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 GETUPVAL                         R5 1
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 GETUPVAL                         R5 1
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_9:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 CALL                             R2 1 0
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R0
       10 NEWCLOSURE                       R3 P2
       11 CAPTURE                          VAL R2
       12 NEWCLOSURE                       R4 P3
       13 CAPTURE                          VAL R2
       14 CAPTURE                          UPVAL U1
       15 NEWCLOSURE                       R5 P4
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U2
       18 NEWCLOSURE                       R6 P5
       19 CAPTURE                          VAL R2
       20 CAPTURE                          UPVAL U3
       21 DUPTABLE                         R7 K4 [{"ScopedEngineFeatureSetting", "ScopedFastFlagSetting", "ScopedFastIntSetting", "ScopedFastStringSetting"}]
       22 SETTABLEKS                       R3 R7 K0 ["ScopedEngineFeatureSetting"]
       24 SETTABLEKS                       R4 R7 K1 ["ScopedFastFlagSetting"]
       26 SETTABLEKS                       R5 R7 K2 ["ScopedFastIntSetting"]
       28 SETTABLEKS                       R6 R7 K3 ["ScopedFastStringSetting"]
       30 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 LOADK                            R3 K4 ["Packages"]
        8 NAMECALL                         R1 R0 K3 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R1 R1 K5 ["Dev"]
       13 GETIMPORT                        R2 K7 [require]
       15 GETTABLEKS                       R3 R0 K8 ["Parent"]
       17 GETTABLEKS                       R3 R3 K9 ["AssistantHarness"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K7 [require]
       22 GETTABLEKS                       R4 R1 K10 ["JestGlobals"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K11 ["afterEach"]
       27 GETTABLEKS                       R5 R2 K12 ["TestableFlags"]
       29 DUPCLOSURE                       R6 K13 [PROTO_0]
       30 CAPTURE                          VAL R5
       31 DUPCLOSURE                       R7 K14 [PROTO_1]
       32 CAPTURE                          VAL R5
       33 DUPCLOSURE                       R8 K15 [PROTO_2]
       34 CAPTURE                          VAL R5
       35 DUPCLOSURE                       R9 K16 [PROTO_9]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R7
       39 CAPTURE                          VAL R8
       40 DUPTABLE                         R10 K18 [{"create"}]
       41 SETTABLEKS                       R9 R10 K17 ["create"]
       43 RETURN                           R10 1
