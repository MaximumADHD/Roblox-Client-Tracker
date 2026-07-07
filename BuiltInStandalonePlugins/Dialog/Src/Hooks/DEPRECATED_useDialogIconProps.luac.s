PROTO_0:
        0 GETIMPORT                        R0 K2 [table.freeze]
        2 DUPTABLE                         R1 K6 [{"Warning", "Critical", "Success"}]
        3 GETIMPORT                        R2 K2 [table.freeze]
        5 DUPTABLE                         R3 K9 [{"icon", "color"}]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K10 ["Icon"]
        9 GETTABLEKS                       R4 R4 K11 ["TriangleExclamation"]
       11 SETTABLEKS                       R4 R3 K7 ["icon"]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K12 ["Color"]
       16 GETTABLEKS                       R4 R4 K13 ["System"]
       18 GETTABLEKS                       R4 R4 K3 ["Warning"]
       20 SETTABLEKS                       R4 R3 K8 ["color"]
       22 CALL                             R2 1 1
       23 SETTABLEKS                       R2 R1 K3 ["Warning"]
       25 GETIMPORT                        R2 K2 [table.freeze]
       27 DUPTABLE                         R3 K9 [{"icon", "color"}]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K10 ["Icon"]
       31 GETTABLEKS                       R4 R4 K14 ["CircleX"]
       33 SETTABLEKS                       R4 R3 K7 ["icon"]
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R4 R4 K12 ["Color"]
       38 GETTABLEKS                       R4 R4 K13 ["System"]
       40 GETTABLEKS                       R4 R4 K15 ["Alert"]
       42 SETTABLEKS                       R4 R3 K8 ["color"]
       44 CALL                             R2 1 1
       45 SETTABLEKS                       R2 R1 K4 ["Critical"]
       47 GETUPVAL                         R3 2
       48 JUMPIFNOT                        R3 ; [+21]
       49 GETIMPORT                        R2 K2 [table.freeze]
       51 DUPTABLE                         R3 K9 [{"icon", "color"}]
       52 GETUPVAL                         R4 0
       53 GETTABLEKS                       R4 R4 K10 ["Icon"]
       55 GETTABLEKS                       R4 R4 K16 ["CircleCheck"]
       57 SETTABLEKS                       R4 R3 K7 ["icon"]
       59 GETUPVAL                         R4 1
       60 GETTABLEKS                       R4 R4 K12 ["Color"]
       62 GETTABLEKS                       R4 R4 K13 ["System"]
       64 GETTABLEKS                       R4 R4 K5 ["Success"]
       66 SETTABLEKS                       R4 R3 K8 ["color"]
       68 CALL                             R2 1 1
       69 JUMP                             ; [+1]
       70 LOADNIL                          R2
       71 SETTABLEKS                       R2 R1 K5 ["Success"]
       73 CALL                             R0 1 -1
       74 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["SharedFlags"]
        3 GETTABLEKS                       R4 R4 K1 ["getFFlagStudioFoundationDialogComponent"]
        5 CALL                             R4 0 1
        6 NOT                              R3 R4
        7 FASTCALL2K                       ASSERT R3 K2 ; [+4]
        9 LOADK                            R4 K2 ["This version of useDialogIconProps is deprecated. Use the version from StudioFoundation"]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 2 0
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K5 ["useMemo"]
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U3
       20 NEWTABLE                         R4 0 1
       22 MOVE                             R5 R0
       23 SETLIST                          R4 R5 1 [1]
       25 CALL                             R2 2 1
       26 GETTABLE                         R3 R2 R1
       27 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["BuilderIcons"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Types"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K11 ["Src"]
       46 GETTABLEKS                       R7 R7 K13 ["Flags"]
       48 GETTABLEKS                       R7 R7 K14 ["getFFlagDialogManagerSuccessType"]
       50 CALL                             R6 1 1
       51 MOVE                             R7 R6
       52 CALL                             R7 0 1
       53 DUPCLOSURE                       R8 K15 [PROTO_1]
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R7
       58 RETURN                           R8 1
