PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K0 ["Definition"]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R4 R5 K1 ["getMezzanineFromTestModeSetting"]
        8 MOVE                             R5 R3
        9 MOVE                             R6 R0
       10 CALL                             R4 2 1
       11 JUMPIFNOT                        R1 ; [+2]
       12 LOADK                            R5 K2 ["BuiltIn_RightMezzanine"]
       13 JUMP                             ; [+1]
       14 LOADK                            R5 K3 ["BuiltIn_RightMezzanineStartPage"]
       15 GETTABLEKS                       R7 R3 K4 ["MezzanineControls"]
       17 GETTABLE                         R6 R7 R5
       18 JUMPIFNOT                        R6 ; [+3]
       19 GETTABLEKS                       R7 R6 K5 ["Controls"]
       21 JUMP                             ; [+2]
       22 NEWTABLE                         R7 0 0
       24 MOVE                             R8 R4
       25 MOVE                             R9 R7
       26 RETURN                           R8 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R4 K10 ["RibbonDefinition"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Util"]
       29 GETTABLEKS                       R4 R5 K12 ["TestingModesHelper"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R6 K13 ["Types"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R1 K14 ["useContext"]
       41 DUPCLOSURE                       R6 K15 [PROTO_0]
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 RETURN                           R6 1
