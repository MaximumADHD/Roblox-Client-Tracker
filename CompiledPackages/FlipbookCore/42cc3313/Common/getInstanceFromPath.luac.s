PROTO_0:
        0 LOADK                            R3 K0 ["/"]
        1 NAMECALL                         R1 R0 K1 ["split"]
        3 CALL                             R1 2 1
        4 GETTABLEN                        R2 R1 1
        5 JUMPIFEQKNIL                     R2 ; [+22]
        7 GETUPVAL                         R3 0
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 JUMPIFEQKNIL                     R3 ; [+17]
       12 LOADN                            R6 2
       13 LENGTH                           R4 R1
       14 LOADN                            R5 1
       15 FORNPREP                         R4
       16 GETTABLE                         R9 R1 R6
       17 NAMECALL                         R7 R3 K2 ["FindFirstChild"]
       19 CALL                             R7 2 1
       20 JUMPIFEQKNIL                     R7 ; [+3]
       22 MOVE                             R3 R7
       23 JUMP                             ; [+2]
       24 LOADNIL                          R8
       25 RETURN                           R8 1
       26 FORNLOOP                         R4
       27 RETURN                           R3 1
       28 LOADNIL                          R3
       29 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R5 K3 [script]
        5 GETTABLEKS                       R4 R5 K4 ["Parent"]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K5 ["Permissions"]
       11 GETTABLEKS                       R1 R2 K6 ["tryGetService"]
       13 CALL                             R0 1 1
       14 DUPCLOSURE                       R1 K7 [PROTO_0]
       15 CAPTURE                          VAL R0
       16 RETURN                           R1 1
