PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["CreateDefaultPlayerModule"]
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R2 2
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 1
        9 GETTABLEKS                       R1 R1 K1 ["container"]
       11 GETUPVAL                         R2 3
       12 CALL                             R2 0 0
       13 LOADK                            R4 K2 ["ScreenGui"]
       14 NAMECALL                         R2 R1 K3 ["FindFirstAncestorWhichIsA"]
       16 CALL                             R2 2 1
       17 GETIMPORT                        R3 K7 [Enum.ZIndexBehavior.Sibling]
       19 SETTABLEKS                       R3 R2 K5 ["ZIndexBehavior"]
       21 GETUPVAL                         R2 3
       22 CALL                             R2 0 0
       23 GETUPVAL                         R2 4
       24 GETTABLEKS                       R2 R2 K8 ["get"]
       26 CALL                             R2 0 1
       27 FASTCALL2K                       ASSERT R2 K9 ; [+5]
       29 MOVE                             R4 R2
       30 LOADK                            R5 K9 ["Networking should exist"]
       31 GETIMPORT                        R3 K11 [assert]
       33 CALL                             R3 2 0
       34 LOADK                            R5 K12 ["RequestAsync"]
       35 NAMECALL                         R3 R2 K13 ["FireHost"]
       37 CALL                             R3 2 0
       38 GETUPVAL                         R3 3
       39 CALL                             R3 0 0
       40 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StarterPlayer"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["InputActionManager"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Dev"]
       19 GETTABLEKS                       R3 R3 K12 ["ReactTestingLibrary"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R1 K13 ["Src"]
       26 GETTABLEKS                       R4 R4 K14 ["Util"]
       28 GETTABLEKS                       R4 R4 K15 ["Test"]
       30 GETTABLEKS                       R4 R4 K16 ["Helpers"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K9 [require]
       35 GETTABLEKS                       R5 R1 K13 ["Src"]
       37 GETTABLEKS                       R5 R5 K14 ["Util"]
       39 GETTABLEKS                       R5 R5 K15 ["Test"]
       41 GETTABLEKS                       R5 R5 K17 ["Setup"]
       43 GETTABLEKS                       R5 R5 K18 ["createApp"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K9 [require]
       48 GETTABLEKS                       R6 R1 K13 ["Src"]
       50 GETTABLEKS                       R6 R6 K14 ["Util"]
       52 GETTABLEKS                       R6 R6 K15 ["Test"]
       54 GETTABLEKS                       R6 R6 K19 ["Mock"]
       56 GETTABLEKS                       R6 R6 K20 ["mockNetworking"]
       58 CALL                             R5 1 1
       59 GETTABLEKS                       R6 R2 K21 ["render"]
       61 GETTABLEKS                       R7 R3 K22 ["awaitDeferAsync"]
       63 DUPCLOSURE                       R8 K23 [PROTO_0]
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R5
       69 RETURN                           R8 1
