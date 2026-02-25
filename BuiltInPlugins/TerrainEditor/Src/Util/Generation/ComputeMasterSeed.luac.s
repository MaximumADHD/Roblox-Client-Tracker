PROTO_0:
        0 LOADN                            R1 0
        1 LOADN                            R4 1
        2 LENGTH                           R2 R0
        3 LOADN                            R3 1
        4 FORNPREP                         R2
        5 MOVE                             R7 R4
        6 MOVE                             R8 R4
        7 NAMECALL                         R5 R0 K0 ["sub"]
        9 CALL                             R5 3 1
       10 FASTCALL1                        TONUMBER R5 ; [+3]
       11 MOVE                             R7 R5
       12 GETIMPORT                        R6 K2 [tonumber]
       14 CALL                             R6 1 1
       15 JUMPIFNOT                        R6 ; [+4]
       16 ADDK                             R7 R1 K3 [6]
       17 ADDK                             R8 R6 K4 [5]
       18 MUL                              R1 R7 R8
       19 JUMP                             ; [+6]
       20 ADDK                             R7 R1 K5 [7]
       21 NAMECALL                         R9 R5 K7 ["byte"]
       23 CALL                             R9 1 1
       24 ADDK                             R8 R9 K6 [3]
       25 MUL                              R1 R7 R8
       26 MODK                             R1 R1 K8 [61803]
       27 FORNLOOP                         R2
       28 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
