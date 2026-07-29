PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 JUMPIFNOT                        R1 ; [+85]
        3 NEWTABLE                         R2 0 0
        5 NAMECALL                         R3 R1 K1 ["GetChildren"]
        7 CALL                             R3 1 3
        8 FORGPREP                         R3
        9 LOADK                            R10 K2 ["ModuleScript"]
       10 NAMECALL                         R8 R7 K3 ["IsA"]
       12 CALL                             R8 2 1
       13 JUMPIFNOT                        R8 ; [+17]
       14 GETTABLEKS                       R9 R7 K4 ["Name"]
       16 FASTCALL2K                       STRING_SUB R9 K5 ; [+4]
       18 LOADK                            R10 K5 [-10]
       19 GETIMPORT                        R8 K8 [string.sub]
       21 CALL                             R8 2 1
       22 JUMPIFNOTEQKS                    R8 K9 [".storybook"] ; [+8]
       24 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       26 MOVE                             R9 R2
       27 MOVE                             R10 R7
       28 GETIMPORT                        R8 K12 [table.insert]
       30 CALL                             R8 2 0
       31 FORGLOOP                         R3 2 ; [-23]
       33 GETIMPORT                        R3 K14 [table.sort]
       35 MOVE                             R4 R2
       36 DUPCLOSURE                       R5 K15 [PROTO_0]
       37 CALL                             R3 2 0
       38 LENGTH                           R3 R2
       39 JUMPIFNOTEQKN                    R3 K16 [1] ; [+4]
       41 GETTABLEN                        R3 R2 1
       42 LOADNIL                          R4
       43 RETURN                           R3 2
       44 LENGTH                           R3 R2
       45 LOADN                            R4 1
       46 JUMPIFNOTLT                      R4 R3 ; [+31]
       48 NEWTABLE                         R3 0 0
       50 MOVE                             R4 R2
       51 LOADNIL                          R5
       52 LOADNIL                          R6
       53 FORGPREP                         R4
       54 MOVE                             R10 R3
       55 NAMECALL                         R11 R8 K17 ["GetFullName"]
       57 CALL                             R11 1 -1
       58 FASTCALL                         TABLE_INSERT ; [+2]
       59 GETIMPORT                        R9 K12 [table.insert]
       61 CALL                             R9 -1 0
       62 FORGLOOP                         R4 2 ; [-9]
       64 LOADNIL                          R4
       65 DUPTABLE                         R5 K22 [{["code"] = "ambiguous-storybook", ["message"], ["candidates"]}]
       66 LOADK                            R7 K23 ["Ambiguous storybook harnesses: "]
       67 GETIMPORT                        R8 K25 [table.concat]
       69 MOVE                             R9 R3
       70 LOADK                            R10 K26 [", "]
       71 CALL                             R8 2 1
       72 CONCAT                           R6 R7 R8
       73 SETTABLEKS                       R6 R5 K20 ["message"]
       75 SETTABLEKS                       R2 R5 K21 ["candidates"]
       77 RETURN                           R4 2
       78 LOADK                            R5 K2 ["ModuleScript"]
       79 NAMECALL                         R3 R1 K3 ["IsA"]
       81 CALL                             R3 2 1
       82 JUMPIFNOT                        R3 ; [+5]
       83 GETTABLEKS                       R1 R1 K0 ["Parent"]
       85 JUMP                             ; [+1]
       86 JUMP                             ; [+1]
       87 JUMPBACK                         ; [-86]
       88 LOADNIL                          R2
       89 LOADNIL                          R3
       90 RETURN                           R2 2

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 DUPTABLE                         R1 K2 [{"discover"}]
        3 SETTABLEKS                       R0 R1 K1 ["discover"]
        5 RETURN                           R1 1
