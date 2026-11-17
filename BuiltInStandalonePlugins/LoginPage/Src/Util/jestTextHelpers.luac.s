PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 LOADK                            R9 K1 ["TextLabel"]
        5 NAMECALL                         R7 R6 K2 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIF                           R7 ; [+10]
        9 LOADK                            R9 K3 ["TextButton"]
       10 NAMECALL                         R7 R6 K2 ["IsA"]
       12 CALL                             R7 2 1
       13 JUMPIF                           R7 ; [+5]
       14 LOADK                            R9 K4 ["TextBox"]
       15 NAMECALL                         R7 R6 K2 ["IsA"]
       17 CALL                             R7 2 1
       18 JUMPIFNOT                        R7 ; [+11]
       19 GETTABLEKS                       R7 R6 K5 ["Text"]
       21 GETIMPORT                        R8 K8 [string.find]
       23 MOVE                             R9 R7
       24 MOVE                             R10 R1
       25 LOADN                            R11 1
       26 LOADB                            R12 1
       27 CALL                             R8 4 1
       28 JUMPIFNOT                        R8 ; [+1]
       29 RETURN                           R6 1
       30 FORGLOOP                         R2 2 ; [-27]
       32 LOADNIL                          R2
       33 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K2 [{"findDescendantWithText"}]
        3 SETTABLEKS                       R0 R1 K1 ["findDescendantWithText"]
        5 RETURN                           R1 1
