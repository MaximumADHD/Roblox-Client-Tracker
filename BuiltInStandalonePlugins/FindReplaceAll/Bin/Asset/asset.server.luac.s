PROTO_0:
        0 GETIMPORT                        R1 K1 [plugin]
        2 LOADK                            R3 K2 ["DmAboutToChange"]
        3 MOVE                             R4 R0
        4 NAMECALL                         R1 R1 K3 ["Invoke"]
        6 CALL                             R1 3 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [plugin]
        2 LOADK                            R2 K2 ["DmChanged"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K3 ["CurrentDataModelType"]
        6 NAMECALL                         R0 R0 K4 ["Invoke"]
        8 CALL                             R0 3 0
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["FindReplaceAll"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R2 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["launch"]
       20 LOADK                            R3 K4 ["FindReplaceAll"]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R1 K12 ["isCli"]
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K1 [plugin]
       31 GETTABLEKS                       R2 R2 K13 ["MultipleDocumentInterfaceInstance"]
       33 GETTABLEKS                       R3 R2 K14 ["FocusedDataModelSession"]
       35 GETTABLEKS                       R4 R3 K15 ["CurrentDataModelTypeAboutToChange"]
       37 DUPCLOSURE                       R6 K16 [PROTO_0]
       38 NAMECALL                         R4 R4 K17 ["Connect"]
       40 CALL                             R4 2 0
       41 GETTABLEKS                       R4 R3 K18 ["CurrentDataModelTypeChanged"]
       43 DUPCLOSURE                       R6 K19 [PROTO_1]
       44 CAPTURE                          VAL R3
       45 NAMECALL                         R4 R4 K17 ["Connect"]
       47 CALL                             R4 2 0
       48 GETIMPORT                        R4 K7 [require]
       50 GETTABLEKS                       R5 R0 K20 ["Bin"]
       52 GETTABLEKS                       R5 R5 K21 ["Common"]
       54 GETTABLEKS                       R5 R5 K22 ["pluginType"]
       56 CALL                             R4 1 1
       57 GETTABLEKS                       R5 R4 K23 ["get"]
       59 CALL                             R5 0 1
       60 GETTABLEKS                       R6 R4 K24 ["Asset"]
       62 JUMPIFEQ                         R5 R6 ; [+2]
       64 RETURN                           R0 0
       65 GETIMPORT                        R5 K7 [require]
       67 GETTABLEKS                       R6 R0 K20 ["Bin"]
       69 GETTABLEKS                       R6 R6 K21 ["Common"]
       71 GETTABLEKS                       R6 R6 K25 ["setup"]
       73 CALL                             R5 1 1
       74 GETIMPORT                        R6 K7 [require]
       76 GETTABLEKS                       R7 R0 K20 ["Bin"]
       78 GETTABLEKS                       R7 R7 K21 ["Common"]
       80 GETTABLEKS                       R7 R7 K26 ["setupMain"]
       82 CALL                             R6 1 1
       83 MOVE                             R7 R5
       84 GETIMPORT                        R8 K1 [plugin]
       86 MOVE                             R9 R6
       87 CALL                             R7 2 0
       88 RETURN                           R0 0
