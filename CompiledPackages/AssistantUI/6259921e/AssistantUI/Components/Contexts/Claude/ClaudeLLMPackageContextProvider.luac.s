PROTO_0:
        0 DUPTABLE                         R0 K6 [{"requestHandler", "processEvent", "createLLMSession", "cancelSession", "formatTools", "systemMessage"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["requestHandler"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["processEvent"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["createLLMSession"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["cancelSession"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["formatTools"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["systemMessage"]
       19 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["processEvent"]
        2 GETTABLEKS                       R2 R0 K1 ["createLLMSession"]
        4 GETTABLEKS                       R3 R0 K2 ["cancelSession"]
        6 JUMPIFNOT                        R1 ; [+1]
        7 JUMPIF                           R2 ; [+7]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K3 ["createProcessEventHandler"]
       11 CALL                             R4 0 3
       12 MOVE                             R1 R4
       13 MOVE                             R2 R5
       14 MOVE                             R3 R6
       15 LOADNIL                          R4
       16 GETUPVAL                         R5 1
       17 CALL                             R5 0 1
       18 JUMPIFNOT                        R5 ; [+43]
       19 GETTABLEKS                       R5 R0 K4 ["requestHandler"]
       21 JUMPIF                           R5 ; [+4]
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R5 R5 K5 ["createRequestHandler"]
       25 CALL                             R5 0 1
       26 GETTABLEKS                       R6 R0 K6 ["formatTools"]
       28 JUMPIF                           R6 ; [+3]
       29 GETUPVAL                         R6 3
       30 GETTABLEKS                       R6 R6 K6 ["formatTools"]
       32 GETTABLEKS                       R7 R0 K7 ["systemMessage"]
       34 JUMPIF                           R7 ; [+4]
       35 GETUPVAL                         R7 4
       36 GETTABLEKS                       R7 R7 K8 ["getSystemMessage"]
       38 CALL                             R7 0 1
       39 GETUPVAL                         R8 5
       40 GETTABLEKS                       R8 R8 K9 ["useMemo"]
       42 NEWCLOSURE                       R9 P0
       43 CAPTURE                          VAL R5
       44 CAPTURE                          REF R1
       45 CAPTURE                          REF R2
       46 CAPTURE                          REF R3
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R7
       49 NEWTABLE                         R10 0 6
       51 MOVE                             R11 R5
       52 MOVE                             R12 R1
       53 MOVE                             R13 R2
       54 MOVE                             R14 R3
       55 MOVE                             R15 R6
       56 MOVE                             R16 R7
       57 SETLIST                          R10 R11 6 [1]
       59 CALL                             R8 2 1
       60 MOVE                             R4 R8
       61 JUMP                             ; [+34]
       62 DUPTABLE                         R5 K10 [{"requestHandler", "processEvent", "createLLMSession", "cancelSession", "formatTools", "systemMessage"}]
       63 GETTABLEKS                       R6 R0 K4 ["requestHandler"]
       65 JUMPIF                           R6 ; [+4]
       66 GETUPVAL                         R6 2
       67 GETTABLEKS                       R6 R6 K5 ["createRequestHandler"]
       69 CALL                             R6 0 1
       70 SETTABLEKS                       R6 R5 K4 ["requestHandler"]
       72 SETTABLEKS                       R1 R5 K0 ["processEvent"]
       74 SETTABLEKS                       R2 R5 K1 ["createLLMSession"]
       76 SETTABLEKS                       R3 R5 K2 ["cancelSession"]
       78 GETTABLEKS                       R6 R0 K6 ["formatTools"]
       80 JUMPIF                           R6 ; [+3]
       81 GETUPVAL                         R6 3
       82 GETTABLEKS                       R6 R6 K6 ["formatTools"]
       84 SETTABLEKS                       R6 R5 K6 ["formatTools"]
       86 GETTABLEKS                       R6 R0 K7 ["systemMessage"]
       88 JUMPIF                           R6 ; [+4]
       89 GETUPVAL                         R6 4
       90 GETTABLEKS                       R6 R6 K8 ["getSystemMessage"]
       92 CALL                             R6 0 1
       93 SETTABLEKS                       R6 R5 K7 ["systemMessage"]
       95 MOVE                             R4 R5
       96 GETUPVAL                         R5 6
       97 GETUPVAL                         R6 7
       98 GETTABLEKS                       R6 R6 K11 ["Context"]
      100 GETTABLEKS                       R6 R6 K12 ["Provider"]
      102 DUPTABLE                         R7 K14 [{"value"}]
      103 SETTABLEKS                       R4 R7 K13 ["value"]
      105 GETTABLEKS                       R8 R0 K15 ["children"]
      107 CALL                             R5 3 -1
      108 CLOSEUPVALS                      R1
      109 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["DefaultLLMProvider"]
       15 GETTABLEKS                       R2 R2 K9 ["LLMPackageContextProvider"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Components"]
       22 GETTABLEKS                       R3 R3 K7 ["Contexts"]
       24 GETTABLEKS                       R3 R3 K8 ["DefaultLLMProvider"]
       26 GETTABLEKS                       R3 R3 K10 ["LLMProcessEvent"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R4 R0 K11 ["Parent"]
       33 GETTABLEKS                       R4 R4 K12 ["React"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R4 R0 K6 ["Components"]
       38 GETTABLEKS                       R4 R4 K7 ["Contexts"]
       40 GETTABLEKS                       R4 R4 K13 ["Claude"]
       42 GETIMPORT                        R5 K5 [require]
       44 GETTABLEKS                       R6 R4 K14 ["ClaudeLLMRequest"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K5 [require]
       49 GETTABLEKS                       R7 R4 K15 ["ClaudeLLMSystemMessage"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K5 [require]
       54 GETTABLEKS                       R8 R4 K16 ["ClaudeLLMToolFormat"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R9 R0 K17 ["Flags"]
       61 GETTABLEKS                       R9 R9 K18 ["FFlagAssistantUseMemoizedContextValues"]
       63 CALL                             R8 1 1
       64 GETTABLEKS                       R9 R3 K19 ["createElement"]
       66 DUPCLOSURE                       R10 K20 [PROTO_1]
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R1
       75 DUPTABLE                         R11 K23 [{"Context", "Provider"}]
       76 GETTABLEKS                       R12 R1 K21 ["Context"]
       78 SETTABLEKS                       R12 R11 K21 ["Context"]
       80 SETTABLEKS                       R10 R11 K22 ["Provider"]
       82 RETURN                           R11 1
