PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ToolboxDoNotSandboxCreatedAssets"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+2]
        7 GETUPVAL                         R0 0
        8 CALL                             R0 0 1
        9 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["SharedFlags"]
       15 GETTABLEKS                       R2 R2 K9 ["getFFlagToolboxCapabilities"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K11 [game]
       20 LOADK                            R4 K12 ["ToolboxDoNotSandboxCreatedAssets"]
       21 LOADB                            R5 0
       22 NAMECALL                         R2 R2 K13 ["DefineFastFlag"]
       24 CALL                             R2 3 0
       25 DUPCLOSURE                       R2 K14 [PROTO_0]
       26 CAPTURE                          VAL R1
       27 RETURN                           R2 1
