PROTO_0:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["ToolboxSearchWithQuotes"]
        3 NAMECALL                         R1 R1 K3 ["GetFastFlag"]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+7]
        7 MOVE                             R1 R0
        8 JUMPIFNOT                        R1 ; [+5]
        9 GETUPVAL                         R1 0
       10 MOVE                             R2 R0
       11 LOADK                            R3 K4 ["MarketplaceExactSearch"]
       12 LOADK                            R4 K5 ["MarketplaceExactSearchEnabled"]
       13 CALL                             R1 3 1
       14 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["getIsIXPVariableEnabled"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K10 [game]
       18 LOADK                            R5 K11 ["ToolboxSearchWithQuotes"]
       19 LOADB                            R6 0
       20 NAMECALL                         R3 R3 K12 ["DefineFastFlag"]
       22 CALL                             R3 3 0
       23 DUPCLOSURE                       R3 K13 [PROTO_0]
       24 CAPTURE                          VAL R2
       25 RETURN                           R3 1
