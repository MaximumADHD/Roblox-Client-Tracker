PROTO_0:
        0 GETIMPORT                        R4 K3 [Enum.UserInputState.Begin]
        2 JUMPIFEQ                         R1 R4 ; [+5]
        4 GETIMPORT                        R4 K5 [Enum.UserInputState.Change]
        6 JUMPIFNOTEQ                      R1 R4 ; [+13]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K6 ["Dictionary"]
       11 GETTABLEKS                       R4 R5 K7 ["join"]
       13 MOVE                             R5 R0
       14 NEWTABLE                         R6 1 0
       16 SETTABLE                         R3 R6 R2
       17 CALL                             R4 2 1
       18 MOVE                             R0 R4
       19 RETURN                           R0 1
       20 GETIMPORT                        R4 K9 [Enum.UserInputState.End]
       22 JUMPIFEQ                         R1 R4 ; [+6]
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R4 R5 K10 ["VECTOR_RELEASED"]
       27 JUMPIFNOTEQ                      R3 R4 ; [+15]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R5 R6 K6 ["Dictionary"]
       32 GETTABLEKS                       R4 R5 K7 ["join"]
       34 MOVE                             R5 R0
       35 NEWTABLE                         R6 1 0
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R7 R8 K11 ["None"]
       40 SETTABLE                         R7 R6 R2
       41 CALL                             R4 2 1
       42 MOVE                             R0 R4
       43 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ControlsEmulator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
