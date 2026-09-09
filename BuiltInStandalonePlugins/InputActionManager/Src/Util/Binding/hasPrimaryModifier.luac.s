PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 3
        2 FORGPREP                         R1
        3 GETTABLE                         R6 R0 R5
        4 JUMPIFNOT                        R6 ; [+15]
        5 GETTABLEKS                       R7 R6 K0 ["primaryModifier"]
        7 GETIMPORT                        R8 K4 [Enum.KeyCode.None]
        9 JUMPIFNOTEQ                      R7 R8 ; [+8]
       11 GETUPVAL                         R7 1
       12 CALL                             R7 0 1
       13 JUMPIFNOT                        R7 ; [+6]
       14 GETTABLEKS                       R7 R6 K5 ["uiModifier"]
       16 JUMPIFEQKNIL                     R7 ; [+3]
       18 LOADB                            R7 1
       19 RETURN                           R7 1
       20 FORGLOOP                         R1 2 ; [-18]
       22 LOADB                            R1 0
       23 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["getSchemas"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R0 K6 ["Src"]
       25 GETTABLEKS                       R3 R3 K10 ["Flags"]
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R3 K11 ["getFFlagIAMUIModifier"]
       31 CALL                             R4 1 1
       32 DUPCLOSURE                       R5 K12 [PROTO_0]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R4
       35 RETURN                           R5 1
