PROTO_0:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+2]
        3 NOT                              R3 R1
        4 JUMP                             ; [+1]
        5 LOADNIL                          R3
        6 NEWTABLE                         R4 0 1
        8 DUPTABLE                         R5 K5 [{[1] = "pencil", ["id"], ["isDisabled"], ["text"]}]
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K6 ["RENAME"]
       12 SETTABLEKS                       R6 R5 K2 ["id"]
       14 SETTABLEKS                       R3 R5 K3 ["isDisabled"]
       16 LOADK                            R8 K7 ["Menu"]
       17 LOADK                            R9 K8 ["Rename"]
       18 NAMECALL                         R6 R0 K9 ["getText"]
       20 CALL                             R6 3 1
       21 SETTABLEKS                       R6 R5 K4 ["text"]
       23 SETLIST                          R4 R5 1 [1]
       25 GETUPVAL                         R5 2
       26 CALL                             R5 0 1
       27 JUMPIFNOT                        R5 ; [+21]
       28 DUPTABLE                         R7 K10 [{"id", "isDisabled", "text"}]
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R8 R8 K11 ["DUPLICATE"]
       32 SETTABLEKS                       R8 R7 K2 ["id"]
       34 SETTABLEKS                       R3 R7 K3 ["isDisabled"]
       36 LOADK                            R10 K7 ["Menu"]
       37 LOADK                            R11 K12 ["Duplicate"]
       38 NAMECALL                         R8 R0 K9 ["getText"]
       40 CALL                             R8 3 1
       41 SETTABLEKS                       R8 R7 K4 ["text"]
       43 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
       45 MOVE                             R6 R4
       46 GETIMPORT                        R5 K15 [table.insert]
       48 CALL                             R5 2 0
       49 DUPTABLE                         R7 K17 [{[1] = "trash-can", ["id"], ["text"]}]
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R8 R8 K18 ["DELETE"]
       53 SETTABLEKS                       R8 R7 K2 ["id"]
       55 LOADK                            R10 K7 ["Menu"]
       56 LOADK                            R11 K19 ["Delete"]
       57 NAMECALL                         R8 R0 K9 ["getText"]
       59 CALL                             R8 3 1
       60 SETTABLEKS                       R8 R7 K4 ["text"]
       62 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
       64 MOVE                             R6 R4
       65 GETIMPORT                        R5 K15 [table.insert]
       67 CALL                             R5 2 0
       68 GETUPVAL                         R5 0
       69 CALL                             R5 0 1
       70 JUMPIF                           R5 ; [+1]
       71 RETURN                           R4 1
       72 NEWTABLE                         R5 0 2
       74 DUPTABLE                         R6 K21 [{"id", "isChecked", "text"}]
       75 GETUPVAL                         R7 1
       76 GETTABLEKS                       R7 R7 K22 ["ENABLED"]
       78 SETTABLEKS                       R7 R6 K2 ["id"]
       80 SETTABLEKS                       R1 R6 K20 ["isChecked"]
       82 LOADK                            R9 K7 ["Menu"]
       83 LOADK                            R10 K23 ["Enabled"]
       84 NAMECALL                         R7 R0 K9 ["getText"]
       86 CALL                             R7 3 1
       87 SETTABLEKS                       R7 R6 K4 ["text"]
       89 DUPTABLE                         R7 K24 [{"id", "isChecked", "isDisabled", "text"}]
       90 GETUPVAL                         R8 1
       91 GETTABLEKS                       R8 R8 K25 ["SINK"]
       93 SETTABLEKS                       R8 R7 K2 ["id"]
       95 SETTABLEKS                       R2 R7 K20 ["isChecked"]
       97 SETTABLEKS                       R3 R7 K3 ["isDisabled"]
       99 LOADK                            R10 K7 ["Menu"]
      100 LOADK                            R11 K26 ["Sink"]
      101 NAMECALL                         R8 R0 K9 ["getText"]
      103 CALL                             R8 3 1
      104 SETTABLEKS                       R8 R7 K4 ["text"]
      106 SETLIST                          R5 R6 2 [1]
      108 NEWTABLE                         R6 0 2
      110 DUPTABLE                         R7 K28 [{"items"}]
      111 SETTABLEKS                       R4 R7 K27 ["items"]
      113 DUPTABLE                         R8 K28 [{"items"}]
      114 SETTABLEKS                       R5 R8 K27 ["items"]
      116 SETLIST                          R6 R7 2 [1]
      118 RETURN                           R6 1

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
       32 GETTABLEKS                       R4 R0 K8 ["Src"]
       34 GETTABLEKS                       R4 R4 K13 ["Flags"]
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R6 R4 K14 ["getFFlagIAMBooleanProperties"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R4 K15 ["getFFlagIAMDuplicate"]
       45 CALL                             R6 1 1
       46 DUPCLOSURE                       R7 K16 [PROTO_0]
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R6
       50 RETURN                           R7 1
