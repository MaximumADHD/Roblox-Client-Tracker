PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETUPVAL                         R1 0
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 GETUPVAL                         R7 1
       10 GETTABLE                         R6 R7 R5
       11 SETTABLE                         R6 R0 R5
       12 FORGLOOP                         R1 2 ; [-4]
       14 GETUPVAL                         R1 2
       15 LOADNIL                          R2
       16 LOADNIL                          R3
       17 FORGPREP                         R1
       18 LOADNIL                          R6
       19 SETTABLE                         R6 R0 R5
       20 FORGLOOP                         R1 2 ; [-3]
       22 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
        8 MOVE                             R7 R0
        9 MOVE                             R8 R4
       10 GETIMPORT                        R6 K2 [table.insert]
       12 CALL                             R6 2 0
       13 FORGLOOP                         R1 1 ; [-8]
       15 NEWTABLE                         R1 0 0
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K3 ["current"]
       20 LOADNIL                          R3
       21 LOADNIL                          R4
       22 FORGPREP                         R2
       23 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       25 MOVE                             R8 R1
       26 MOVE                             R9 R5
       27 GETIMPORT                        R7 K2 [table.insert]
       29 CALL                             R7 2 0
       30 FORGLOOP                         R2 1 ; [-8]
       32 GETUPVAL                         R2 2
       33 MOVE                             R3 R0
       34 MOVE                             R4 R1
       35 CALL                             R2 2 2
       36 GETUPVAL                         R4 1
       37 GETUPVAL                         R5 0
       38 SETTABLEKS                       R5 R4 K3 ["current"]
       40 LENGTH                           R4 R2
       41 JUMPIFNOTEQKN                    R4 K4 [0] ; [+5]
       43 LENGTH                           R4 R3
       44 JUMPIFNOTEQKN                    R4 K4 [0] ; [+2]
       46 RETURN                           R0 0
       47 NEWTABLE                         R4 0 0
       49 MOVE                             R5 R2
       50 LOADNIL                          R6
       51 LOADNIL                          R7
       52 FORGPREP                         R5
       53 GETUPVAL                         R10 3
       54 GETUPVAL                         R12 0
       55 GETTABLE                         R11 R12 R9
       56 CALL                             R10 1 1
       57 SETTABLE                         R10 R4 R9
       58 FORGLOOP                         R5 2 ; [-6]
       60 GETUPVAL                         R5 4
       61 NEWCLOSURE                       R6 P0
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R3
       65 CALL                             R5 1 0
       66 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETTABLEKS                       R5 R4 K1 ["destroy"]
        8 CALL                             R5 0 0
        9 FORGLOOP                         R0 2 ; [-4]
       11 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 NEWTABLE                         R2 0 0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["useRefToState"]
        9 MOVE                             R4 R1
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K2 ["useRef"]
       14 NEWTABLE                         R5 0 0
       16 CALL                             R4 1 1
       17 GETTABLEKS                       R7 R4 K3 ["current"]
       19 JUMPIFNOTEQKNIL                  R7 ; [+2]
       21 LOADB                            R6 0 +1
       22 LOADB                            R6 1
       23 FASTCALL2K                       ASSERT R6 K4 ; [+4]
       25 LOADK                            R7 K4 ["Luau"]
       26 GETIMPORT                        R5 K6 [assert]
       28 CALL                             R5 2 0
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K7 ["useEffect"]
       32 NEWCLOSURE                       R6 P0
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R4
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          VAL R2
       38 NEWTABLE                         R7 0 1
       40 MOVE                             R8 R0
       41 SETLIST                          R7 R8 1 [1]
       43 CALL                             R5 2 0
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R5 R5 K7 ["useEffect"]
       47 NEWCLOSURE                       R6 P1
       48 CAPTURE                          VAL R3
       49 NEWTABLE                         R7 0 0
       51 CALL                             R5 2 0
       52 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["RpcTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Networking"]
       30 GETTABLEKS                       R5 R5 K11 ["createSession"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Util"]
       37 GETTABLEKS                       R6 R6 K13 ["diffArray"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K10 ["Networking"]
       44 GETTABLEKS                       R7 R7 K14 ["useServe"]
       46 CALL                             R6 1 1
       47 DUPCLOSURE                       R7 K15 [PROTO_4]
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R4
       52 RETURN                           R7 1
