PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R1 R2 K0 ["FoundationFixUserLevelPlugins"]
        6 JUMPIFNOT                        R1 ; [+14]
        7 JUMPIFNOT                        R0 ; [+10]
        8 GETUPVAL                         R2 3
        9 GETTABLEKS                       R1 R2 K1 ["None"]
       11 JUMPIFEQ                         R0 R1 ; [+6]
       13 MOVE                             R1 R0
       14 GETUPVAL                         R2 4
       15 MOVE                             R3 R0
       16 CALL                             R2 1 -1
       17 RETURN                           R1 -1
       18 LOADNIL                          R1
       19 LOADB                            R2 0
       20 RETURN                           R1 2
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R2 R3 K1 ["None"]
       24 JUMPIFNOTEQ                      R0 R2 ; [+3]
       26 LOADNIL                          R1
       27 RETURN                           R1 1
       28 MOVE                             R1 R0
       29 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["useContext"]
       16 GETIMPORT                        R4 K6 [require]
       18 GETTABLEKS                       R6 R0 K9 ["Utility"]
       20 GETTABLEKS                       R5 R6 K10 ["Flags"]
       22 CALL                             R4 1 1
       23 GETIMPORT                        R5 K6 [require]
       25 GETIMPORT                        R8 K1 [script]
       27 GETTABLEKS                       R7 R8 K4 ["Parent"]
       29 GETTABLEKS                       R6 R7 K11 ["PluginContext"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K6 [require]
       34 GETIMPORT                        R9 K1 [script]
       36 GETTABLEKS                       R8 R9 K4 ["Parent"]
       38 GETTABLEKS                       R7 R8 K12 ["isPluginElevated"]
       40 CALL                             R6 1 1
       41 DUPCLOSURE                       R7 K13 [PROTO_0]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R6
       47 RETURN                           R7 1
