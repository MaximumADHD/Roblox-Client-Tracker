PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 LOADK                            R4 K2 ["string"]
        7 LOADK                            R5 K3 ["Attempted to call Dash.splitOn with argument #1 of type {left:?} not {right:?}"]
        8 CALL                             R2 3 0
        9 GETUPVAL                         R2 0
       10 FASTCALL1                        TYPEOF R1 ; [+3]
       11 MOVE                             R4 R1
       12 GETIMPORT                        R3 K1 [typeof]
       14 CALL                             R3 1 1
       15 LOADK                            R4 K2 ["string"]
       16 LOADK                            R5 K4 ["Attempted to call Dash.splitOn with argument #2 of type {left:?} not {right:?}"]
       17 CALL                             R2 3 0
       18 NEWTABLE                         R2 0 0
       20 NEWTABLE                         R3 0 0
       22 LOADN                            R4 1
       23 JUMPIF                           R1 ; [+15]
       24 LOADN                            R7 1
       25 LENGTH                           R5 R0
       26 LOADN                            R6 1
       27 FORNPREP                         R5
       28 MOVE                             R9 R2
       29 MOVE                             R12 R7
       30 MOVE                             R13 R7
       31 NAMECALL                         R10 R0 K5 ["sub"]
       33 CALL                             R10 3 -1
       34 FASTCALL                         TABLE_INSERT ; [+1]
       35 GETUPVAL                         R8 1
       36 CALL                             R8 -1 0
       37 FORNLOOP                         R5
       38 RETURN                           R2 1
       39 MOVE                             R7 R1
       40 MOVE                             R8 R4
       41 NAMECALL                         R5 R0 K6 ["find"]
       43 CALL                             R5 3 2
       44 JUMPIFNOT                        R5 ; [+27]
       45 MOVE                             R8 R3
       46 MOVE                             R11 R5
       47 MOVE                             R12 R6
       48 NAMECALL                         R9 R0 K5 ["sub"]
       50 CALL                             R9 3 -1
       51 FASTCALL                         TABLE_INSERT ; [+1]
       52 GETUPVAL                         R7 1
       53 CALL                             R7 -1 0
       54 MOVE                             R8 R2
       55 MOVE                             R11 R4
       56 SUBK                             R12 R5 K7 [1]
       57 NAMECALL                         R9 R0 K5 ["sub"]
       59 CALL                             R9 3 -1
       60 FASTCALL                         TABLE_INSERT ; [+1]
       61 GETUPVAL                         R7 1
       62 CALL                             R7 -1 0
       63 ADDK                             R4 R6 K7 [1]
       64 MOVE                             R9 R1
       65 MOVE                             R10 R4
       66 NAMECALL                         R7 R0 K6 ["find"]
       68 CALL                             R7 3 2
       69 MOVE                             R5 R7
       70 MOVE                             R6 R8
       71 JUMPBACK                         ; [-28]
       72 MOVE                             R8 R2
       73 MOVE                             R11 R4
       74 NAMECALL                         R9 R0 K5 ["sub"]
       76 CALL                             R9 2 -1
       77 FASTCALL                         TABLE_INSERT ; [+1]
       78 GETUPVAL                         R7 1
       79 CALL                             R7 -1 0
       80 RETURN                           R2 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["assertEqual"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K8 [table.insert]
       12 DUPCLOSURE                       R3 K9 [PROTO_0]
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R2
       15 RETURN                           R3 1
