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
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+6]
        2 GETTABLEKS                       R2 R0 K1 ["displayText"]
        4 JUMPIF                           R2 ; [+5]
        5 GETTABLEKS                       R2 R0 K2 ["text"]
        7 JUMP                             ; [+2]
        8 GETTABLEKS                       R2 R0 K2 ["text"]
       10 ORK                              R1 R2 K0 [""]
       11 RETURN                           R1 1

PROTO_4:
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
       49 GETUPVAL                         R7 1
       50 JUMPIFNOT                        R7 ; [+6]
       51 GETTABLEKS                       R6 R0 K4 ["displayText"]
       53 JUMPIF                           R6 ; [+5]
       54 GETTABLEKS                       R6 R0 K5 ["text"]
       56 JUMP                             ; [+2]
       57 GETTABLEKS                       R6 R0 K5 ["text"]
       59 ORK                              R5 R6 K3 [""]
       60 GETUPVAL                         R8 1
       61 JUMPIFNOT                        R8 ; [+6]
       62 GETTABLEKS                       R7 R1 K4 ["displayText"]
       64 JUMPIF                           R7 ; [+5]
       65 GETTABLEKS                       R7 R1 K5 ["text"]
       67 JUMP                             ; [+2]
       68 GETTABLEKS                       R7 R1 K5 ["text"]
       70 ORK                              R6 R7 K3 [""]
       71 JUMPIFLT                         R5 R6 ; [+2]
       73 LOADB                            R4 0 +1
       74 LOADB                            R4 1
       75 RETURN                           R4 1

