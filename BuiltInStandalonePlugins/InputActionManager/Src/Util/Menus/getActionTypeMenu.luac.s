PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 DUPTABLE                         R4 K3 [{"icon", "id", "text"}]
        3 GETIMPORT                        R6 K7 [Enum.InputActionType.Bool]
        5 JUMPIFNOTEQ                      R0 R6 ; [+3]
        7 LOADK                            R5 K8 ["circle-check"]
        8 JUMP                             ; [+1]
        9 LOADNIL                          R5
       10 SETTABLEKS                       R5 R4 K0 ["icon"]
       12 JUMPIFNOTEQKNIL                  R0 ; [+5]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K9 ["CREATE_ACTION_BOOL"]
       17 JUMP                             ; [+3]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K10 ["EDIT_ACTION_BOOL"]
       21 SETTABLEKS                       R5 R4 K1 ["id"]
       23 GETIMPORT                        R5 K7 [Enum.InputActionType.Bool]
       25 GETTABLEKS                       R5 R5 K11 ["Name"]
       27 SETTABLEKS                       R5 R4 K2 ["text"]
       29 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       31 MOVE                             R3 R1
       32 GETIMPORT                        R2 K14 [table.insert]
       34 CALL                             R2 2 0
       35 DUPTABLE                         R4 K3 [{"icon", "id", "text"}]
       36 GETIMPORT                        R6 K16 [Enum.InputActionType.Direction1D]
       38 JUMPIFNOTEQ                      R0 R6 ; [+3]
       40 LOADK                            R5 K8 ["circle-check"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R5
       43 SETTABLEKS                       R5 R4 K0 ["icon"]
       45 JUMPIFNOTEQKNIL                  R0 ; [+5]
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R5 R5 K17 ["CREATE_ACTION_DIRECTION1D"]
       50 JUMP                             ; [+3]
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R5 R5 K18 ["EDIT_ACTION_DIRECTION1D"]
       54 SETTABLEKS                       R5 R4 K1 ["id"]
       56 GETIMPORT                        R5 K16 [Enum.InputActionType.Direction1D]
       58 GETTABLEKS                       R5 R5 K11 ["Name"]
       60 SETTABLEKS                       R5 R4 K2 ["text"]
       62 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       64 MOVE                             R3 R1
       65 GETIMPORT                        R2 K14 [table.insert]
       67 CALL                             R2 2 0
       68 DUPTABLE                         R4 K3 [{"icon", "id", "text"}]
       69 GETIMPORT                        R6 K20 [Enum.InputActionType.Direction2D]
       71 JUMPIFNOTEQ                      R0 R6 ; [+3]
       73 LOADK                            R5 K8 ["circle-check"]
       74 JUMP                             ; [+1]
       75 LOADNIL                          R5
       76 SETTABLEKS                       R5 R4 K0 ["icon"]
       78 JUMPIFNOTEQKNIL                  R0 ; [+5]
       80 GETUPVAL                         R5 0
       81 GETTABLEKS                       R5 R5 K21 ["CREATE_ACTION_DIRECTION2D"]
       83 JUMP                             ; [+3]
       84 GETUPVAL                         R5 0
       85 GETTABLEKS                       R5 R5 K22 ["EDIT_ACTION_DIRECTION2D"]
       87 SETTABLEKS                       R5 R4 K1 ["id"]
       89 GETIMPORT                        R5 K20 [Enum.InputActionType.Direction2D]
       91 GETTABLEKS                       R5 R5 K11 ["Name"]
       93 SETTABLEKS                       R5 R4 K2 ["text"]
       95 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       97 MOVE                             R3 R1
       98 GETIMPORT                        R2 K14 [table.insert]
      100 CALL                             R2 2 0
      101 DUPTABLE                         R4 K3 [{"icon", "id", "text"}]
      102 GETIMPORT                        R6 K24 [Enum.InputActionType.Direction3D]
      104 JUMPIFNOTEQ                      R0 R6 ; [+3]
      106 LOADK                            R5 K8 ["circle-check"]
      107 JUMP                             ; [+1]
      108 LOADNIL                          R5
      109 SETTABLEKS                       R5 R4 K0 ["icon"]
      111 JUMPIFNOTEQKNIL                  R0 ; [+5]
      113 GETUPVAL                         R5 0
      114 GETTABLEKS                       R5 R5 K25 ["CREATE_ACTION_DIRECTION3D"]
      116 JUMP                             ; [+3]
      117 GETUPVAL                         R5 0
      118 GETTABLEKS                       R5 R5 K26 ["EDIT_ACTION_DIRECTION3D"]
      120 SETTABLEKS                       R5 R4 K1 ["id"]
      122 GETIMPORT                        R5 K24 [Enum.InputActionType.Direction3D]
      124 GETTABLEKS                       R5 R5 K11 ["Name"]
      126 SETTABLEKS                       R5 R4 K2 ["text"]
      128 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
      130 MOVE                             R3 R1
      131 GETIMPORT                        R2 K14 [table.insert]
      133 CALL                             R2 2 0
      134 GETUPVAL                         R2 1
      135 CALL                             R2 0 1
      136 JUMPIFNOT                        R2 ; [+33]
      137 DUPTABLE                         R4 K3 [{"icon", "id", "text"}]
      138 GETIMPORT                        R6 K28 [Enum.InputActionType.ViewportPosition]
      140 JUMPIFNOTEQ                      R0 R6 ; [+3]
      142 LOADK                            R5 K8 ["circle-check"]
      143 JUMP                             ; [+1]
      144 LOADNIL                          R5
      145 SETTABLEKS                       R5 R4 K0 ["icon"]
      147 JUMPIFNOTEQKNIL                  R0 ; [+5]
      149 GETUPVAL                         R5 0
      150 GETTABLEKS                       R5 R5 K29 ["CREATE_ACTION_VIEWPORT_POSITION"]
      152 JUMP                             ; [+3]
      153 GETUPVAL                         R5 0
      154 GETTABLEKS                       R5 R5 K30 ["EDIT_ACTION_VIEWPORT_POSITION"]
      156 SETTABLEKS                       R5 R4 K1 ["id"]
      158 GETIMPORT                        R5 K28 [Enum.InputActionType.ViewportPosition]
      160 GETTABLEKS                       R5 R5 K11 ["Name"]
      162 SETTABLEKS                       R5 R4 K2 ["text"]
      164 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
      166 MOVE                             R3 R1
      167 GETIMPORT                        R2 K14 [table.insert]
      169 CALL                             R2 2 0
      170 RETURN                           R1 1

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
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Src"]
       29 GETTABLEKS                       R4 R4 K12 ["Flags"]
       31 GETTABLEKS                       R4 R4 K13 ["getFFlagIAMViewportPositionType"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K14 [PROTO_0]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 RETURN                           R4 1
