PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FoundationDialogBodyUpdate"]
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETIMPORT                        R2 K3 [UDim.new]
        8 LOADN                            R3 0
        9 GETTABLEKS                       R5 R0 K4 ["Gap"]
       11 GETTABLEKS                       R5 R5 K5 ["XLarge"]
       13 GETTABLEKS                       R6 R0 K4 ["Gap"]
       15 GETTABLEKS                       R6 R6 K6 ["XSmall"]
       17 SUB                              R4 R5 R6
       18 CALL                             R2 2 1
       19 MINUS                            R1 R2
       20 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Providers"]
       18 GETTABLEKS                       R3 R3 K9 ["Style"]
       20 GETTABLEKS                       R3 R3 K10 ["Tokens"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 RETURN                           R3 1
