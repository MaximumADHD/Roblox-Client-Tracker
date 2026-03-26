PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Components"]
        3 GETTABLEKS                       R2 R3 K1 ["DefaultLLMProvider"]
        5 GETTABLEKS                       R1 R2 K2 ["LLMProcessEvent"]
        7 GETTABLEKS                       R0 R1 K3 ["createProcessEventHandler"]
        9 CALL                             R0 0 3
       10 DUPTABLE                         R3 K7 [{"processEvent", "createLLMSession", "cancelSession"}]
       11 SETTABLEKS                       R0 R3 K4 ["processEvent"]
       13 SETTABLEKS                       R1 R3 K5 ["createLLMSession"]
       15 SETTABLEKS                       R2 R3 K6 ["cancelSession"]
       17 RETURN                           R3 1

PROTO_1:
        0 DUPTABLE                         R0 K6 [{"requestHandler", "processEvent", "createLLMSession", "cancelSession", "formatTools", "systemMessage"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K7 ["createRequestHandler"]
        4 GETIMPORT                        R2 K9 [game]
        6 GETUPVAL                         R3 1
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K0 ["requestHandler"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K1 ["processEvent"]
       13 SETTABLEKS                       R1 R0 K1 ["processEvent"]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R1 R2 K2 ["createLLMSession"]
       18 SETTABLEKS                       R1 R0 K2 ["createLLMSession"]
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R1 R2 K3 ["cancelSession"]
       23 SETTABLEKS                       R1 R0 K3 ["cancelSession"]
       25 GETUPVAL                         R2 3
       26 GETTABLEKS                       R1 R2 K4 ["formatTools"]
       28 SETTABLEKS                       R1 R0 K4 ["formatTools"]
       30 GETUPVAL                         R2 4
       31 GETTABLEKS                       R1 R2 K10 ["getSystemMessage"]
       33 CALL                             R1 0 1
       34 SETTABLEKS                       R1 R0 K5 ["systemMessage"]
       36 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 1
        9 JUMPIFNOT                        R2 ; [+39]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R2 R3 K2 ["useMemo"]
       13 DUPCLOSURE                       R3 K3 [PROTO_0]
       14 CAPTURE                          UPVAL U3
       15 NEWTABLE                         R4 0 0
       17 CALL                             R2 2 1
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R3 R4 K2 ["useMemo"]
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          UPVAL U4
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          UPVAL U6
       27 NEWTABLE                         R5 0 2
       29 MOVE                             R6 R2
       30 MOVE                             R7 R1
       31 SETLIST                          R5 R6 2 [1]
       33 CALL                             R3 2 1
       34 GETUPVAL                         R4 7
       35 GETUPVAL                         R8 3
       36 GETTABLEKS                       R7 R8 K4 ["Components"]
       38 GETTABLEKS                       R6 R7 K5 ["Contexts"]
       40 GETTABLEKS                       R5 R6 K6 ["LLMPackageContextProvider"]
       42 DUPTABLE                         R6 K8 [{"studioProvider"}]
       43 SETTABLEKS                       R3 R6 K7 ["studioProvider"]
       45 GETTABLEKS                       R7 R0 K9 ["children"]
       47 CALL                             R4 3 -1
       48 RETURN                           R4 -1
       49 GETUPVAL                         R6 3
       50 GETTABLEKS                       R5 R6 K4 ["Components"]
       52 GETTABLEKS                       R4 R5 K10 ["DefaultLLMProvider"]
       54 GETTABLEKS                       R3 R4 K11 ["LLMProcessEvent"]
       56 GETTABLEKS                       R2 R3 K12 ["createProcessEventHandler"]
       58 CALL                             R2 0 3
       59 GETUPVAL                         R5 7
       60 GETUPVAL                         R9 3
       61 GETTABLEKS                       R8 R9 K4 ["Components"]
       63 GETTABLEKS                       R7 R8 K5 ["Contexts"]
       65 GETTABLEKS                       R6 R7 K6 ["LLMPackageContextProvider"]
       67 DUPTABLE                         R7 K8 [{"studioProvider"}]
       68 DUPTABLE                         R8 K19 [{"requestHandler", "processEvent", "createLLMSession", "cancelSession", "formatTools", "systemMessage"}]
       69 GETUPVAL                         R10 4
       70 GETTABLEKS                       R9 R10 K20 ["createRequestHandler"]
       72 GETIMPORT                        R10 K22 [game]
       74 MOVE                             R11 R1
       75 CALL                             R9 2 1
       76 SETTABLEKS                       R9 R8 K13 ["requestHandler"]
       78 SETTABLEKS                       R2 R8 K14 ["processEvent"]
       80 SETTABLEKS                       R3 R8 K15 ["createLLMSession"]
       82 SETTABLEKS                       R4 R8 K16 ["cancelSession"]
       84 GETUPVAL                         R10 5
       85 GETTABLEKS                       R9 R10 K17 ["formatTools"]
       87 SETTABLEKS                       R9 R8 K17 ["formatTools"]
       89 GETUPVAL                         R10 6
       90 GETTABLEKS                       R9 R10 K23 ["getSystemMessage"]
       92 CALL                             R9 0 1
       93 SETTABLEKS                       R9 R8 K18 ["systemMessage"]
       95 SETTABLEKS                       R8 R7 K7 ["studioProvider"]
       97 GETTABLEKS                       R8 R0 K9 ["children"]
       99 CALL                             R5 3 -1
      100 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R6 R1 K10 ["Flags"]
       30 GETTABLEKS                       R5 R6 K11 ["Shared"]
       32 GETTABLEKS                       R4 R5 K12 ["FFlagAssistantSupportSlashCommandCancellation"]
       34 GETTABLEKS                       R8 R0 K13 ["Src"]
       36 GETTABLEKS                       R7 R8 K14 ["Components"]
       38 GETTABLEKS                       R6 R7 K15 ["Contexts"]
       40 GETTABLEKS                       R5 R6 K16 ["StudioLLM"]
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R5 K17 ["StudioLLMRequest"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R5 K18 ["StudioLLMSystemMessage"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R2 K19 ["ContextServices"]
       54 GETTABLEKS                       R9 R8 K20 ["Plugin"]
       56 GETTABLEKS                       R12 R1 K14 ["Components"]
       58 GETTABLEKS                       R11 R12 K21 ["Claude"]
       60 GETTABLEKS                       R10 R11 K22 ["ClaudeLLMToolFormat"]
       62 GETTABLEKS                       R11 R3 K23 ["createElement"]
       64 DUPCLOSURE                       R12 K24 [PROTO_2]
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R11
       73 RETURN                           R12 1
