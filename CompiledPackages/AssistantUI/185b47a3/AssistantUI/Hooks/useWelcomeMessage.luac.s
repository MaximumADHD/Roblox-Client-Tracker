PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 DUPTABLE                         R1 K2 [{[1] = "system"}]
        5 CALL                             R0 1 1
        6 DUPTABLE                         R1 K6 [{["type"], ["text"] = "Hi there! What can I help you build?"}]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K7 ["Type"]
       10 SETTABLEKS                       R2 R1 K3 ["type"]
       12 GETUPVAL                         R2 3
       13 DUPTABLE                         R3 K10 [{"messageId", "content"}]
       14 SETTABLEKS                       R0 R3 K8 ["messageId"]
       16 SETTABLEKS                       R1 R3 K9 ["content"]
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 CALL                             R3 0 1
        4 LOADNIL                          R4
        5 GETTABLEKS                       R6 R0 K0 ["threads"]
        7 GETTABLE                         R5 R6 R1
        8 MOVE                             R6 R5
        9 JUMPIFNOT                        R6 ; [+19]
       10 LOADB                            R6 0
       11 GETTABLEKS                       R7 R5 K1 ["messageLoadState"]
       13 GETUPVAL                         R8 2
       14 GETTABLEKS                       R8 R8 K2 ["PersistenceLoadStates"]
       16 GETTABLEKS                       R8 R8 K3 ["Disabled"]
       18 JUMPIFNOTEQ                      R7 R8 ; [+10]
       20 GETIMPORT                        R7 K5 [next]
       22 GETTABLEKS                       R8 R5 K6 ["messages"]
       24 CALL                             R7 1 1
       25 JUMPIFEQKNIL                     R7 ; [+2]
       27 LOADB                            R6 0 +1
       28 LOADB                            R6 1
       29 MOVE                             R4 R6
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R6 R6 K7 ["useEffect"]
       33 NEWCLOSURE                       R7 P0
       34 CAPTURE                          REF R4
       35 CAPTURE                          VAL R2
       36 CAPTURE                          UPVAL U4
       37 CAPTURE                          VAL R3
       38 NEWTABLE                         R8 0 4
       40 MOVE                             R9 R3
       41 MOVE                             R10 R2
       42 MOVE                             R11 R1
       43 MOVE                             R12 R4
       44 SETLIST                          R8 R9 4 [1]
       46 CALL                             R6 2 0
       47 CLOSEUPVALS                      R4
       48 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["ContentWidgets"]
       20 GETTABLEKS                       R3 R3 K10 ["TextContentWidget"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Hooks"]
       32 GETTABLEKS                       R5 R5 K13 ["useAddContent"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Hooks"]
       39 GETTABLEKS                       R6 R6 K14 ["useAddMessage"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K15 [PROTO_1]
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R2
       48 RETURN                           R6 1
