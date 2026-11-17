PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 CALL                             R3 1 -1
        3 NAMECALL                         R1 R0 K0 ["dispatch"]
        5 CALL                             R1 -1 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["session"]
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 JUMPIFNOT                        R1 ; [+8]
       12 NAMECALL                         R4 R1 K2 ["GetFilename"]
       14 CALL                             R4 1 1
       15 MOVE                             R3 R4
       16 NAMECALL                         R4 R1 K3 ["GetImportTree"]
       18 CALL                             R4 1 1
       19 MOVE                             R2 R4
       20 JUMPIFNOT                        R2 ; [+58]
       21 JUMPIFNOT                        R3 ; [+57]
       22 NAMECALL                         R4 R2 K4 ["GetPreview"]
       24 CALL                             R4 1 1
       25 NEWTABLE                         R5 0 0
       27 GETTABLEKS                       R6 R2 K5 ["ShouldImport"]
       29 SETTABLE                         R6 R5 R2
       30 GETUPVAL                         R8 2
       31 MOVE                             R9 R4
       32 CALL                             R8 1 -1
       33 NAMECALL                         R6 R0 K0 ["dispatch"]
       35 CALL                             R6 -1 0
       36 GETUPVAL                         R8 3
       37 MOVE                             R9 R3
       38 CALL                             R8 1 -1
       39 NAMECALL                         R6 R0 K0 ["dispatch"]
       41 CALL                             R6 -1 0
       42 GETUPVAL                         R8 4
       43 MOVE                             R9 R2
       44 CALL                             R8 1 -1
       45 NAMECALL                         R6 R0 K0 ["dispatch"]
       47 CALL                             R6 -1 0
       48 GETUPVAL                         R8 5
       49 MOVE                             R9 R2
       50 CALL                             R8 1 -1
       51 NAMECALL                         R6 R0 K0 ["dispatch"]
       53 CALL                             R6 -1 0
       54 GETUPVAL                         R6 6
       55 MOVE                             R7 R2
       56 CALL                             R6 1 1
       57 GETUPVAL                         R9 7
       58 MOVE                             R10 R6
       59 CALL                             R9 1 -1
       60 NAMECALL                         R7 R0 K0 ["dispatch"]
       62 CALL                             R7 -1 0
       63 GETUPVAL                         R9 8
       64 GETUPVAL                         R10 9
       65 MOVE                             R11 R2
       66 CALL                             R10 1 -1
       67 CALL                             R9 -1 -1
       68 NAMECALL                         R7 R0 K0 ["dispatch"]
       70 CALL                             R7 -1 0
       71 GETUPVAL                         R9 10
       72 GETUPVAL                         R10 11
       73 MOVE                             R11 R2
       74 CALL                             R10 1 -1
       75 CALL                             R9 -1 -1
       76 NAMECALL                         R7 R0 K0 ["dispatch"]
       78 CALL                             R7 -1 0
       79 GETUPVAL                         R6 12
       80 MOVE                             R7 R1
       81 CALL                             R6 1 -1
       82 NAMECALL                         R4 R0 K0 ["dispatch"]
       84 CALL                             R4 -1 0
       85 JUMPIFEQKNIL                     R1 ; [+2]
       87 LOADB                            R4 0 +1
       88 LOADB                            R4 1
       89 LOADB                            R5 0
       90 JUMPIFEQKNIL                     R2 ; [+5]
       92 JUMPIFNOTEQKNIL                  R3 ; [+2]
       94 LOADB                            R5 0 +1
       95 LOADB                            R5 1
       96 GETUPVAL                         R6 13
       97 JUMPIFNOT                        R6 ; [+4]
       98 GETUPVAL                         R6 13
       99 MOVE                             R7 R5
      100 MOVE                             R8 R4
      101 CALL                             R6 2 0
      102 GETUPVAL                         R8 14
      103 MOVE                             R9 R5
      104 JUMPIFNOT                        R9 ; [+1]
      105 NOT                              R9 R4
      106 CALL                             R8 1 -1
      107 NAMECALL                         R6 R0 K0 ["dispatch"]
      109 CALL                             R6 -1 0
      110 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 CAPTURE                          UPVAL U10
       13 CAPTURE                          UPVAL U11
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U12
       16 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Actions"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["SetActiveQueueItem"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R1 K9 ["SetAssetImportSession"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K7 [require]
       23 GETTABLEKS                       R5 R1 K10 ["SetImportTree"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K7 [require]
       28 GETTABLEKS                       R6 R1 K11 ["SetFilename"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K7 [require]
       33 GETTABLEKS                       R7 R1 K12 ["SetSelectedImportItem"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K7 [require]
       38 GETTABLEKS                       R8 R1 K13 ["SetShowPreview"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K7 [require]
       43 GETTABLEKS                       R9 R1 K14 ["SetCheckedCount"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K7 [require]
       48 GETTABLEKS                       R10 R1 K15 ["SetTreeChecked"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K7 [require]
       53 GETTABLEKS                       R11 R1 K16 ["SetErrorNodeChecked"]
       55 CALL                             R10 1 1
       56 GETIMPORT                        R11 K7 [require]
       58 GETTABLEKS                       R12 R0 K4 ["Src"]
       60 GETTABLEKS                       R12 R12 K17 ["Thunks"]
       62 GETTABLEKS                       R12 R12 K18 ["UpdatePreviewInstance"]
       64 CALL                             R11 1 1
       65 GETIMPORT                        R12 K7 [require]
       67 GETTABLEKS                       R13 R0 K4 ["Src"]
       69 GETTABLEKS                       R13 R13 K19 ["Utility"]
       71 GETTABLEKS                       R13 R13 K20 ["GetErrorChecked"]
       73 CALL                             R12 1 1
       74 GETIMPORT                        R13 K7 [require]
       76 GETTABLEKS                       R14 R0 K4 ["Src"]
       78 GETTABLEKS                       R14 R14 K19 ["Utility"]
       80 GETTABLEKS                       R14 R14 K21 ["GetCheckedCount"]
       82 CALL                             R13 1 1
       83 GETIMPORT                        R14 K7 [require]
       85 GETTABLEKS                       R15 R0 K4 ["Src"]
       87 GETTABLEKS                       R15 R15 K19 ["Utility"]
       89 GETTABLEKS                       R15 R15 K22 ["GetCheckedMapForSubtree"]
       91 CALL                             R14 1 1
       92 DUPCLOSURE                       R15 K23 [PROTO_1]
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R14
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R7
      106 RETURN                           R15 1
