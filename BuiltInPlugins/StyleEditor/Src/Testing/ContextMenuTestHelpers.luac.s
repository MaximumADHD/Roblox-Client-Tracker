PROTO_0:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+7]
        7 NEWTABLE                         R2 0 1
        9 MOVE                             R3 R1
       10 SETLIST                          R2 R3 1 [1]
       12 JUMP                             ; [+1]
       13 MOVE                             R2 R1
       14 LOADN                            R3 1
       15 MOVE                             R4 R0
       16 JUMPIFNOT                        R4 ; [+25]
       17 GETTABLEKS                       R5 R4 K3 ["Children"]
       19 JUMPIFNOT                        R5 ; [+22]
       20 LOADNIL                          R5
       21 GETTABLEKS                       R6 R4 K3 ["Children"]
       23 LOADNIL                          R7
       24 LOADNIL                          R8
       25 FORGPREP                         R6
       26 GETTABLEKS                       R11 R10 K4 ["Id"]
       28 GETTABLE                         R12 R2 R3
       29 JUMPIFNOTEQ                      R11 R12 ; [+8]
       31 LENGTH                           R11 R2
       32 JUMPIFNOTLE                      R11 R3 ; [+2]
       34 RETURN                           R10 1
       35 ADDK                             R3 R3 K5 [1]
       36 MOVE                             R5 R10
       37 JUMP                             ; [+2]
       38 FORGLOOP                         R6 2 ; [-13]
       40 MOVE                             R4 R5
       41 JUMPBACK                         ; [-26]
       42 LOADNIL                          R5
       43 RETURN                           R5 1

PROTO_1:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKS                    R3 K2 ["string"] ; [+7]
        7 NEWTABLE                         R2 0 1
        9 MOVE                             R3 R1
       10 SETLIST                          R2 R3 1 [1]
       12 JUMP                             ; [+1]
       13 MOVE                             R2 R1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K3 ["findItem"]
       17 MOVE                             R4 R0
       18 MOVE                             R5 R1
       19 CALL                             R3 2 1
       20 JUMPIF                           R3 ; [+10]
       21 GETIMPORT                        R4 K5 [error]
       23 LOADK                            R6 K6 ["Item does not exist: "]
       24 GETIMPORT                        R7 K9 [table.concat]
       26 MOVE                             R8 R2
       27 LOADK                            R9 K10 ["/"]
       28 CALL                             R7 2 1
       29 CONCAT                           R5 R6 R7
       30 CALL                             R4 1 0
       31 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 2 0
       18 DUPCLOSURE                       R3 K7 [PROTO_0]
       19 SETTABLEKS                       R3 R2 K8 ["findItem"]
       21 DUPCLOSURE                       R3 K9 [PROTO_1]
       22 CAPTURE                          VAL R2
       23 SETTABLEKS                       R3 R2 K10 ["getItem"]
       25 RETURN                           R2 1
