PROTO_0:
        0 JUMPIFNOTEQKNIL                  R1 ; [+4]
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 RETURN                           R2 2
        5 NEWTABLE                         R2 0 0
        7 LOADNIL                          R3
        8 MOVE                             R4 R0
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 GETTABLEKS                       R9 R8 K0 ["id"]
       14 JUMPIFNOT                        R9 ; [+22]
       15 MOVE                             R9 R8
       16 GETTABLEKS                       R10 R8 K0 ["id"]
       18 JUMPIFNOTEQ                      R10 R1 ; [+10]
       20 GETIMPORT                        R10 K3 [table.clone]
       22 MOVE                             R11 R8
       23 CALL                             R10 1 1
       24 MOVE                             R9 R10
       25 LOADB                            R10 1
       26 SETTABLEKS                       R10 R9 K4 ["isChecked"]
       28 MOVE                             R3 R9
       29 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       31 MOVE                             R11 R2
       32 MOVE                             R12 R9
       33 GETIMPORT                        R10 K6 [table.insert]
       35 CALL                             R10 2 0
       36 JUMP                             ; [+22]
       37 GETTABLEKS                       R9 R8 K7 ["items"]
       39 JUMPIFNOT                        R9 ; [+19]
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R10 R8 K7 ["items"]
       43 MOVE                             R11 R1
       44 CALL                             R9 2 2
       45 DUPTABLE                         R13 K9 [{"title", "items"}]
       46 GETTABLEKS                       R14 R8 K8 ["title"]
       48 SETTABLEKS                       R14 R13 K8 ["title"]
       50 SETTABLEKS                       R9 R13 K7 ["items"]
       52 FASTCALL2                        TABLE_INSERT R2 R13 ; [+4]
       54 MOVE                             R12 R2
       55 GETIMPORT                        R11 K6 [table.insert]
       57 CALL                             R11 2 0
       58 OR                               R3 R3 R10
       59 FORGLOOP                         R4 2 ; [-48]
       61 RETURN                           R2 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R3 K8 ["BaseMenu"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K9 [PROTO_0]
       22 CAPTURE                          VAL R3
       23 RETURN                           R3 1
