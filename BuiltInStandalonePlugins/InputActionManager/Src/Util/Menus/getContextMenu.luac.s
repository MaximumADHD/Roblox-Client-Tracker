PROTO_0:
        0 NOT                              R3 R1
        1 NEWTABLE                         R4 0 3
        3 DUPTABLE                         R5 K4 [{"icon", "id", "isDisabled", "text"}]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R6 R6 K5 ["Pencil"]
        7 SETTABLEKS                       R6 R5 K0 ["icon"]
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K6 ["RENAME"]
       12 SETTABLEKS                       R6 R5 K1 ["id"]
       14 SETTABLEKS                       R3 R5 K2 ["isDisabled"]
       16 LOADK                            R8 K7 ["Menu"]
       17 LOADK                            R9 K8 ["Rename"]
       18 NAMECALL                         R6 R0 K9 ["getText"]
       20 CALL                             R6 3 1
       21 SETTABLEKS                       R6 R5 K3 ["text"]
       23 DUPTABLE                         R6 K4 [{"icon", "id", "isDisabled", "text"}]
       24 GETUPVAL                         R8 2
       25 CALL                             R8 0 1
       26 JUMPIFNOT                        R8 ; [+4]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K10 ["SquareCornerLine"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R7
       32 SETTABLEKS                       R7 R6 K0 ["icon"]
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K11 ["DUPLICATE"]
       37 SETTABLEKS                       R7 R6 K1 ["id"]
       39 SETTABLEKS                       R3 R6 K2 ["isDisabled"]
       41 LOADK                            R9 K7 ["Menu"]
       42 LOADK                            R10 K12 ["Duplicate"]
       43 NAMECALL                         R7 R0 K9 ["getText"]
       45 CALL                             R7 3 1
       46 SETTABLEKS                       R7 R6 K3 ["text"]
       48 DUPTABLE                         R7 K13 [{"icon", "id", "text"}]
       49 GETUPVAL                         R8 0
       50 GETTABLEKS                       R8 R8 K14 ["TrashCan"]
       52 SETTABLEKS                       R8 R7 K0 ["icon"]
       54 GETUPVAL                         R8 1
       55 GETTABLEKS                       R8 R8 K15 ["DELETE"]
       57 SETTABLEKS                       R8 R7 K1 ["id"]
       59 LOADK                            R10 K7 ["Menu"]
       60 LOADK                            R11 K16 ["Delete"]
       61 NAMECALL                         R8 R0 K9 ["getText"]
       63 CALL                             R8 3 1
       64 SETTABLEKS                       R8 R7 K3 ["text"]
       66 SETLIST                          R4 R5 3 [1]
       68 GETUPVAL                         R5 3
       69 CALL                             R5 0 1
       70 JUMPIFNOT                        R5 ; [+24]
       71 DUPTABLE                         R7 K13 [{"icon", "id", "text"}]
       72 GETUPVAL                         R8 0
       73 GETTABLEKS                       R8 R8 K17 ["LocationPin"]
       75 SETTABLEKS                       R8 R7 K0 ["icon"]
       77 GETUPVAL                         R8 1
       78 GETTABLEKS                       R8 R8 K18 ["SHOW_IN_EXPLORER"]
       80 SETTABLEKS                       R8 R7 K1 ["id"]
       82 LOADK                            R10 K7 ["Menu"]
       83 LOADK                            R11 K19 ["ShowInExplorer"]
       84 NAMECALL                         R8 R0 K9 ["getText"]
       86 CALL                             R8 3 1
       87 SETTABLEKS                       R8 R7 K3 ["text"]
       89 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
       91 MOVE                             R6 R4
       92 GETIMPORT                        R5 K22 [table.insert]
       94 CALL                             R5 2 0
       95 NEWTABLE                         R5 0 3
       97 DUPTABLE                         R6 K24 [{"icon", "id", "isChecked", "text"}]
       98 GETUPVAL                         R8 2
       99 CALL                             R8 0 1
      100 JUMPIFNOT                        R8 ; [+4]
      101 GETUPVAL                         R7 4
      102 MOVE                             R8 R1
      103 CALL                             R7 1 1
      104 JUMP                             ; [+1]
      105 LOADNIL                          R7
      106 SETTABLEKS                       R7 R6 K0 ["icon"]
      108 GETUPVAL                         R7 1
      109 GETTABLEKS                       R7 R7 K25 ["ENABLED"]
      111 SETTABLEKS                       R7 R6 K1 ["id"]
      113 GETUPVAL                         R8 2
      114 CALL                             R8 0 1
      115 JUMPIFNOT                        R8 ; [+2]
      116 LOADNIL                          R7
      117 JUMP                             ; [+1]
      118 MOVE                             R7 R1
      119 SETTABLEKS                       R7 R6 K23 ["isChecked"]
      121 LOADK                            R9 K7 ["Menu"]
      122 LOADK                            R10 K26 ["Enabled"]
      123 NAMECALL                         R7 R0 K9 ["getText"]
      125 CALL                             R7 3 1
      126 SETTABLEKS                       R7 R6 K3 ["text"]
      128 DUPTABLE                         R7 K27 [{"icon", "id", "isChecked", "isDisabled", "text"}]
      129 GETUPVAL                         R9 2
      130 CALL                             R9 0 1
      131 JUMPIFNOT                        R9 ; [+4]
      132 GETUPVAL                         R8 4
      133 MOVE                             R9 R2
      134 CALL                             R8 1 1
      135 JUMP                             ; [+1]
      136 LOADNIL                          R8
      137 SETTABLEKS                       R8 R7 K0 ["icon"]
      139 GETUPVAL                         R8 1
      140 GETTABLEKS                       R8 R8 K28 ["SINK"]
      142 SETTABLEKS                       R8 R7 K1 ["id"]
      144 GETUPVAL                         R9 2
      145 CALL                             R9 0 1
      146 JUMPIFNOT                        R9 ; [+2]
      147 LOADNIL                          R8
      148 JUMP                             ; [+1]
      149 MOVE                             R8 R2
      150 SETTABLEKS                       R8 R7 K23 ["isChecked"]
      152 SETTABLEKS                       R3 R7 K2 ["isDisabled"]
      154 LOADK                            R10 K7 ["Menu"]
      155 LOADK                            R11 K29 ["Sink"]
      156 NAMECALL                         R8 R0 K9 ["getText"]
      158 CALL                             R8 3 1
      159 SETTABLEKS                       R8 R7 K3 ["text"]
      161 DUPTABLE                         R8 K13 [{"icon", "id", "text"}]
      162 GETUPVAL                         R10 2
      163 CALL                             R10 0 1
      164 JUMPIFNOT                        R10 ; [+4]
      165 GETUPVAL                         R9 0
      166 GETTABLEKS                       R9 R9 K30 ["ListNumbered"]
      168 JUMP                             ; [+1]
      169 LOADNIL                          R9
      170 SETTABLEKS                       R9 R8 K0 ["icon"]
      172 GETUPVAL                         R9 1
      173 GETTABLEKS                       R9 R9 K31 ["PRIORITY"]
      175 SETTABLEKS                       R9 R8 K1 ["id"]
      177 LOADK                            R11 K7 ["Menu"]
      178 LOADK                            R12 K32 ["Priority"]
      179 NAMECALL                         R9 R0 K9 ["getText"]
      181 CALL                             R9 3 1
      182 SETTABLEKS                       R9 R8 K3 ["text"]
      184 SETLIST                          R5 R6 3 [1]
      186 NEWTABLE                         R6 0 2
      188 DUPTABLE                         R7 K34 [{"items"}]
      189 SETTABLEKS                       R4 R7 K33 ["items"]
      191 DUPTABLE                         R8 K34 [{"items"}]
      192 SETTABLEKS                       R5 R8 K33 ["items"]
      194 SETLIST                          R6 R7 2 [1]
      196 RETURN                           R6 1

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
       27 GETTABLEKS                       R4 R4 K11 ["getIconForBoolean"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["Constants"]
       38 GETTABLEKS                       R5 R5 K13 ["MenuIdentifiers"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R0 K8 ["Src"]
       43 GETTABLEKS                       R5 R5 K14 ["Flags"]
       45 GETIMPORT                        R6 K5 [require]
       47 GETTABLEKS                       R7 R5 K15 ["getFFlagIAMShowInExplorer"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R8 R5 K16 ["getFFlagIAMIconImprovements"]
       54 CALL                             R7 1 1
       55 GETTABLEKS                       R8 R1 K17 ["Enums"]
       57 GETTABLEKS                       R8 R8 K18 ["IconName"]
       59 DUPCLOSURE                       R9 K19 [PROTO_0]
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R3
       65 RETURN                           R9 1
