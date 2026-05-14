PROTO_0:
        0 PREPVARARGS                      0
        1 LOADK                            R1 K0 ["#"]
        2 FASTCALL1                        SELECT_VARARG R1 ; [+3]
        3 GETIMPORT                        R0 K2 [select]
        5 GETVARARGS                       R2 -1
        6 CALL                             R0 -1 1
        7 JUMPIFNOTEQKN                    R0 K3 [0] ; [+4]
        9 NEWTABLE                         R1 0 0
       11 RETURN                           R1 1
       12 JUMPIFNOTEQKN                    R0 K4 [1] ; [+13]
       14 GETIMPORT                        R1 K7 [table.clone]
       16 GETVARARGS                       R2 -1
       17 CALL                             R1 -1 1
       18 FASTCALL2K                       SETMETATABLE R1 K8 ; [+5]
       20 MOVE                             R3 R1
       21 LOADK                            R4 K8 []
       22 GETIMPORT                        R2 K10 [setmetatable]
       24 CALL                             R2 2 0
       25 RETURN                           R1 1
       26 GETIMPORT                        R1 K7 [table.clone]
       28 GETIMPORT                        R2 K2 [select]
       30 LOADN                            R3 1
       31 GETVARARGS                       R4 -1
       32 CALL                             R2 -1 -1
       33 CALL                             R1 -1 1
       34 FASTCALL2K                       SETMETATABLE R1 K8 ; [+5]
       36 MOVE                             R3 R1
       37 LOADK                            R4 K8 []
       38 GETIMPORT                        R2 K10 [setmetatable]
       40 CALL                             R2 2 0
       41 LOADN                            R4 2
       42 MOVE                             R2 R0
       43 LOADN                            R3 1
       44 FORNPREP                         R2
       45 FASTCALL1                        SELECT_VARARG R4 ; [+4]
       46 GETIMPORT                        R5 K2 [select]
       48 MOVE                             R6 R4
       49 GETVARARGS                       R7 -1
       50 CALL                             R5 -1 1
       51 GETIMPORT                        R6 K12 [pairs]
       53 MOVE                             R7 R5
       54 CALL                             R6 1 3
       55 FORGPREP_NEXT                    R6
       56 GETUPVAL                         R11 0
       57 JUMPIFNOTEQ                      R10 R11 ; [+4]
       59 LOADNIL                          R11
       60 SETTABLE                         R11 R1 R9
       61 JUMP                             ; [+1]
       62 SETTABLE                         R10 R1 R9
       63 FORGLOOP                         R6 2 ; [-8]
       65 FORNLOOP                         R2
       66 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["None"]
       11 CALL                             R0 1 1
       12 DUPCLOSURE                       R1 K6 [PROTO_0]
       13 CAPTURE                          VAL R0
       14 RETURN                           R1 1
