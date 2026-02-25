PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R4
        6 CALL                             R5 1 1
        7 JUMPIFEQKS                       R5 K0 ["Uploaded"] ; [+4]
        9 LOADNIL                          R6
       10 SETTABLEKS                       R6 R4 K1 ["Parent"]
       12 FORGLOOP                         R0 2 ; [-9]
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 MOVE                             R1 R0
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 FORGPREP                         R1
        7 GETUPVAL                         R6 2
        8 MOVE                             R7 R5
        9 CALL                             R6 1 1
       10 JUMPIFNOTEQKS                    R6 K0 ["Uploaded"] ; [+7]
       12 GETUPVAL                         R7 3
       13 SETTABLEKS                       R7 R5 K1 ["Parent"]
       15 LOADB                            R7 1
       16 SETTABLEKS                       R7 R5 K2 ["Archivable"]
       18 FORGLOOP                         R1 2 ; [-12]
       20 NEWCLOSURE                       R1 P0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U2
       23 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K1 ["promptGroups"]
        7 GETTABLEKS                       R2 R0 K2 ["getMaterialStatus"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K3 ["useEffect"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U3
       17 NEWTABLE                         R5 0 2
       19 MOVE                             R6 R1
       20 MOVE                             R7 R2
       21 SETLIST                          R5 R6 2 [1]
       23 CALL                             R3 2 0
       24 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["MaterialService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["MaterialGenerator"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R4 R1 K12 ["Src"]
       22 GETTABLEKS                       R3 R4 K13 ["Util"]
       24 GETIMPORT                        R4 K9 [require]
       26 GETTABLEKS                       R5 R3 K14 ["Constants"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K9 [require]
       31 GETTABLEKS                       R6 R3 K15 ["GeneratedMaterialsContext"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K9 [require]
       36 GETTABLEKS                       R7 R3 K16 ["getAllMaterialVariants"]
       38 CALL                             R6 1 1
       39 DUPCLOSURE                       R7 K17 [PROTO_2]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R6
       43 CAPTURE                          VAL R0
       44 RETURN                           R7 1
