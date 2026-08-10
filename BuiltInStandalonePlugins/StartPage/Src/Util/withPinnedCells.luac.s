PROTO_0:
        0 LENGTH                           R3 R1
        1 JUMPIFNOTEQKN                    R3 K0 [0] ; [+2]
        3 RETURN                           R0 1
        4 NEWTABLE                         R3 0 0
        6 MOVE                             R4 R1
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 GETTABLEKS                       R9 R8 K1 ["Id"]
       12 JUMPIFNOT                        R9 ; [+4]
       13 GETTABLEKS                       R9 R8 K1 ["Id"]
       15 LOADB                            R10 1
       16 SETTABLE                         R10 R3 R9
       17 FORGLOOP                         R4 2 ; [-8]
       19 NEWTABLE                         R4 0 0
       21 NEWTABLE                         R5 0 0
       23 MOVE                             R6 R0
       24 LOADNIL                          R7
       25 LOADNIL                          R8
       26 FORGPREP                         R6
       27 GETTABLEKS                       R11 R10 K1 ["Id"]
       29 JUMPIFNOT                        R11 ; [+8]
       30 GETTABLEKS                       R12 R10 K1 ["Id"]
       32 GETTABLE                         R11 R3 R12
       33 JUMPIFNOT                        R11 ; [+4]
       34 GETTABLEKS                       R11 R10 K1 ["Id"]
       36 SETTABLE                         R10 R4 R11
       37 JUMP                             ; [+7]
       38 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       40 MOVE                             R12 R5
       41 MOVE                             R13 R10
       42 GETIMPORT                        R11 K4 [table.insert]
       44 CALL                             R11 2 0
       45 FORGLOOP                         R6 2 ; [-19]
       47 MOVE                             R6 R2
       48 JUMPIFNOT                        R6 ; [+2]
       49 GETTABLEKS                       R6 R2 K5 ["pageIndex"]
       51 JUMPIFEQKNIL                     R6 ; [+4]
       53 JUMPIFEQKN                       R6 K0 [0] ; [+2]
       55 RETURN                           R5 1
       56 NEWTABLE                         R7 0 0
       58 MOVE                             R8 R1
       59 LOADNIL                          R9
       60 LOADNIL                          R10
       61 FORGPREP                         R8
       62 GETTABLEKS                       R14 R12 K1 ["Id"]
       64 JUMPIFNOT                        R14 ; [+4]
       65 GETTABLEKS                       R14 R12 K1 ["Id"]
       67 GETTABLE                         R13 R4 R14
       68 JUMP                             ; [+1]
       69 LOADNIL                          R13
       70 OR                               R16 R13 R12
       71 FASTCALL2                        TABLE_INSERT R7 R16 ; [+4]
       73 MOVE                             R15 R7
       74 GETIMPORT                        R14 K4 [table.insert]
       76 CALL                             R14 2 0
       77 FORGLOOP                         R8 2 ; [-16]
       79 GETIMPORT                        R8 K7 [table.move]
       81 MOVE                             R9 R5
       82 LOADN                            R10 1
       83 LENGTH                           R11 R5
       84 LENGTH                           R13 R7
       85 ADDK                             R12 R13 K8 [1]
       86 MOVE                             R13 R7
       87 CALL                             R8 5 0
       88 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1
