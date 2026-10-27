PROTO_0:
        0 NEWTABLE                         R8 0 0
        2 GETUPVAL                         R9 0
        3 CALL                             R9 0 3
        4 FORGPREP                         R9
        5 DUPTABLE                         R16 K4 [{"icon", "id", "isChecked", "text"}]
        6 GETUPVAL                         R18 1
        7 CALL                             R18 0 1
        8 JUMPIFNOT                        R18 ; [+4]
        9 GETUPVAL                         R17 2
       10 MOVE                             R18 R13
       11 CALL                             R17 1 1
       12 JUMP                             ; [+1]
       13 LOADNIL                          R17
       14 SETTABLEKS                       R17 R16 K0 ["icon"]
       16 LOADK                            R17 K5 ["filter.schema.%*"]
       17 MOVE                             R19 R13
       18 NAMECALL                         R17 R17 K6 ["format"]
       20 CALL                             R17 2 1
       21 SETTABLEKS                       R17 R16 K1 ["id"]
       23 GETTABLE                         R18 R4 R13
       24 JUMPIFNOTEQKB                    R18 FALSE ; [+2]
       26 LOADB                            R17 0 +1
       27 LOADB                            R17 1
       28 SETTABLEKS                       R17 R16 K2 ["isChecked"]
       30 LOADK                            R19 K7 ["Schema"]
       31 MOVE                             R20 R13
       32 NAMECALL                         R17 R0 K8 ["getText"]
       34 CALL                             R17 3 1
       35 SETTABLEKS                       R17 R16 K3 ["text"]
       37 FASTCALL2                        TABLE_INSERT R8 R16 ; [+4]
       39 MOVE                             R15 R8
       40 GETIMPORT                        R14 K11 [table.insert]
       42 CALL                             R14 2 0
       43 FORGLOOP                         R9 2 ; [-39]
       45 NEWTABLE                         R9 0 0
       47 MOVE                             R10 R1
       48 LOADNIL                          R11
       49 LOADNIL                          R12
       50 FORGPREP                         R10
       51 MOVE                             R15 R2
       52 MOVE                             R16 R14
       53 CALL                             R15 1 1
       54 JUMPIFNOT                        R15 ; [+23]
       55 GETTABLEKS                       R16 R15 K12 ["defaultPlayerScript"]
       57 JUMPIF                           R16 ; [+20]
       58 DUPTABLE                         R18 K13 [{"id", "isChecked", "text"}]
       59 SETTABLEKS                       R14 R18 K1 ["id"]
       61 GETTABLE                         R20 R3 R14
       62 JUMPIFNOTEQKB                    R20 FALSE ; [+2]
       64 LOADB                            R19 0 +1
       65 LOADB                            R19 1
       66 SETTABLEKS                       R19 R18 K2 ["isChecked"]
       68 GETTABLEKS                       R19 R15 K14 ["name"]
       70 SETTABLEKS                       R19 R18 K3 ["text"]
       72 FASTCALL2                        TABLE_INSERT R9 R18 ; [+4]
       74 MOVE                             R17 R9
       75 GETIMPORT                        R16 K11 [table.insert]
       77 CALL                             R16 2 0
       78 FORGLOOP                         R10 2 ; [-28]
       80 GETIMPORT                        R10 K18 [Enum.StudioDataModelType.Edit]
       82 JUMPIFNOTEQ                      R6 R10 ; [+3]
       84 JUMPIFNOTEQKB                    R7 FALSE ; [+12]
       86 NEWTABLE                         R10 0 2
       88 DUPTABLE                         R11 K20 [{"items"}]
       89 SETTABLEKS                       R8 R11 K19 ["items"]
       91 DUPTABLE                         R12 K20 [{"items"}]
       92 SETTABLEKS                       R9 R12 K19 ["items"]
       94 SETLIST                          R10 R11 2 [1]
       96 RETURN                           R10 1
       97 NEWTABLE                         R10 0 1
       99 DUPTABLE                         R11 K22 [{[1], ["id"] = "PlayerScripts", ["isChecked"], ["text"]}]
      100 GETUPVAL                         R13 1
      101 CALL                             R13 0 1
      102 JUMPIFNOT                        R13 ; [+4]
      103 GETUPVAL                         R12 3
      104 GETTABLEKS                       R12 R12 K23 ["Person"]
      106 JUMP                             ; [+1]
      107 LOADNIL                          R12
      108 SETTABLEKS                       R12 R11 K0 ["icon"]
      110 GETUPVAL                         R13 4
      111 CALL                             R13 0 1
      112 JUMPIFNOT                        R13 ; [+7]
      113 GETTABLEKS                       R13 R5 K21 ["PlayerScripts"]
      115 JUMPIFNOTEQKB                    R13 FALSE ; [+2]
      117 LOADB                            R12 0 +1
      118 LOADB                            R12 1
      119 JUMP                             ; [+6]
      120 GETTABLEKS                       R13 R3 K21 ["PlayerScripts"]
      122 JUMPIFNOTEQKB                    R13 FALSE ; [+2]
      124 LOADB                            R12 0 +1
      125 LOADB                            R12 1
      126 SETTABLEKS                       R12 R11 K2 ["isChecked"]
      128 LOADK                            R14 K24 ["Filter"]
      129 LOADK                            R15 K21 ["PlayerScripts"]
      130 NAMECALL                         R12 R0 K8 ["getText"]
      132 CALL                             R12 3 1
      133 SETTABLEKS                       R12 R11 K3 ["text"]
      135 SETLIST                          R10 R11 1 [1]
      137 LENGTH                           R11 R9
      138 LOADN                            R12 0
      139 JUMPIFNOTLT                      R12 R11 ; [+15]
      141 NEWTABLE                         R11 0 3
      143 DUPTABLE                         R12 K20 [{"items"}]
      144 SETTABLEKS                       R8 R12 K19 ["items"]
      146 DUPTABLE                         R13 K20 [{"items"}]
      147 SETTABLEKS                       R9 R13 K19 ["items"]
      149 DUPTABLE                         R14 K20 [{"items"}]
      150 SETTABLEKS                       R10 R14 K19 ["items"]
      152 SETLIST                          R11 R12 3 [1]
      154 RETURN                           R11 1
      155 NEWTABLE                         R11 0 2
      157 DUPTABLE                         R12 K20 [{"items"}]
      158 SETTABLEKS                       R8 R12 K19 ["items"]
      160 DUPTABLE                         R13 K20 [{"items"}]
      161 SETTABLEKS                       R10 R13 K19 ["items"]
      163 SETLIST                          R11 R12 2 [1]
      165 RETURN                           R11 1

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
       27 GETTABLEKS                       R4 R4 K11 ["getIconForSchema"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["getSchemas"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R0 K8 ["Src"]
       41 GETTABLEKS                       R5 R5 K13 ["Flags"]
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R5 K14 ["getFFlagIAMIconImprovements"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R5 K15 ["getFFlagIAMSavedFilters"]
       52 CALL                             R7 1 1
       53 GETTABLEKS                       R8 R1 K16 ["Enums"]
       55 GETTABLEKS                       R8 R8 K17 ["IconName"]
       57 DUPCLOSURE                       R9 K18 [PROTO_0]
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R7
       63 RETURN                           R9 1
