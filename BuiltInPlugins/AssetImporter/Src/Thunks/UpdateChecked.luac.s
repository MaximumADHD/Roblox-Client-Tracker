PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+56]
        3 NAMECALL                         R1 R0 K0 ["getState"]
        5 CALL                             R1 1 1
        6 GETTABLEKS                       R1 R1 K1 ["Preview"]
        8 GETTABLEKS                       R2 R1 K2 ["singleAnimationSelection"]
       10 JUMPIFNOT                        R2 ; [+48]
       11 GETTABLEKS                       R2 R1 K3 ["importTree"]
       13 JUMPIFNOT                        R2 ; [+45]
       14 GETTABLEKS                       R2 R1 K3 ["importTree"]
       16 LOADNIL                          R3
       17 GETUPVAL                         R4 1
       18 LOADNIL                          R5
       19 LOADNIL                          R6
       20 FORGPREP                         R4
       21 JUMPIFNOT                        R8 ; [+7]
       22 LOADK                            R11 K4 ["AnimationImportData"]
       23 NAMECALL                         R9 R7 K5 ["IsA"]
       25 CALL                             R9 2 1
       26 JUMPIFNOT                        R9 ; [+2]
       27 MOVE                             R3 R7
       28 JUMP                             ; [+2]
       29 FORGLOOP                         R4 2 ; [-9]
       31 JUMPIF                           R3 ; [+11]
       32 GETUPVAL                         R4 2
       33 MOVE                             R5 R2
       34 CALL                             R4 1 3
       35 FORGPREP                         R4
       36 GETTABLEKS                       R9 R8 K6 ["ShouldImport"]
       38 JUMPIFNOT                        R9 ; [+2]
       39 MOVE                             R3 R8
       40 JUMP                             ; [+2]
       41 FORGLOOP                         R4 2 ; [-6]
       43 NEWTABLE                         R4 1 0
       45 LOADB                            R5 0
       46 SETTABLE                         R5 R4 R2
       47 NAMECALL                         R5 R2 K7 ["GetDescendants"]
       49 CALL                             R5 1 3
       50 FORGPREP                         R5
       51 JUMPIFEQ                         R9 R3 ; [+2]
       53 LOADB                            R10 0 +1
       54 LOADB                            R10 1
       55 SETTABLE                         R10 R4 R9
       56 FORGLOOP                         R5 2 ; [-6]
       58 SETUPVAL                         R4 1
       59 NEWTABLE                         R1 0 0
       61 GETUPVAL                         R2 1
       62 LOADNIL                          R3
       63 LOADNIL                          R4
       64 FORGPREP                         R2
       65 GETTABLEKS                       R7 R5 K6 ["ShouldImport"]
       67 JUMPIFEQ                         R7 R6 ; [+11]
       69 SETTABLEKS                       R6 R5 K6 ["ShouldImport"]
       71 GETUPVAL                         R7 3
       72 GETTABLEKS                       R7 R7 K8 ["assign"]
       74 MOVE                             R8 R1
       75 GETUPVAL                         R9 4
       76 MOVE                             R10 R5
       77 CALL                             R9 1 -1
       78 CALL                             R7 -1 0
       79 FORGLOOP                         R2 2 ; [-15]
       81 GETUPVAL                         R4 5
       82 MOVE                             R5 R1
       83 CALL                             R4 1 -1
       84 NAMECALL                         R2 R0 K9 ["dispatch"]
       86 CALL                             R2 -1 0
       87 NAMECALL                         R2 R0 K0 ["getState"]
       89 CALL                             R2 1 1
       90 GETTABLEKS                       R3 R2 K1 ["Preview"]
       92 GETTABLEKS                       R3 R3 K3 ["importTree"]
       94 GETUPVAL                         R6 6
       95 GETUPVAL                         R7 7
       96 MOVE                             R8 R3
       97 CALL                             R7 1 -1
       98 CALL                             R6 -1 -1
       99 NAMECALL                         R4 R0 K9 ["dispatch"]
      101 CALL                             R4 -1 0
      102 GETUPVAL                         R6 8
      103 GETUPVAL                         R7 9
      104 MOVE                             R8 R3
      105 CALL                             R7 1 -1
      106 CALL                             R6 -1 -1
      107 NAMECALL                         R4 R0 K9 ["dispatch"]
      109 CALL                             R4 -1 0
      110 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          REF R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CLOSEUPVALS                      R0
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Utility"]
       20 GETTABLEKS                       R3 R3 K10 ["GetErrorChecked"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Utility"]
       29 GETTABLEKS                       R4 R4 K11 ["GetCheckedCount"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K12 ["Actions"]
       38 GETTABLEKS                       R5 R5 K13 ["SetCheckedCount"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K12 ["Actions"]
       47 GETTABLEKS                       R6 R6 K14 ["SetTreeChecked"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R7 K12 ["Actions"]
       56 GETTABLEKS                       R7 R7 K15 ["SetErrorNodeChecked"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K8 ["Src"]
       63 GETTABLEKS                       R8 R8 K9 ["Utility"]
       65 GETTABLEKS                       R8 R8 K16 ["GetCheckedMapForSubtree"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K8 ["Src"]
       72 GETTABLEKS                       R9 R9 K9 ["Utility"]
       74 GETTABLEKS                       R9 R9 K17 ["getAnimations"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETTABLEKS                       R10 R0 K8 ["Src"]
       81 GETTABLEKS                       R10 R10 K18 ["Flags"]
       83 GETTABLEKS                       R10 R10 K19 ["getEFImportAnimationVersions"]
       85 CALL                             R9 1 1
       86 DUPCLOSURE                       R10 K20 [PROTO_1]
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R3
       96 RETURN                           R10 1
