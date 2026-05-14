PROTO_0:
        0 GETIMPORT                        R2 K2 [string.split]
        2 MOVE                             R3 R1
        3 LOADK                            R4 K3 [","]
        4 CALL                             R2 2 1
        5 LOADB                            R3 0
        6 LENGTH                           R4 R2
        7 LOADN                            R5 0
        8 JUMPIFNOTLT                      R5 R4 ; [+8]
       10 GETTABLEN                        R5 R2 1
       11 LENGTH                           R4 R5
       12 LOADN                            R5 0
       13 JUMPIFLT                         R5 R4 ; [+2]
       15 LOADB                            R3 0 +1
       16 LOADB                            R3 1
       17 NEWTABLE                         R4 0 0
       19 MOVE                             R5 R0
       20 LOADNIL                          R6
       21 LOADNIL                          R7
       22 FORGPREP                         R5
       23 GETTABLEKS                       R10 R9 K4 ["Items"]
       25 LOADNIL                          R11
       26 LOADNIL                          R12
       27 FORGPREP                         R10
       28 JUMPIFNOT                        R3 ; [+12]
       29 GETUPVAL                         R15 0
       30 GETTABLEKS                       R16 R14 K5 ["Text"]
       32 MOVE                             R17 R2
       33 CALL                             R15 2 1
       34 JUMPIF                           R15 ; [+6]
       35 GETUPVAL                         R15 0
       36 GETTABLEKS                       R16 R9 K5 ["Text"]
       38 MOVE                             R17 R2
       39 CALL                             R15 2 1
       40 JUMPIFNOT                        R15 ; [+31]
       41 GETTABLEKS                       R16 R9 K5 ["Text"]
       43 GETTABLE                         R15 R4 R16
       44 JUMPIF                           R15 ; [+16]
       45 GETTABLEKS                       R15 R9 K5 ["Text"]
       47 DUPTABLE                         R16 K7 [{"LayoutOrder", "Text", "Items"}]
       48 GETTABLEKS                       R17 R9 K6 ["LayoutOrder"]
       50 SETTABLEKS                       R17 R16 K6 ["LayoutOrder"]
       52 GETTABLEKS                       R17 R9 K5 ["Text"]
       54 SETTABLEKS                       R17 R16 K5 ["Text"]
       56 NEWTABLE                         R17 0 0
       58 SETTABLEKS                       R17 R16 K4 ["Items"]
       60 SETTABLE                         R16 R4 R15
       61 GETTABLEKS                       R17 R9 K5 ["Text"]
       63 GETTABLE                         R16 R4 R17
       64 GETTABLEKS                       R16 R16 K4 ["Items"]
       66 FASTCALL2                        TABLE_INSERT R16 R14 ; [+4]
       68 MOVE                             R17 R14
       69 GETIMPORT                        R15 K10 [table.insert]
       71 CALL                             R15 2 0
       72 FORGLOOP                         R10 2 ; [-45]
       74 FORGLOOP                         R5 2 ; [-52]
       76 MOVE                             R5 R4
       77 MOVE                             R6 R3
       78 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["hasMatchingTerm"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 RETURN                           R2 1
