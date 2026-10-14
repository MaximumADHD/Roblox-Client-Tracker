PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K0 ["CreateDefaultPlayerModule"]
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 3
        9 MOVE                             R3 R0
       10 CALL                             R2 1 -1
       11 CALL                             R1 -1 1
       12 GETTABLEKS                       R1 R1 K1 ["container"]
       14 GETUPVAL                         R2 4
       15 CALL                             R2 0 0
       16 LOADK                            R4 K2 ["ScreenGui"]
       17 NAMECALL                         R2 R1 K3 ["FindFirstAncestorWhichIsA"]
       19 CALL                             R2 2 1
       20 GETIMPORT                        R3 K7 [Enum.ZIndexBehavior.Sibling]
       22 SETTABLEKS                       R3 R2 K5 ["ZIndexBehavior"]
       24 GETUPVAL                         R2 4
       25 CALL                             R2 0 0
       26 GETUPVAL                         R2 5
       27 GETTABLEKS                       R2 R2 K8 ["get"]
       29 CALL                             R2 0 1
       30 FASTCALL2K                       ASSERT R2 K9 ; [+5]
       32 MOVE                             R4 R2
       33 LOADK                            R5 K9 ["Networking should exist"]
       34 GETIMPORT                        R3 K11 [assert]
       36 CALL                             R3 2 0
       37 LOADK                            R5 K12 ["RequestAsync"]
       38 NAMECALL                         R3 R2 K13 ["FireHost"]
       40 CALL                             R3 2 0
       41 GETUPVAL                         R3 4
       42 CALL                             R3 0 0
       43 RETURN                           R1 1

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
       59 GETTABLEKS                       R6 R1 K13 ["Src"]
       61 GETTABLEKS                       R6 R6 K21 ["Flags"]
       63 GETIMPORT                        R7 K9 [require]
       65 GETTABLEKS                       R8 R6 K22 ["getFFlagIAMPlayerScripts"]
       67 CALL                             R7 1 1
       68 GETTABLEKS                       R8 R2 K23 ["render"]
       70 GETTABLEKS                       R9 R3 K24 ["awaitDeferAsync"]
       72 DUPCLOSURE                       R10 K25 [PROTO_0]
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R5
       79 RETURN                           R10 1
