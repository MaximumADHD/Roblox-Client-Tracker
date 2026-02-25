PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+11]
        3 GETUPVAL                         R2 1
        4 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        6 LOADK                            R3 K0 ["Json.encode is not setup"]
        7 GETIMPORT                        R1 K2 [assert]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 1
       11 MOVE                             R2 R0
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1
       14 GETUPVAL                         R1 2
       15 MOVE                             R3 R0
       16 NAMECALL                         R1 R1 K3 ["JSONEncode"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+11]
        3 GETUPVAL                         R2 1
        4 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        6 LOADK                            R3 K0 ["Json.decode is not setup"]
        7 GETIMPORT                        R1 K2 [assert]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 1
       11 MOVE                             R2 R0
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1
       14 GETUPVAL                         R1 2
       15 MOVE                             R3 R0
       16 NAMECALL                         R1 R1 K3 ["JSONDecode"]
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1

PROTO_2:
        0 SETUPVAL                         R0 0
        1 SETUPVAL                         R1 1
        2 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ModelContextProtocol"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Flags"]
       17 GETTABLEKS                       R3 R4 K11 ["FFlagAssistantJsonEncoder"]
       19 CALL                             R2 1 1
       20 NEWTABLE                         R3 4 0
       22 LOADNIL                          R4
       23 LOADNIL                          R5
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          VAL R2
       26 CAPTURE                          REF R4
       27 CAPTURE                          VAL R1
       28 SETTABLEKS                       R6 R3 K12 ["encode"]
       30 NEWCLOSURE                       R6 P1
       31 CAPTURE                          VAL R2
       32 CAPTURE                          REF R5
       33 CAPTURE                          VAL R1
       34 SETTABLEKS                       R6 R3 K13 ["decode"]
       36 NEWCLOSURE                       R6 P2
       37 CAPTURE                          REF R4
       38 CAPTURE                          REF R5
       39 SETTABLEKS                       R6 R3 K14 ["setup"]
       41 CLOSEUPVALS                      R4
       42 RETURN                           R3 1
