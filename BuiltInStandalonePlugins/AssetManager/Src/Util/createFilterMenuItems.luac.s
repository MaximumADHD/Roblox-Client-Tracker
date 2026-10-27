PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnClick"]
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 NEWTABLE                         R8 0 0
        8 GETTABLEKS                       R9 R7 K0 ["Items"]
       10 LOADNIL                          R10
       11 LOADNIL                          R11
       12 FORGPREP                         R9
       13 DUPTABLE                         R16 K5 [{"id", "text", "isChecked", "onActivated"}]
       14 MOVE                             R17 R1
       15 CALL                             R17 0 1
       16 SETTABLEKS                       R17 R16 K1 ["id"]
       18 GETTABLEKS                       R17 R13 K6 ["Text"]
       20 SETTABLEKS                       R17 R16 K2 ["text"]
       22 GETTABLEKS                       R17 R13 K7 ["Enabled"]
       24 SETTABLEKS                       R17 R16 K3 ["isChecked"]
       26 NEWCLOSURE                       R17 P0
       27 CAPTURE                          VAL R13
       28 SETTABLEKS                       R17 R16 K4 ["onActivated"]
       30 FASTCALL2                        TABLE_INSERT R8 R16 ; [+4]
       32 MOVE                             R15 R8
       33 GETIMPORT                        R14 K10 [table.insert]
       35 CALL                             R14 2 0
       36 FORGLOOP                         R9 2 ; [-24]
       38 DUPTABLE                         R11 K12 [{"id", "text", "items"}]
       39 MOVE                             R12 R1
       40 CALL                             R12 0 1
       41 SETTABLEKS                       R12 R11 K1 ["id"]
       43 GETTABLEKS                       R12 R7 K6 ["Text"]
       45 SETTABLEKS                       R12 R11 K2 ["text"]
       47 SETTABLEKS                       R8 R11 K11 ["items"]
       49 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       51 MOVE                             R10 R2
       52 GETIMPORT                        R9 K10 [table.insert]
       54 CALL                             R9 2 0
       55 FORGLOOP                         R3 2 ; [-50]
       57 DUPTABLE                         R3 K13 [{"items"}]
       58 SETTABLEKS                       R2 R3 K11 ["items"]
       60 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetManagement"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Hooks"]
       20 GETTABLEKS                       R3 R3 K10 ["useFilterTypeTable"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_1]
       24 RETURN                           R3 1
