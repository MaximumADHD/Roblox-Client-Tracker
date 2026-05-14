PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 LOADNIL                          R2
        4 GETTABLEKS                       R3 R1 K1 ["toolEnabled"]
        6 JUMPIFNOT                        R3 ; [+10]
        7 GETTABLEKS                       R3 R1 K2 ["relativeTo"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K3 ["Active"]
       12 JUMPIFEQ                         R3 R4 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 JUMP                             ; [+1]
       17 LOADB                            R2 0
       18 GETUPVAL                         R3 1
       19 SETTABLEKS                       R2 R3 K4 ["ShowActiveInstanceHighlight"]
       21 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Src"]
       19 GETTABLEKS                       R3 R3 K10 ["Utility"]
       21 GETTABLEKS                       R3 R3 K11 ["RelativeTo"]
       23 CALL                             R2 1 1
       24 DUPCLOSURE                       R3 K12 [PROTO_1]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R0
       27 RETURN                           R3 1
