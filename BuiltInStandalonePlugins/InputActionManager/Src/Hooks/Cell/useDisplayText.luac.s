PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 ["Instance"] ; [+29]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+5]
        5 GETUPVAL                         R0 1
        6 JUMPIFEQKS                       R0 K1 ["None"] ; [+3]
        8 GETUPVAL                         R0 1
        9 RETURN                           R0 1
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K2 ["datamodelType"]
       13 GETIMPORT                        R1 K6 [Enum.StudioDataModelType.PlayClient]
       15 JUMPIFEQ                         R0 R1 ; [+15]
       17 GETUPVAL                         R0 2
       18 GETTABLEKS                       R0 R0 K2 ["datamodelType"]
       20 GETIMPORT                        R1 K8 [Enum.StudioDataModelType.PlayServer]
       22 JUMPIFEQ                         R0 R1 ; [+8]
       24 GETUPVAL                         R0 3
       25 LOADK                            R2 K9 ["Cell"]
       26 LOADK                            R3 K10 ["PickButton"]
       27 NAMECALL                         R0 R0 K11 ["getText"]
       29 CALL                             R0 3 -1
       30 RETURN                           R0 -1
       31 GETUPVAL                         R0 0
       32 JUMPIFNOTEQKS                    R0 K12 ["Dropdown"] ; [+17]
       34 GETUPVAL                         R0 4
       35 JUMPIFNOT                        R0 ; [+14]
       36 GETUPVAL                         R1 4
       37 GETUPVAL                         R2 5
       38 GETTABLE                         R0 R1 R2
       39 JUMPIFNOT                        R0 ; [+10]
       40 GETIMPORT                        R1 K14 [Enum.KeyCode.None]
       42 JUMPIFEQ                         R0 R1 ; [+7]
       44 GETUPVAL                         R2 6
       45 GETTABLE                         R1 R2 R0
       46 JUMPIF                           R1 ; [+2]
       47 GETTABLEKS                       R1 R0 K15 ["Name"]
       49 RETURN                           R1 1
       50 GETUPVAL                         R0 3
       51 LOADK                            R2 K9 ["Cell"]
       52 LOADK                            R3 K1 ["None"]
       53 NAMECALL                         R0 R0 K11 ["getText"]
       55 CALL                             R0 3 -1
       56 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["useContext"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K1 ["Context"]
        6 CALL                             R4 1 1
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K0 ["useContext"]
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R6 R6 K1 ["Context"]
       13 CALL                             R5 1 1
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K2 ["useMemo"]
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R3
       20 CAPTURE                          VAL R5
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 CAPTURE                          UPVAL U3
       25 NEWTABLE                         R8 0 5
       27 MOVE                             R9 R4
       28 MOVE                             R10 R5
       29 MOVE                             R11 R3
       30 MOVE                             R12 R0
       31 MOVE                             R13 R1
       32 SETLIST                          R8 R9 5 [1]
       34 CALL                             R6 2 1
       35 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["StudioFoundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Contexts"]
       23 GETTABLEKS                       R3 R3 K10 ["Localization"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R5 K9 ["Contexts"]
       31 GETTABLEKS                       R5 R5 K12 ["DatamodelConfiguration"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K11 ["Src"]
       38 GETTABLEKS                       R6 R6 K13 ["Types"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K11 ["Src"]
       45 GETTABLEKS                       R7 R7 K14 ["Util"]
       47 GETTABLEKS                       R7 R7 K15 ["Constants"]
       49 GETTABLEKS                       R7 R7 K16 ["KeycodeStrings"]
       51 CALL                             R6 1 1
       52 DUPCLOSURE                       R7 K17 [PROTO_1]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R6
       57 RETURN                           R7 1
