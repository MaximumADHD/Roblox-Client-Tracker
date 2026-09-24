PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 DUPTABLE                         R4 K4 [{"icon", "id", "isChecked", "text"}]
        3 GETUPVAL                         R6 0
        4 JUMPIF                           R6 ; [+6]
        5 GETIMPORT                        R6 K8 [Enum.InputActionType.Bool]
        7 JUMPIFNOTEQ                      R0 R6 ; [+3]
        9 LOADK                            R5 K9 ["circle-check"]
       10 JUMP                             ; [+1]
       11 LOADNIL                          R5
       12 SETTABLEKS                       R5 R4 K0 ["icon"]
       14 JUMPIFNOTEQKNIL                  R0 ; [+5]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K10 ["CREATE_ACTION_BOOL"]
       19 JUMP                             ; [+3]
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K11 ["EDIT_ACTION_BOOL"]
       23 SETTABLEKS                       R5 R4 K1 ["id"]
       25 GETUPVAL                         R6 0
       26 JUMPIFNOT                        R6 ; [+7]
       27 GETIMPORT                        R6 K8 [Enum.InputActionType.Bool]
       29 JUMPIFEQ                         R0 R6 ; [+2]
       31 LOADB                            R5 0 +1
       32 LOADB                            R5 1
       33 JUMP                             ; [+1]
       34 LOADNIL                          R5
       35 SETTABLEKS                       R5 R4 K2 ["isChecked"]
       37 GETIMPORT                        R5 K8 [Enum.InputActionType.Bool]
       39 GETTABLEKS                       R5 R5 K12 ["Name"]
       41 SETTABLEKS                       R5 R4 K3 ["text"]
       43 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       45 MOVE                             R3 R1
       46 GETIMPORT                        R2 K15 [table.insert]
       48 CALL                             R2 2 0
       49 DUPTABLE                         R4 K4 [{"icon", "id", "isChecked", "text"}]
       50 GETUPVAL                         R6 0
       51 JUMPIF                           R6 ; [+6]
       52 GETIMPORT                        R6 K17 [Enum.InputActionType.Direction1D]
       54 JUMPIFNOTEQ                      R0 R6 ; [+3]
       56 LOADK                            R5 K9 ["circle-check"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R5
       59 SETTABLEKS                       R5 R4 K0 ["icon"]
       61 JUMPIFNOTEQKNIL                  R0 ; [+5]
       63 GETUPVAL                         R5 1
       64 GETTABLEKS                       R5 R5 K18 ["CREATE_ACTION_DIRECTION1D"]
       66 JUMP                             ; [+3]
       67 GETUPVAL                         R5 1
       68 GETTABLEKS                       R5 R5 K19 ["EDIT_ACTION_DIRECTION1D"]
       70 SETTABLEKS                       R5 R4 K1 ["id"]
       72 GETUPVAL                         R6 0
       73 JUMPIFNOT                        R6 ; [+7]
       74 GETIMPORT                        R6 K17 [Enum.InputActionType.Direction1D]
       76 JUMPIFEQ                         R0 R6 ; [+2]
       78 LOADB                            R5 0 +1
       79 LOADB                            R5 1
       80 JUMP                             ; [+1]
       81 LOADNIL                          R5
       82 SETTABLEKS                       R5 R4 K2 ["isChecked"]
       84 GETIMPORT                        R5 K17 [Enum.InputActionType.Direction1D]
       86 GETTABLEKS                       R5 R5 K12 ["Name"]
       88 SETTABLEKS                       R5 R4 K3 ["text"]
       90 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       92 MOVE                             R3 R1
       93 GETIMPORT                        R2 K15 [table.insert]
       95 CALL                             R2 2 0
       96 DUPTABLE                         R4 K4 [{"icon", "id", "isChecked", "text"}]
       97 GETUPVAL                         R6 0
       98 JUMPIF                           R6 ; [+6]
       99 GETIMPORT                        R6 K21 [Enum.InputActionType.Direction2D]
      101 JUMPIFNOTEQ                      R0 R6 ; [+3]
      103 LOADK                            R5 K9 ["circle-check"]
      104 JUMP                             ; [+1]
      105 LOADNIL                          R5
      106 SETTABLEKS                       R5 R4 K0 ["icon"]
      108 JUMPIFNOTEQKNIL                  R0 ; [+5]
      110 GETUPVAL                         R5 1
      111 GETTABLEKS                       R5 R5 K22 ["CREATE_ACTION_DIRECTION2D"]
      113 JUMP                             ; [+3]
      114 GETUPVAL                         R5 1
      115 GETTABLEKS                       R5 R5 K23 ["EDIT_ACTION_DIRECTION2D"]
      117 SETTABLEKS                       R5 R4 K1 ["id"]
      119 GETUPVAL                         R6 0
      120 JUMPIFNOT                        R6 ; [+7]
      121 GETIMPORT                        R6 K21 [Enum.InputActionType.Direction2D]
      123 JUMPIFEQ                         R0 R6 ; [+2]
      125 LOADB                            R5 0 +1
      126 LOADB                            R5 1
      127 JUMP                             ; [+1]
      128 LOADNIL                          R5
      129 SETTABLEKS                       R5 R4 K2 ["isChecked"]
      131 GETIMPORT                        R5 K21 [Enum.InputActionType.Direction2D]
      133 GETTABLEKS                       R5 R5 K12 ["Name"]
      135 SETTABLEKS                       R5 R4 K3 ["text"]
      137 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
      139 MOVE                             R3 R1
      140 GETIMPORT                        R2 K15 [table.insert]
      142 CALL                             R2 2 0
      143 DUPTABLE                         R4 K4 [{"icon", "id", "isChecked", "text"}]
      144 GETUPVAL                         R6 0
      145 JUMPIF                           R6 ; [+6]
      146 GETIMPORT                        R6 K25 [Enum.InputActionType.Direction3D]
      148 JUMPIFNOTEQ                      R0 R6 ; [+3]
      150 LOADK                            R5 K9 ["circle-check"]
      151 JUMP                             ; [+1]
      152 LOADNIL                          R5
      153 SETTABLEKS                       R5 R4 K0 ["icon"]
      155 JUMPIFNOTEQKNIL                  R0 ; [+5]
      157 GETUPVAL                         R5 1
      158 GETTABLEKS                       R5 R5 K26 ["CREATE_ACTION_DIRECTION3D"]
      160 JUMP                             ; [+3]
      161 GETUPVAL                         R5 1
      162 GETTABLEKS                       R5 R5 K27 ["EDIT_ACTION_DIRECTION3D"]
      164 SETTABLEKS                       R5 R4 K1 ["id"]
      166 GETUPVAL                         R6 0
      167 JUMPIFNOT                        R6 ; [+7]
      168 GETIMPORT                        R6 K25 [Enum.InputActionType.Direction3D]
      170 JUMPIFEQ                         R0 R6 ; [+2]
      172 LOADB                            R5 0 +1
      173 LOADB                            R5 1
      174 JUMP                             ; [+1]
      175 LOADNIL                          R5
      176 SETTABLEKS                       R5 R4 K2 ["isChecked"]
      178 GETIMPORT                        R5 K25 [Enum.InputActionType.Direction3D]
      180 GETTABLEKS                       R5 R5 K12 ["Name"]
      182 SETTABLEKS                       R5 R4 K3 ["text"]
      184 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
      186 MOVE                             R3 R1
      187 GETIMPORT                        R2 K15 [table.insert]
      189 CALL                             R2 2 0
      190 GETUPVAL                         R2 2
      191 CALL                             R2 0 1
      192 JUMPIFNOT                        R2 ; [+47]
      193 DUPTABLE                         R4 K4 [{"icon", "id", "isChecked", "text"}]
      194 GETUPVAL                         R6 0
      195 JUMPIF                           R6 ; [+6]
      196 GETIMPORT                        R6 K29 [Enum.InputActionType.ViewportPosition]
      198 JUMPIFNOTEQ                      R0 R6 ; [+3]
      200 LOADK                            R5 K9 ["circle-check"]
      201 JUMP                             ; [+1]
      202 LOADNIL                          R5
      203 SETTABLEKS                       R5 R4 K0 ["icon"]
      205 JUMPIFNOTEQKNIL                  R0 ; [+5]
      207 GETUPVAL                         R5 1
      208 GETTABLEKS                       R5 R5 K30 ["CREATE_ACTION_VIEWPORT_POSITION"]
      210 JUMP                             ; [+3]
      211 GETUPVAL                         R5 1
      212 GETTABLEKS                       R5 R5 K31 ["EDIT_ACTION_VIEWPORT_POSITION"]
      214 SETTABLEKS                       R5 R4 K1 ["id"]
      216 GETUPVAL                         R6 0
      217 JUMPIFNOT                        R6 ; [+7]
      218 GETIMPORT                        R6 K29 [Enum.InputActionType.ViewportPosition]
      220 JUMPIFEQ                         R0 R6 ; [+2]
      222 LOADB                            R5 0 +1
      223 LOADB                            R5 1
      224 JUMP                             ; [+1]
      225 LOADNIL                          R5
      226 SETTABLEKS                       R5 R4 K2 ["isChecked"]
      228 GETIMPORT                        R5 K29 [Enum.InputActionType.ViewportPosition]
      230 GETTABLEKS                       R5 R5 K12 ["Name"]
      232 SETTABLEKS                       R5 R4 K3 ["text"]
      234 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
      236 MOVE                             R3 R1
      237 GETIMPORT                        R2 K15 [table.insert]
      239 CALL                             R2 2 0
      240 RETURN                           R1 1

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
       31 GETTABLEKS                       R4 R4 K13 ["getFFlagIAMBooleanProperties"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K8 ["Src"]
       38 GETTABLEKS                       R5 R5 K12 ["Flags"]
       40 GETTABLEKS                       R5 R5 K14 ["getFFlagIAMViewportPositionType"]
       42 CALL                             R4 1 1
       43 MOVE                             R5 R3
       44 CALL                             R5 0 1
       45 DUPCLOSURE                       R6 K15 [PROTO_0]
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R4
       49 RETURN                           R6 1
