PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["getCurrentWindow"]
        5 CALL                             R4 0 -1
        6 NAMECALL                         R1 R1 K1 ["sendTextInputCharacterEvent"]
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["VirtualInputUtils"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K7 [game]
       14 LOADK                            R3 K8 ["VirtualInputManager"]
       15 NAMECALL                         R1 R1 K9 ["GetService"]
       17 CALL                             R1 2 1
       18 NEWTABLE                         R2 1 0
       20 DUPCLOSURE                       R3 K10 [PROTO_0]
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R3 R2 K11 ["sendText"]
       25 RETURN                           R2 1
