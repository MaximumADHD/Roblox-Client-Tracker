PROTO_0:
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetWindowTitleAsync"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R1 ; [+5]
        6 GETUPVAL                         R1 2
        7 JUMPIF                           R1 ; [+3]
        8 GETUPVAL                         R1 3
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["WindowChromeController"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 1
        5 LOADB                            R1 1
        6 LOADB                            R2 0
        7 GETTABLEKS                       R3 R0 K2 ["WindowTitleChanged"]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          REF R2
       11 CAPTURE                          UPVAL U1
       12 NAMECALL                         R3 R3 K3 ["Connect"]
       14 CALL                             R3 2 1
       15 GETIMPORT                        R4 K6 [task.spawn]
       17 NEWCLOSURE                       R5 P1
       18 CAPTURE                          VAL R0
       19 CAPTURE                          REF R1
       20 CAPTURE                          REF R2
       21 CAPTURE                          UPVAL U1
       22 CALL                             R4 1 0
       23 NEWCLOSURE                       R4 P2
       24 CAPTURE                          REF R1
       25 CAPTURE                          VAL R3
       26 CLOSEUPVALS                      R1
       27 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useEffect"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R2
       11 NEWTABLE                         R5 0 1
       13 MOVE                             R6 R0
       14 SETLIST                          R5 R6 1 [1]
       16 CALL                             R3 2 0
       17 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_4]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
