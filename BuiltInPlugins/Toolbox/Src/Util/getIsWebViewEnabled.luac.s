PROTO_0:
        0 JUMPIFNOT                        R2 ; [+2]
        1 LOADB                            R3 1
        2 RETURN                           R3 1
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 1
        5 LOADB                            R3 0
        6 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+3]
        3 GETUPVAL                         R1 0
        4 RETURN                           R1 1
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 1
        7 NOT                              R1 R2
        8 JUMPIFNOT                        R1 ; [+10]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K0 ["GetService"]
       12 LOADK                            R2 K1 ["RunService"]
       13 CALL                             R1 1 1
       14 NAMECALL                         R1 R1 K2 ["IsEdit"]
       16 CALL                             R1 1 1
       17 JUMPIFNOT                        R1 ; [+1]
       18 MOVE                             R1 R0
       19 SETUPVAL                         R1 0
       20 GETUPVAL                         R1 0
       21 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 JUMPIFEQKNIL                     R4 ; [+3]
        3 GETUPVAL                         R4 0
        4 RETURN                           R4 1
        5 GETUPVAL                         R5 1
        6 CALL                             R5 0 1
        7 NOT                              R4 R5
        8 JUMPIFNOT                        R4 ; [+17]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K0 ["GetService"]
       12 LOADK                            R5 K1 ["RunService"]
       13 CALL                             R4 1 1
       14 NAMECALL                         R4 R4 K2 ["IsEdit"]
       16 CALL                             R4 1 1
       17 JUMPIFNOT                        R4 ; [+8]
       18 MOVE                             R4 R0
       19 JUMPIFNOT                        R4 ; [+6]
       20 GETGLOBAL                        R4 K3 ["shouldShowUIGivenABTestAndOverrides"]
       22 MOVE                             R5 R1
       23 MOVE                             R6 R2
       24 MOVE                             R7 R3
       25 CALL                             R4 3 1
       26 SETUPVAL                         R4 0
       27 GETUPVAL                         R4 0
       28 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["isCli"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R1 K9 ["Services"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K7 [require]
       23 GETTABLEKS                       R5 R1 K10 ["SharedFlags"]
       25 GETTABLEKS                       R5 R5 K11 ["getFFlagToolboxRemoveWebViewIxp"]
       27 CALL                             R4 1 1
       28 LOADNIL                          R5
       29 MOVE                             R6 R4
       30 CALL                             R6 0 1
       31 JUMPIF                           R6 ; [+3]
       32 DUPCLOSURE                       R6 K12 [PROTO_0]
       33 SETGLOBAL                        R6 K13 ["shouldShowUIGivenABTestAndOverrides"]
       35 MOVE                             R6 R4
       36 CALL                             R6 0 1
       37 JUMPIFNOT                        R6 ; [+6]
       38 NEWCLOSURE                       R6 P1
       39 CAPTURE                          REF R5
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R3
       42 CLOSEUPVALS                      R5
       43 RETURN                           R6 1
       44 NEWCLOSURE                       R6 P2
       45 CAPTURE                          REF R5
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R3
       48 CLOSEUPVALS                      R5
       49 RETURN                           R6 1
