PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 DUPTABLE                         R1 K1 [{"role"}]
        5 LOADK                            R2 K2 ["system"]
        6 SETTABLEKS                       R2 R1 K0 ["role"]
        8 CALL                             R0 1 1
        9 DUPTABLE                         R1 K5 [{"type", "text"}]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R2 R3 K6 ["Type"]
       13 SETTABLEKS                       R2 R1 K3 ["type"]
       15 LOADK                            R2 K7 ["Hi there! What can I help you build?"]
       16 SETTABLEKS                       R2 R1 K4 ["text"]
       18 GETUPVAL                         R2 3
       19 DUPTABLE                         R3 K10 [{"messageId", "content"}]
       20 SETTABLEKS                       R0 R3 K8 ["messageId"]
       22 SETTABLEKS                       R1 R3 K9 ["content"]
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 CALL                             R3 0 1
        4 LOADNIL                          R4
        5 GETUPVAL                         R5 2
        6 CALL                             R5 0 1
        7 JUMPIFNOT                        R5 ; [+19]
        8 GETTABLEKS                       R6 R0 K0 ["threads"]
       10 GETTABLE                         R5 R6 R1
       11 MOVE                             R6 R5
       12 JUMPIFNOT                        R6 ; [+12]
       13 GETTABLEKS                       R6 R5 K1 ["messages"]
       15 JUMPIFNOT                        R6 ; [+9]
       16 GETIMPORT                        R7 K3 [next]
       18 GETTABLEKS                       R8 R5 K1 ["messages"]
       20 CALL                             R7 1 1
       21 JUMPIFEQKNIL                     R7 ; [+2]
       23 LOADB                            R6 0 +1
       24 LOADB                            R6 1
       25 MOVE                             R4 R6
       26 JUMP                             ; [+5]
       27 GETTABLE                         R5 R0 R1
       28 JUMPIFNOTEQKNIL                  R5 ; [+2]
       30 LOADB                            R4 0 +1
       31 LOADB                            R4 1
       32 GETUPVAL                         R6 3
       33 GETTABLEKS                       R5 R6 K4 ["useEffect"]
       35 NEWCLOSURE                       R6 P0
       36 CAPTURE                          REF R4
       37 CAPTURE                          VAL R2
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          VAL R3
       40 NEWTABLE                         R7 0 4
       42 MOVE                             R8 R3
       43 MOVE                             R9 R2
       44 MOVE                             R10 R1
       45 MOVE                             R11 R4
       46 SETLIST                          R7 R8 4 [1]
       48 CALL                             R5 2 0
       49 CLOSEUPVALS                      R4
       50 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["ContentWidgets"]
       20 GETTABLEKS                       R3 R4 K10 ["TextContentWidget"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Types"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Hooks"]
       32 GETTABLEKS                       R5 R6 K13 ["useAddContent"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Hooks"]
       39 GETTABLEKS                       R6 R7 K14 ["useAddMessage"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K15 ["Flags"]
       46 GETTABLEKS                       R7 R8 K16 ["FFlagAssistantMultipleChatSupport"]
       48 CALL                             R6 1 1
       49 DUPCLOSURE                       R7 K17 [PROTO_1]
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R2
       55 RETURN                           R7 1