PROTO_5:
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
       14 JUMPIFEQKNIL                     R9 ; [+66]
       16 GETTABLEKS                       R10 R8 K0 ["groupKey"]
       18 GETTABLE                         R9 R2 R10
       19 JUMPIF                           R9 ; [+32]
       20 DUPTABLE                         R10 K5 [{"text", "displayText", "icon", "children"}]
       21 GETTABLEKS                       R11 R8 K0 ["groupKey"]
       23 SETTABLEKS                       R11 R10 K1 ["text"]
       25 GETIMPORT                        R11 K8 [string.gsub]
       27 GETTABLEKS                       R12 R8 K0 ["groupKey"]
       29 LOADK                            R13 K9 ["_"]
       30 LOADK                            R14 K10 [" "]
       31 CALL                             R11 3 1
       32 SETTABLEKS                       R11 R10 K2 ["displayText"]
       34 GETUPVAL                         R11 0
       35 SETTABLEKS                       R11 R10 K3 ["icon"]
       37 NEWTABLE                         R11 0 0
       39 SETTABLEKS                       R11 R10 K4 ["children"]
       41 MOVE                             R9 R10
       42 GETTABLEKS                       R10 R8 K0 ["groupKey"]
       44 SETTABLE                         R9 R2 R10
       45 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       47 MOVE                             R11 R3
       48 MOVE                             R12 R9
       49 GETIMPORT                        R10 K13 [table.insert]
       51 CALL                             R10 2 0
       52 GETTABLEKS                       R11 R9 K4 ["children"]
       54 DUPTABLE                         R12 K16 [{"text", "icon", "entryIndex", "severity"}]
       55 GETTABLEKS                       R13 R8 K17 ["validationEnum"]
       57 SETTABLEKS                       R13 R12 K1 ["text"]
       59 GETTABLEKS                       R14 R8 K15 ["severity"]
       61 JUMPIFNOTEQKS                    R14 K18 ["Error"] ; [+3]
       63 GETUPVAL                         R13 0
       64 JUMP                             ; [+1]
       65 GETUPVAL                         R13 1
       66 SETTABLEKS                       R13 R12 K3 ["icon"]
       68 GETTABLEKS                       R13 R8 K14 ["entryIndex"]
       70 SETTABLEKS                       R13 R12 K14 ["entryIndex"]
       72 GETTABLEKS                       R13 R8 K15 ["severity"]
       74 SETTABLEKS                       R13 R12 K15 ["severity"]
       76 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
       78 GETIMPORT                        R10 K13 [table.insert]
       80 CALL                             R10 2 0
       81 FORGLOOP                         R4 2 ; [-70]
       83 MOVE                             R4 R3
       84 LOADNIL                          R5
       85 LOADNIL                          R6
       86 FORGPREP                         R4
       87 NEWTABLE                         R9 0 0
       89 NEWTABLE                         R10 0 0
       91 GETTABLEKS                       R11 R8 K4 ["children"]
       93 LOADNIL                          R12
       94 LOADNIL                          R13
       95 FORGPREP                         R11
       96 GETTABLEKS                       R17 R15 K1 ["text"]
       98 ORK                              R16 R17 K19 [""]
       99 GETTABLE                         R17 R9 R16
      100 JUMPIF                           R17 ; [+9]
      101 LOADB                            R17 1
      102 SETTABLE                         R17 R9 R16
      103 FASTCALL2                        TABLE_INSERT R10 R15 ; [+5]
      105 MOVE                             R18 R10
      106 MOVE                             R19 R15
      107 GETIMPORT                        R17 K13 [table.insert]
      109 CALL                             R17 2 0
      110 FORGLOOP                         R11 2 ; [-15]
      112 SETTABLEKS                       R10 R8 K4 ["children"]
      114 GETIMPORT                        R11 K21 [table.sort]
      116 GETTABLEKS                       R12 R8 K4 ["children"]
      118 NEWCLOSURE                       R13 P0
      119 CAPTURE                          VAL R1
      120 CALL                             R11 2 0
      121 GETTABLEKS                       R12 R8 K4 ["children"]
      123 MOVE                             R13 R12
      124 LOADNIL                          R14
      125 LOADNIL                          R15
      126 FORGPREP                         R13
      127 GETTABLEKS                       R18 R17 K15 ["severity"]
      129 JUMPIFNOTEQKS                    R18 K18 ["Error"] ; [+3]
      131 LOADK                            R11 K18 ["Error"]
      132 JUMP                             ; [+3]
      133 FORGLOOP                         R13 2 ; [-7]
      135 LOADK                            R11 K22 ["Warning"]
      136 SETTABLEKS                       R11 R8 K15 ["severity"]
      138 GETTABLEKS                       R12 R8 K15 ["severity"]
      140 JUMPIFNOTEQKS                    R12 K18 ["Error"] ; [+3]
      142 GETUPVAL                         R11 0
      143 JUMP                             ; [+1]
      144 GETUPVAL                         R11 1
      145 SETTABLEKS                       R11 R8 K3 ["icon"]
      147 FORGLOOP                         R4 2 ; [-61]
      149 GETUPVAL                         R4 2
      150 GETTABLEKS                       R4 R4 K23 ["getFFlagAQVFollowup"]
      152 CALL                             R4 0 1
      153 NEWCLOSURE                       R5 P1
      154 CAPTURE                          VAL R4
      155 GETIMPORT                        R6 K21 [table.sort]
      157 MOVE                             R7 R3
      158 NEWCLOSURE                       R8 P2
      159 CAPTURE                          VAL R1
      160 CAPTURE                          VAL R4
      161 CALL                             R6 2 0
      162 RETURN                           R3 1

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
       25 DUPTABLE                         R2 K18 [{["Image"] = "rbxasset://studio_svg_textures/Shared/Alerts/Dark/Standard/Error.png", ["LightImage"] = "rbxasset://studio_svg_textures/Shared/Alerts/Light/Standard/Error.png", ["Size"]}]
       26 GETIMPORT                        R3 K21 [UDim2.new]
       28 LOADN                            R4 0
       29 LOADN                            R5 14
       30 LOADN                            R6 0
       31 LOADN                            R7 14
       32 CALL                             R3 4 1
       33 SETTABLEKS                       R3 R2 K17 ["Size"]
       35 DUPTABLE                         R3 K24 [{["Image"] = "rbxasset://studio_svg_textures/Shared/Alerts/Dark/Standard/Warning.png", ["LightImage"] = "rbxasset://studio_svg_textures/Shared/Alerts/Light/Standard/Warning.png", ["Size"]}]
       36 GETIMPORT                        R4 K21 [UDim2.new]
       38 LOADN                            R5 0
       39 LOADN                            R6 14
       40 LOADN                            R7 0
       41 LOADN                            R8 14
       42 CALL                             R4 4 1
       43 SETTABLEKS                       R4 R3 K17 ["Size"]
       45 DUPCLOSURE                       R4 K25 [PROTO_0]
       46 DUPCLOSURE                       R5 K26 [PROTO_1]
       47 DUPCLOSURE                       R6 K27 [PROTO_5]
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R1
       51 RETURN                           R6 1
