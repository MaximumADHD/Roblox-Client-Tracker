PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Instance"]
        2 GETTABLEKS                       R2 R3 K1 ["ClassName"]
        4 JUMPIFNOTEQKS                    R2 K2 ["Sound"] ; [+4]
        6 GETTABLEKS                       R1 R0 K0 ["Instance"]
        8 RETURN                           R1 1
        9 LOADNIL                          R1
       10 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R1 K1 ["CellProps"]
        4 GETTABLEKS                       R3 R4 K2 ["Locations"]
        6 GETTABLEKS                       R5 R1 K3 ["Row"]
        8 GETTABLEKS                       R4 R5 K4 ["Id"]
       10 GETTABLE                         R2 R3 R4
       11 JUMPIF                           R2 ; [+2]
       12 NEWTABLE                         R2 0 0
       14 GETTABLEKS                       R3 R1 K5 ["ColumnIndex"]
       16 LOADN                            R4 1
       17 JUMPIFNOTLT                      R4 R3 ; [+69]
       19 GETTABLEKS                       R3 R1 K6 ["Value"]
       21 GETTABLEKS                       R5 R1 K6 ["Value"]
       23 FASTCALL1                        TYPEOF R5 ; [+2]
       24 GETIMPORT                        R4 K8 [typeof]
       26 CALL                             R4 1 1
       27 JUMPIFNOTEQKS                    R4 K9 ["number"] ; [+25]
       29 FASTCALL1                        TOSTRING R3 ; [+3]
       30 MOVE                             R5 R3
       31 GETIMPORT                        R4 K11 [tostring]
       33 CALL                             R4 1 1
       34 MOVE                             R3 R4
       35 JUMPIFNOT                        R2 ; [+5]
       36 GETUPVAL                         R4 0
       37 MOVE                             R5 R2
       38 DUPCLOSURE                       R6 K12 [PROTO_0]
       39 CALL                             R4 2 1
       40 JUMP                             ; [+1]
       41 LOADNIL                          R4
       42 JUMPIFNOT                        R4 ; [+7]
       43 GETTABLEKS                       R6 R4 K13 ["TimeLength"]
       45 FASTCALL1                        TOSTRING R6 ; [+2]
       46 GETIMPORT                        R5 K11 [tostring]
       48 CALL                             R5 1 1
       49 MOVE                             R3 R5
       50 MOVE                             R5 R3
       51 LOADK                            R6 K14 ["s"]
       52 CONCAT                           R3 R5 R6
       53 GETUPVAL                         R5 1
       54 GETTABLEKS                       R4 R5 K15 ["createElement"]
       56 GETUPVAL                         R5 2
       57 DUPTABLE                         R6 K22 [{"TextColor", "TextTruncate", "Size", "TextXAlignment", "LayoutOrder", "Text"}]
       58 GETTABLEKS                       R8 R1 K23 ["Style"]
       60 GETTABLEKS                       R7 R8 K21 ["Text"]
       62 SETTABLEKS                       R7 R6 K16 ["TextColor"]
       64 GETIMPORT                        R7 K26 [Enum.TextTruncate.AtEnd]
       66 SETTABLEKS                       R7 R6 K17 ["TextTruncate"]
       68 GETIMPORT                        R7 K29 [UDim2.fromScale]
       70 LOADN                            R8 1
       71 LOADN                            R9 1
       72 CALL                             R7 2 1
       73 SETTABLEKS                       R7 R6 K18 ["Size"]
       75 GETIMPORT                        R7 K31 [Enum.TextXAlignment.Left]
       77 SETTABLEKS                       R7 R6 K19 ["TextXAlignment"]
       79 GETTABLEKS                       R7 R1 K5 ["ColumnIndex"]
       81 SETTABLEKS                       R7 R6 K20 ["LayoutOrder"]
       83 SETTABLEKS                       R3 R6 K21 ["Text"]
       85 CALL                             R4 2 -1
       86 RETURN                           R4 -1
       87 GETTABLEKS                       R3 R1 K6 ["Value"]
       89 JUMPIFNOTEQKS                    R3 K32 [""] ; [+2]
       91 RETURN                           R0 0
       92 JUMPIFNOTEQKS                    R3 K33 ["error"] ; [+5]
       94 LENGTH                           R4 R2
       95 JUMPIFNOTEQKN                    R4 K34 [0] ; [+2]
       97 LOADK                            R3 K35 ["done"]
       98 GETUPVAL                         R5 1
       99 GETTABLEKS                       R4 R5 K15 ["createElement"]
      101 GETUPVAL                         R5 3
      102 DUPTABLE                         R6 K37 [{"Size", "Image"}]
      103 GETIMPORT                        R7 K39 [UDim2.fromOffset]
      105 LOADN                            R8 24
      106 LOADN                            R9 24
      107 CALL                             R7 2 1
      108 SETTABLEKS                       R7 R6 K18 ["Size"]
      110 LOADK                            R7 K40 ["rbxasset://textures/AudioDiscovery/%s.png"]
      111 MOVE                             R9 R3
      112 NAMECALL                         R7 R7 K41 ["format"]
      114 CALL                             R7 2 1
      115 SETTABLEKS                       R7 R6 K36 ["Image"]
      117 CALL                             R4 2 -1
      118 RETURN                           R4 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Style"]
        6 GETTABLEKS                       R6 R1 K4 ["RowIndex"]
        8 MODK                             R5 R6 K3 [2]
        9 JUMPIFNOTEQKN                    R5 K5 [1] ; [+4]
       11 GETTABLEKS                       R4 R3 K6 ["BackgroundOdd"]
       13 JUMP                             ; [+2]
       14 GETTABLEKS                       R4 R3 K7 ["BackgroundEven"]
       16 GETTABLEKS                       R5 R1 K8 ["Width"]
       18 JUMPIF                           R5 ; [+8]
       19 GETIMPORT                        R5 K11 [UDim.new]
       21 GETTABLEKS                       R8 R1 K12 ["Columns"]
       23 LENGTH                           R7 R8
       24 DIVRK                            R6 R5 K7 ["BackgroundEven"]
       25 LOADN                            R7 0
       26 CALL                             R5 2 1
       27 GETTABLEKS                       R7 R1 K13 ["Value"]
       29 JUMPIFNOT                        R7 ; [+7]
       30 GETTABLEKS                       R7 R1 K13 ["Value"]
       32 FASTCALL1                        TOSTRING R7 ; [+2]
       33 GETIMPORT                        R6 K15 [tostring]
       35 CALL                             R6 1 1
       36 JUMP                             ; [+1]
       37 LOADNIL                          R6
       38 GETTABLEKS                       R9 R1 K16 ["CellProps"]
       40 GETTABLEKS                       R8 R9 K17 ["Locations"]
       42 GETTABLEKS                       R10 R1 K18 ["Row"]
       44 GETTABLEKS                       R9 R10 K19 ["Id"]
       46 GETTABLE                         R7 R8 R9
       47 JUMPIF                           R7 ; [+2]
       48 NEWTABLE                         R7 0 0
       50 GETTABLEKS                       R8 R1 K20 ["ColumnIndex"]
       52 JUMPIFNOTEQKN                    R8 K5 [1] ; [+69]
       54 LENGTH                           R8 R7
       55 JUMPIFNOTEQKN                    R8 K21 [0] ; [+8]
       57 LOADK                            R10 K22 ["Reason"]
       58 LOADK                            R11 K23 ["Done"]
       59 NAMECALL                         R8 R2 K24 ["getText"]
       61 CALL                             R8 3 1
       62 MOVE                             R6 R8
       63 JUMP                             ; [+75]
       64 GETTABLEKS                       R8 R1 K13 ["Value"]
       66 JUMPIFNOTEQKS                    R8 K25 ["ok"] ; [+48]
       68 GETTABLEKS                       R9 R1 K18 ["Row"]
       70 GETTABLEKS                       R8 R9 K26 ["Creator"]
       72 JUMPIFNOTEQKS                    R8 K27 ["Roblox"] ; [+8]
       74 LOADK                            R10 K22 ["Reason"]
       75 LOADK                            R11 K27 ["Roblox"]
       76 NAMECALL                         R8 R2 K24 ["getText"]
       78 CALL                             R8 3 1
       79 MOVE                             R6 R8
       80 JUMP                             ; [+58]
       81 GETTABLEKS                       R9 R1 K18 ["Row"]
       83 GETTABLEKS                       R8 R9 K26 ["Creator"]
       85 JUMPIFNOTEQKS                    R8 K28 ["Monstercat"] ; [+8]
       87 LOADK                            R10 K22 ["Reason"]
       88 LOADK                            R11 K28 ["Monstercat"]
       89 NAMECALL                         R8 R2 K24 ["getText"]
       91 CALL                             R8 3 1
       92 MOVE                             R6 R8
       93 JUMP                             ; [+45]
       94 GETTABLEKS                       R9 R1 K18 ["Row"]
       96 GETTABLEKS                       R8 R9 K29 ["Time"]
       98 GETUPVAL                         R9 0
       99 JUMPIFNOTLT                      R8 R9 ; [+8]
      101 LOADK                            R10 K22 ["Reason"]
      102 LOADK                            R11 K30 ["Effect"]
      103 NAMECALL                         R8 R2 K24 ["getText"]
      105 CALL                             R8 3 1
      106 MOVE                             R6 R8
      107 JUMP                             ; [+31]
      108 LOADK                            R10 K22 ["Reason"]
      109 LOADK                            R11 K31 ["OK"]
      110 NAMECALL                         R8 R2 K24 ["getText"]
      112 CALL                             R8 3 1
      113 MOVE                             R6 R8
      114 JUMP                             ; [+24]
      115 LOADK                            R10 K22 ["Reason"]
      116 LOADK                            R11 K32 ["Error"]
      117 NAMECALL                         R8 R2 K24 ["getText"]
      119 CALL                             R8 3 1
      120 MOVE                             R6 R8
      121 JUMP                             ; [+17]
      122 GETTABLEKS                       R8 R1 K20 ["ColumnIndex"]
      124 JUMPIFNOTEQKN                    R8 K33 [5] ; [+14]
      126 LOADK                            R8 K34 ["%s %s"]
      127 GETTABLEKS                       R11 R1 K18 ["Row"]
      129 GETTABLEKS                       R10 R11 K35 ["CreatorType"]
      131 GETTABLEKS                       R12 R1 K18 ["Row"]
      133 GETTABLEKS                       R11 R12 K36 ["CreatorId"]
      135 NAMECALL                         R8 R8 K37 ["format"]
      137 CALL                             R8 3 1
      138 MOVE                             R6 R8
      139 GETUPVAL                         R9 1
      140 GETTABLEKS                       R8 R9 K38 ["createElement"]
      142 GETUPVAL                         R9 2
      143 DUPTABLE                         R10 K45 [{"LayoutOrder", "Padding", "Style", "BackgroundColor3", "BorderSizePixel", "BorderColor3", "Size"}]
      144 GETTABLEKS                       R11 R1 K20 ["ColumnIndex"]
      146 SETTABLEKS                       R11 R10 K39 ["LayoutOrder"]
      148 DUPTABLE                         R11 K50 [{"Top", "Bottom", "Left", "Right"}]
      149 LOADN                            R12 1
      150 SETTABLEKS                       R12 R11 K46 ["Top"]
      152 LOADN                            R12 1
      153 SETTABLEKS                       R12 R11 K47 ["Bottom"]
      155 LOADN                            R12 5
      156 SETTABLEKS                       R12 R11 K48 ["Left"]
      158 LOADN                            R12 5
      159 SETTABLEKS                       R12 R11 K49 ["Right"]
      161 SETTABLEKS                       R11 R10 K40 ["Padding"]
      163 LOADK                            R11 K51 ["Box"]
      164 SETTABLEKS                       R11 R10 K2 ["Style"]
      166 SETTABLEKS                       R4 R10 K41 ["BackgroundColor3"]
      168 LOADN                            R11 1
      169 SETTABLEKS                       R11 R10 K42 ["BorderSizePixel"]
      171 GETTABLEKS                       R11 R3 K52 ["Border"]
      173 SETTABLEKS                       R11 R10 K43 ["BorderColor3"]
      175 GETIMPORT                        R11 K54 [UDim2.new]
      177 GETTABLEKS                       R12 R5 K55 ["Scale"]
      179 GETTABLEKS                       R13 R5 K56 ["Offset"]
      181 LOADN                            R14 1
      182 LOADN                            R15 0
      183 CALL                             R11 4 1
      184 SETTABLEKS                       R11 R10 K44 ["Size"]
      186 DUPTABLE                         R11 K59 [{"Child", "Tooltip"}]
      187 NAMECALL                         R12 R0 K60 ["getContent"]
      189 CALL                             R12 1 1
      190 SETTABLEKS                       R12 R11 K57 ["Child"]
      192 MOVE                             R12 R6
      193 JUMPIFNOT                        R12 ; [+18]
      194 GETUPVAL                         R13 1
      195 GETTABLEKS                       R12 R13 K38 ["createElement"]
      197 GETUPVAL                         R13 3
      198 DUPTABLE                         R14 K64 [{"MaxWidth", "Text", "TextXAlignment"}]
      199 GETTABLEKS                       R16 R3 K58 ["Tooltip"]
      201 GETTABLEKS                       R15 R16 K61 ["MaxWidth"]
      203 SETTABLEKS                       R15 R14 K61 ["MaxWidth"]
      205 SETTABLEKS                       R6 R14 K62 ["Text"]
      207 GETIMPORT                        R15 K66 [Enum.TextXAlignment.Left]
      209 SETTABLEKS                       R15 R14 K63 ["TextXAlignment"]
      211 CALL                             R12 2 1
      212 SETTABLEKS                       R12 R11 K58 ["Tooltip"]
      214 CALL                             R8 3 -1
      215 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["Dash"]
       27 GETTABLEKS                       R4 R3 K9 ["mapOne"]
       29 GETTABLEKS                       R5 R2 K10 ["UI"]
       31 GETTABLEKS                       R6 R5 K11 ["Pane"]
       33 GETTABLEKS                       R7 R5 K12 ["Tooltip"]
       35 GETTABLEKS                       R8 R2 K13 ["ContextServices"]
       37 GETTABLEKS                       R9 R8 K14 ["withContext"]
       39 GETTABLEKS                       R10 R8 K15 ["Localization"]
       41 GETTABLEKS                       R11 R5 K16 ["Image"]
       43 GETTABLEKS                       R12 R5 K17 ["TextLabel"]
       45 GETIMPORT                        R13 K19 [game]
       47 LOADK                            R15 K20 ["SoundEffectMaxDuration"]
       48 NAMECALL                         R13 R13 K21 ["GetFastInt"]
       50 CALL                             R13 2 1
       51 GETTABLEKS                       R14 R1 K22 ["PureComponent"]
       53 LOADK                            R16 K23 ["LeftCell"]
       54 NAMECALL                         R14 R14 K24 ["extend"]
       56 CALL                             R14 2 1
       57 DUPCLOSURE                       R15 K25 [PROTO_1]
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R12
       61 CAPTURE                          VAL R11
       62 SETTABLEKS                       R15 R14 K26 ["getContent"]
       64 DUPCLOSURE                       R15 K27 [PROTO_2]
       65 CAPTURE                          VAL R13
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R7
       69 SETTABLEKS                       R15 R14 K28 ["render"]
       71 MOVE                             R15 R9
       72 DUPTABLE                         R16 K29 [{"Localization"}]
       73 SETTABLEKS                       R10 R16 K15 ["Localization"]
       75 CALL                             R15 1 1
       76 MOVE                             R16 R14
       77 CALL                             R15 1 -1
       78 RETURN                           R15 -1
