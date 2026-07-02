PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FoundationMigrateIconNames"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R3 1
        5 GETTABLE                         R2 R3 R0
        6 JUMPIFNOTEQKNIL                  R2 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+10]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["FoundationMigrateIconNames"]
        7 JUMPIFNOT                        R1 ; [+6]
        8 GETUPVAL                         R3 2
        9 GETTABLE                         R2 R3 R0
       10 JUMPIFNOTEQKNIL                  R2 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 GETTABLEKS                       R1 R1 K4 ["Parent"]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETIMPORT                        R3 K6 [require]
       15 GETTABLEKS                       R4 R2 K7 ["BuilderIcons"]
       17 CALL                             R3 1 1
       18 GETTABLEKS                       R5 R3 K9 ["Migration"]
       20 GETTABLEKS                       R4 R5 K8 ["uiblox"]
       22 GETIMPORT                        R5 K6 [require]
       24 GETTABLEKS                       R6 R1 K10 ["Flags"]
       26 CALL                             R5 1 1
       27 GETIMPORT                        R6 K6 [require]
       29 GETTABLEKS                       R7 R1 K11 ["isBuilderIcon"]
       31 CALL                             R6 1 1
       32 DUPCLOSURE                       R7 K12 [PROTO_0]
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R4
       35 DUPCLOSURE                       R8 K13 [PROTO_1]
       36 CAPTURE                          VAL R6
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R4
       39 DUPTABLE                         R9 K16 [{"isMigrated", "isBuilderOrMigratedIcon"}]
       40 SETTABLEKS                       R7 R9 K14 ["isMigrated"]
       42 SETTABLEKS                       R8 R9 K15 ["isBuilderOrMigratedIcon"]
       44 RETURN                           R9 1
