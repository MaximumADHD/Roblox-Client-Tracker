PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFNOTEQKNIL                  R2 ; [+3]
        4 LOADB                            R3 0
        5 RETURN                           R3 1
        6 MOVE                             R3 R2
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 GETTABLE                         R8 R0 R7
       11 JUMPIFEQKNIL                     R8 ; [+5]
       13 GETIMPORT                        R9 K3 [Enum.KeyCode.Unknown]
       15 JUMPIFNOTEQ                      R8 R9 ; [+3]
       17 LOADB                            R9 0
       18 RETURN                           R9 1
       19 FORGLOOP                         R3 2 ; [-10]
       21 LOADB                            R3 1
       22 RETURN                           R3 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 3
        4 FORGPREP                         R3
        5 GETTABLEKS                       R8 R0 K0 ["Keycode"]
        7 LOADNIL                          R9
        8 LOADNIL                          R10
        9 FORGPREP                         R8
       10 GETTABLE                         R13 R12 R7
       11 JUMPIFNOT                        R13 ; [+3]
       12 LOADB                            R13 1
       13 SETTABLE                         R13 R2 R7
       14 JUMP                             ; [+2]
       15 FORGLOOP                         R8 2 ; [-6]
       17 GETTABLE                         R8 R2 R7
       18 JUMPIF                           R8 ; [+17]
       19 GETTABLEKS                       R8 R0 K1 ["Composite"]
       21 LOADNIL                          R9
       22 LOADNIL                          R10
       23 FORGPREP                         R8
       24 GETTABLE                         R13 R12 R7
       25 JUMPIFNOT                        R13 ; [+8]
       26 GETUPVAL                         R14 1
       27 MOVE                             R15 R13
       28 MOVE                             R16 R1
       29 CALL                             R14 2 1
       30 JUMPIFNOT                        R14 ; [+3]
       31 LOADB                            R14 1
       32 SETTABLE                         R14 R2 R7
       33 JUMP                             ; [+2]
       34 FORGLOOP                         R8 2 ; [-11]
       36 FORGLOOP                         R3 2 ; [-32]
       38 RETURN                           R2 1

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
       22 GETTABLEKS                       R3 R3 K10 ["DirectionPropertyNames"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K8 ["Util"]
       31 GETTABLEKS                       R4 R4 K11 ["getSchemas"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K12 [PROTO_0]
       35 CAPTURE                          VAL R2
       36 DUPCLOSURE                       R5 K13 [PROTO_1]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 RETURN                           R5 1
