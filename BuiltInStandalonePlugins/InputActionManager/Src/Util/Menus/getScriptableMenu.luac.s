PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 JUMPIFNOT                        R1 ; [+95]
        3 GETTABLEKS                       R4 R1 K0 ["type"]
        5 GETIMPORT                        R5 K4 [Enum.InputBindingType.Scriptable]
        7 JUMPIFNOTEQ                      R4 R5 ; [+90]
        9 DUPTABLE                         R6 K9 [{"icon", "id", "isChecked", "text"}]
       10 GETUPVAL                         R8 0
       11 CALL                             R8 0 1
       12 JUMPIFNOT                        R8 ; [+4]
       13 GETUPVAL                         R7 1
       14 LOADB                            R8 1
       15 CALL                             R7 1 1
       16 JUMP                             ; [+1]
       17 LOADNIL                          R7
       18 SETTABLEKS                       R7 R6 K5 ["icon"]
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R7 R7 K10 ["SCRIPTABLE_ENABLED"]
       23 SETTABLEKS                       R7 R6 K6 ["id"]
       25 GETUPVAL                         R8 0
       26 CALL                             R8 0 1
       27 JUMPIFNOT                        R8 ; [+2]
       28 LOADNIL                          R7
       29 JUMP                             ; [+1]
       30 LOADB                            R7 1
       31 SETTABLEKS                       R7 R6 K7 ["isChecked"]
       33 LOADK                            R9 K11 ["Menu"]
       34 LOADK                            R10 K12 ["Enabled"]
       35 NAMECALL                         R7 R0 K13 ["getText"]
       37 CALL                             R7 3 1
       38 SETTABLEKS                       R7 R6 K8 ["text"]
       40 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       42 MOVE                             R5 R3
       43 GETIMPORT                        R4 K16 [table.insert]
       45 CALL                             R4 2 0
       46 DUPTABLE                         R6 K17 [{"icon", "id", "text"}]
       47 GETUPVAL                         R7 3
       48 GETTABLEKS                       R7 R7 K18 ["Pencil"]
       50 SETTABLEKS                       R7 R6 K5 ["icon"]
       52 GETUPVAL                         R7 2
       53 GETTABLEKS                       R7 R7 K19 ["SCRIPTABLE_RENAME"]
       55 SETTABLEKS                       R7 R6 K6 ["id"]
       57 LOADK                            R9 K11 ["Menu"]
       58 LOADK                            R10 K20 ["Rename"]
       59 NAMECALL                         R7 R0 K13 ["getText"]
       61 CALL                             R7 3 1
       62 SETTABLEKS                       R7 R6 K8 ["text"]
       64 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       66 MOVE                             R5 R3
       67 GETIMPORT                        R4 K16 [table.insert]
       69 CALL                             R4 2 0
       70 GETUPVAL                         R4 4
       71 CALL                             R4 0 1
       72 JUMPIFNOT                        R4 ; [+62]
       73 DUPTABLE                         R6 K17 [{"icon", "id", "text"}]
       74 GETUPVAL                         R7 3
       75 GETTABLEKS                       R7 R7 K21 ["LocationPin"]
       77 SETTABLEKS                       R7 R6 K5 ["icon"]
       79 GETUPVAL                         R7 2
       80 GETTABLEKS                       R7 R7 K22 ["SCRIPTABLE_SHOW_IN_EXPLORER"]
       82 SETTABLEKS                       R7 R6 K6 ["id"]
       84 LOADK                            R9 K11 ["Menu"]
       85 LOADK                            R10 K23 ["ShowInExplorer"]
       86 NAMECALL                         R7 R0 K13 ["getText"]
       88 CALL                             R7 3 1
       89 SETTABLEKS                       R7 R6 K8 ["text"]
       91 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       93 MOVE                             R5 R3
       94 GETIMPORT                        R4 K16 [table.insert]
       96 CALL                             R4 2 0
       97 JUMP                             ; [+37]
       98 DUPTABLE                         R6 K9 [{"icon", "id", "isChecked", "text"}]
       99 GETUPVAL                         R8 0
      100 CALL                             R8 0 1
      101 JUMPIFNOT                        R8 ; [+4]
      102 GETUPVAL                         R7 1
      103 LOADB                            R8 0
      104 CALL                             R7 1 1
      105 JUMP                             ; [+1]
      106 LOADNIL                          R7
      107 SETTABLEKS                       R7 R6 K5 ["icon"]
      109 GETUPVAL                         R7 2
      110 GETTABLEKS                       R7 R7 K10 ["SCRIPTABLE_ENABLED"]
      112 SETTABLEKS                       R7 R6 K6 ["id"]
      114 GETUPVAL                         R8 0
      115 CALL                             R8 0 1
      116 JUMPIFNOT                        R8 ; [+2]
      117 LOADNIL                          R7
      118 JUMP                             ; [+1]
      119 LOADB                            R7 0
      120 SETTABLEKS                       R7 R6 K7 ["isChecked"]
      122 LOADK                            R9 K11 ["Menu"]
      123 LOADK                            R10 K12 ["Enabled"]
      124 NAMECALL                         R7 R0 K13 ["getText"]
      126 CALL                             R7 3 1
      127 SETTABLEKS                       R7 R6 K8 ["text"]
      129 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      131 MOVE                             R5 R3
      132 GETIMPORT                        R4 K16 [table.insert]
      134 CALL                             R4 2 0
      135 DUPTABLE                         R4 K26 [{"icon", "id", "isDisabled", "items", "text"}]
      136 GETUPVAL                         R6 0
      137 CALL                             R6 0 1
      138 JUMPIFNOT                        R6 ; [+4]
      139 GETUPVAL                         R5 3
      140 GETTABLEKS                       R5 R5 K27 ["Code"]
      142 JUMP                             ; [+1]
      143 LOADNIL                          R5
      144 SETTABLEKS                       R5 R4 K5 ["icon"]
      146 GETUPVAL                         R5 2
      147 GETTABLEKS                       R5 R5 K28 ["SCRIPTABLE"]
      149 SETTABLEKS                       R5 R4 K6 ["id"]
      151 NOT                              R5 R2
      152 SETTABLEKS                       R5 R4 K24 ["isDisabled"]
      154 SETTABLEKS                       R3 R4 K25 ["items"]
      156 LOADK                            R7 K11 ["Menu"]
      157 LOADK                            R8 K3 ["Scriptable"]
      158 NAMECALL                         R5 R0 K13 ["getText"]
      160 CALL                             R5 3 1
      161 SETTABLEKS                       R5 R4 K8 ["text"]
      163 RETURN                           R4 1

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
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K14 ["Flags"]
       47 GETTABLEKS                       R6 R6 K15 ["getFFlagIAMShowInExplorer"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R7 K14 ["Flags"]
       56 GETTABLEKS                       R7 R7 K16 ["getFFlagIAMIconImprovements"]
       58 CALL                             R6 1 1
       59 GETTABLEKS                       R7 R1 K17 ["Enums"]
       61 GETTABLEKS                       R7 R7 K18 ["IconName"]
       63 DUPCLOSURE                       R8 K19 [PROTO_0]
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R5
       69 RETURN                           R8 1
