PROTO_0:
        0 GETTABLEKS                       R3 R2 K0 ["level"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["Levels"]
        5 GETTABLEKS                       R4 R4 K2 ["Error"]
        7 JUMPIFEQ                         R3 R4 ; [+10]
        9 GETTABLEKS                       R3 R2 K0 ["level"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K1 ["Levels"]
       14 GETTABLEKS                       R4 R4 K3 ["Warning"]
       16 JUMPIFNOTEQ                      R3 R4 ; [+6]
       18 GETIMPORT                        R3 K5 [warn]
       20 MOVE                             R4 R1
       21 CALL                             R3 1 0
       22 RETURN                           R0 0
       23 GETIMPORT                        R3 K7 [print]
       25 MOVE                             R4 R1
       26 CALL                             R3 1 0
       27 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPalette"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["lumberyak"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Logger"]
       16 GETTABLEKS                       R3 R2 K9 ["Levels"]
       18 GETTABLEKS                       R3 R3 K10 ["Warning"]
       20 DUPTABLE                         R4 K13 [{"maxLevel", "log"}]
       21 SETTABLEKS                       R3 R4 K11 ["maxLevel"]
       23 DUPCLOSURE                       R5 K14 [PROTO_0]
       24 CAPTURE                          VAL R2
       25 SETTABLEKS                       R5 R4 K12 ["log"]
       27 GETTABLEKS                       R5 R2 K15 ["new"]
       29 LOADNIL                          R6
       30 LOADK                            R7 K2 ["TerrainPalette"]
       31 CALL                             R5 2 1
       32 DUPTABLE                         R8 K18 [{["prefix"] = "[TerrainPalette {loggerName} - {level}] - "}]
       33 NAMECALL                         R6 R5 K19 ["setContext"]
       35 CALL                             R6 2 0
       36 MOVE                             R8 R4
       37 NAMECALL                         R6 R5 K20 ["addSink"]
       39 CALL                             R6 2 0
       40 RETURN                           R5 1
