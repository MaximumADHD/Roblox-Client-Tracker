PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onActivated"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["onItemActivated"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["actions"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 DUPTABLE                         R9 K4 [{"text", "onActivated", "id"}]
        8 GETTABLEKS                       R10 R6 K1 ["text"]
       10 SETTABLEKS                       R10 R9 K1 ["text"]
       12 NEWCLOSURE                       R10 P0
       13 CAPTURE                          VAL R6
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R10 R9 K2 ["onActivated"]
       17 GETTABLEKS                       R10 R6 K3 ["id"]
       19 SETTABLEKS                       R10 R9 K3 ["id"]
       21 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       23 MOVE                             R8 R1
       24 GETIMPORT                        R7 K7 [table.insert]
       26 CALL                             R7 2 0
       27 FORGLOOP                         R2 2 ; [-21]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R2 R3 K8 ["createElement"]
       32 GETUPVAL                         R3 1
       33 DUPTABLE                         R4 K14 [{"isOpen", "items", "size", "onPressedOutside", "anchorRef"}]
       34 GETTABLEKS                       R5 R0 K9 ["isOpen"]
       36 SETTABLEKS                       R5 R4 K9 ["isOpen"]
       38 SETTABLEKS                       R1 R4 K10 ["items"]
       40 GETUPVAL                         R6 2
       41 GETTABLEKS                       R5 R6 K15 ["Small"]
       43 SETTABLEKS                       R5 R4 K11 ["size"]
       45 GETTABLEKS                       R5 R0 K16 ["onClose"]
       47 SETTABLEKS                       R5 R4 K12 ["onPressedOutside"]
       49 GETTABLEKS                       R5 R0 K13 ["anchorRef"]
       51 SETTABLEKS                       R5 R4 K13 ["anchorRef"]
       53 CALL                             R2 2 -1
       54 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R4 R2 K11 ["Enums"]
       25 GETTABLEKS                       R3 R4 K12 ["InputSize"]
       27 GETTABLEKS                       R4 R2 K13 ["Menu"]
       29 GETIMPORT                        R5 K5 [require]
       31 GETTABLEKS                       R7 R0 K8 ["Src"]
       33 GETTABLEKS                       R6 R7 K14 ["Types"]
       35 CALL                             R5 1 1
       36 DUPCLOSURE                       R6 K15 [PROTO_1]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R3
       40 RETURN                           R6 1
