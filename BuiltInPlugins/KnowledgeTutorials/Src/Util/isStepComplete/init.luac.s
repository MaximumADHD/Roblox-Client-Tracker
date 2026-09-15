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
       13 JUMPIF                           R2 ; [+10]
       14 GETIMPORT                        R3 K5 [warn]
       16 LOADK                            R4 K6 ["No handler found for completion type: %*"]
       17 MOVE                             R6 R1
       18 NAMECALL                         R4 R4 K7 ["format"]
       20 CALL                             R4 2 1
       21 CALL                             R3 1 0
       22 LOADB                            R3 0
       23 RETURN                           R3 1
       24 GETIMPORT                        R3 K9 [pcall]
       26 MOVE                             R4 R2
       27 MOVE                             R5 R0
       28 CALL                             R3 2 2
       29 JUMPIF                           R3 ; [+11]
       30 GETIMPORT                        R5 K5 [warn]
       32 LOADK                            R6 K10 ["Error in handler for completion type %*: %*"]
       33 MOVE                             R8 R1
       34 MOVE                             R9 R4
       35 NAMECALL                         R6 R6 K7 ["format"]
       37 CALL                             R6 3 1
       38 CALL                             R5 1 0
       39 LOADB                            R5 0
       40 RETURN                           R5 1
       41 JUMPIFEQKB                       R4 TRUE ; [+2]
       43 LOADB                            R5 0 +1
       44 LOADB                            R5 1
       45 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["stepHandlers"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 RETURN                           R3 1
