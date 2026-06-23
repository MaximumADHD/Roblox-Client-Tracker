PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 GETTABLEKS                       R1 R0 K0 ["type"]
       11 RETURN                           R1 1

PROTO_1:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["table"] ; [+3]
        7 LOADNIL                          R1
        8 JUMP                             ; [+2]
        9 GETTABLEKS                       R1 R0 K0 ["type"]
       11 GETUPVAL                         R2 0
       12 JUMPIFNOTEQ                      R1 R2 ; [+3]
       14 LOADB                            R1 1
       15 SETUPVAL                         R1 1
       16 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["Children"]
        4 GETTABLEKS                       R2 R2 K1 ["forEach"]
        6 MOVE                             R3 R0
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          REF R1
       10 CALL                             R2 2 0
       11 CLOSEUPVALS                      R1
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K4 ["Parent"]
       20 GETTABLEKS                       R4 R4 K8 ["FullBleed"]
       22 CALL                             R3 1 1
       23 DUPCLOSURE                       R4 K9 [PROTO_0]
       24 DUPCLOSURE                       R5 K10 [PROTO_2]
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 RETURN                           R5 1
