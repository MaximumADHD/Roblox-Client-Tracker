PROTO_0:
        0 JUMPIFNOTEQKS                    R1 K0 ["ascending"] ; [+2]
        2 LOADB                            R2 0 +1
        3 LOADB                            R2 1
        4 JUMPIFEQKS                       R0 K1 ["Error"] ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 JUMPIFNOT                        R2 ; [+5]
        9 JUMPIFNOT                        R3 ; [+2]
       10 LOADN                            R4 0
       11 RETURN                           R4 1
       12 LOADN                            R4 1
       13 RETURN                           R4 1
       14 JUMPIFNOT                        R3 ; [+2]
       15 LOADN                            R4 1
       16 RETURN                           R4 1
       17 LOADN                            R4 0
       18 RETURN                           R4 1

PROTO_1:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["severity"]
        6 JUMPIFNOTEQKS                    R6 K1 ["Error"] ; [+3]
        8 LOADK                            R6 K1 ["Error"]
        9 RETURN                           R6 1
       10 FORGLOOP                         R1 2 ; [-7]
       12 LOADK                            R1 K2 ["Warning"]
       13 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["severity"]
        2 GETUPVAL                         R4 0
        3 JUMPIFNOTEQKS                    R4 K1 ["ascending"] ; [+2]
        5 LOADB                            R5 0 +1
        6 LOADB                            R5 1
        7 JUMPIFEQKS                       R3 K2 ["Error"] ; [+2]
        9 LOADB                            R6 0 +1
       10 LOADB                            R6 1
       11 JUMPIFNOT                        R5 ; [+5]
       12 JUMPIFNOT                        R6 ; [+2]
       13 LOADN                            R2 0
       14 JUMP                             ; [+6]
       15 LOADN                            R2 1
       16 JUMP                             ; [+4]
       17 JUMPIFNOT                        R6 ; [+2]
       18 LOADN                            R2 1
       19 JUMP                             ; [+1]
       20 LOADN                            R2 0
       21 GETTABLEKS                       R4 R1 K0 ["severity"]
       23 GETUPVAL                         R5 0
       24 JUMPIFNOTEQKS                    R5 K1 ["ascending"] ; [+2]
       26 LOADB                            R6 0 +1
       27 LOADB                            R6 1
       28 JUMPIFEQKS                       R4 K2 ["Error"] ; [+2]
       30 LOADB                            R7 0 +1
       31 LOADB                            R7 1
       32 JUMPIFNOT                        R6 ; [+5]
       33 JUMPIFNOT                        R7 ; [+2]
       34 LOADN                            R3 0
       35 JUMP                             ; [+6]
       36 LOADN                            R3 1
       37 JUMP                             ; [+4]
       38 JUMPIFNOT                        R7 ; [+2]
       39 LOADN                            R3 1
       40 JUMP                             ; [+1]
       41 LOADN                            R3 0
       42 JUMPIFEQ                         R2 R3 ; [+6]
       44 JUMPIFLT                         R2 R3 ; [+2]
       46 LOADB                            R4 0 +1
       47 LOADB                            R4 1
       48 RETURN                           R4 1
       49 GETTABLEKS                       R6 R0 K4 ["text"]
       51 ORK                              R5 R6 K3 [""]
       52 GETTABLEKS                       R7 R1 K4 ["text"]
       54 ORK                              R6 R7 K3 [""]
       55 JUMPIFLT                         R5 R6 ; [+2]
       57 LOADB                            R4 0 +1
       58 LOADB                            R4 1
       59 RETURN                           R4 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["severity"]
        2 GETUPVAL                         R4 0
        3 JUMPIFNOTEQKS                    R4 K1 ["ascending"] ; [+2]
        5 LOADB                            R5 0 +1
        6 LOADB                            R5 1
        7 JUMPIFEQKS                       R3 K2 ["Error"] ; [+2]
        9 LOADB                            R6 0 +1
       10 LOADB                            R6 1
       11 JUMPIFNOT                        R5 ; [+5]
       12 JUMPIFNOT                        R6 ; [+2]
       13 LOADN                            R2 0
       14 JUMP                             ; [+6]
       15 LOADN                            R2 1
       16 JUMP                             ; [+4]
       17 JUMPIFNOT                        R6 ; [+2]
       18 LOADN                            R2 1
       19 JUMP                             ; [+1]
       20 LOADN                            R2 0
       21 GETTABLEKS                       R4 R1 K0 ["severity"]
       23 GETUPVAL                         R5 0
       24 JUMPIFNOTEQKS                    R5 K1 ["ascending"] ; [+2]
       26 LOADB                            R6 0 +1
       27 LOADB                            R6 1
       28 JUMPIFEQKS                       R4 K2 ["Error"] ; [+2]
       30 LOADB                            R7 0 +1
       31 LOADB                            R7 1
       32 JUMPIFNOT                        R6 ; [+5]
       33 JUMPIFNOT                        R7 ; [+2]
       34 LOADN                            R3 0
       35 JUMP                             ; [+6]
       36 LOADN                            R3 1
       37 JUMP                             ; [+4]
       38 JUMPIFNOT                        R7 ; [+2]
       39 LOADN                            R3 1
       40 JUMP                             ; [+1]
       41 LOADN                            R3 0
       42 JUMPIFEQ                         R2 R3 ; [+6]
       44 JUMPIFLT                         R2 R3 ; [+2]
       46 LOADB                            R4 0 +1
       47 LOADB                            R4 1
       48 RETURN                           R4 1
       49 GETTABLEKS                       R6 R0 K4 ["text"]
       51 ORK                              R5 R6 K3 [""]
       52 GETTABLEKS                       R7 R1 K4 ["text"]
       54 ORK                              R6 R7 K3 [""]
       55 JUMPIFLT                         R5 R6 ; [+2]
       57 LOADB                            R4 0 +1
       58 LOADB                            R4 1
       59 RETURN                           R4 1

