PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["shouldDebugWarnings"]
        6 CALL                             R1 0 1
        7 JUMPIFNOT                        R1 ; [+5]
        8 JUMPIF                           R0 ; [+4]
        9 GETIMPORT                        R1 K2 [warn]
       11 LOADK                            R2 K3 ["ixp was undefined for FFlagToolboxUseIXPForCodeUnderstanding"]
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 0
       14 CALL                             R1 0 1
       15 JUMPIFNOT                        R1 ; [+5]
       16 GETUPVAL                         R1 2
       17 MOVE                             R2 R0
       18 LOADK                            R3 K4 ["MarketplaceModelsCodeUnderstanding"]
       19 LOADK                            R4 K5 ["MarketplaceModelsCodeUnderstandingEnabled"]
       20 CALL                             R1 3 1
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R2 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["DebugFlags"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R1 K9 ["getIsIXPVariableEnabled"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K7 [require]
       23 GETTABLEKS                       R8 R0 K4 ["Src"]
       25 GETTABLEKS                       R7 R8 K5 ["Util"]
       27 GETTABLEKS                       R6 R7 K10 ["SharedFlags"]
       29 GETTABLEKS                       R5 R6 K11 ["getFFlagToolboxCodeUnderstandingSummary"]
       31 CALL                             R4 1 1
       32 DUPCLOSURE                       R5 K12 [PROTO_0]
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 RETURN                           R5 1
