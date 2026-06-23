PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetObjectsAllOrNone"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 LOADK                            R4 K0 ["Animation"]
        5 CALL                             R2 2 3
        6 FORGPREP                         R2
        7 GETTABLEKS                       R7 R6 K1 ["AnimationId"]
        9 JUMPIFEQKS                       R7 K2 [""] ; [+29]
       11 GETIMPORT                        R8 K4 [pcall]
       13 NEWCLOSURE                       R9 P0
       14 CAPTURE                          VAL R7
       15 CALL                             R8 1 2
       16 JUMPIFNOT                        R8 ; [+2]
       17 JUMPIFNOTEQKNIL                  R9 ; [+3]
       19 LOADNIL                          R10
       20 RETURN                           R10 1
       21 MOVE                             R10 R9
       22 LOADNIL                          R11
       23 LOADNIL                          R12
       24 FORGPREP                         R10
       25 LOADK                            R17 K5 ["CurveAnimation"]
       26 NAMECALL                         R15 R14 K6 ["IsA"]
       28 CALL                             R15 2 1
       29 JUMPIFNOT                        R15 ; [+7]
       30 FASTCALL2                        TABLE_INSERT R1 R14 ; [+5]
       32 MOVE                             R16 R1
       33 MOVE                             R17 R14
       34 GETIMPORT                        R15 K9 [table.insert]
       36 CALL                             R15 2 0
       37 FORGLOOP                         R10 2 ; [-13]
       39 FORGLOOP                         R2 2 ; [-33]
       41 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["util"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["util"]
       20 GETTABLEKS                       R3 R3 K7 ["getAllInstancesIsA"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 1 0
       25 DUPCLOSURE                       R4 K8 [PROTO_1]
       26 CAPTURE                          VAL R2
       27 SETTABLEKS                       R4 R3 K9 ["getData"]
       29 RETURN                           R3 1
