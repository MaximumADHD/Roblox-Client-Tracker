PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R1
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKNIL                  R2 ; [+8]
        8 JUMPIFNOTEQKNIL                  R3 ; [+6]
       10 JUMPIFLT                         R0 R1 ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 RETURN                           R4 1
       15 JUMPIFNOTEQKNIL                  R2 ; [+3]
       17 LOADB                            R4 0
       18 RETURN                           R4 1
       19 JUMPIFNOTEQKNIL                  R3 ; [+3]
       21 LOADB                            R4 1
       22 RETURN                           R4 1
       23 GETTABLEKS                       R4 R2 K0 ["priority"]
       25 GETTABLEKS                       R5 R3 K0 ["priority"]
       27 JUMPIFEQ                         R4 R5 ; [+10]
       29 GETTABLEKS                       R5 R2 K0 ["priority"]
       31 GETTABLEKS                       R6 R3 K0 ["priority"]
       33 JUMPIFLT                         R6 R5 ; [+2]
       35 LOADB                            R4 0 +1
       36 LOADB                            R4 1
       37 RETURN                           R4 1
       38 GETIMPORT                        R5 K3 [string.lower]
       40 GETTABLEKS                       R6 R2 K4 ["name"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K3 [string.lower]
       45 GETTABLEKS                       R7 R3 K4 ["name"]
       47 CALL                             R6 1 1
       48 JUMPIFLT                         R5 R6 ; [+2]
       50 LOADB                            R4 0 +1
       51 LOADB                            R4 1
       52 RETURN                           R4 1

PROTO_1:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 GETIMPORT                        R3 K4 [table.sort]
        6 MOVE                             R4 R2
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R1
        9 CALL                             R3 2 0
       10 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_1]
       15 RETURN                           R2 1
