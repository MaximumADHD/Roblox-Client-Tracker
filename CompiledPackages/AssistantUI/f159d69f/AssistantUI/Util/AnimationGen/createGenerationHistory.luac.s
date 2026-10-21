PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["toolUseId"]
        3 DUPTABLE                         R4 K3 [{"scope", "generation"}]
        4 SETTABLEKS                       R0 R4 K1 ["scope"]
        6 SETTABLEKS                       R1 R4 K2 ["generation"]
        8 SETTABLE                         R4 R2 R3
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R4 R0 K4 ["sessionId"]
       12 GETTABLE                         R2 R3 R4
       13 JUMPIFNOTEQKNIL                  R2 ; [+7]
       15 NEWTABLE                         R2 0 0
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R4 R0 K4 ["sessionId"]
       20 SETTABLE                         R2 R3 R4
       21 GETTABLEKS                       R4 R0 K5 ["threadId"]
       23 GETTABLE                         R3 R2 R4
       24 JUMPIFNOTEQKNIL                  R3 ; [+6]
       26 NEWTABLE                         R3 0 0
       28 GETTABLEKS                       R4 R0 K5 ["threadId"]
       30 SETTABLE                         R3 R2 R4
       31 GETTABLEKS                       R4 R1 K6 ["editSource"]
       33 SETTABLE                         R1 R3 R4
       34 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R3
        1 JUMPIFEQKNIL                     R2 ; [+26]
        3 GETUPVAL                         R5 0
        4 GETTABLE                         R4 R5 R2
        5 JUMPIFEQKNIL                     R4 ; [+17]
        7 GETTABLEKS                       R5 R4 K0 ["scope"]
        9 GETTABLEKS                       R5 R5 K1 ["sessionId"]
       11 GETTABLEKS                       R6 R0 K1 ["sessionId"]
       13 JUMPIFNOTEQ                      R5 R6 ; [+9]
       15 GETTABLEKS                       R5 R4 K0 ["scope"]
       17 GETTABLEKS                       R5 R5 K2 ["threadId"]
       19 GETTABLEKS                       R6 R0 K2 ["threadId"]
       21 JUMPIFEQ                         R5 R6 ; [+3]
       23 LOADNIL                          R5
       24 RETURN                           R5 1
       25 GETTABLEKS                       R3 R4 K3 ["generation"]
       27 JUMP                             ; [+13]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R6 R0 K1 ["sessionId"]
       31 GETTABLE                         R4 R5 R6
       32 MOVE                             R5 R4
       33 JUMPIFNOT                        R5 ; [+3]
       34 GETTABLEKS                       R6 R0 K2 ["threadId"]
       36 GETTABLE                         R5 R4 R6
       37 MOVE                             R6 R5
       38 JUMPIFNOT                        R6 ; [+1]
       39 GETTABLE                         R6 R5 R1
       40 MOVE                             R3 R6
       41 JUMPIFEQKNIL                     R3 ; [+5]
       43 GETTABLEKS                       R4 R3 K4 ["editSource"]
       45 JUMPIFEQ                         R4 R1 ; [+3]
       47 LOADNIL                          R4
       48 RETURN                           R4 1
       49 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 MOVE                             R2 R1
        3 JUMPIFNOT                        R2 ; [+2]
        4 GETTABLEKS                       R2 R1 K0 ["generation"]
        6 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 DUPTABLE                         R4 K3 [{"recordGeneration", "resolveEditSource", "getByToolUseId"}]
       11 SETTABLEKS                       R2 R4 K0 ["recordGeneration"]
       13 SETTABLEKS                       R3 R4 K1 ["resolveEditSource"]
       15 NEWCLOSURE                       R5 P2
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R5 R4 K2 ["getByToolUseId"]
       19 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGen"]
       13 GETTABLEKS                       R2 R2 K8 ["AnimationGenTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Util"]
       20 GETTABLEKS                       R3 R3 K7 ["AnimationGen"]
       22 GETTABLEKS                       R3 R3 K9 ["BlendSettings"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K10 [PROTO_3]
       26 RETURN                           R3 1
