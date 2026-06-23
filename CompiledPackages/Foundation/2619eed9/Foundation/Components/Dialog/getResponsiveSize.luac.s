PROTO_0:
        0 NEWTABLE                         R3 4 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K0 ["Small"]
        5 GETTABLEKS                       R5 R2 K1 ["Padding"]
        7 GETTABLEKS                       R5 R5 K2 ["Large"]
        9 SETTABLE                         R5 R3 R4
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K3 ["Medium"]
       13 GETTABLEKS                       R5 R2 K1 ["Padding"]
       15 GETTABLEKS                       R5 R5 K4 ["XLarge"]
       17 SETTABLE                         R5 R3 R4
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K2 ["Large"]
       21 GETTABLEKS                       R5 R2 K1 ["Padding"]
       23 GETTABLEKS                       R5 R5 K4 ["XLarge"]
       25 SETTABLE                         R5 R3 R4
       26 GETTABLE                         R5 R3 R1
       27 MULK                             R4 R5 K5 [2]
       28 GETTABLEKS                       R5 R2 K6 ["Config"]
       30 GETTABLEKS                       R5 R5 K7 ["UI"]
       32 GETTABLEKS                       R5 R5 K8 ["Scale"]
       34 GETUPVAL                         R9 1
       35 GETUPVAL                         R10 0
       36 GETTABLEKS                       R10 R10 K3 ["Medium"]
       38 GETTABLE                         R8 R9 R10
       39 MUL                              R7 R8 R5
       40 ADD                              R6 R7 R4
       41 JUMPIFNOTLE                      R0 R6 ; [+10]
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R6 R6 K0 ["Small"]
       46 JUMPIFEQ                         R1 R6 ; [+5]
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R6 R6 K0 ["Small"]
       51 RETURN                           R6 1
       52 GETUPVAL                         R9 1
       53 GETUPVAL                         R10 0
       54 GETTABLEKS                       R10 R10 K2 ["Large"]
       56 GETTABLE                         R8 R9 R10
       57 MUL                              R7 R8 R5
       58 ADD                              R6 R7 R4
       59 JUMPIFNOTLE                      R0 R6 ; [+10]
       61 GETUPVAL                         R6 0
       62 GETTABLEKS                       R6 R6 K2 ["Large"]
       64 JUMPIFNOTEQ                      R1 R6 ; [+5]
       66 GETUPVAL                         R6 0
       67 GETTABLEKS                       R6 R6 K3 ["Medium"]
       69 RETURN                           R6 1
       70 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R2 K7 ["DialogSize"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Providers"]
       18 GETTABLEKS                       R3 R3 K9 ["Style"]
       20 GETTABLEKS                       R3 R3 K10 ["Tokens"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K11 ["Parent"]
       29 GETTABLEKS                       R4 R4 K12 ["useDialogVariants"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R3 R3 K13 ["DIALOG_SIZES"]
       34 DUPCLOSURE                       R4 K14 [PROTO_0]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R3
       37 RETURN                           R4 1
