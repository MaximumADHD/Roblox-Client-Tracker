PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["role"]
        2 JUMPIFNOTEQKS                    R1 K1 ["system"] ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETTABLEKS                       R1 R0 K0 ["role"]
        8 JUMPIFNOTEQKS                    R1 K2 ["model"] ; [+9]
       10 GETIMPORT                        R1 K5 [table.clone]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 1
       14 LOADK                            R2 K6 ["assistant"]
       15 SETTABLEKS                       R2 R1 K0 ["role"]
       17 RETURN                           R1 1
       18 GETTABLEKS                       R1 R0 K0 ["role"]
       20 JUMPIFEQKS                       R1 K7 ["user"] ; [+5]
       22 GETTABLEKS                       R1 R0 K0 ["role"]
       24 JUMPIFNOTEQKS                    R1 K6 ["assistant"] ; [+2]
       26 RETURN                           R0 1
       27 LOADNIL                          R1
       28 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R8 R6 K0 ["role"]
        8 JUMPIFNOTEQKS                    R8 K1 ["system"] ; [+3]
       10 LOADNIL                          R7
       11 JUMP                             ; [+24]
       12 GETTABLEKS                       R8 R6 K0 ["role"]
       14 JUMPIFNOTEQKS                    R8 K2 ["model"] ; [+10]
       16 GETIMPORT                        R8 K5 [table.clone]
       18 MOVE                             R9 R6
       19 CALL                             R8 1 1
       20 LOADK                            R9 K6 ["assistant"]
       21 SETTABLEKS                       R9 R8 K0 ["role"]
       23 MOVE                             R7 R8
       24 JUMP                             ; [+11]
       25 GETTABLEKS                       R8 R6 K0 ["role"]
       27 JUMPIFEQKS                       R8 K7 ["user"] ; [+5]
       29 GETTABLEKS                       R8 R6 K0 ["role"]
       31 JUMPIFNOTEQKS                    R8 K6 ["assistant"] ; [+3]
       33 MOVE                             R7 R6
       34 JUMP                             ; [+1]
       35 LOADNIL                          R7
       36 JUMPIFNOT                        R7 ; [+7]
       37 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       39 MOVE                             R9 R1
       40 MOVE                             R10 R7
       41 GETIMPORT                        R8 K9 [table.insert]
       43 CALL                             R8 2 0
       44 FORGLOOP                         R2 2 ; [-39]
       46 GETIMPORT                        R2 K11 [table.clear]
       48 MOVE                             R3 R0
       49 CALL                             R2 1 0
       50 MOVE                             R2 R1
       51 LOADNIL                          R3
       52 LOADNIL                          R4
       53 FORGPREP                         R2
       54 FASTCALL2                        TABLE_INSERT R0 R6 ; [+5]
       56 MOVE                             R8 R0
       57 MOVE                             R9 R6
       58 GETIMPORT                        R7 K9 [table.insert]
       60 CALL                             R7 2 0
       61 FORGLOOP                         R2 2 ; [-8]
       63 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantHarness"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Engine"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_0]
       13 DUPCLOSURE                       R3 K8 [PROTO_1]
       14 DUPTABLE                         R4 K11 [{"normalize", "inPlace"}]
       15 SETTABLEKS                       R2 R4 K9 ["normalize"]
       17 SETTABLEKS                       R3 R4 K10 ["inPlace"]
       19 RETURN                           R4 1
