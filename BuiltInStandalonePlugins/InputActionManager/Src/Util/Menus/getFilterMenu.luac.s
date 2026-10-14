PROTO_0:
        0 NEWTABLE                         R7 0 0
        2 GETUPVAL                         R8 0
        3 CALL                             R8 0 3
        4 FORGPREP                         R8
        5 DUPTABLE                         R15 K3 [{"id", "isChecked", "text"}]
        6 LOADK                            R16 K4 ["filter.schema.%*"]
        7 MOVE                             R18 R12
        8 NAMECALL                         R16 R16 K5 ["format"]
       10 CALL                             R16 2 1
       11 SETTABLEKS                       R16 R15 K0 ["id"]
       13 GETTABLE                         R17 R4 R12
       14 JUMPIFNOTEQKB                    R17 FALSE ; [+2]
       16 LOADB                            R16 0 +1
       17 LOADB                            R16 1
       18 SETTABLEKS                       R16 R15 K1 ["isChecked"]
       20 LOADK                            R18 K6 ["Schema"]
       21 MOVE                             R19 R12
       22 NAMECALL                         R16 R0 K7 ["getText"]
       24 CALL                             R16 3 1
       25 SETTABLEKS                       R16 R15 K2 ["text"]
       27 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
       29 MOVE                             R14 R7
       30 GETIMPORT                        R13 K10 [table.insert]
       32 CALL                             R13 2 0
       33 FORGLOOP                         R8 2 ; [-29]
       35 NEWTABLE                         R8 0 0
       37 MOVE                             R9 R1
       38 LOADNIL                          R10
       39 LOADNIL                          R11
       40 FORGPREP                         R9
       41 MOVE                             R14 R2
       42 MOVE                             R15 R13
       43 CALL                             R14 1 1
       44 JUMPIFNOT                        R14 ; [+26]
       45 GETUPVAL                         R15 1
       46 CALL                             R15 0 1
       47 JUMPIFNOT                        R15 ; [+3]
       48 GETTABLEKS                       R15 R14 K11 ["defaultPlayerScript"]
       50 JUMPIF                           R15 ; [+20]
       51 DUPTABLE                         R17 K3 [{"id", "isChecked", "text"}]
       52 SETTABLEKS                       R13 R17 K0 ["id"]
       54 GETTABLE                         R19 R3 R13
       55 JUMPIFNOTEQKB                    R19 FALSE ; [+2]
       57 LOADB                            R18 0 +1
       58 LOADB                            R18 1
       59 SETTABLEKS                       R18 R17 K1 ["isChecked"]
       61 GETTABLEKS                       R18 R14 K12 ["name"]
       63 SETTABLEKS                       R18 R17 K2 ["text"]
       65 FASTCALL2                        TABLE_INSERT R8 R17 ; [+4]
       67 MOVE                             R16 R8
       68 GETIMPORT                        R15 K10 [table.insert]
       70 CALL                             R15 2 0
       71 FORGLOOP                         R9 2 ; [-31]
       73 GETUPVAL                         R9 1
       74 CALL                             R9 0 1
       75 JUMPIFNOT                        R9 ; [+6]
       76 GETIMPORT                        R9 K16 [Enum.StudioDataModelType.Edit]
       78 JUMPIFNOTEQ                      R5 R9 ; [+3]
       80 JUMPIFNOTEQKB                    R6 FALSE ; [+12]
       82 NEWTABLE                         R9 0 2
       84 DUPTABLE                         R10 K18 [{"items"}]
       85 SETTABLEKS                       R7 R10 K17 ["items"]
       87 DUPTABLE                         R11 K18 [{"items"}]
       88 SETTABLEKS                       R8 R11 K17 ["items"]
       90 SETLIST                          R9 R10 2 [1]
       92 RETURN                           R9 1
       93 NEWTABLE                         R9 0 1
       95 DUPTABLE                         R10 K20 [{[1] = "PlayerScripts", ["isChecked"], ["text"]}]
       96 GETTABLEKS                       R12 R3 K19 ["PlayerScripts"]
       98 JUMPIFNOTEQKB                    R12 FALSE ; [+2]
      100 LOADB                            R11 0 +1
      101 LOADB                            R11 1
      102 SETTABLEKS                       R11 R10 K1 ["isChecked"]
      104 LOADK                            R13 K21 ["Filter"]
      105 LOADK                            R14 K19 ["PlayerScripts"]
      106 NAMECALL                         R11 R0 K7 ["getText"]
      108 CALL                             R11 3 1
      109 SETTABLEKS                       R11 R10 K2 ["text"]
      111 SETLIST                          R9 R10 1 [1]
      113 LENGTH                           R10 R8
      114 LOADN                            R11 0
      115 JUMPIFNOTLT                      R11 R10 ; [+15]
      117 NEWTABLE                         R10 0 3
      119 DUPTABLE                         R11 K18 [{"items"}]
      120 SETTABLEKS                       R7 R11 K17 ["items"]
      122 DUPTABLE                         R12 K18 [{"items"}]
      123 SETTABLEKS                       R8 R12 K17 ["items"]
      125 DUPTABLE                         R13 K18 [{"items"}]
      126 SETTABLEKS                       R9 R13 K17 ["items"]
      128 SETLIST                          R10 R11 3 [1]
      130 RETURN                           R10 1
      131 NEWTABLE                         R10 0 2
      133 DUPTABLE                         R11 K18 [{"items"}]
      134 SETTABLEKS                       R7 R11 K17 ["items"]
      136 DUPTABLE                         R12 K18 [{"items"}]
      137 SETTABLEKS                       R9 R12 K17 ["items"]
      139 SETLIST                          R10 R11 2 [1]
      141 RETURN                           R10 1

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
       39 DUPCLOSURE                       R6 K14 [PROTO_0]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R5
       42 RETURN                           R6 1
