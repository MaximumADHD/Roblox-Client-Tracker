PROTO_0:
        0 NEWTABLE                         R8 0 0
        2 GETUPVAL                         R9 0
        3 CALL                             R9 0 3
        4 FORGPREP                         R9
        5 DUPTABLE                         R16 K4 [{"icon", "id", "isChecked", "text"}]
        6 GETUPVAL                         R17 1
        7 MOVE                             R18 R13
        8 CALL                             R17 1 1
        9 SETTABLEKS                       R17 R16 K0 ["icon"]
       11 LOADK                            R17 K5 ["filter.schema.%*"]
       12 MOVE                             R19 R13
       13 NAMECALL                         R17 R17 K6 ["format"]
       15 CALL                             R17 2 1
       16 SETTABLEKS                       R17 R16 K1 ["id"]
       18 GETTABLE                         R18 R4 R13
       19 JUMPIFNOTEQKB                    R18 FALSE ; [+2]
       21 LOADB                            R17 0 +1
       22 LOADB                            R17 1
       23 SETTABLEKS                       R17 R16 K2 ["isChecked"]
       25 LOADK                            R19 K7 ["Schema"]
       26 MOVE                             R20 R13
       27 NAMECALL                         R17 R0 K8 ["getText"]
       29 CALL                             R17 3 1
       30 SETTABLEKS                       R17 R16 K3 ["text"]
       32 FASTCALL2                        TABLE_INSERT R8 R16 ; [+4]
       34 MOVE                             R15 R8
       35 GETIMPORT                        R14 K11 [table.insert]
       37 CALL                             R14 2 0
       38 FORGLOOP                         R9 2 ; [-34]
       40 NEWTABLE                         R9 0 0
       42 MOVE                             R10 R1
       43 LOADNIL                          R11
       44 LOADNIL                          R12
       45 FORGPREP                         R10
       46 MOVE                             R15 R2
       47 MOVE                             R16 R14
       48 CALL                             R15 1 1
       49 JUMPIFNOT                        R15 ; [+23]
       50 GETTABLEKS                       R16 R15 K12 ["defaultPlayerScript"]
       52 JUMPIF                           R16 ; [+20]
       53 DUPTABLE                         R18 K13 [{"id", "isChecked", "text"}]
       54 SETTABLEKS                       R14 R18 K1 ["id"]
       56 GETTABLE                         R20 R3 R14
       57 JUMPIFNOTEQKB                    R20 FALSE ; [+2]
       59 LOADB                            R19 0 +1
       60 LOADB                            R19 1
       61 SETTABLEKS                       R19 R18 K2 ["isChecked"]
       63 GETTABLEKS                       R19 R15 K14 ["name"]
       65 SETTABLEKS                       R19 R18 K3 ["text"]
       67 FASTCALL2                        TABLE_INSERT R9 R18 ; [+4]
       69 MOVE                             R17 R9
       70 GETIMPORT                        R16 K11 [table.insert]
       72 CALL                             R16 2 0
       73 FORGLOOP                         R10 2 ; [-28]
       75 GETIMPORT                        R10 K18 [Enum.StudioDataModelType.Edit]
       77 JUMPIFNOTEQ                      R6 R10 ; [+3]
       79 JUMPIFNOTEQKB                    R7 FALSE ; [+12]
       81 NEWTABLE                         R10 0 2
       83 DUPTABLE                         R11 K20 [{"items"}]
       84 SETTABLEKS                       R8 R11 K19 ["items"]
       86 DUPTABLE                         R12 K20 [{"items"}]
       87 SETTABLEKS                       R9 R12 K19 ["items"]
       89 SETLIST                          R10 R11 2 [1]
       91 RETURN                           R10 1
       92 NEWTABLE                         R10 0 1
       94 DUPTABLE                         R11 K22 [{[1], ["id"] = "PlayerScripts", ["isChecked"], ["text"]}]
       95 GETUPVAL                         R12 2
       96 GETTABLEKS                       R12 R12 K23 ["Person"]
       98 SETTABLEKS                       R12 R11 K0 ["icon"]
      100 GETTABLEKS                       R13 R5 K21 ["PlayerScripts"]
      102 JUMPIFNOTEQKB                    R13 FALSE ; [+2]
      104 LOADB                            R12 0 +1
      105 LOADB                            R12 1
      106 SETTABLEKS                       R12 R11 K2 ["isChecked"]
      108 LOADK                            R14 K24 ["Filter"]
      109 LOADK                            R15 K21 ["PlayerScripts"]
      110 NAMECALL                         R12 R0 K8 ["getText"]
      112 CALL                             R12 3 1
      113 SETTABLEKS                       R12 R11 K3 ["text"]
      115 SETLIST                          R10 R11 1 [1]
      117 LENGTH                           R11 R9
      118 LOADN                            R12 0
      119 JUMPIFNOTLT                      R12 R11 ; [+15]
      121 NEWTABLE                         R11 0 3
      123 DUPTABLE                         R12 K20 [{"items"}]
      124 SETTABLEKS                       R8 R12 K19 ["items"]
      126 DUPTABLE                         R13 K20 [{"items"}]
      127 SETTABLEKS                       R9 R13 K19 ["items"]
      129 DUPTABLE                         R14 K20 [{"items"}]
      130 SETTABLEKS                       R10 R14 K19 ["items"]
      132 SETLIST                          R11 R12 3 [1]
      134 RETURN                           R11 1
      135 NEWTABLE                         R11 0 2
      137 DUPTABLE                         R12 K20 [{"items"}]
      138 SETTABLEKS                       R8 R12 K19 ["items"]
      140 DUPTABLE                         R13 K20 [{"items"}]
      141 SETTABLEKS                       R10 R13 K19 ["items"]
      143 SETLIST                          R11 R12 2 [1]
      145 RETURN                           R11 1

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
       39 GETTABLEKS                       R5 R1 K13 ["Enums"]
       41 GETTABLEKS                       R5 R5 K14 ["IconName"]
       43 DUPCLOSURE                       R6 K15 [PROTO_0]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R5
       47 RETURN                           R6 1
