PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ACEUseIKControls"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+13]
        7 GETIMPORT                        R0 K1 [game]
        9 LOADK                            R2 K4 ["HumanoidRigDescriptionEnabled"]
       10 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
       12 CALL                             R0 2 1
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETIMPORT                        R0 K1 [game]
       16 LOADK                            R2 K5 ["IKSolverValidateChain"]
       17 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
       19 CALL                             R0 2 1
       20 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ACEUseIKControls"]
        4 LOADN                            R3 3
        5 NAMECALL                         R0 R0 K3 ["SetFlagVersion"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K2 ["ACEUseIKControls"]
       11 LOADB                            R3 0
       12 NAMECALL                         R0 R0 K4 ["DefineFastFlag"]
       14 CALL                             R0 3 0
       15 DUPCLOSURE                       R0 K5 [PROTO_0]
       16 RETURN                           R0 1
