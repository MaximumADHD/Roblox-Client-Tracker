PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+6]
        4 GETUPVAL                         R3 1
        5 GETTABLE                         R2 R3 R0
        6 JUMPIFNOTEQKNIL                  R2 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1

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
       24 GETTABLEKS                       R6 R1 K10 ["isBuilderIcon"]
       26 CALL                             R5 1 1
       27 DUPCLOSURE                       R6 K11 [PROTO_0]
       28 CAPTURE                          VAL R4
       29 DUPCLOSURE                       R7 K12 [PROTO_1]
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R4
       32 DUPTABLE                         R8 K15 [{"isMigrated", "isBuilderOrMigratedIcon"}]
       33 SETTABLEKS                       R6 R8 K13 ["isMigrated"]
       35 SETTABLEKS                       R7 R8 K14 ["isBuilderOrMigratedIcon"]
       37 RETURN                           R8 1
