PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LogFlagLinkedUserLayerExposure"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+8]
        4 DUPCLOSURE                       R1 K0 [PROTO_0]
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 FASTPCALL                        pcall 1 ; [+2]
        8 GETIMPORT                        R0 K2 [pcall]
       10 CALL                             R0 1 1
       11 SETUPVAL                         R0 1
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["IXPService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StudioUnifiedPublishActionIxpEnabled"]
       10 NAMECALL                         R1 R1 K5 ["GetFastFlag"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K6 ["StudioUnifiedPublishActionIxpLayer"]
       16 NAMECALL                         R2 R2 K7 ["GetFastString"]
       18 CALL                             R2 2 1
       19 LOADB                            R3 0
       20 NEWTABLE                         R4 1 0
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          REF R3
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R2
       27 SETTABLEKS                       R5 R4 K8 ["log"]
       29 CLOSEUPVALS                      R3
       30 RETURN                           R4 1
