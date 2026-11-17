PROTO_0:
        0 GETIMPORT                        R0 K1 [plugin]
        2 GETTABLEKS                       R0 R0 K2 ["HostDataModelTypeIsCurrent"]
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K3 ["createElement"]
        9 GETUPVAL                         R1 1
       10 DUPTABLE                         R2 K5 [{"Plugin"}]
       11 GETIMPORT                        R3 K1 [plugin]
       13 SETTABLEKS                       R3 R2 K4 ["Plugin"]
       15 CALL                             R0 2 1
       16 GETIMPORT                        R1 K8 [Instance.new]
       18 LOADK                            R2 K9 ["Frame"]
       19 CALL                             R1 1 1
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R2 R2 K10 ["createRoot"]
       23 MOVE                             R3 R1
       24 CALL                             R2 1 1
       25 SETUPVAL                         R2 2
       26 GETUPVAL                         R3 2
       27 FASTCALL2K                       ASSERT R3 K11 ; [+4]
       29 LOADK                            R4 K11 ["Force Luau to know root is non-nil"]
       30 GETIMPORT                        R2 K13 [assert]
       32 CALL                             R2 2 0
       33 GETUPVAL                         R2 2
       34 MOVE                             R4 R0
       35 NAMECALL                         R2 R2 K14 ["render"]
       37 CALL                             R2 2 0
       38 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["unmount"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Packages"]
        5 GETTABLEKS                       R1 R1 K3 ["React"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K2 ["Packages"]
       13 GETTABLEKS                       R2 R2 K4 ["ReactRoblox"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K1 [require]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K5 ["Src"]
       21 GETTABLEKS                       R3 R3 K6 ["MainPlugin"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K8 [plugin]
       26 GETTABLEKS                       R3 R3 K9 ["MultipleDocumentInterfaceInstance"]
       28 GETTABLEKS                       R4 R3 K10 ["FocusedDataModelSession"]
       30 LOADNIL                          R5
       31 NEWCLOSURE                       R6 P0
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R2
       34 CAPTURE                          REF R5
       35 CAPTURE                          VAL R1
       36 NEWCLOSURE                       R7 P1
       37 CAPTURE                          REF R5
       38 GETTABLEKS                       R8 R4 K11 ["CurrentDataModelTypeAboutToChange"]
       40 MOVE                             R10 R7
       41 NAMECALL                         R8 R8 K12 ["Connect"]
       43 CALL                             R8 2 0
       44 GETTABLEKS                       R8 R4 K13 ["CurrentDataModelTypeChanged"]
       46 MOVE                             R10 R6
       47 NAMECALL                         R8 R8 K12 ["Connect"]
       49 CALL                             R8 2 0
       50 MOVE                             R8 R6
       51 CALL                             R8 0 0
       52 CLOSEUPVALS                      R5
       53 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["TestLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["launch"]
       16 LOADK                            R3 K2 ["StartPage"]
       17 GETTABLEKS                       R4 R0 K9 ["Src"]
       19 CALL                             R2 2 0
       20 DUPCLOSURE                       R2 K10 [PROTO_2]
       21 CAPTURE                          VAL R0
       22 GETIMPORT                        R3 K12 [game]
       24 LOADK                            R5 K13 ["DebugTestStartPageInAssetDM"]
       25 LOADB                            R6 0
       26 NAMECALL                         R3 R3 K14 ["DefineFastFlag"]
       28 CALL                             R3 3 1
       29 JUMPIFNOT                        R3 ; [+2]
       30 MOVE                             R4 R2
       31 CALL                             R4 0 0
       32 RETURN                           R0 0