PROTO_4:
        0 JUMPIF                           R0 ; [+3]
        1 NEWTABLE                         R2 0 0
        3 RETURN                           R2 1
        4 NEWTABLE                         R2 0 0
        6 NEWTABLE                         R3 0 0
        8 MOVE                             R4 R0
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 GETTABLEKS                       R9 R8 K0 ["groupKey"]
       14 JUMPIFEQKNIL                     R9 ; [+57]
       16 GETTABLEKS                       R10 R8 K0 ["groupKey"]
       18 GETTABLE                         R9 R2 R10
       19 JUMPIF                           R9 ; [+23]
       20 DUPTABLE                         R10 K4 [{"text", "icon", "children"}]
       21 GETTABLEKS                       R11 R8 K0 ["groupKey"]
       23 SETTABLEKS                       R11 R10 K1 ["text"]
       25 GETUPVAL                         R11 0
       26 SETTABLEKS                       R11 R10 K2 ["icon"]
       28 NEWTABLE                         R11 0 0
       30 SETTABLEKS                       R11 R10 K3 ["children"]
       32 MOVE                             R9 R10
       33 GETTABLEKS                       R10 R8 K0 ["groupKey"]
       35 SETTABLE                         R9 R2 R10
       36 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       38 MOVE                             R11 R3
       39 MOVE                             R12 R9
       40 GETIMPORT                        R10 K7 [table.insert]
       42 CALL                             R10 2 0
       43 GETTABLEKS                       R11 R9 K3 ["children"]
       45 DUPTABLE                         R12 K10 [{"text", "icon", "entryIndex", "severity"}]
       46 GETTABLEKS                       R13 R8 K11 ["validationEnum"]
       48 SETTABLEKS                       R13 R12 K1 ["text"]
       50 GETTABLEKS                       R14 R8 K9 ["severity"]
       52 JUMPIFNOTEQKS                    R14 K12 ["Error"] ; [+3]
       54 GETUPVAL                         R13 0
       55 JUMP                             ; [+1]
       56 GETUPVAL                         R13 1
       57 SETTABLEKS                       R13 R12 K2 ["icon"]
       59 GETTABLEKS                       R13 R8 K8 ["entryIndex"]
       61 SETTABLEKS                       R13 R12 K8 ["entryIndex"]
       63 GETTABLEKS                       R13 R8 K9 ["severity"]
       65 SETTABLEKS                       R13 R12 K9 ["severity"]
       67 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
       69 GETIMPORT                        R10 K7 [table.insert]
       71 CALL                             R10 2 0
       72 FORGLOOP                         R4 2 ; [-61]
       74 MOVE                             R4 R3
       75 LOADNIL                          R5
       76 LOADNIL                          R6
       77 FORGPREP                         R4
       78 NEWTABLE                         R9 0 0
       80 NEWTABLE                         R10 0 0
       82 GETTABLEKS                       R11 R8 K3 ["children"]
       84 LOADNIL                          R12
       85 LOADNIL                          R13
       86 FORGPREP                         R11
       87 GETTABLEKS                       R17 R15 K1 ["text"]
       89 ORK                              R16 R17 K13 [""]
       90 GETTABLE                         R17 R9 R16
       91 JUMPIF                           R17 ; [+9]
       92 LOADB                            R17 1
       93 SETTABLE                         R17 R9 R16
       94 FASTCALL2                        TABLE_INSERT R10 R15 ; [+5]
       96 MOVE                             R18 R10
       97 MOVE                             R19 R15
       98 GETIMPORT                        R17 K7 [table.insert]
      100 CALL                             R17 2 0
      101 FORGLOOP                         R11 2 ; [-15]
      103 SETTABLEKS                       R10 R8 K3 ["children"]
      105 GETIMPORT                        R11 K15 [table.sort]
      107 GETTABLEKS                       R12 R8 K3 ["children"]
      109 NEWCLOSURE                       R13 P0
      110 CAPTURE                          VAL R1
      111 CALL                             R11 2 0
      112 GETTABLEKS                       R12 R8 K3 ["children"]
      114 MOVE                             R13 R12
      115 LOADNIL                          R14
      116 LOADNIL                          R15
      117 FORGPREP                         R13
      118 GETTABLEKS                       R18 R17 K9 ["severity"]
      120 JUMPIFNOTEQKS                    R18 K12 ["Error"] ; [+3]
      122 LOADK                            R11 K12 ["Error"]
      123 JUMP                             ; [+3]
      124 FORGLOOP                         R13 2 ; [-7]
      126 LOADK                            R11 K16 ["Warning"]
      127 SETTABLEKS                       R11 R8 K9 ["severity"]
      129 GETTABLEKS                       R12 R8 K9 ["severity"]
      131 JUMPIFNOTEQKS                    R12 K12 ["Error"] ; [+3]
      133 GETUPVAL                         R11 0
      134 JUMP                             ; [+1]
      135 GETUPVAL                         R11 1
      136 SETTABLEKS                       R11 R8 K2 ["icon"]
      138 FORGLOOP                         R4 2 ; [-61]
      140 GETIMPORT                        R4 K15 [table.sort]
      142 MOVE                             R5 R3
      143 NEWCLOSURE                       R6 P1
      144 CAPTURE                          VAL R1
      145 CALL                             R4 2 0
      146 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetQualityValidation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R1 K9 ["getFFlagEnableAssetQualityValidation"]
       18 CALL                             R3 0 1
       19 FASTCALL2K                       ASSERT R3 K10 ; [+4]
       21 LOADK                            R4 K10 ["buildTreeItems requires FFlagEnableAssetQualityValidation"]
       22 GETIMPORT                        R2 K12 [assert]
       24 CALL                             R2 2 0
       25 DUPTABLE                         R2 K15 [{"Image", "Size"}]
       26 LOADK                            R3 K16 ["rbxasset://studio_svg_textures/Shared/Alerts/Dark/Standard/Error.png"]
       27 SETTABLEKS                       R3 R2 K13 ["Image"]
       29 GETIMPORT                        R3 K19 [UDim2.new]
       31 LOADN                            R4 0
       32 LOADN                            R5 14
       33 LOADN                            R6 0
       34 LOADN                            R7 14
       35 CALL                             R3 4 1
       36 SETTABLEKS                       R3 R2 K14 ["Size"]
       38 DUPTABLE                         R3 K15 [{"Image", "Size"}]
       39 LOADK                            R4 K20 ["rbxasset://studio_svg_textures/Shared/Alerts/Dark/Standard/Warning.png"]
       40 SETTABLEKS                       R4 R3 K13 ["Image"]
       42 GETIMPORT                        R4 K19 [UDim2.new]
       44 LOADN                            R5 0
       45 LOADN                            R6 14
       46 LOADN                            R7 0
       47 LOADN                            R8 14
       48 CALL                             R4 4 1
       49 SETTABLEKS                       R4 R3 K14 ["Size"]
       51 DUPCLOSURE                       R4 K21 [PROTO_0]
       52 DUPCLOSURE                       R5 K22 [PROTO_1]
       53 DUPCLOSURE                       R6 K23 [PROTO_4]
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R3
       56 RETURN                           R6 1
