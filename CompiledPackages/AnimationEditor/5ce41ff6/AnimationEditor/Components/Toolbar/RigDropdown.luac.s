PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 LENGTH                           R3 R4
        4 LOADN                            R1 1
        5 LOADN                            R2 255
        6 FORNPREP                         R1
        7 DUPTABLE                         R6 K2 [{"id", "text"}]
        8 GETUPVAL                         R9 0
        9 GETTABLE                         R8 R9 R3
       10 GETTABLEKS                       R7 R8 K0 ["id"]
       12 SETTABLEKS                       R7 R6 K0 ["id"]
       14 GETUPVAL                         R9 0
       15 GETTABLE                         R8 R9 R3
       16 GETTABLEKS                       R7 R8 K3 ["name"]
       18 SETTABLEKS                       R7 R6 K1 ["text"]
       20 FASTCALL2                        TABLE_INSERT R0 R6 ; [+4]
       22 MOVE                             R5 R0
       23 GETIMPORT                        R4 K6 [table.insert]
       25 CALL                             R4 2 0
       26 FORNLOOP                         R1
       27 RETURN                           R0 1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["string"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Dropdown item ID is not a string"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETIMPORT                        R1 K8 [task.spawn]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K9 ["selectRigAsync"]
       20 MOVE                             R3 R0
       21 CALL                             R1 2 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R1 K2 ["rigReferences"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K3 ["useMemo"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R2
       14 NEWTABLE                         R5 0 1
       16 MOVE                             R6 R2
       17 SETLIST                          R5 R6 1 [1]
       19 CALL                             R3 2 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R4 R5 K4 ["useCallback"]
       23 NEWCLOSURE                       R5 P1
       24 CAPTURE                          VAL R1
       25 NEWTABLE                         R6 0 1
       27 GETTABLEKS                       R7 R1 K5 ["selectRigAsync"]
       29 SETLIST                          R6 R7 1 [1]
       31 CALL                             R4 2 1
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R5 R6 K6 ["createElement"]
       35 GETUPVAL                         R8 2
       36 GETTABLEKS                       R7 R8 K7 ["Dropdown"]
       38 GETTABLEKS                       R6 R7 K8 ["Root"]
       40 DUPTABLE                         R7 K16 [{"size", "width", "label", "items", "value", "onItemChanged", "LayoutOrder"}]
       41 GETUPVAL                         R11 2
       42 GETTABLEKS                       R10 R11 K17 ["Enums"]
       44 GETTABLEKS                       R9 R10 K18 ["InputSize"]
       46 GETTABLEKS                       R8 R9 K19 ["XSmall"]
       48 SETTABLEKS                       R8 R7 K9 ["size"]
       50 GETIMPORT                        R8 K22 [UDim.new]
       52 LOADN                            R9 0
       53 LOADN                            R10 120
       54 CALL                             R8 2 1
       55 SETTABLEKS                       R8 R7 K10 ["width"]
       57 LOADK                            R8 K23 [""]
       58 SETTABLEKS                       R8 R7 K11 ["label"]
       60 SETTABLEKS                       R3 R7 K12 ["items"]
       62 GETTABLEKS                       R8 R1 K24 ["selectedRigId"]
       64 SETTABLEKS                       R8 R7 K13 ["value"]
       66 SETTABLEKS                       R4 R7 K14 ["onItemChanged"]
       68 GETTABLEKS                       R8 R0 K15 ["LayoutOrder"]
       70 SETTABLEKS                       R8 R7 K15 ["LayoutOrder"]
       72 CALL                             R5 2 -1
       73 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Contexts"]
       25 GETTABLEKS                       R4 R5 K10 ["RigListContext"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K11 [PROTO_2]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R1
       32 RETURN                           R4 1
