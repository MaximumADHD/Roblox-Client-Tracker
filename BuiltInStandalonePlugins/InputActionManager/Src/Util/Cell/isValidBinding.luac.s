PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["keyCode"]
        2 GETIMPORT                        R2 K4 [Enum.KeyCode.None]
        4 JUMPIFEQ                         R1 R2 ; [+3]
        6 LOADB                            R1 1
        7 RETURN                           R1 1
        8 GETUPVAL                         R1 0
        9 CALL                             R1 0 1
       10 JUMPIFNOT                        R1 ; [+6]
       11 GETTABLEKS                       R1 R0 K5 ["uiButton"]
       13 JUMPIFEQKNIL                     R1 ; [+3]
       15 LOADB                            R1 1
       16 RETURN                           R1 1
       17 GETUPVAL                         R1 1
       18 LOADNIL                          R2
       19 LOADNIL                          R3
       20 FORGPREP                         R1
       21 GETTABLE                         R6 R0 R5
       22 JUMPIFNOT                        R6 ; [+6]
       23 GETIMPORT                        R7 K4 [Enum.KeyCode.None]
       25 JUMPIFEQ                         R6 R7 ; [+3]
       27 LOADB                            R7 1
       28 RETURN                           R7 1
       29 FORGLOOP                         R1 2 ; [-9]
       31 LOADB                            R1 0
       32 RETURN                           R1 1

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
       20 GETTABLEKS                       R3 R3 K9 ["Constants"]
       22 GETTABLEKS                       R3 R3 K10 ["CompositeProperties"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R0 K6 ["Src"]
       27 GETTABLEKS                       R3 R3 K11 ["Flags"]
       29 GETIMPORT                        R4 K5 [require]
       31 GETTABLEKS                       R5 R3 K12 ["getFFlagIAMUIModifier"]
       33 CALL                             R4 1 1
       34 DUPCLOSURE                       R5 K13 [PROTO_0]
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R2
       37 RETURN                           R5 1
