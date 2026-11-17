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
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K10 ["SquareCornerLine"]
       27 SETTABLEKS                       R7 R6 K0 ["icon"]
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R7 R7 K11 ["DUPLICATE"]
       32 SETTABLEKS                       R7 R6 K1 ["id"]
       34 SETTABLEKS                       R3 R6 K2 ["isDisabled"]
       36 LOADK                            R9 K7 ["Menu"]
       37 LOADK                            R10 K12 ["Duplicate"]
       38 NAMECALL                         R7 R0 K9 ["getText"]
       40 CALL                             R7 3 1
       41 SETTABLEKS                       R7 R6 K3 ["text"]
       43 DUPTABLE                         R7 K13 [{"icon", "id", "text"}]
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R8 R8 K14 ["TrashCan"]
       47 SETTABLEKS                       R8 R7 K0 ["icon"]
       49 GETUPVAL                         R8 1
       50 GETTABLEKS                       R8 R8 K15 ["DELETE"]
       52 SETTABLEKS                       R8 R7 K1 ["id"]
       54 LOADK                            R10 K7 ["Menu"]
       55 LOADK                            R11 K16 ["Delete"]
       56 NAMECALL                         R8 R0 K9 ["getText"]
       58 CALL                             R8 3 1
       59 SETTABLEKS                       R8 R7 K3 ["text"]
       61 SETLIST                          R4 R5 3 [1]
       63 DUPTABLE                         R7 K13 [{"icon", "id", "text"}]
       64 GETUPVAL                         R8 0
       65 GETTABLEKS                       R8 R8 K17 ["LocationPin"]
       67 SETTABLEKS                       R8 R7 K0 ["icon"]
       69 GETUPVAL                         R8 1
       70 GETTABLEKS                       R8 R8 K18 ["SHOW_IN_EXPLORER"]
       72 SETTABLEKS                       R8 R7 K1 ["id"]
       74 LOADK                            R10 K7 ["Menu"]
       75 LOADK                            R11 K19 ["ShowInExplorer"]
       76 NAMECALL                         R8 R0 K9 ["getText"]
       78 CALL                             R8 3 1
       79 SETTABLEKS                       R8 R7 K3 ["text"]
       81 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
       83 MOVE                             R6 R4
       84 GETIMPORT                        R5 K22 [table.insert]
       86 CALL                             R5 2 0
       87 NEWTABLE                         R5 0 3
       89 DUPTABLE                         R6 K13 [{"icon", "id", "text"}]
       90 GETUPVAL                         R7 2
       91 MOVE                             R8 R1
       92 CALL                             R7 1 1
       93 SETTABLEKS                       R7 R6 K0 ["icon"]
       95 GETUPVAL                         R7 1
       96 GETTABLEKS                       R7 R7 K23 ["ENABLED"]
       98 SETTABLEKS                       R7 R6 K1 ["id"]
      100 LOADK                            R9 K7 ["Menu"]
      101 LOADK                            R10 K24 ["Enabled"]
      102 NAMECALL                         R7 R0 K9 ["getText"]
      104 CALL                             R7 3 1
      105 SETTABLEKS                       R7 R6 K3 ["text"]
      107 DUPTABLE                         R7 K4 [{"icon", "id", "isDisabled", "text"}]
      108 GETUPVAL                         R8 2
      109 MOVE                             R9 R2
      110 CALL                             R8 1 1
      111 SETTABLEKS                       R8 R7 K0 ["icon"]
      113 GETUPVAL                         R8 1
      114 GETTABLEKS                       R8 R8 K25 ["SINK"]
      116 SETTABLEKS                       R8 R7 K1 ["id"]
      118 SETTABLEKS                       R3 R7 K2 ["isDisabled"]
      120 LOADK                            R10 K7 ["Menu"]
      121 LOADK                            R11 K26 ["Sink"]
      122 NAMECALL                         R8 R0 K9 ["getText"]
      124 CALL                             R8 3 1
      125 SETTABLEKS                       R8 R7 K3 ["text"]
      127 DUPTABLE                         R8 K13 [{"icon", "id", "text"}]
      128 GETUPVAL                         R9 0
      129 GETTABLEKS                       R9 R9 K27 ["ListNumbered"]
      131 SETTABLEKS                       R9 R8 K0 ["icon"]
      133 GETUPVAL                         R9 1
      134 GETTABLEKS                       R9 R9 K28 ["PRIORITY"]
      136 SETTABLEKS                       R9 R8 K1 ["id"]
      138 LOADK                            R11 K7 ["Menu"]
      139 LOADK                            R12 K29 ["Priority"]
      140 NAMECALL                         R9 R0 K9 ["getText"]
      142 CALL                             R9 3 1
      143 SETTABLEKS                       R9 R8 K3 ["text"]
      145 SETLIST                          R5 R6 3 [1]
      147 NEWTABLE                         R6 0 2
      149 DUPTABLE                         R7 K31 [{"items"}]
      150 SETTABLEKS                       R4 R7 K30 ["items"]
      152 DUPTABLE                         R8 K31 [{"items"}]
      153 SETTABLEKS                       R5 R8 K30 ["items"]
      155 SETLIST                          R6 R7 2 [1]
      157 RETURN                           R6 1

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
       41 GETTABLEKS                       R5 R1 K14 ["Enums"]
       43 GETTABLEKS                       R5 R5 K15 ["IconName"]
       45 DUPCLOSURE                       R6 K16 [PROTO_0]
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R3
       49 RETURN                           R6 1
