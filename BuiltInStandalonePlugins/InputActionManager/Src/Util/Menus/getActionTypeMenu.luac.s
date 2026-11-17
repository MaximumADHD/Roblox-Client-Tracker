PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 DUPTABLE                         R4 K3 [{"id", "isChecked", "text"}]
        3 JUMPIFNOTEQKNIL                  R0 ; [+5]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K4 ["CREATE_ACTION_BOOL"]
        8 JUMP                             ; [+3]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K5 ["EDIT_ACTION_BOOL"]
       12 SETTABLEKS                       R5 R4 K0 ["id"]
       14 GETIMPORT                        R6 K9 [Enum.InputActionType.Bool]
       16 JUMPIFEQ                         R0 R6 ; [+2]
       18 LOADB                            R5 0 +1
       19 LOADB                            R5 1
       20 SETTABLEKS                       R5 R4 K1 ["isChecked"]
       22 GETIMPORT                        R5 K9 [Enum.InputActionType.Bool]
       24 GETTABLEKS                       R5 R5 K10 ["Name"]
       26 SETTABLEKS                       R5 R4 K2 ["text"]
       28 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       30 MOVE                             R3 R1
       31 GETIMPORT                        R2 K13 [table.insert]
       33 CALL                             R2 2 0
       34 DUPTABLE                         R4 K3 [{"id", "isChecked", "text"}]
       35 JUMPIFNOTEQKNIL                  R0 ; [+5]
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R5 R5 K14 ["CREATE_ACTION_DIRECTION1D"]
       40 JUMP                             ; [+3]
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R5 R5 K15 ["EDIT_ACTION_DIRECTION1D"]
       44 SETTABLEKS                       R5 R4 K0 ["id"]
       46 GETIMPORT                        R6 K17 [Enum.InputActionType.Direction1D]
       48 JUMPIFEQ                         R0 R6 ; [+2]
       50 LOADB                            R5 0 +1
       51 LOADB                            R5 1
       52 SETTABLEKS                       R5 R4 K1 ["isChecked"]
       54 GETIMPORT                        R5 K17 [Enum.InputActionType.Direction1D]
       56 GETTABLEKS                       R5 R5 K10 ["Name"]
       58 SETTABLEKS                       R5 R4 K2 ["text"]
       60 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       62 MOVE                             R3 R1
       63 GETIMPORT                        R2 K13 [table.insert]
       65 CALL                             R2 2 0
       66 DUPTABLE                         R4 K3 [{"id", "isChecked", "text"}]
       67 JUMPIFNOTEQKNIL                  R0 ; [+5]
       69 GETUPVAL                         R5 0
       70 GETTABLEKS                       R5 R5 K18 ["CREATE_ACTION_DIRECTION2D"]
       72 JUMP                             ; [+3]
       73 GETUPVAL                         R5 0
       74 GETTABLEKS                       R5 R5 K19 ["EDIT_ACTION_DIRECTION2D"]
       76 SETTABLEKS                       R5 R4 K0 ["id"]
       78 GETIMPORT                        R6 K21 [Enum.InputActionType.Direction2D]
       80 JUMPIFEQ                         R0 R6 ; [+2]
       82 LOADB                            R5 0 +1
       83 LOADB                            R5 1
       84 SETTABLEKS                       R5 R4 K1 ["isChecked"]
       86 GETIMPORT                        R5 K21 [Enum.InputActionType.Direction2D]
       88 GETTABLEKS                       R5 R5 K10 ["Name"]
       90 SETTABLEKS                       R5 R4 K2 ["text"]
       92 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       94 MOVE                             R3 R1
       95 GETIMPORT                        R2 K13 [table.insert]
       97 CALL                             R2 2 0
       98 DUPTABLE                         R4 K3 [{"id", "isChecked", "text"}]
       99 JUMPIFNOTEQKNIL                  R0 ; [+5]
      101 GETUPVAL                         R5 0
      102 GETTABLEKS                       R5 R5 K22 ["CREATE_ACTION_DIRECTION3D"]
      104 JUMP                             ; [+3]
      105 GETUPVAL                         R5 0
      106 GETTABLEKS                       R5 R5 K23 ["EDIT_ACTION_DIRECTION3D"]
      108 SETTABLEKS                       R5 R4 K0 ["id"]
      110 GETIMPORT                        R6 K25 [Enum.InputActionType.Direction3D]
      112 JUMPIFEQ                         R0 R6 ; [+2]
      114 LOADB                            R5 0 +1
      115 LOADB                            R5 1
      116 SETTABLEKS                       R5 R4 K1 ["isChecked"]
      118 GETIMPORT                        R5 K25 [Enum.InputActionType.Direction3D]
      120 GETTABLEKS                       R5 R5 K10 ["Name"]
      122 SETTABLEKS                       R5 R4 K2 ["text"]
      124 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
      126 MOVE                             R3 R1
      127 GETIMPORT                        R2 K13 [table.insert]
      129 CALL                             R2 2 0
      130 DUPTABLE                         R4 K3 [{"id", "isChecked", "text"}]
      131 JUMPIFNOTEQKNIL                  R0 ; [+5]
      133 GETUPVAL                         R5 0
      134 GETTABLEKS                       R5 R5 K26 ["CREATE_ACTION_VIEWPORT_POSITION"]
      136 JUMP                             ; [+3]
      137 GETUPVAL                         R5 0
      138 GETTABLEKS                       R5 R5 K27 ["EDIT_ACTION_VIEWPORT_POSITION"]
      140 SETTABLEKS                       R5 R4 K0 ["id"]
      142 GETIMPORT                        R6 K29 [Enum.InputActionType.ViewportPosition]
      144 JUMPIFEQ                         R0 R6 ; [+2]
      146 LOADB                            R5 0 +1
      147 LOADB                            R5 1
      148 SETTABLEKS                       R5 R4 K1 ["isChecked"]
      150 GETIMPORT                        R5 K29 [Enum.InputActionType.ViewportPosition]
      152 GETTABLEKS                       R5 R5 K10 ["Name"]
      154 SETTABLEKS                       R5 R4 K2 ["text"]
      156 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
      158 MOVE                             R3 R1
      159 GETIMPORT                        R2 K13 [table.insert]
      161 CALL                             R2 2 0
      162 RETURN                           R1 1

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
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Constants"]
       22 GETTABLEKS                       R3 R3 K11 ["MenuIdentifiers"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K12 [PROTO_0]
       26 CAPTURE                          VAL R2
       27 RETURN                           R3 1
