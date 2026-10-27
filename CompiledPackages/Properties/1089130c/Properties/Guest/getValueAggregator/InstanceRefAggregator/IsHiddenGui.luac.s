PROTO_0:
        0 LOADK                            R3 K0 ["StarterGui"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETTABLEKS                       R2 R0 K2 ["ShowDevelopmentGui"]
        7 NOT                              R1 R2
        8 RETURN                           R1 1
        9 LOADK                            R3 K0 ["StarterGui"]
       10 NAMECALL                         R1 R0 K3 ["FindFirstAncestorWhichIsA"]
       12 CALL                             R1 2 1
       13 LOADB                            R2 0
       14 JUMPIFEQKNIL                     R1 ; [+4]
       16 GETTABLEKS                       R3 R1 K2 ["ShowDevelopmentGui"]
       18 NOT                              R2 R3
       19 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+14]
        1 GETUPVAL                         R1 0
        2 JUMPIFNOTEQKNIL                  R1 ; [+12]
        4 LOADK                            R3 K0 ["ShowDevelopmentGui"]
        5 NAMECALL                         R1 R0 K1 ["GetPropertyChangedSignal"]
        7 CALL                             R1 2 1
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U1
       10 NAMECALL                         R1 R1 K2 ["Connect"]
       12 CALL                             R1 2 1
       13 SETUPVAL                         R1 0
       14 RETURN                           R0 0
       15 JUMPIF                           R0 ; [+8]
       16 GETUPVAL                         R1 0
       17 JUMPIFNOT                        R1 ; [+6]
       18 GETUPVAL                         R1 0
       19 NAMECALL                         R1 R1 K3 ["Disconnect"]
       21 CALL                             R1 1 0
       22 LOADNIL                          R1
       23 SETUPVAL                         R1 0
       24 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADK                            R3 K0 ["StarterGui"]
        3 NAMECALL                         R1 R1 K1 ["FindFirstAncestorWhichIsA"]
        5 CALL                             R1 2 -1
        6 CALL                             R0 -1 0
        7 GETUPVAL                         R0 2
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R0 1
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_5:
        0 LOADNIL                          R2
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          REF R2
        3 CAPTURE                          VAL R1
        4 LOADNIL                          R4
        5 LOADK                            R7 K0 ["StarterGui"]
        6 NAMECALL                         R5 R0 K1 ["IsA"]
        8 CALL                             R5 2 1
        9 JUMPIFNOT                        R5 ; [+4]
       10 MOVE                             R5 R3
       11 MOVE                             R6 R0
       12 CALL                             R5 1 0
       13 JUMP                             ; [+16]
       14 MOVE                             R5 R3
       15 LOADK                            R8 K0 ["StarterGui"]
       16 NAMECALL                         R6 R0 K2 ["FindFirstAncestorWhichIsA"]
       18 CALL                             R6 2 -1
       19 CALL                             R5 -1 0
       20 GETTABLEKS                       R5 R0 K3 ["AncestryChanged"]
       22 NEWCLOSURE                       R7 P1
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R1
       26 NAMECALL                         R5 R5 K4 ["Connect"]
       28 CALL                             R5 2 1
       29 MOVE                             R4 R5
       30 NEWCLOSURE                       R5 P2
       31 CAPTURE                          REF R4
       32 CAPTURE                          REF R2
       33 CLOSEUPVALS                      R2
       34 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["FieldTypes"]
        9 CALL                             R0 1 1
       10 DUPTABLE                         R1 K8 [{"getValue", "watch"}]
       11 DUPCLOSURE                       R2 K9 [PROTO_0]
       12 SETTABLEKS                       R2 R1 K6 ["getValue"]
       14 DUPCLOSURE                       R2 K10 [PROTO_5]
       15 SETTABLEKS                       R2 R1 K7 ["watch"]
       17 RETURN                           R1 1
