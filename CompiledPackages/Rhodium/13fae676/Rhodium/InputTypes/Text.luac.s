PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getCurrentWindow"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 NAMECALL                         R2 R2 K1 ["SendTextInputCharacterEvent"]
        9 CALL                             R2 3 0
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["VirtualInputManager"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Rhodium"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["VirtualInputUtils"]
       17 CALL                             R2 1 1
       18 NEWTABLE                         R3 1 0
       20 DUPCLOSURE                       R4 K11 [PROTO_0]
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R4 R3 K12 ["sendText"]
       25 RETURN                           R3 1
