PROTO_0:
        0 SETUPVAL                         R0 0
        1 SETUPVAL                         R1 1
        2 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+4]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R3 R0 K0 ["tools"]
        5 CALL                             R2 1 3
        6 FORGPREP                         R2
        7 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R6
       11 GETIMPORT                        R7 K3 [table.insert]
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 2 ; [-8]
       16 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R3 R3 K0 ["Provider"]
        6 DUPTABLE                         R4 K2 [{"studioProvider"}]
        7 DUPTABLE                         R5 K11 [{["requestHandler"], ["processEvent"], ["createLLMSession"], ["cancelSession"], ["formatTools"], ["systemMessage"] = "", ["systemRemindersGetter"]}]
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 SETTABLEKS                       R6 R5 K3 ["requestHandler"]
       13 NEWCLOSURE                       R6 P1
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 SETTABLEKS                       R6 R5 K4 ["processEvent"]
       18 GETUPVAL                         R6 6
       19 SETTABLEKS                       R6 R5 K5 ["createLLMSession"]
       21 GETUPVAL                         R6 7
       22 SETTABLEKS                       R6 R5 K6 ["cancelSession"]
       24 DUPCLOSURE                       R6 K12 [PROTO_2]
       25 SETTABLEKS                       R6 R5 K7 ["formatTools"]
       27 NEWCLOSURE                       R6 P3
       28 CAPTURE                          VAL R1
       29 SETTABLEKS                       R6 R5 K10 ["systemRemindersGetter"]
       31 SETTABLEKS                       R5 R4 K1 ["studioProvider"]
       33 GETTABLEKS                       R5 R0 K13 ["children"]
       35 CALL                             R2 3 -1
       36 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R1 R0 ; [+3]
        3 LOADNIL                          R1
        4 SETUPVAL                         R1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+2]
        3 LOADB                            R0 0 +1
        4 LOADB                            R0 1
        5 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createProcessEventHandler"]
        3 CALL                             R0 0 3
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          REF R3
       11 CAPTURE                          REF R4
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R2
       15 MOVE                             R6 R5
       16 DUPTABLE                         R7 K7 [{"getProcessEvent", "getCreateLLMSession", "getActiveTurnCallback", "clearActiveTurnCallback", "wasRequestHandlerCalled", "getLastRequestHandlerBody"}]
       17 NEWCLOSURE                       R8 P1
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R8 R7 K1 ["getProcessEvent"]
       21 NEWCLOSURE                       R8 P2
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R8 R7 K2 ["getCreateLLMSession"]
       25 NEWCLOSURE                       R8 P3
       26 CAPTURE                          REF R4
       27 SETTABLEKS                       R8 R7 K3 ["getActiveTurnCallback"]
       29 NEWCLOSURE                       R8 P4
       30 CAPTURE                          REF R4
       31 SETTABLEKS                       R8 R7 K4 ["clearActiveTurnCallback"]
       33 NEWCLOSURE                       R8 P5
       34 CAPTURE                          REF R3
       35 SETTABLEKS                       R8 R7 K5 ["wasRequestHandlerCalled"]
       37 NEWCLOSURE                       R8 P6
       38 CAPTURE                          REF R3
       39 SETTABLEKS                       R8 R7 K6 ["getLastRequestHandlerBody"]
       41 CLOSEUPVALS                      R3
       42 RETURN                           R6 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Components"]
       16 GETTABLEKS                       R3 R3 K8 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K9 ["DefaultLLMProvider"]
       20 GETTABLEKS                       R3 R3 K10 ["LLMPackageContextProvider"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Parent"]
       27 GETTABLEKS                       R4 R4 K12 ["React"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K13 ["createElement"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K11 ["Parent"]
       36 GETTABLEKS                       R6 R6 K14 ["AssistantHarness"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R5 K15 ["Engine"]
       41 GETTABLEKS                       R6 R6 K16 ["LLMProcessEvent"]
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K17 ["Hooks"]
       47 GETTABLEKS                       R8 R8 K18 ["SystemReminders"]
       49 GETTABLEKS                       R8 R8 K19 ["useToolsChangedSystemReminders"]
       51 CALL                             R7 1 1
       52 DUPCLOSURE                       R8 K20 [PROTO_11]
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R2
       57 RETURN                           R8 1
