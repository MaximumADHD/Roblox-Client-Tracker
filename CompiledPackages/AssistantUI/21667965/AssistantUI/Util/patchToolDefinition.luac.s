PROTO_0:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 GETTABLEKS                       R3 R0 K3 ["inputSchema"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R4 R2 K4 ["required"]
        7 JUMPIFNOT                        R4 ; [+6]
        8 GETIMPORT                        R3 K2 [table.clone]
       10 GETTABLEKS                       R4 R2 K4 ["required"]
       12 CALL                             R3 1 1
       13 JUMP                             ; [+2]
       14 NEWTABLE                         R3 0 0
       16 GETTABLEKS                       R4 R1 K4 ["required"]
       18 JUMPIFNOT                        R4 ; [+8]
       19 GETTABLEKS                       R6 R1 K5 ["name"]
       21 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       23 MOVE                             R5 R3
       24 GETIMPORT                        R4 K7 [table.insert]
       26 CALL                             R4 2 0
       27 SETTABLEKS                       R3 R2 K4 ["required"]
       29 GETTABLEKS                       R5 R2 K8 ["properties"]
       31 JUMPIFNOT                        R5 ; [+6]
       32 GETIMPORT                        R4 K2 [table.clone]
       34 GETTABLEKS                       R5 R2 K8 ["properties"]
       36 CALL                             R4 1 1
       37 JUMP                             ; [+2]
       38 NEWTABLE                         R4 0 0
       40 GETTABLEKS                       R5 R1 K5 ["name"]
       42 GETTABLEKS                       R6 R1 K9 ["schema"]
       44 SETTABLE                         R6 R4 R5
       45 SETTABLEKS                       R4 R2 K8 ["properties"]
       47 GETIMPORT                        R5 K2 [table.clone]
       49 MOVE                             R6 R0
       50 CALL                             R5 1 1
       51 SETTABLEKS                       R2 R5 K3 ["inputSchema"]
       53 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1
