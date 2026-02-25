PROTO_0:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 MOVE                             R2 R1
        6 JUMPIF                           R2 ; [+2]
        7 NEWTABLE                         R2 0 0
        9 MOVE                             R1 R2
       10 NEWTABLE                         R2 0 0
       12 GETIMPORT                        R3 K1 [pairs]
       14 MOVE                             R4 R0
       15 CALL                             R3 1 3
       16 FORGPREP_NEXT                    R3
       17 GETTABLE                         R8 R1 R6
       18 JUMPIFNOTEQKNIL                  R8 ; [+2]
       20 SETTABLE                         R7 R2 R6
       21 FORGLOOP                         R3 2 ; [-5]
       23 GETIMPORT                        R3 K1 [pairs]
       25 MOVE                             R4 R1
       26 CALL                             R3 1 3
       27 FORGPREP_NEXT                    R3
       28 FASTCALL1                        TYPE R7 ; [+3]
       29 MOVE                             R9 R7
       30 GETIMPORT                        R8 K3 [type]
       32 CALL                             R8 1 1
       33 JUMPIFNOTEQKS                    R8 K4 ["table"] ; [+27]
       35 GETTABLE                         R8 R0 R6
       36 JUMPIFEQKNIL                     R8 ; [+16]
       38 GETTABLE                         R9 R0 R6
       39 FASTCALL1                        TYPE R9 ; [+2]
       40 GETIMPORT                        R8 K3 [type]
       42 CALL                             R8 1 1
       43 JUMPIFNOTEQKS                    R8 K4 ["table"] ; [+9]
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R8 R9 K5 ["Merge"]
       48 GETTABLE                         R9 R0 R6
       49 MOVE                             R10 R7
       50 CALL                             R8 2 1
       51 SETTABLE                         R8 R2 R6
       52 JUMP                             ; [+17]
       53 GETUPVAL                         R9 0
       54 GETTABLEKS                       R8 R9 K5 ["Merge"]
       56 LOADNIL                          R9
       57 MOVE                             R10 R7
       58 CALL                             R8 2 1
       59 SETTABLE                         R8 R2 R6
       60 JUMP                             ; [+9]
       61 GETUPVAL                         R9 1
       62 GETTABLEKS                       R8 R9 K6 ["None"]
       64 JUMPIFNOTEQ                      R7 R8 ; [+4]
       66 LOADNIL                          R8
       67 SETTABLE                         R8 R2 R6
       68 JUMP                             ; [+1]
       69 SETTABLE                         R7 R2 R6
       70 FORGLOOP                         R3 2 ; [-43]
       72 GETIMPORT                        R3 K8 [next]
       74 MOVE                             R4 R2
       75 CALL                             R3 1 1
       76 JUMPIFNOTEQKNIL                  R3 ; [+3]
       78 LOADNIL                          R3
       79 RETURN                           R3 1
       80 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 1 0
       18 DUPCLOSURE                       R3 K7 [PROTO_0]
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R3 R2 K8 ["Merge"]
       23 RETURN                           R2 1
