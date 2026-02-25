PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 NAMECALL                         R0 R0 K4 ["HasInternalPermission"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R1 K1 [plugin]
        2 GETTABLEKS                       R0 R1 K2 ["HostDataModelTypeIsCurrent"]
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 0
        7 JUMPIFNOT                        R0 ; [+23]
        8 GETIMPORT                        R1 K4 [require]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["DeveloperTools"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R0 R1 K7 ["forPlugin"]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R1 R2 K8 ["Name"]
       21 GETIMPORT                        R2 K1 [plugin]
       23 CALL                             R0 2 1
       24 SETUPVAL                         R0 1
       25 GETUPVAL                         R0 1
       26 GETIMPORT                        R2 K1 [plugin]
       28 NAMECALL                         R0 R0 K9 ["addPluginRouter"]
       30 CALL                             R0 2 0
       31 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["destroy"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [plugin]
        2 GETTABLEKS                       R0 R1 K2 ["HostDataModelTypeIsCurrent"]
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 0
        7 JUMPIFNOT                        R0 ; [+23]
        8 GETIMPORT                        R1 K4 [require]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["DeveloperTools"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R0 R1 K7 ["forPlugin"]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R1 R2 K8 ["Name"]
       21 GETIMPORT                        R2 K1 [plugin]
       23 CALL                             R0 2 1
       24 SETUPVAL                         R0 1
       25 GETUPVAL                         R0 1
       26 GETIMPORT                        R2 K1 [plugin]
       28 NAMECALL                         R0 R0 K9 ["addPluginRouter"]
       30 CALL                             R0 2 0
       31 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["FocusedDataModelSession"]
        5 GETTABLEKS                       R1 R0 K1 ["CurrentDataModelTypeAboutToChange"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U2
        9 NAMECALL                         R1 R1 K2 ["Connect"]
       11 CALL                             R1 2 0
       12 GETTABLEKS                       R1 R0 K3 ["CurrentDataModelTypeChanged"]
       14 NEWCLOSURE                       R3 P1
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U4
       18 NAMECALL                         R1 R1 K2 ["Connect"]
       20 CALL                             R1 2 0
       21 GETIMPORT                        R2 K5 [plugin]
       23 GETTABLEKS                       R1 R2 K6 ["HostDataModelTypeIsCurrent"]
       25 JUMPIF                           R1 ; [+1]
       26 RETURN                           R0 0
       27 GETUPVAL                         R1 3
       28 JUMPIFNOT                        R1 ; [+23]
       29 GETIMPORT                        R2 K8 [require]
       31 GETUPVAL                         R5 4
       32 GETTABLEKS                       R4 R5 K9 ["Packages"]
       34 GETTABLEKS                       R3 R4 K10 ["DeveloperTools"]
       36 CALL                             R2 1 1
       37 GETTABLEKS                       R1 R2 K11 ["forPlugin"]
       39 GETUPVAL                         R3 4
       40 GETTABLEKS                       R2 R3 K12 ["Name"]
       42 GETIMPORT                        R3 K5 [plugin]
       44 CALL                             R1 2 1
       45 SETUPVAL                         R1 2
       46 GETUPVAL                         R1 2
       47 GETIMPORT                        R3 K5 [plugin]
       49 NAMECALL                         R1 R1 K13 ["addPluginRouter"]
       51 CALL                             R1 2 0
       52 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R4 R0 K5 ["Src"]
       11 GETTABLEKS                       R3 R4 K6 ["Util"]
       13 GETTABLEKS                       R2 R3 K7 ["DebugFlags"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K8 ["RunningUnderCLI"]
       18 CALL                             R2 0 1
       19 JUMPIFNOT                        R2 ; [+1]
       20 RETURN                           R0 0
       21 GETIMPORT                        R3 K10 [plugin]
       23 GETTABLEKS                       R2 R3 K11 ["MultipleDocumentInterfaceInstance"]
       25 GETIMPORT                        R6 K1 [script]
       27 GETTABLEKS                       R5 R6 K2 ["Parent"]
       29 GETTABLEKS                       R4 R5 K2 ["Parent"]
       31 GETTABLEKS                       R3 R4 K12 ["Common"]
       33 GETIMPORT                        R4 K4 [require]
       35 GETTABLEKS                       R5 R3 K13 ["commonInit"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K15 [pcall]
       40 DUPCLOSURE                       R6 K16 [PROTO_0]
       41 CALL                             R5 1 2
       42 JUMPIF                           R5 ; [+1]
       43 LOADB                            R6 0
       44 LOADNIL                          R7
       45 NEWCLOSURE                       R8 P1
       46 CAPTURE                          REF R6
       47 CAPTURE                          REF R7
       48 CAPTURE                          VAL R0
       49 NEWCLOSURE                       R9 P2
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R2
       52 CAPTURE                          REF R7
       53 CAPTURE                          REF R6
       54 CAPTURE                          VAL R0
       55 MOVE                             R10 R9
       56 CALL                             R10 0 0
       57 CLOSEUPVALS                      R6
       58 RETURN                           R0 0
