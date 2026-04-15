PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R2 1
        3 LOADN                            R5 1
        4 LENGTH                           R3 R0
        5 LOADN                            R4 1
        6 FORNPREP                         R3
        7 GETTABLE                         R6 R0 R5
        8 GETTABLEKS                       R7 R6 K0 ["isBlock"]
       10 JUMPIF                           R7 ; [+4]
       11 GETTABLEKS                       R7 R6 K1 ["name"]
       13 JUMPIFNOTEQKS                    R7 K2 ["LINE_BREAK"] ; [+31]
       15 JUMPIFNOTLT                      R2 R5 ; [+21]
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R7 R8 K3 ["processEmphasisRun"]
       20 MOVE                             R8 R0
       21 MOVE                             R9 R2
       22 SUBK                             R10 R5 K4 [1]
       23 CALL                             R7 3 1
       24 MOVE                             R8 R7
       25 LOADNIL                          R9
       26 LOADNIL                          R10
       27 FORGPREP                         R8
       28 FASTCALL2                        TABLE_INSERT R1 R12 ; [+5]
       30 MOVE                             R14 R1
       31 MOVE                             R15 R12
       32 GETIMPORT                        R13 K7 [table.insert]
       34 CALL                             R13 2 0
       35 FORGLOOP                         R8 2 ; [-8]
       37 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       39 MOVE                             R8 R1
       40 MOVE                             R9 R6
       41 GETIMPORT                        R7 K7 [table.insert]
       43 CALL                             R7 2 0
       44 ADDK                             R2 R5 K4 [1]
       45 FORNLOOP                         R3
       46 LENGTH                           R3 R0
       47 JUMPIFNOTLE                      R2 R3 ; [+21]
       49 GETUPVAL                         R4 0
       50 GETTABLEKS                       R3 R4 K3 ["processEmphasisRun"]
       52 MOVE                             R4 R0
       53 MOVE                             R5 R2
       54 LENGTH                           R6 R0
       55 CALL                             R3 3 1
       56 MOVE                             R4 R3
       57 LOADNIL                          R5
       58 LOADNIL                          R6
       59 FORGPREP                         R4
       60 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       62 MOVE                             R10 R1
       63 MOVE                             R11 R8
       64 GETIMPORT                        R9 K7 [table.insert]
       66 CALL                             R9 2 0
       67 FORGLOOP                         R4 2 ; [-8]
       69 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R4 K3 [script]
        5 GETTABLEKS                       R3 R4 K4 ["Parent"]
        7 GETTABLEKS                       R2 R3 K4 ["Parent"]
        9 GETTABLEKS                       R1 R2 K5 ["Types"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R4 K3 [script]
       16 GETTABLEKS                       R3 R4 K4 ["Parent"]
       18 GETTABLEKS                       R2 R3 K6 ["EmphasisParser"]
       20 CALL                             R1 1 1
       21 NEWTABLE                         R2 1 0
       23 DUPCLOSURE                       R3 K7 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 SETTABLEKS                       R3 R2 K8 ["postProcessTokens"]
       27 GETTABLEKS                       R3 R2 K8 ["postProcessTokens"]
       29 RETURN                           R3 1
