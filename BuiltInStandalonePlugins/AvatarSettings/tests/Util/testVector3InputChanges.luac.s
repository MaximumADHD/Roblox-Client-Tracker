PROTO_0:
        0 GETTABLEKS                       R5 R2 K0 ["ruleInstance"]
        2 JUMPIF                           R4 ; [+14]
        3 GETTABLEKS                       R6 R1 K1 ["enterValue"]
        5 MOVE                             R7 R3
        6 CALL                             R6 1 0
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R9 R2 K2 ["property"]
       10 GETTABLE                         R8 R5 R9
       11 CALL                             R7 1 1
       12 GETTABLEKS                       R6 R7 K3 ["toBe"]
       14 MOVE                             R7 R3
       15 CALL                             R6 1 0
       16 JUMP                             ; [+6]
       17 GETTABLEKS                       R6 R2 K2 ["property"]
       19 SETTABLE                         R3 R5 R6
       20 GETTABLEKS                       R6 R0 K4 ["updateStylingServiceUnitTestOnly"]
       22 CALL                             R6 0 0
       23 GETTABLEKS                       R6 R1 K5 ["expectTextToBe"]
       25 MOVE                             R7 R3
       26 CALL                             R6 1 0
       27 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Packages"]
       11 GETTABLEKS                       R3 R4 K7 ["Dev"]
       13 GETTABLEKS                       R2 R3 K8 ["JestGlobals"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R7 R0 K9 ["Src"]
       20 GETTABLEKS                       R6 R7 K10 ["Util"]
       22 GETTABLEKS                       R5 R6 K11 ["BridgingFiles"]
       24 GETTABLEKS                       R4 R5 K12 ["AssetDmFiles"]
       26 GETTABLEKS                       R3 R4 K13 ["assetDmTypes"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K5 [require]
       31 GETTABLEKS                       R7 R0 K9 ["Src"]
       33 GETTABLEKS                       R6 R7 K14 ["tests"]
       35 GETTABLEKS                       R5 R6 K10 ["Util"]
       37 GETTABLEKS                       R4 R5 K15 ["setup"]
       39 CALL                             R3 1 1
       40 GETTABLEKS                       R4 R1 K16 ["expect"]
       42 DUPCLOSURE                       R5 K17 [PROTO_0]
       43 CAPTURE                          VAL R4
       44 RETURN                           R5 1
