PROTO_0:
        0 PREPVARARGS                      4
        1 JUMPIFEQKNIL                     R1 ; [+22]
        3 FASTCALL1                        TYPEOF R1 ; [+3]
        4 MOVE                             R5 R1
        5 GETIMPORT                        R4 K1 [typeof]
        7 CALL                             R4 1 1
        8 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+15]
       10 GETIMPORT                        R4 K4 [pairs]
       12 MOVE                             R5 R1
       13 CALL                             R4 1 3
       14 FORGPREP_NEXT                    R4
       15 GETUPVAL                         R9 0
       16 JUMPIFNOTEQ                      R8 R9 ; [+4]
       18 LOADNIL                          R9
       19 SETTABLE                         R9 R0 R7
       20 JUMP                             ; [+1]
       21 SETTABLE                         R8 R0 R7
       22 FORGLOOP                         R4 2 ; [-8]
       24 JUMPIFEQKNIL                     R2 ; [+22]
       26 FASTCALL1                        TYPEOF R2 ; [+3]
       27 MOVE                             R5 R2
       28 GETIMPORT                        R4 K1 [typeof]
       30 CALL                             R4 1 1
       31 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+15]
       33 GETIMPORT                        R4 K4 [pairs]
       35 MOVE                             R5 R2
       36 CALL                             R4 1 3
       37 FORGPREP_NEXT                    R4
       38 GETUPVAL                         R9 0
       39 JUMPIFNOTEQ                      R8 R9 ; [+4]
       41 LOADNIL                          R9
       42 SETTABLE                         R9 R0 R7
       43 JUMP                             ; [+1]
       44 SETTABLE                         R8 R0 R7
       45 FORGLOOP                         R4 2 ; [-8]
       47 JUMPIFEQKNIL                     R3 ; [+22]
       49 FASTCALL1                        TYPEOF R3 ; [+3]
       50 MOVE                             R5 R3
       51 GETIMPORT                        R4 K1 [typeof]
       53 CALL                             R4 1 1
       54 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+15]
       56 GETIMPORT                        R4 K4 [pairs]
       58 MOVE                             R5 R3
       59 CALL                             R4 1 3
       60 FORGPREP_NEXT                    R4
       61 GETUPVAL                         R9 0
       62 JUMPIFNOTEQ                      R8 R9 ; [+4]
       64 LOADNIL                          R9
       65 SETTABLE                         R9 R0 R7
       66 JUMP                             ; [+1]
       67 SETTABLE                         R8 R0 R7
       68 FORGLOOP                         R4 2 ; [-8]
       70 LOADN                            R6 1
       71 LOADK                            R8 K5 ["#"]
       72 FASTCALL1                        SELECT_VARARG R8 ; [+3]
       73 GETIMPORT                        R7 K7 [select]
       75 GETVARARGS                       R9 -1
       76 CALL                             R7 -1 1
       77 MOVE                             R4 R7
       78 LOADN                            R5 1
       79 FORNPREP                         R4
       80 FASTCALL1                        SELECT_VARARG R6 ; [+4]
       81 GETIMPORT                        R7 K7 [select]
       83 MOVE                             R8 R6
       84 GETVARARGS                       R9 -1
       85 CALL                             R7 -1 1
       86 JUMPIFEQKNIL                     R7 ; [+22]
       88 FASTCALL1                        TYPEOF R7 ; [+3]
       89 MOVE                             R9 R7
       90 GETIMPORT                        R8 K1 [typeof]
       92 CALL                             R8 1 1
       93 JUMPIFNOTEQKS                    R8 K2 ["table"] ; [+15]
       95 GETIMPORT                        R8 K4 [pairs]
       97 MOVE                             R9 R7
       98 CALL                             R8 1 3
       99 FORGPREP_NEXT                    R8
      100 GETUPVAL                         R13 0
      101 JUMPIFNOTEQ                      R12 R13 ; [+4]
      103 LOADNIL                          R13
      104 SETTABLE                         R13 R0 R11
      105 JUMP                             ; [+1]
      106 SETTABLE                         R12 R0 R11
      107 FORGLOOP                         R8 2 ; [-8]
      109 FORNLOOP                         R4
      110 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["None"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_0]
       11 CAPTURE                          VAL R0
       12 RETURN                           R1 1
