PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+6]
        3 GETIMPORT                        R0 K1 [game]
        5 LOADK                            R2 K2 ["ToolboxFixInventoryGridSearch"]
        6 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        8 CALL                             R0 2 1
        9 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ToolboxFixInventoryGridSearch"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K5 [script]
       10 LOADK                            R2 K6 ["Toolbox"]
       11 NAMECALL                         R0 R0 K7 ["FindFirstAncestor"]
       13 CALL                             R0 2 1
       14 GETIMPORT                        R1 K9 [require]
       16 GETTABLEKS                       R5 R0 K10 ["Src"]
       18 GETTABLEKS                       R4 R5 K11 ["Util"]
       20 GETTABLEKS                       R3 R4 K12 ["SharedFlags"]
       22 GETTABLEKS                       R2 R3 K13 ["getFFlagToolboxFixInventoryCreatorFilter"]
       24 CALL                             R1 1 1
       25 DUPCLOSURE                       R2 K14 [PROTO_0]
       26 CAPTURE                          VAL R1
       27 RETURN                           R2 1
