PROTO_0:
        0 NEWTABLE                         R8 0 0
        2 GETUPVAL                         R9 0
        3 CALL                             R9 0 3
        4 FORGPREP                         R9
        5 DUPTABLE                         R16 K3 [{"id", "isChecked", "text"}]
        6 LOADK                            R17 K4 ["filter.schema.%*"]
        7 MOVE                             R19 R13
        8 NAMECALL                         R17 R17 K5 ["format"]
       10 CALL                             R17 2 1
       11 SETTABLEKS                       R17 R16 K0 ["id"]
       13 GETTABLE                         R18 R4 R13
       14 JUMPIFNOTEQKB                    R18 FALSE ; [+2]
       16 LOADB                            R17 0 +1
       17 LOADB                            R17 1
       18 SETTABLEKS                       R17 R16 K1 ["isChecked"]
       20 LOADK                            R19 K6 ["Schema"]
       21 MOVE                             R20 R13
       22 NAMECALL                         R17 R0 K7 ["getText"]
       24 CALL                             R17 3 1
       25 SETTABLEKS                       R17 R16 K2 ["text"]
       27 FASTCALL2                        TABLE_INSERT R8 R16 ; [+4]
       29 MOVE                             R15 R8
       30 GETIMPORT                        R14 K10 [table.insert]
       32 CALL                             R14 2 0
       33 FORGLOOP                         R9 2 ; [-29]
       35 NEWTABLE                         R9 0 0
       37 MOVE                             R10 R1
       38 LOADNIL                          R11
       39 LOADNIL                          R12
       40 FORGPREP                         R10
       41 MOVE                             R15 R2
       42 MOVE                             R16 R14
       43 CALL                             R15 1 1
       44 JUMPIFNOT                        R15 ; [+26]
       45 GETUPVAL                         R16 1
       46 CALL                             R16 0 1
       47 JUMPIFNOT                        R16 ; [+3]
       48 GETTABLEKS                       R16 R15 K11 ["defaultPlayerScript"]
       50 JUMPIF                           R16 ; [+20]
       51 DUPTABLE                         R18 K3 [{"id", "isChecked", "text"}]
       52 SETTABLEKS                       R14 R18 K0 ["id"]
       54 GETTABLE                         R20 R3 R14
       55 JUMPIFNOTEQKB                    R20 FALSE ; [+2]
       57 LOADB                            R19 0 +1
       58 LOADB                            R19 1
       59 SETTABLEKS                       R19 R18 K1 ["isChecked"]
       61 GETTABLEKS                       R19 R15 K12 ["name"]
       63 SETTABLEKS                       R19 R18 K2 ["text"]
       65 FASTCALL2                        TABLE_INSERT R9 R18 ; [+4]
       67 MOVE                             R17 R9
       68 GETIMPORT                        R16 K10 [table.insert]
       70 CALL                             R16 2 0
       71 FORGLOOP                         R10 2 ; [-31]
       73 GETUPVAL                         R10 1
       74 CALL                             R10 0 1
       75 JUMPIFNOT                        R10 ; [+6]
       76 GETIMPORT                        R10 K16 [Enum.StudioDataModelType.Edit]
       78 JUMPIFNOTEQ                      R6 R10 ; [+3]
       80 JUMPIFNOTEQKB                    R7 FALSE ; [+12]
       82 NEWTABLE                         R10 0 2
       84 DUPTABLE                         R11 K18 [{"items"}]
       85 SETTABLEKS                       R8 R11 K17 ["items"]
       87 DUPTABLE                         R12 K18 [{"items"}]
       88 SETTABLEKS                       R9 R12 K17 ["items"]
       90 SETLIST                          R10 R11 2 [1]
       92 RETURN                           R10 1
       93 NEWTABLE                         R10 0 1
       95 DUPTABLE                         R11 K20 [{[1] = "PlayerScripts", ["isChecked"], ["text"]}]
       96 GETUPVAL                         R13 2
       97 CALL                             R13 0 1
       98 JUMPIFNOT                        R13 ; [+7]
       99 GETTABLEKS                       R13 R5 K19 ["PlayerScripts"]
      101 JUMPIFNOTEQKB                    R13 FALSE ; [+2]
      103 LOADB                            R12 0 +1
      104 LOADB                            R12 1
      105 JUMP                             ; [+6]
      106 GETTABLEKS                       R13 R3 K19 ["PlayerScripts"]
      108 JUMPIFNOTEQKB                    R13 FALSE ; [+2]
      110 LOADB                            R12 0 +1
      111 LOADB                            R12 1
      112 SETTABLEKS                       R12 R11 K1 ["isChecked"]
      114 LOADK                            R14 K21 ["Filter"]
      115 LOADK                            R15 K19 ["PlayerScripts"]
      116 NAMECALL                         R12 R0 K7 ["getText"]
      118 CALL                             R12 3 1
      119 SETTABLEKS                       R12 R11 K2 ["text"]
      121 SETLIST                          R10 R11 1 [1]
      123 LENGTH                           R11 R9
      124 LOADN                            R12 0
      125 JUMPIFNOTLT                      R12 R11 ; [+15]
      127 NEWTABLE                         R11 0 3
      129 DUPTABLE                         R12 K18 [{"items"}]
      130 SETTABLEKS                       R8 R12 K17 ["items"]
      132 DUPTABLE                         R13 K18 [{"items"}]
      133 SETTABLEKS                       R9 R13 K17 ["items"]
      135 DUPTABLE                         R14 K18 [{"items"}]
      136 SETTABLEKS                       R10 R14 K17 ["items"]
      138 SETLIST                          R11 R12 3 [1]
      140 RETURN                           R11 1
      141 NEWTABLE                         R11 0 2
      143 DUPTABLE                         R12 K18 [{"items"}]
      144 SETTABLEKS                       R8 R12 K17 ["items"]
      146 DUPTABLE                         R13 K18 [{"items"}]
      147 SETTABLEKS                       R10 R13 K17 ["items"]
      149 SETLIST                          R11 R12 2 [1]
      151 RETURN                           R11 1

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
       27 GETTABLEKS                       R4 R4 K11 ["getSchemas"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R0 K8 ["Src"]
       32 GETTABLEKS                       R4 R4 K12 ["Flags"]
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R4 K13 ["getFFlagIAMPlayerScripts"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R4 K14 ["getFFlagIAMSavedFilters"]
       43 CALL                             R6 1 1
       44 DUPCLOSURE                       R7 K15 [PROTO_0]
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R6
       48 RETURN                           R7 1
