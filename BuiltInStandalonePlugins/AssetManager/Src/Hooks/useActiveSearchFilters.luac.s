PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETTABLEKS                       R6 R5 K0 ["Items"]
        8 LOADNIL                          R7
        9 LOADNIL                          R8
       10 FORGPREP                         R6
       11 GETTABLEKS                       R11 R10 K1 ["Enabled"]
       13 JUMPIFNOT                        R11 ; [+25]
       14 DUPTABLE                         R13 K5 [{"Id", "Text", "OnRemove"}]
       15 LOADK                            R14 K6 ["%*:%*"]
       16 GETTABLEKS                       R16 R5 K3 ["Text"]
       18 GETTABLEKS                       R17 R10 K3 ["Text"]
       20 NAMECALL                         R14 R14 K7 ["format"]
       22 CALL                             R14 3 1
       23 SETTABLEKS                       R14 R13 K2 ["Id"]
       25 GETTABLEKS                       R14 R10 K3 ["Text"]
       27 SETTABLEKS                       R14 R13 K3 ["Text"]
       29 GETTABLEKS                       R14 R10 K8 ["OnClick"]
       31 SETTABLEKS                       R14 R13 K4 ["OnRemove"]
       33 FASTCALL2                        TABLE_INSERT R0 R13 ; [+4]
       35 MOVE                             R12 R0
       36 GETIMPORT                        R11 K11 [table.insert]
       38 CALL                             R11 2 0
       39 FORGLOOP                         R6 2 ; [-29]
       41 FORGLOOP                         R1 2 ; [-36]
       43 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R0
        7 NEWTABLE                         R3 0 1
        9 MOVE                             R4 R0
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Hooks"]
       20 GETTABLEKS                       R3 R3 K10 ["useFilterTypeTable"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_1]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R1
       26 RETURN                           R3 1
