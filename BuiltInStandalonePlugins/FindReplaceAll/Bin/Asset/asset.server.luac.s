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
       29 GETIMPORT                        R2 K7 [require]
       31 GETTABLEKS                       R3 R0 K13 ["Bin"]
       33 GETTABLEKS                       R3 R3 K14 ["Common"]
       35 GETTABLEKS                       R3 R3 K15 ["defineLuaFlags"]
       37 CALL                             R2 1 1
       38 GETTABLEKS                       R3 R2 K16 ["getFFlagEnableFindReplaceAll"]
       40 CALL                             R3 0 1
       41 JUMPIF                           R3 ; [+1]
       42 RETURN                           R0 0
       43 GETIMPORT                        R3 K1 [plugin]
       45 GETTABLEKS                       R3 R3 K17 ["MultipleDocumentInterfaceInstance"]
       47 GETTABLEKS                       R4 R3 K18 ["FocusedDataModelSession"]
       49 GETTABLEKS                       R5 R4 K19 ["CurrentDataModelTypeAboutToChange"]
       51 DUPCLOSURE                       R7 K20 [PROTO_0]
       52 NAMECALL                         R5 R5 K21 ["Connect"]
       54 CALL                             R5 2 0
       55 GETTABLEKS                       R5 R4 K22 ["CurrentDataModelTypeChanged"]
       57 DUPCLOSURE                       R7 K23 [PROTO_1]
       58 CAPTURE                          VAL R4
       59 NAMECALL                         R5 R5 K21 ["Connect"]
       61 CALL                             R5 2 0
       62 GETIMPORT                        R5 K7 [require]
       64 GETTABLEKS                       R6 R0 K13 ["Bin"]
       66 GETTABLEKS                       R6 R6 K14 ["Common"]
       68 GETTABLEKS                       R6 R6 K24 ["pluginType"]
       70 CALL                             R5 1 1
       71 GETTABLEKS                       R6 R5 K25 ["get"]
       73 CALL                             R6 0 1
       74 GETTABLEKS                       R7 R5 K26 ["Asset"]
       76 JUMPIFEQ                         R6 R7 ; [+2]
       78 RETURN                           R0 0
       79 GETIMPORT                        R6 K7 [require]
       81 GETTABLEKS                       R7 R0 K13 ["Bin"]
       83 GETTABLEKS                       R7 R7 K14 ["Common"]
       85 GETTABLEKS                       R7 R7 K27 ["setup"]
       87 CALL                             R6 1 1
       88 GETIMPORT                        R7 K7 [require]
       90 GETTABLEKS                       R8 R0 K13 ["Bin"]
       92 GETTABLEKS                       R8 R8 K14 ["Common"]
       94 GETTABLEKS                       R8 R8 K28 ["setupMain"]
       96 CALL                             R7 1 1
       97 MOVE                             R8 R6
       98 GETIMPORT                        R9 K1 [plugin]
      100 MOVE                             R10 R7
      101 CALL                             R8 2 0
      102 RETURN                           R0 0
