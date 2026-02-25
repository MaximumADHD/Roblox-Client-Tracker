PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 FASTCALL1                        TYPE R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K1 [type]
        8 CALL                             R1 1 1
        9 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
       11 LOADNIL                          R1
       12 RETURN                           R1 1
       13 GETTABLEKS                       R1 R0 K3 ["key"]
       15 JUMPIFEQKNIL                     R1 ; [+4]
       17 GETTABLEKS                       R1 R0 K3 ["key"]
       19 RETURN                           R1 1
       20 GETTABLEKS                       R1 R0 K4 ["props"]
       22 JUMPIFNOT                        R1 ; [+11]
       23 GETTABLEKS                       R2 R0 K4 ["props"]
       25 GETTABLEKS                       R1 R2 K3 ["key"]
       27 JUMPIFEQKNIL                     R1 ; [+6]
       29 GETTABLEKS                       R2 R0 K4 ["props"]
       31 GETTABLEKS                       R1 R2 K3 ["key"]
       33 RETURN                           R1 1
       34 LOADNIL                          R1
       35 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [math.random]
        2 LOADK                            R2 K3 [1000000]
        3 CALL                             R1 1 -1
        4 FASTCALL                         TOSTRING ; [+2]
        5 GETIMPORT                        R0 K5 [tostring]
        7 CALL                             R0 -1 1
        8 JUMPIFNOTEQKNIL                  R0 ; [+5]
       10 LOADK                            R2 K6 ["id-"]
       11 MOVE                             R3 R0
       12 CONCAT                           R1 R2 R3
       13 RETURN                           R1 1
       14 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isValidElement"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R2 1
        7 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        9 MOVE                             R3 R0
       10 GETIMPORT                        R1 K3 [table.insert]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["Children"]
        5 GETTABLEKS                       R2 R3 K1 ["forEach"]
        7 MOVE                             R3 R0
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R1
       11 CALL                             R2 2 0
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["React"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K6 [PROTO_0]
       15 DUPCLOSURE                       R4 K7 [PROTO_1]
       16 DUPCLOSURE                       R5 K8 [PROTO_3]
       17 CAPTURE                          VAL R2
       18 DUPTABLE                         R6 K12 [{"getChildKey", "onlyElements", "useIdFallback"}]
       19 SETTABLEKS                       R3 R6 K9 ["getChildKey"]
       21 SETTABLEKS                       R5 R6 K10 ["onlyElements"]
       23 SETTABLEKS                       R4 R6 K11 ["useIdFallback"]
       25 RETURN                           R6 1
