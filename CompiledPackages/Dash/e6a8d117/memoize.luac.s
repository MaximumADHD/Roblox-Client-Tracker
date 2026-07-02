PROTO_0:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [table.pack]
        3 GETVARARGS                       R1 -1
        4 CALL                             R0 -1 1
        5 LOADNIL                          R1
        6 GETUPVAL                         R2 0
        7 JUMPIFNOT                        R2 ; [+5]
        8 GETUPVAL                         R2 0
        9 GETVARARGS                       R3 -1
       10 CALL                             R2 -1 1
       11 MOVE                             R1 R2
       12 JUMP                             ; [+16]
       13 LOADK                            R1 K3 [""]
       14 LOADN                            R4 1
       15 GETTABLEKS                       R2 R0 K4 ["n"]
       17 LOADN                            R3 1
       18 FORNPREP                         R2
       19 MOVE                             R5 R1
       20 GETTABLE                         R9 R0 R4
       21 FASTCALL1                        TOSTRING R9 ; [+2]
       22 GETIMPORT                        R8 K6 [tostring]
       24 CALL                             R8 1 1
       25 MOVE                             R6 R8
       26 LOADK                            R7 K7 ["|"]
       27 CONCAT                           R1 R5 R7
       28 FORNLOOP                         R2
       29 GETUPVAL                         R3 1
       30 GETTABLE                         R2 R3 R1
       31 JUMPIFNOTEQKNIL                  R2 ; [+6]
       33 GETUPVAL                         R2 1
       34 GETUPVAL                         R3 2
       35 GETVARARGS                       R4 -1
       36 CALL                             R3 -1 1
       37 SETTABLE                         R3 R2 R1
       38 GETUPVAL                         R3 1
       39 GETTABLE                         R2 R3 R1
       40 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["Expected a function as first argument"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 LOADB                            R3 1
       10 JUMPIFEQKNIL                     R1 ; [+4]
       12 GETUPVAL                         R3 0
       13 MOVE                             R4 R1
       14 CALL                             R3 1 1
       15 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       17 LOADK                            R4 K3 ["Expected a function or nil as second argument"]
       18 GETIMPORT                        R2 K2 [assert]
       20 CALL                             R2 2 0
       21 NEWTABLE                         R2 0 0
       23 NEWCLOSURE                       R3 P0
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R0
       27 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["isCallable"]
        9 CALL                             R1 1 1
       10 DUPCLOSURE                       R2 K6 [PROTO_1]
       11 CAPTURE                          VAL R1
       12 RETURN                           R2 1
