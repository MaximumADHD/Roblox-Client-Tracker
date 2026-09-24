PROTO_0:
        0 GETTABLEKS                       R3 R0 K1 ["LayoutOrder"]
        2 ORK                              R2 R3 K0 [0]
        3 GETTABLEKS                       R4 R1 K1 ["LayoutOrder"]
        5 ORK                              R3 R4 K0 [0]
        6 JUMPIFEQ                         R2 R3 ; [+6]
        8 JUMPIFLT                         R2 R3 ; [+2]
       10 LOADB                            R4 0 +1
       11 LOADB                            R4 1
       12 RETURN                           R4 1
       13 GETTABLEKS                       R5 R0 K2 ["messageId"]
       15 GETTABLEKS                       R6 R1 K2 ["messageId"]
       17 JUMPIFLT                         R5 R6 ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 RETURN                           R4 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R3 R1 K0 ["allowMessage"]
        5 JUMP                             ; [+1]
        6 LOADNIL                          R3
        7 MOVE                             R4 R0
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 JUMPIFNOT                        R3 ; [+4]
       12 MOVE                             R9 R3
       13 MOVE                             R10 R8
       14 CALL                             R9 1 1
       15 JUMPIFNOT                        R9 ; [+7]
       16 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       18 MOVE                             R10 R2
       19 MOVE                             R11 R8
       20 GETIMPORT                        R9 K3 [table.insert]
       22 CALL                             R9 2 0
       23 FORGLOOP                         R4 2 ; [-13]
       25 GETIMPORT                        R4 K5 [table.sort]
       27 MOVE                             R5 R2
       28 DUPCLOSURE                       R6 K6 [PROTO_0]
       29 CALL                             R4 2 0
       30 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K1 ["LayoutOrder"]
        2 ORK                              R2 R3 K0 [0]
        3 GETTABLEKS                       R4 R1 K1 ["LayoutOrder"]
        5 ORK                              R3 R4 K0 [0]
        6 JUMPIFEQ                         R2 R3 ; [+6]
        8 JUMPIFLT                         R2 R3 ; [+2]
       10 LOADB                            R4 0 +1
       11 LOADB                            R4 1
       12 RETURN                           R4 1
       13 GETTABLEKS                       R5 R0 K2 ["contentId"]
       15 GETTABLEKS                       R6 R1 K2 ["contentId"]
       17 JUMPIFLT                         R5 R6 ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 RETURN                           R4 1

PROTO_3:
        0 NEWTABLE                         R2 0 0
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R3 R1 K0 ["allowContent"]
        5 JUMP                             ; [+1]
        6 LOADNIL                          R3
        7 MOVE                             R4 R0
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 JUMPIFNOT                        R3 ; [+4]
       12 MOVE                             R9 R3
       13 MOVE                             R10 R8
       14 CALL                             R9 1 1
       15 JUMPIFNOT                        R9 ; [+7]
       16 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       18 MOVE                             R10 R2
       19 MOVE                             R11 R8
       20 GETIMPORT                        R9 K3 [table.insert]
       22 CALL                             R9 2 0
       23 FORGLOOP                         R4 2 ; [-13]
       25 GETIMPORT                        R4 K5 [table.sort]
       27 MOVE                             R5 R2
       28 DUPCLOSURE                       R6 K6 [PROTO_2]
       29 CALL                             R4 2 0
       30 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 2 0
       14 DUPCLOSURE                       R3 K7 [PROTO_1]
       15 SETTABLEKS                       R3 R2 K8 ["sortMessages"]
       17 DUPCLOSURE                       R3 K9 [PROTO_3]
       18 SETTABLEKS                       R3 R2 K10 ["sortContents"]
       20 RETURN                           R2 1
