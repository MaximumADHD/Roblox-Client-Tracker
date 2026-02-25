PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["Unable to modify import node because it does not exist!"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 JUMPIFNOT                        R1 ; [+46]
        9 GETUPVAL                         R1 1
       10 JUMPIFEQKS                       R1 K3 [""] ; [+44]
       12 GETUPVAL                         R1 0
       13 GETUPVAL                         R2 2
       14 GETUPVAL                         R3 1
       15 SETTABLE                         R3 R1 R2
       16 GETUPVAL                         R2 0
       17 LOADK                            R4 K4 ["RootImportData"]
       18 NAMECALL                         R2 R2 K5 ["IsA"]
       20 CALL                             R2 2 1
       21 JUMPIFNOT                        R2 ; [+2]
       22 GETUPVAL                         R1 0
       23 JUMP                             ; [+5]
       24 GETUPVAL                         R1 0
       25 LOADK                            R3 K4 ["RootImportData"]
       26 NAMECALL                         R1 R1 K6 ["FindFirstAncestorOfClass"]
       28 CALL                             R1 2 1
       29 GETUPVAL                         R4 3
       30 GETUPVAL                         R5 4
       31 GETUPVAL                         R6 0
       32 CALL                             R5 1 -1
       33 CALL                             R4 -1 -1
       34 NAMECALL                         R2 R0 K7 ["dispatch"]
       36 CALL                             R2 -1 0
       37 GETUPVAL                         R2 5
       38 MOVE                             R3 R1
       39 CALL                             R2 1 1
       40 GETUPVAL                         R5 6
       41 MOVE                             R6 R2
       42 CALL                             R5 1 -1
       43 NAMECALL                         R3 R0 K7 ["dispatch"]
       45 CALL                             R3 -1 0
       46 GETUPVAL                         R5 7
       47 GETUPVAL                         R6 0
       48 NAMECALL                         R6 R6 K8 ["GetPreview"]
       50 CALL                             R6 1 -1
       51 CALL                             R5 -1 -1
       52 NAMECALL                         R3 R0 K7 ["dispatch"]
       54 CALL                             R3 -1 0
       55 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R2
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R2 K5 ["Actions"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["SetErrorNodeChecked"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R1 K9 ["SetTreeChecked"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R5 R0 K4 ["Src"]
       23 GETTABLEKS                       R4 R5 K10 ["Thunks"]
       25 GETIMPORT                        R5 K7 [require]
       27 GETTABLEKS                       R6 R4 K11 ["UpdatePreviewInstance"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K7 [require]
       32 GETTABLEKS                       R9 R0 K4 ["Src"]
       34 GETTABLEKS                       R8 R9 K12 ["Utility"]
       36 GETTABLEKS                       R7 R8 K13 ["GetCheckedMapForSubtree"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K7 [require]
       41 GETTABLEKS                       R10 R0 K4 ["Src"]
       43 GETTABLEKS                       R9 R10 K12 ["Utility"]
       45 GETTABLEKS                       R8 R9 K14 ["GetErrorChecked"]
       47 CALL                             R7 1 1
       48 DUPCLOSURE                       R8 K15 [PROTO_1]
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R5
       54 RETURN                           R8 1
