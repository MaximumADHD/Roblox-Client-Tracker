PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_INEXT                   R2
        7 GETTABLE                         R7 R1 R6
        8 JUMPIFEQKNIL                     R7 ; [+6]
       10 GETIMPORT                        R7 K3 [error]
       12 LOADK                            R8 K4 ["convertArrayToTable: sourceArray should not contain duplicate values"]
       13 CALL                             R7 1 0
       14 JUMP                             ; [+1]
       15 SETTABLE                         R6 R1 R6
       16 FORGLOOP                         R2 2 [inext] ; [-10]
       18 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
