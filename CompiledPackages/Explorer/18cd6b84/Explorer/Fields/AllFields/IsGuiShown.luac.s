PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADB                            R1 1
        3 RETURN                           R1 1
        4 GETTABLEKS                       R1 R0 K0 ["ShowDevelopmentGui"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["ShowDevelopmentGui"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+15]
        1 GETUPVAL                         R1 0
        2 JUMPIFNOTEQKNIL                  R1 ; [+13]
        4 LOADK                            R3 K0 ["ShowDevelopmentGui"]
        5 NAMECALL                         R1 R0 K1 ["GetPropertyChangedSignal"]
        7 CALL                             R1 2 1
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R0
       11 NAMECALL                         R1 R1 K2 ["Connect"]
       13 CALL                             R1 2 1
       14 SETUPVAL                         R1 0
       15 RETURN                           R0 0
       16 JUMPIF                           R0 ; [+8]
       17 GETUPVAL                         R1 0
       18 JUMPIFNOT                        R1 ; [+6]
       19 GETUPVAL                         R1 0
       20 NAMECALL                         R1 R1 K3 ["Disconnect"]
       22 CALL                             R1 1 0
       23 LOADNIL                          R1
       24 SETUPVAL                         R1 0
       25 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["StarterGui"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstAncestorWhichIsA"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 2
        9 JUMPIFNOTEQKNIL                  R0 ; [+3]
       11 LOADB                            R2 1
       12 JUMP                             ; [+2]
       13 GETTABLEKS                       R2 R0 K2 ["ShowDevelopmentGui"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

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
        5 LOADNIL                          R5
        6 LOADK                            R8 K0 ["StarterGui"]
        7 NAMECALL                         R6 R0 K1 ["IsA"]
        9 CALL                             R6 2 1
       10 JUMPIFNOT                        R6 ; [+10]
       11 JUMPIFNOTEQKNIL                  R0 ; [+3]
       13 LOADB                            R4 1
       14 JUMP                             ; [+2]
       15 GETTABLEKS                       R4 R0 K2 ["ShowDevelopmentGui"]
       17 MOVE                             R6 R3
       18 MOVE                             R7 R0
       19 CALL                             R6 1 0
       20 JUMP                             ; [+23]
       21 LOADK                            R8 K0 ["StarterGui"]
       22 NAMECALL                         R6 R0 K3 ["FindFirstAncestorWhichIsA"]
       24 CALL                             R6 2 1
       25 JUMPIFNOTEQKNIL                  R6 ; [+3]
       27 LOADB                            R4 1
       28 JUMP                             ; [+2]
       29 GETTABLEKS                       R4 R6 K2 ["ShowDevelopmentGui"]
       31 MOVE                             R7 R3
       32 MOVE                             R8 R6
       33 CALL                             R7 1 0
       34 GETTABLEKS                       R7 R0 K4 ["AncestryChanged"]
       36 NEWCLOSURE                       R9 P1
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R1
       40 NAMECALL                         R7 R7 K5 ["Connect"]
       42 CALL                             R7 2 1
       43 MOVE                             R5 R7
       44 MOVE                             R6 R4
       45 NEWCLOSURE                       R7 P2
       46 CAPTURE                          REF R5
       47 CAPTURE                          REF R2
       48 CLOSEUPVALS                      R2
       49 RETURN                           R6 2

PROTO_6:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Fields"]
       11 GETTABLEKS                       R2 R2 K7 ["FieldTypes"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 DUPCLOSURE                       R3 K9 [PROTO_5]
       16 DUPTABLE                         R4 K18 [{["key"] = "isGuiShown", ["icon"] = "", ["watch"], ["validateArgs"], ["permanent"] = True}]
       17 SETTABLEKS                       R3 R4 K14 ["watch"]
       19 DUPCLOSURE                       R5 K19 [PROTO_6]
       20 SETTABLEKS                       R5 R4 K15 ["validateArgs"]
       22 RETURN                           R4 1
