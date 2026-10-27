PROTO_0:
        0 LOADB                            R2 0
        1 JUMPIFEQKNIL                     R0 ; [+16]
        3 LOADB                            R2 0
        4 GETTABLEKS                       R3 R0 K0 ["sessionId"]
        6 GETTABLEKS                       R4 R1 K0 ["sessionId"]
        8 JUMPIFNOTEQ                      R3 R4 ; [+9]
       10 GETTABLEKS                       R3 R0 K1 ["threadId"]
       12 GETTABLEKS                       R4 R1 K1 ["threadId"]
       14 JUMPIFEQ                         R3 R4 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R2 K2 [table.freeze]
        2 GETIMPORT                        R3 K4 [table.clone]
        4 MOVE                             R4 R1
        5 CALL                             R3 1 -1
        6 CALL                             R2 -1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R4 R2 K5 ["toolUseId"]
       10 DUPTABLE                         R5 K8 [{"scope", "generation"}]
       11 SETTABLEKS                       R0 R5 K6 ["scope"]
       13 SETTABLEKS                       R2 R5 K7 ["generation"]
       15 SETTABLE                         R5 R3 R4
       16 JUMPIFEQKNIL                     R0 ; [+24]
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R5 R0 K9 ["sessionId"]
       21 GETTABLE                         R3 R4 R5
       22 JUMPIF                           R3 ; [+2]
       23 NEWTABLE                         R3 0 0
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R5 R0 K9 ["sessionId"]
       28 SETTABLE                         R3 R4 R5
       29 GETTABLEKS                       R5 R0 K10 ["threadId"]
       31 GETTABLE                         R4 R3 R5
       32 JUMPIF                           R4 ; [+2]
       33 NEWTABLE                         R4 0 0
       35 GETTABLEKS                       R5 R0 K10 ["threadId"]
       37 SETTABLE                         R4 R3 R5
       38 GETTABLEKS                       R5 R2 K11 ["editSource"]
       40 SETTABLE                         R2 R4 R5
       41 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFEQKNIL                     R2 ; [+24]
        4 JUMPIFEQKNIL                     R1 ; [+24]
        6 GETTABLEKS                       R4 R2 K0 ["scope"]
        8 LOADB                            R3 0
        9 JUMPIFEQKNIL                     R4 ; [+16]
       11 LOADB                            R3 0
       12 GETTABLEKS                       R5 R4 K1 ["sessionId"]
       14 GETTABLEKS                       R6 R1 K1 ["sessionId"]
       16 JUMPIFNOTEQ                      R5 R6 ; [+9]
       18 GETTABLEKS                       R5 R4 K2 ["threadId"]
       20 GETTABLEKS                       R6 R1 K2 ["threadId"]
       22 JUMPIFEQ                         R5 R6 ; [+2]
       24 LOADB                            R3 0 +1
       25 LOADB                            R3 1
       26 JUMPIF                           R3 ; [+2]
       27 LOADNIL                          R3
       28 RETURN                           R3 1
       29 GETTABLEKS                       R3 R2 K3 ["generation"]
       31 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["sessionId"]
        3 GETTABLE                         R2 R3 R4
        4 MOVE                             R3 R2
        5 JUMPIFNOT                        R3 ; [+3]
        6 GETTABLEKS                       R4 R0 K1 ["threadId"]
        8 GETTABLE                         R3 R2 R4
        9 MOVE                             R4 R3
       10 JUMPIFNOT                        R4 ; [+1]
       11 GETTABLE                         R4 R3 R1
       12 JUMPIFEQKNIL                     R4 ; [+9]
       14 GETTABLEKS                       R5 R4 K2 ["editSource"]
       16 JUMPIFNOTEQ                      R5 R1 ; [+5]
       18 GETTABLEKS                       R5 R4 K3 ["contextId"]
       20 JUMPIFNOTEQKNIL                  R5 ; [+3]
       22 LOADNIL                          R5
       23 RETURN                           R5 1
       24 RETURN                           R4 1

PROTO_4:
        0 GETIMPORT                        R0 K2 [table.clear]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K2 [table.clear]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 DUPTABLE                         R2 K4 [{"record", "getByToolUseId", "resolveEditSource", "destroy"}]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 SETTABLEKS                       R3 R2 K0 ["record"]
       10 NEWCLOSURE                       R3 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R3 R2 K1 ["getByToolUseId"]
       14 NEWCLOSURE                       R3 P2
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R3 R2 K2 ["resolveEditSource"]
       18 NEWCLOSURE                       R3 P3
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R3 R2 K3 ["destroy"]
       23 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGen"]
       13 GETTABLEKS                       R2 R2 K8 ["State"]
       15 GETTABLEKS                       R2 R2 K9 ["AnimationHistoryTypes"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K10 [PROTO_0]
       19 DUPCLOSURE                       R3 K11 [PROTO_5]
       20 RETURN                           R3 1
