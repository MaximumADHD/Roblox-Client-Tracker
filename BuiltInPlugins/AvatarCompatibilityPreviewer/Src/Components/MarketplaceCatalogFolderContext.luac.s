PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Marketplace"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIFEQKNIL                     R0 ; [+7]
        7 LOADK                            R3 K2 ["Folder"]
        8 NAMECALL                         R1 R0 K3 ["IsA"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+1]
       12 RETURN                           R0 1
       13 GETIMPORT                        R1 K6 [Instance.new]
       15 LOADK                            R2 K2 ["Folder"]
       16 CALL                             R1 1 1
       17 LOADK                            R2 K0 ["Marketplace"]
       18 SETTABLEKS                       R2 R1 K7 ["Name"]
       20 GETUPVAL                         R2 0
       21 SETTABLEKS                       R2 R1 K8 ["Parent"]
       23 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 1
        1 CALL                             R0 0 1
        2 SETUPVAL                         R0 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [task.defer]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["Marketplace"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIFEQKNIL                     R1 ; [+8]
        7 LOADK                            R4 K2 ["Folder"]
        8 NAMECALL                         R2 R1 K3 ["IsA"]
       10 CALL                             R2 2 1
       11 JUMPIFNOT                        R2 ; [+2]
       12 MOVE                             R0 R1
       13 JUMP                             ; [+11]
       14 GETIMPORT                        R2 K6 [Instance.new]
       16 LOADK                            R3 K2 ["Folder"]
       17 CALL                             R2 1 1
       18 LOADK                            R3 K0 ["Marketplace"]
       19 SETTABLEKS                       R3 R2 K7 ["Name"]
       21 GETUPVAL                         R3 0
       22 SETTABLEKS                       R3 R2 K8 ["Parent"]
       24 MOVE                             R0 R2
       25 GETUPVAL                         R1 1
       26 SETTABLEKS                       R0 R1 K9 ["current"]
       28 GETTABLEKS                       R1 R0 K10 ["AncestryChanged"]
       30 NEWCLOSURE                       R3 P0
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U3
       33 NAMECALL                         R1 R1 K11 ["Once"]
       35 CALL                             R1 2 1
       36 NEWCLOSURE                       R2 P1
       37 CAPTURE                          VAL R1
       38 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          REF R0
        5 CAPTURE                          VAL R1
        6 MOVE                             R2 R1
        7 CALL                             R2 0 1
        8 MOVE                             R0 R2
        9 NEWCLOSURE                       R2 P1
       10 CAPTURE                          REF R0
       11 CLOSEUPVALS                      R0
       12 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R1
        7 GETUPVAL                         R3 2
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K1 ["useEffect"]
       13 NEWCLOSURE                       R5 P1
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R3
       16 NEWTABLE                         R6 0 1
       18 MOVE                             R7 R1
       19 SETLIST                          R6 R7 1 [1]
       21 CALL                             R4 2 0
       22 DUPTABLE                         R4 K3 [{"marketplaceCatalogFolder"}]
       23 GETTABLEKS                       R5 R3 K4 ["current"]
       25 SETTABLEKS                       R5 R4 K2 ["marketplaceCatalogFolder"]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K5 ["createElement"]
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R6 R6 K6 ["Provider"]
       33 DUPTABLE                         R7 K8 [{"value"}]
       34 SETTABLEKS                       R4 R7 K7 ["value"]
       36 GETTABLEKS                       R8 R0 K9 ["children"]
       38 CALL                             R5 3 -1
       39 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["UGCAvatarServiceContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Hooks"]
       29 GETTABLEKS                       R4 R4 K12 ["useRefWithInitial"]
       31 CALL                             R3 1 1
       32 DUPTABLE                         R4 K14 [{"marketplaceCatalogFolder"}]
       33 LOADNIL                          R5
       34 SETTABLEKS                       R5 R4 K13 ["marketplaceCatalogFolder"]
       36 GETTABLEKS                       R5 R1 K15 ["createContext"]
       38 MOVE                             R6 R4
       39 CALL                             R5 1 1
       40 DUPCLOSURE                       R6 K16 [PROTO_7]
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R5
       45 DUPTABLE                         R7 K19 [{"Context", "Provider"}]
       46 SETTABLEKS                       R5 R7 K17 ["Context"]
       48 SETTABLEKS                       R6 R7 K18 ["Provider"]
       50 RETURN                           R7 1
