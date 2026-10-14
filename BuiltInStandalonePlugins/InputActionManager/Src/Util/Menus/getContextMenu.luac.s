PROTO_0:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+2]
        3 NOT                              R3 R1
        4 JUMP                             ; [+1]
        5 LOADNIL                          R3
        6 NEWTABLE                         R4 0 3
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
       23 DUPTABLE                         R6 K10 [{"id", "isDisabled", "text"}]
       24 GETUPVAL                         R7 1
       25 GETTABLEKS                       R7 R7 K11 ["DUPLICATE"]
       27 SETTABLEKS                       R7 R6 K2 ["id"]
       29 SETTABLEKS                       R3 R6 K3 ["isDisabled"]
       31 LOADK                            R9 K7 ["Menu"]
       32 LOADK                            R10 K12 ["Duplicate"]
       33 NAMECALL                         R7 R0 K9 ["getText"]
       35 CALL                             R7 3 1
       36 SETTABLEKS                       R7 R6 K4 ["text"]
       38 DUPTABLE                         R7 K14 [{[1] = "trash-can", ["id"], ["text"]}]
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R8 R8 K15 ["DELETE"]
       42 SETTABLEKS                       R8 R7 K2 ["id"]
       44 LOADK                            R10 K7 ["Menu"]
       45 LOADK                            R11 K16 ["Delete"]
       46 NAMECALL                         R8 R0 K9 ["getText"]
       48 CALL                             R8 3 1
       49 SETTABLEKS                       R8 R7 K4 ["text"]
       51 SETLIST                          R4 R5 3 [1]
       53 GETUPVAL                         R5 0
       54 CALL                             R5 0 1
       55 JUMPIF                           R5 ; [+1]
       56 RETURN                           R4 1
       57 NEWTABLE                         R5 0 2
       59 DUPTABLE                         R6 K18 [{"id", "isChecked", "text"}]
       60 GETUPVAL                         R7 1
       61 GETTABLEKS                       R7 R7 K19 ["ENABLED"]
       63 SETTABLEKS                       R7 R6 K2 ["id"]
       65 SETTABLEKS                       R1 R6 K17 ["isChecked"]
       67 LOADK                            R9 K7 ["Menu"]
       68 LOADK                            R10 K20 ["Enabled"]
       69 NAMECALL                         R7 R0 K9 ["getText"]
       71 CALL                             R7 3 1
       72 SETTABLEKS                       R7 R6 K4 ["text"]
       74 DUPTABLE                         R7 K21 [{"id", "isChecked", "isDisabled", "text"}]
       75 GETUPVAL                         R8 1
       76 GETTABLEKS                       R8 R8 K22 ["SINK"]
       78 SETTABLEKS                       R8 R7 K2 ["id"]
       80 SETTABLEKS                       R2 R7 K17 ["isChecked"]
       82 SETTABLEKS                       R3 R7 K3 ["isDisabled"]
       84 LOADK                            R10 K7 ["Menu"]
       85 LOADK                            R11 K23 ["Sink"]
       86 NAMECALL                         R8 R0 K9 ["getText"]
       88 CALL                             R8 3 1
       89 SETTABLEKS                       R8 R7 K4 ["text"]
       91 SETLIST                          R5 R6 2 [1]
       93 GETUPVAL                         R6 2
       94 CALL                             R6 0 1
       95 JUMPIFNOT                        R6 ; [+19]
       96 DUPTABLE                         R8 K24 [{"id", "text"}]
       97 GETUPVAL                         R9 1
       98 GETTABLEKS                       R9 R9 K25 ["PRIORITY"]
      100 SETTABLEKS                       R9 R8 K2 ["id"]
      102 LOADK                            R11 K7 ["Menu"]
      103 LOADK                            R12 K26 ["Priority"]
      104 NAMECALL                         R9 R0 K9 ["getText"]
      106 CALL                             R9 3 1
      107 SETTABLEKS                       R9 R8 K4 ["text"]
      109 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
      111 MOVE                             R7 R5
      112 GETIMPORT                        R6 K29 [table.insert]
      114 CALL                             R6 2 0
      115 NEWTABLE                         R6 0 2
      117 DUPTABLE                         R7 K31 [{"items"}]
      118 SETTABLEKS                       R4 R7 K30 ["items"]
      120 DUPTABLE                         R8 K31 [{"items"}]
      121 SETTABLEKS                       R5 R8 K30 ["items"]
      123 SETLIST                          R6 R7 2 [1]
      125 RETURN                           R6 1

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
       43 GETTABLEKS                       R7 R4 K15 ["getFFlagIAMNodePropertyMenu"]
       45 CALL                             R6 1 1
       46 DUPCLOSURE                       R7 K16 [PROTO_0]
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R6
       50 RETURN                           R7 1
