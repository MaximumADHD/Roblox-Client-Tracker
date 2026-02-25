PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["completionType"]
        2 FASTCALL1                        TYPE R1 ; [+3]
        3 MOVE                             R3 R1
        4 GETIMPORT                        R2 K2 [type]
        6 CALL                             R2 1 1
        7 JUMPIFEQKS                       R2 K3 ["string"] ; [+3]
        9 LOADB                            R2 0
       10 RETURN                           R2 1
       11 GETUPVAL                         R3 0
       12 GETTABLE                         R2 R3 R1
       13 JUMPIF                           R2 ; [+11]
       14 GETIMPORT                        R3 K5 [warn]
       16 LOADK                            R5 K6 ["No handler found for completion type: %*"]
       17 MOVE                             R7 R1
       18 NAMECALL                         R5 R5 K7 ["format"]
       20 CALL                             R5 2 1
       21 MOVE                             R4 R5
       22 CALL                             R3 1 0
       23 LOADB                            R3 0
       24 RETURN                           R3 1
       25 GETIMPORT                        R3 K9 [pcall]
       27 MOVE                             R4 R2
       28 MOVE                             R5 R0
       29 CALL                             R3 2 2
       30 JUMPIF                           R3 ; [+12]
       31 GETIMPORT                        R5 K5 [warn]
       33 LOADK                            R7 K10 ["Error in handler for completion type %*: %*"]
       34 MOVE                             R9 R1
       35 MOVE                             R10 R4
       36 NAMECALL                         R7 R7 K7 ["format"]
       38 CALL                             R7 3 1
       39 MOVE                             R6 R7
       40 CALL                             R5 1 0
       41 LOADB                            R5 0
       42 RETURN                           R5 1
       43 JUMPIFEQKB                       R4 TRUE ; [+2]
       45 LOADB                            R5 0 +1
       46 LOADB                            R5 1
       47 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R3 R4 K8 ["stepHandlers"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 RETURN                           R3 1
