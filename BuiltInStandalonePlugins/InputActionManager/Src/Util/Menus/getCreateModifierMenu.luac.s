PROTO_0:
        0 JUMPIFNOT                        R1 ; [+5]
        1 GETIMPORT                        R3 K2 [table.clone]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 JUMP                             ; [+2]
        6 NEWTABLE                         R3 0 0
        8 GETUPVAL                         R4 0
        9 MOVE                             R5 R2
       10 CALL                             R4 1 1
       11 JUMPIFNOT                        R4 ; [+24]
       12 GETUPVAL                         R4 1
       13 MOVE                             R5 R2
       14 CALL                             R4 1 1
       15 JUMPIF                           R4 ; [+20]
       16 DUPTABLE                         R6 K5 [{"id", "text"}]
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R7 R7 K6 ["ROW_ADD_PRIMARY_MODIFIER"]
       20 SETTABLEKS                       R7 R6 K3 ["id"]
       22 LOADK                            R9 K7 ["Menu"]
       23 LOADK                            R10 K8 ["PrimaryModifier"]
       24 NAMECALL                         R7 R0 K9 ["getText"]
       26 CALL                             R7 3 1
       27 SETTABLEKS                       R7 R6 K4 ["text"]
       29 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       31 MOVE                             R5 R3
       32 GETIMPORT                        R4 K11 [table.insert]
       34 CALL                             R4 2 0
       35 JUMP                             ; [+27]
       36 GETUPVAL                         R4 1
       37 MOVE                             R5 R2
       38 CALL                             R4 1 1
       39 JUMPIFNOT                        R4 ; [+23]
       40 GETUPVAL                         R4 3
       41 MOVE                             R5 R2
       42 CALL                             R4 1 1
       43 JUMPIF                           R4 ; [+19]
       44 DUPTABLE                         R6 K5 [{"id", "text"}]
       45 GETUPVAL                         R7 2
       46 GETTABLEKS                       R7 R7 K12 ["ROW_ADD_SECONDARY_MODIFIER"]
       48 SETTABLEKS                       R7 R6 K3 ["id"]
       50 LOADK                            R9 K7 ["Menu"]
       51 LOADK                            R10 K13 ["SecondaryModifier"]
       52 NAMECALL                         R7 R0 K9 ["getText"]
       54 CALL                             R7 3 1
       55 SETTABLEKS                       R7 R6 K4 ["text"]
       57 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       59 MOVE                             R5 R3
       60 GETIMPORT                        R4 K11 [table.insert]
       62 CALL                             R4 2 0
       63 LENGTH                           R5 R3
       64 LOADN                            R6 0
       65 JUMPIFNOTLT                      R6 R5 ; [+3]
       67 MOVE                             R4 R3
       68 RETURN                           R4 1
       69 LOADNIL                          R4
       70 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Constants"]
       29 GETTABLEKS                       R4 R4 K12 ["MenuIdentifiers"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["Util"]
       38 GETTABLEKS                       R5 R5 K13 ["Binding"]
       40 GETTABLEKS                       R5 R5 K14 ["hasKeycodes"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K8 ["Src"]
       47 GETTABLEKS                       R6 R6 K10 ["Util"]
       49 GETTABLEKS                       R6 R6 K13 ["Binding"]
       51 GETTABLEKS                       R6 R6 K15 ["hasPrimaryModifier"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K8 ["Src"]
       58 GETTABLEKS                       R7 R7 K10 ["Util"]
       60 GETTABLEKS                       R7 R7 K13 ["Binding"]
       62 GETTABLEKS                       R7 R7 K16 ["hasSecondaryModifier"]
       64 CALL                             R6 1 1
       65 DUPCLOSURE                       R7 K17 [PROTO_0]
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R6
       70 RETURN                           R7 1
