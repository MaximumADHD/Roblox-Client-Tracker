PROTO_0:
        0 LOADK                            R3 K0 ["ParticleEmitter"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+14]
        5 LOADK                            R3 K2 ["Fire"]
        6 NAMECALL                         R1 R0 K1 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIF                           R1 ; [+9]
       10 LOADK                            R3 K3 ["Smoke"]
       11 NAMECALL                         R1 R0 K1 ["IsA"]
       13 CALL                             R1 2 1
       14 JUMPIF                           R1 ; [+4]
       15 LOADK                            R3 K4 ["Sparkles"]
       16 NAMECALL                         R1 R0 K1 ["IsA"]
       18 CALL                             R1 2 1
       19 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["InstanceIsAParticleEffect"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+4]
        6 LOADN                            R3 240
        7 NAMECALL                         R1 R0 K1 ["FastForward"]
        9 CALL                             R1 2 0
       10 NAMECALL                         R1 R0 K2 ["GetChildren"]
       12 CALL                             R1 1 1
       13 MOVE                             R2 R1
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 FORGPREP                         R2
       17 GETUPVAL                         R7 1
       18 MOVE                             R8 R6
       19 CALL                             R7 1 0
       20 FORGLOOP                         R2 2 ; [-4]
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["InstanceIsAParticleEffect"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 DUPCLOSURE                       R2 K3 [PROTO_2]
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R2 R0 K4 ["FastForwardParticles"]
       13 RETURN                           R0 1
