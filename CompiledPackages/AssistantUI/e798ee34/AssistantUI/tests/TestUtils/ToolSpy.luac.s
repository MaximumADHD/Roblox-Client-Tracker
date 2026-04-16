PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["spyOn"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["handler"]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R4 R0 K2 ["definition"]
        9 GETTABLEKS                       R3 R4 K3 ["name"]
       11 SETTABLE                         R1 R2 R3
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+2]
        3 LOADB                            R2 0
        4 RETURN                           R2 1
        5 GETTABLEKS                       R3 R1 K0 ["mock"]
        7 GETTABLEKS                       R2 R3 K1 ["calls"]
        9 JUMPIFNOT                        R2 ; [+10]
       10 GETTABLEKS                       R5 R1 K0 ["mock"]
       12 GETTABLEKS                       R4 R5 K1 ["calls"]
       14 LENGTH                           R3 R4
       15 LOADN                            R4 0
       16 JUMPIFLT                         R4 R3 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIF                           R2 ; [+2]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 GETTABLEKS                       R6 R2 K0 ["mock"]
        7 GETTABLEKS                       R3 R6 K1 ["calls"]
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 GETUPVAL                         R10 1
       13 GETTABLEKS                       R9 R10 K2 ["Dictionary"]
       15 GETTABLEKS                       R8 R9 K3 ["equals"]
       17 GETTABLEN                        R9 R7 1
       18 MOVE                             R10 R1
       19 CALL                             R8 2 1
       20 JUMPIFNOT                        R8 ; [+2]
       21 LOADB                            R8 1
       22 RETURN                           R8 1
       23 FORGLOOP                         R3 2 ; [-12]
       25 LOADB                            R3 0
       26 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["AssistantUI"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R4 R1 K6 ["Parent"]
       13 GETTABLEKS                       R3 R4 K7 ["Cryo"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R5 R1 K6 ["Parent"]
       20 GETTABLEKS                       R4 R5 K8 ["ModelContextProtocol"]
       22 CALL                             R3 1 1
       23 LOADK                            R7 K9 ["Packages"]
       24 NAMECALL                         R5 R1 K3 ["FindFirstAncestor"]
       26 CALL                             R5 2 1
       27 GETTABLEKS                       R4 R5 K10 ["Dev"]
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R6 R4 K11 ["JestGlobals"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R5 K12 ["jest"]
       36 NEWTABLE                         R7 0 0
       38 DUPCLOSURE                       R8 K13 [PROTO_0]
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R7
       41 SETTABLEKS                       R8 R0 K14 ["spyHandler"]
       43 DUPCLOSURE                       R8 K15 [PROTO_1]
       44 CAPTURE                          VAL R7
       45 SETTABLEKS                       R8 R0 K16 ["wasInvoked"]
       47 DUPCLOSURE                       R8 K17 [PROTO_2]
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R2
       50 SETTABLEKS                       R8 R0 K18 ["invokedWith"]
       52 RETURN                           R0 1
