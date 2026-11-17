PROTO_0:
        0 LOADK                            R1 K0 ["%*Initialized"]
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K1 ["format"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R3 K0 ["%*Initialized"]
        1 MOVE                             R5 R2
        2 NAMECALL                         R3 R3 K1 ["format"]
        4 CALL                             R3 2 1
        5 MOVE                             R6 R1
        6 MOVE                             R7 R3
        7 GETUPVAL                         R8 0
        8 GETTABLEKS                       R8 R8 K2 ["PlacePersistent"]
       10 NAMECALL                         R4 R0 K3 ["getGlobal"]
       12 CALL                             R4 4 1
       13 JUMPIFNOT                        R4 ; [+1]
       14 RETURN                           R0 0
       15 MOVE                             R6 R1
       16 MOVE                             R7 R2
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R8 R8 K2 ["PlacePersistent"]
       20 NAMECALL                         R4 R0 K3 ["getGlobal"]
       22 CALL                             R4 4 1
       23 JUMPIFNOTEQKNIL                  R4 ; [+12]
       25 MOVE                             R6 R1
       26 MOVE                             R7 R2
       27 GETUPVAL                         R8 1
       28 GETTABLEKS                       R8 R8 K4 ["DefaultMaterialSlot"]
       30 GETUPVAL                         R9 0
       31 GETTABLEKS                       R9 R9 K2 ["PlacePersistent"]
       33 NAMECALL                         R4 R0 K5 ["setGlobal"]
       35 CALL                             R4 5 0
       36 MOVE                             R6 R1
       37 MOVE                             R7 R3
       38 LOADB                            R8 1
       39 GETUPVAL                         R9 0
       40 GETTABLEKS                       R9 R9 K2 ["PlacePersistent"]
       42 NAMECALL                         R4 R0 K5 ["setGlobal"]
       44 CALL                             R4 5 0
       45 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Resources"]
       13 GETTABLEKS                       R2 R2 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Types"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K10 ["Storage"]
       25 NEWTABLE                         R4 1 0
       27 DUPCLOSURE                       R5 K11 [PROTO_0]
       28 DUPCLOSURE                       R6 K12 [PROTO_1]
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R6 R4 K13 ["ensure"]
       33 RETURN                           R4 1
