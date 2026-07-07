PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["index"]
        2 GETTABLEKS                       R4 R1 K0 ["index"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 JUMPIFNOTEQKNIL                  R6 ; [+2]
        8 LOADB                            R8 0 +1
        9 LOADB                            R8 1
       10 FASTCALL2K                       ASSERT R8 K0 ; [+4]
       12 LOADK                            R9 K0 ["Luau: Generalized iteration over T? can't give nil"]
       13 GETIMPORT                        R7 K2 [assert]
       15 CALL                             R7 2 0
       16 DUPTABLE                         R9 K5 [{"index", "value"}]
       17 SETTABLEKS                       R5 R9 K3 ["index"]
       19 SETTABLEKS                       R6 R9 K4 ["value"]
       21 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       23 MOVE                             R8 R1
       24 GETIMPORT                        R7 K8 [table.insert]
       26 CALL                             R7 2 0
       27 FORGLOOP                         R2 2 ; [-22]
       29 GETIMPORT                        R2 K10 [table.sort]
       31 MOVE                             R3 R1
       32 DUPCLOSURE                       R4 K11 [PROTO_0]
       33 CALL                             R2 2 0
       34 NEWTABLE                         R2 0 0
       36 MOVE                             R3 R1
       37 LOADNIL                          R4
       38 LOADNIL                          R5
       39 FORGPREP                         R3
       40 GETTABLEKS                       R10 R7 K4 ["value"]
       42 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       44 MOVE                             R9 R2
       45 GETIMPORT                        R8 K8 [table.insert]
       47 CALL                             R8 2 0
       48 FORGLOOP                         R3 2 ; [-9]
       50 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
