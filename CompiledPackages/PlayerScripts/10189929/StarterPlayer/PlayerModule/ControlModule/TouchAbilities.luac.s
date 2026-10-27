PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["LocalPlayer"]
        3 LOADK                            R2 K1 ["PlayerGui"]
        4 NAMECALL                         R0 R0 K2 ["FindFirstChildOfClass"]
        6 CALL                             R0 2 1
        7 JUMPIF                           R0 ; [+2]
        8 LOADB                            R1 0
        9 RETURN                           R1 1
       10 GETTABLEKS                       R2 R0 K3 ["CurrentScreenOrientation"]
       12 GETIMPORT                        R3 K7 [Enum.ScreenOrientation.Portrait]
       14 JUMPIFEQ                         R2 R3 ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R2 8 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R0 R1 K2 ["parentUIFrame"]
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K3 ["managedButtons"]
       14 LOADB                            R2 0
       15 SETTABLEKS                       R2 R1 K4 ["created"]
       17 LOADB                            R2 0
       18 SETTABLEKS                       R2 R1 K5 ["enabled"]
       20 GETIMPORT                        R2 K8 [Instance.new]
       22 LOADK                            R3 K9 ["BindableEvent"]
       23 CALL                             R2 1 1
       24 SETTABLEKS                       R2 R1 K10 ["enabledChangedEvent"]
       26 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["enabled"]
        2 JUMPIFNOTEQ                      R2 R1 ; [+2]
        4 RETURN                           R0 0
        5 SETTABLEKS                       R1 R0 K0 ["enabled"]
        7 JUMPIFNOT                        R1 ; [+9]
        8 GETTABLEKS                       R2 R0 K1 ["created"]
       10 JUMPIF                           R2 ; [+6]
       11 NAMECALL                         R2 R0 K2 ["Create"]
       13 CALL                             R2 1 0
       14 LOADB                            R2 1
       15 SETTABLEKS                       R2 R0 K1 ["created"]
       17 GETTABLEKS                       R2 R0 K3 ["enabledChangedEvent"]
       19 NAMECALL                         R2 R2 K4 ["Fire"]
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["parentUIFrame"]
        3 GETTABLEKS                       R1 R1 K1 ["AbsoluteSize"]
        5 GETTABLEKS                       R1 R1 K2 ["x"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["parentUIFrame"]
       10 GETTABLEKS                       R2 R2 K1 ["AbsoluteSize"]
       12 GETTABLEKS                       R2 R2 K3 ["y"]
       14 FASTCALL2                        MATH_MIN R1 R2 ; [+3]
       16 GETIMPORT                        R0 K6 [math.min]
       18 CALL                             R0 2 1
       19 LOADN                            R2 500
       20 JUMPIFLE                         R0 R2 ; [+2]
       22 LOADB                            R1 0 +1
       23 LOADB                            R1 1
       24 JUMPIFNOT                        R1 ; [+4]
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K7 ["small"]
       28 JUMPIF                           R2 ; [+3]
       29 GETUPVAL                         R2 1
       30 GETTABLEKS                       R2 R2 K8 ["large"]
       32 GETTABLEN                        R3 R2 1
       33 GETTABLEN                        R4 R2 2
       34 GETTABLEN                        R5 R2 3
       35 MINUS                            R7 R4
       36 SUB                              R6 R7 R3
       37 GETUPVAL                         R7 2
       38 GETIMPORT                        R8 K11 [UDim2.new]
       40 LOADN                            R9 0
       41 MOVE                             R10 R3
       42 LOADN                            R11 0
       43 MOVE                             R12 R3
       44 CALL                             R8 4 1
       45 SETTABLEKS                       R8 R7 K12 ["Size"]
       47 GETUPVAL                         R7 3
       48 JUMPIFNOT                        R7 ; [+11]
       49 GETUPVAL                         R7 2
       50 GETIMPORT                        R8 K11 [UDim2.new]
       52 LOADN                            R9 1
       53 MOVE                             R10 R6
       54 LOADN                            R11 0
       55 MOVE                             R12 R5
       56 CALL                             R8 4 1
       57 SETTABLEKS                       R8 R7 K13 ["Position"]
       59 RETURN                           R0 0
       60 MINUS                            R8 R5
       61 SUB                              R7 R8 R3
       62 GETUPVAL                         R8 2
       63 GETIMPORT                        R9 K11 [UDim2.new]
       65 LOADN                            R10 1
       66 MOVE                             R11 R6
       67 LOADN                            R12 1
       68 MOVE                             R13 R7
       69 CALL                             R9 4 1
       70 SETTABLEKS                       R9 R8 K13 ["Position"]
       72 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetAbilityValid"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 0
        6 GETUPVAL                         R3 1
        7 NAMECALL                         R1 R1 K1 ["GetAbilityActive"]
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 2
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R3 R3 K2 ["enabled"]
       14 JUMPIFNOT                        R3 ; [+3]
       15 GETUPVAL                         R3 4
       16 GETTABLEKS                       R3 R3 K3 ["Enabled"]
       18 SETTABLEKS                       R3 R2 K4 ["Visible"]
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R2 R2 K4 ["Visible"]
       23 JUMPIFNOT                        R2 ; [+42]
       24 JUMPIF                           R1 ; [+3]
       25 GETUPVAL                         R2 5
       26 JUMPIFNOT                        R2 ; [+10]
       27 JUMPIFNOT                        R0 ; [+9]
       28 GETUPVAL                         R2 2
       29 GETUPVAL                         R3 6
       30 SETTABLEKS                       R3 R2 K5 ["Image"]
       32 GETUPVAL                         R2 2
       33 LOADN                            R3 0
       34 SETTABLEKS                       R3 R2 K6 ["ImageTransparency"]
       36 RETURN                           R0 0
       37 JUMPIFNOT                        R0 ; [+9]
       38 GETUPVAL                         R2 2
       39 GETUPVAL                         R3 7
       40 SETTABLEKS                       R3 R2 K5 ["Image"]
       42 GETUPVAL                         R2 2
       43 LOADN                            R3 0
       44 SETTABLEKS                       R3 R2 K6 ["ImageTransparency"]
       46 RETURN                           R0 0
       47 GETUPVAL                         R2 8
       48 JUMPIFNOT                        R2 ; [+9]
       49 GETUPVAL                         R2 2
       50 GETUPVAL                         R3 8
       51 SETTABLEKS                       R3 R2 K5 ["Image"]
       53 GETUPVAL                         R2 2
       54 LOADN                            R3 0
       55 SETTABLEKS                       R3 R2 K6 ["ImageTransparency"]
       57 RETURN                           R0 0
       58 GETUPVAL                         R2 2
       59 GETUPVAL                         R3 7
       60 SETTABLEKS                       R3 R2 K5 ["Image"]
       62 GETUPVAL                         R2 2
       63 LOADK                            R3 K7 [0.6]
       64 SETTABLEKS                       R3 R2 K6 ["ImageTransparency"]
       66 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETIMPORT                        R0 K3 [table.clear]
       11 GETUPVAL                         R1 0
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_9:
        0 LOADK                            R6 K0 ["rbxassetid://136780077406114"]
        1 LOADK                            R7 K1 ["rbxassetid://76895455502876"]
        2 LOADNIL                          R8
        3 LOADB                            R9 0
        4 GETTABLEKS                       R10 R2 K2 ["ButtonAssetId"]
        6 JUMPIFNOT                        R10 ; [+2]
        7 GETTABLEKS                       R6 R2 K2 ["ButtonAssetId"]
        9 GETTABLEKS                       R10 R2 K3 ["ButtonPressedAssetId"]
       11 JUMPIFNOT                        R10 ; [+2]
       12 GETTABLEKS                       R7 R2 K3 ["ButtonPressedAssetId"]
       14 GETTABLEKS                       R10 R2 K4 ["ButtonInvalidAssetId"]
       16 JUMPIFNOT                        R10 ; [+2]
       17 GETTABLEKS                       R8 R2 K4 ["ButtonInvalidAssetId"]
       19 GETIMPORT                        R10 K7 [Instance.new]
       21 LOADK                            R11 K8 ["ImageButton"]
       22 CALL                             R10 1 1
       23 MOVE                             R12 R1
       24 LOADK                            R13 K9 ["Button"]
       25 CONCAT                           R11 R12 R13
       26 SETTABLEKS                       R11 R10 K10 ["Name"]
       28 LOADB                            R11 0
       29 SETTABLEKS                       R11 R10 K11 ["Visible"]
       31 LOADN                            R11 1
       32 SETTABLEKS                       R11 R10 K12 ["BackgroundTransparency"]
       34 SETTABLEKS                       R6 R10 K13 ["Image"]
       36 GETTABLEKS                       R11 R0 K14 ["parentUIFrame"]
       38 SETTABLEKS                       R11 R10 K15 ["Parent"]
       40 NAMECALL                         R11 R3 K16 ["GetChildren"]
       42 CALL                             R11 1 3
       43 FORGPREP                         R11
       44 GETIMPORT                        R16 K19 [string.find]
       46 GETTABLEKS                       R17 R15 K10 ["Name"]
       48 LOADK                            R18 K20 ["Touch"]
       49 CALL                             R16 2 1
       50 JUMPIFNOT                        R16 ; [+8]
       51 LOADK                            R18 K21 ["InputBinding"]
       52 NAMECALL                         R16 R15 K22 ["IsA"]
       54 CALL                             R16 2 1
       55 JUMPIFNOT                        R16 ; [+3]
       56 SETTABLEKS                       R10 R15 K23 ["UIButton"]
       58 JUMP                             ; [+2]
       59 FORGLOOP                         R11 2 ; [-16]
       61 NEWCLOSURE                       R11 P0
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R5
       66 MOVE                             R12 R11
       67 CALL                             R12 0 0
       68 NEWTABLE                         R12 0 0
       70 MOVE                             R14 R12
       71 GETTABLEKS                       R15 R0 K14 ["parentUIFrame"]
       73 LOADK                            R17 K24 ["AbsoluteSize"]
       74 NAMECALL                         R15 R15 K25 ["GetPropertyChangedSignal"]
       76 CALL                             R15 2 1
       77 MOVE                             R17 R11
       78 NAMECALL                         R15 R15 K26 ["Connect"]
       80 CALL                             R15 2 -1
       81 FASTCALL                         TABLE_INSERT ; [+2]
       82 GETIMPORT                        R13 K29 [table.insert]
       84 CALL                             R13 -1 0
       85 NEWCLOSURE                       R13 P1
       86 CAPTURE                          UPVAL U0
       87 CAPTURE                          VAL R1
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R0
       90 CAPTURE                          VAL R3
       91 CAPTURE                          REF R9
       92 CAPTURE                          REF R7
       93 CAPTURE                          REF R6
       94 CAPTURE                          REF R8
       95 MOVE                             R14 R13
       96 CALL                             R14 0 0
       97 GETTABLEKS                       R14 R10 K30 ["MouseButton1Down"]
       99 NEWCLOSURE                       R16 P2
      100 CAPTURE                          REF R9
      101 CAPTURE                          VAL R13
      102 NAMECALL                         R14 R14 K26 ["Connect"]
      104 CALL                             R14 2 0
      105 GETTABLEKS                       R14 R10 K31 ["MouseButton1Up"]
      107 NEWCLOSURE                       R16 P3
      108 CAPTURE                          REF R9
      109 CAPTURE                          VAL R13
      110 NAMECALL                         R14 R14 K26 ["Connect"]
      112 CALL                             R14 2 0
      113 GETTABLEKS                       R14 R10 K32 ["MouseLeave"]
      115 NEWCLOSURE                       R16 P4
      116 CAPTURE                          REF R9
      117 CAPTURE                          VAL R13
      118 NAMECALL                         R14 R14 K26 ["Connect"]
      120 CALL                             R14 2 0
      121 MOVE                             R15 R12
      122 GETUPVAL                         R16 0
      123 MOVE                             R18 R1
      124 NAMECALL                         R16 R16 K33 ["GetAbilityActiveChangedSignal"]
      126 CALL                             R16 2 1
      127 MOVE                             R18 R13
      128 NAMECALL                         R16 R16 K26 ["Connect"]
      130 CALL                             R16 2 -1
      131 FASTCALL                         TABLE_INSERT ; [+2]
      132 GETIMPORT                        R14 K29 [table.insert]
      134 CALL                             R14 -1 0
      135 MOVE                             R15 R12
      136 GETUPVAL                         R16 0
      137 MOVE                             R18 R1
      138 NAMECALL                         R16 R16 K34 ["GetAbilityValidChangedSignal"]
      140 CALL                             R16 2 1
      141 MOVE                             R18 R13
      142 NAMECALL                         R16 R16 K26 ["Connect"]
      144 CALL                             R16 2 -1
      145 FASTCALL                         TABLE_INSERT ; [+2]
      146 GETIMPORT                        R14 K29 [table.insert]
      148 CALL                             R14 -1 0
      149 MOVE                             R15 R12
      150 GETTABLEKS                       R16 R0 K35 ["enabledChangedEvent"]
      152 GETTABLEKS                       R16 R16 K36 ["Event"]
      154 MOVE                             R18 R13
      155 NAMECALL                         R16 R16 K26 ["Connect"]
      157 CALL                             R16 2 -1
      158 FASTCALL                         TABLE_INSERT ; [+2]
      159 GETIMPORT                        R14 K29 [table.insert]
      161 CALL                             R14 -1 0
      162 MOVE                             R15 R12
      163 LOADK                            R18 K37 ["Enabled"]
      164 NAMECALL                         R16 R3 K25 ["GetPropertyChangedSignal"]
      166 CALL                             R16 2 1
      167 MOVE                             R18 R13
      168 NAMECALL                         R16 R16 K26 ["Connect"]
      170 CALL                             R16 2 -1
      171 FASTCALL                         TABLE_INSERT ; [+2]
      172 GETIMPORT                        R14 K29 [table.insert]
      174 CALL                             R14 -1 0
      175 GETTABLEKS                       R14 R10 K38 ["Destroying"]
      177 NEWCLOSURE                       R16 P5
      178 CAPTURE                          VAL R12
      179 NAMECALL                         R14 R14 K26 ["Connect"]
      181 CALL                             R14 2 0
      182 CLOSEUPVALS                      R6
      183 RETURN                           R10 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["parentUIFrame"]
        3 GETTABLEKS                       R1 R1 K1 ["AbsoluteSize"]
        5 GETTABLEKS                       R1 R1 K2 ["x"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["parentUIFrame"]
       10 GETTABLEKS                       R2 R2 K1 ["AbsoluteSize"]
       12 GETTABLEKS                       R2 R2 K3 ["y"]
       14 FASTCALL2                        MATH_MIN R1 R2 ; [+3]
       16 GETIMPORT                        R0 K6 [math.min]
       18 CALL                             R0 2 1
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K7 ["LocalPlayer"]
       22 LOADK                            R4 K8 ["PlayerGui"]
       23 NAMECALL                         R2 R2 K9 ["FindFirstChildOfClass"]
       25 CALL                             R2 2 1
       26 JUMPIF                           R2 ; [+2]
       27 LOADB                            R1 0
       28 JUMP                             ; [+8]
       29 GETTABLEKS                       R3 R2 K10 ["CurrentScreenOrientation"]
       31 GETIMPORT                        R4 K14 [Enum.ScreenOrientation.Portrait]
       33 JUMPIFEQ                         R3 R4 ; [+2]
       35 LOADB                            R1 0 +1
       36 LOADB                            R1 1
       37 LOADN                            R3 500
       38 JUMPIFLE                         R0 R3 ; [+2]
       40 LOADB                            R2 0 +1
       41 LOADB                            R2 1
       42 JUMPIFNOT                        R2 ; [+2]
       43 GETUPVAL                         R3 2
       44 JUMPIF                           R3 ; [+1]
       45 GETUPVAL                         R3 3
       46 JUMPIFNOT                        R2 ; [+2]
       47 GETUPVAL                         R4 4
       48 JUMPIF                           R4 ; [+1]
       49 GETUPVAL                         R4 5
       50 JUMPIFNOT                        R2 ; [+2]
       51 LOADN                            R5 8
       52 JUMP                             ; [+1]
       53 LOADN                            R5 10
       54 JUMPIFNOT                        R2 ; [+2]
       55 LOADN                            R6 44
       56 JUMP                             ; [+1]
       57 LOADN                            R6 56
       58 GETUPVAL                         R7 6
       59 GETIMPORT                        R8 K17 [UDim2.new]
       61 LOADN                            R9 0
       62 GETTABLEN                        R10 R3 1
       63 LOADN                            R11 0
       64 GETTABLEN                        R12 R3 2
       65 CALL                             R8 4 1
       66 SETTABLEKS                       R8 R7 K18 ["Size"]
       68 GETUPVAL                         R7 7
       69 JUMPIFNOT                        R7 ; [+65]
       70 JUMPIFNOT                        R1 ; [+38]
       71 GETUPVAL                         R7 6
       72 GETIMPORT                        R8 K17 [UDim2.new]
       74 LOADN                            R9 1
       75 GETTABLEN                        R13 R4 1
       76 MINUS                            R12 R13
       77 GETTABLEN                        R13 R3 2
       78 SUB                              R11 R12 R13
       79 LOADK                            R13 K19 [0.5]
       80 GETTABLEN                        R15 R3 2
       81 GETTABLEN                        R16 R3 1
       82 SUB                              R14 R15 R16
       83 MUL                              R12 R13 R14
       84 ADD                              R10 R11 R12
       85 LOADN                            R11 0
       86 GETTABLEN                        R16 R4 2
       87 GETTABLEN                        R17 R3 1
       88 ADD                              R15 R16 R17
       89 LOADN                            R17 4
       90 MUL                              R16 R17 R5
       91 ADD                              R14 R15 R16
       92 LOADN                            R16 3
       93 MUL                              R15 R16 R6
       94 ADD                              R13 R14 R15
       95 LOADK                            R15 K19 [0.5]
       96 GETTABLEN                        R17 R3 2
       97 GETTABLEN                        R18 R3 1
       98 SUB                              R16 R17 R18
       99 MUL                              R14 R15 R16
      100 SUB                              R12 R13 R14
      101 CALL                             R8 4 1
      102 SETTABLEKS                       R8 R7 K20 ["Position"]
      104 GETUPVAL                         R7 6
      105 LOADN                            R8 270
      106 SETTABLEKS                       R8 R7 K21 ["Rotation"]
      108 RETURN                           R0 0
      109 GETUPVAL                         R7 6
      110 GETIMPORT                        R8 K17 [UDim2.new]
      112 LOADN                            R9 1
      113 GETTABLEN                        R14 R4 1
      114 MINUS                            R13 R14
      115 LOADN                            R15 2
      116 GETTABLEN                        R16 R3 1
      117 MUL                              R14 R15 R16
      118 SUB                              R12 R13 R14
      119 LOADN                            R14 4
      120 MUL                              R13 R14 R5
      121 SUB                              R11 R12 R13
      122 LOADN                            R13 3
      123 MUL                              R12 R13 R6
      124 SUB                              R10 R11 R12
      125 LOADN                            R11 0
      126 GETTABLEN                        R12 R4 2
      127 CALL                             R8 4 1
      128 SETTABLEKS                       R8 R7 K20 ["Position"]
      130 GETUPVAL                         R7 6
      131 LOADN                            R8 0
      132 SETTABLEKS                       R8 R7 K21 ["Rotation"]
      134 RETURN                           R0 0
      135 GETUPVAL                         R7 6
      136 GETIMPORT                        R8 K17 [UDim2.new]
      138 LOADN                            R9 1
      139 GETTABLEN                        R12 R4 1
      140 MINUS                            R11 R12
      141 GETTABLEN                        R12 R3 1
      142 SUB                              R10 R11 R12
      143 LOADN                            R11 0
      144 GETTABLEN                        R12 R4 2
      145 CALL                             R8 4 1
      146 SETTABLEKS                       R8 R7 K20 ["Position"]
      148 JUMPIFNOT                        R1 ; [+30]
      149 GETUPVAL                         R7 6
      150 GETIMPORT                        R8 K17 [UDim2.new]
      152 LOADN                            R9 1
      153 GETTABLEN                        R13 R4 1
      154 MINUS                            R12 R13
      155 GETTABLEN                        R13 R3 2
      156 SUB                              R11 R12 R13
      157 LOADK                            R13 K19 [0.5]
      158 GETTABLEN                        R15 R3 2
      159 GETTABLEN                        R16 R3 1
      160 SUB                              R14 R15 R16
      161 MUL                              R12 R13 R14
      162 ADD                              R10 R11 R12
      163 LOADN                            R11 0
      164 GETTABLEN                        R13 R4 2
      165 LOADK                            R15 K19 [0.5]
      166 GETTABLEN                        R17 R3 2
      167 GETTABLEN                        R18 R3 1
      168 SUB                              R16 R17 R18
      169 MUL                              R14 R15 R16
      170 SUB                              R12 R13 R14
      171 CALL                             R8 4 1
      172 SETTABLEKS                       R8 R7 K20 ["Position"]
      174 GETUPVAL                         R7 6
      175 LOADN                            R8 90
      176 SETTABLEKS                       R8 R7 K21 ["Rotation"]
      178 RETURN                           R0 0
      179 GETUPVAL                         R7 6
      180 GETIMPORT                        R8 K17 [UDim2.new]
      182 LOADN                            R9 1
      183 GETTABLEN                        R12 R4 1
      184 MINUS                            R11 R12
      185 GETTABLEN                        R12 R3 1
      186 SUB                              R10 R11 R12
      187 LOADN                            R11 0
      188 GETTABLEN                        R12 R4 2
      189 CALL                             R8 4 1
      190 SETTABLEKS                       R8 R7 K20 ["Position"]
      192 GETUPVAL                         R7 6
      193 LOADN                            R8 180
      194 SETTABLEKS                       R8 R7 K21 ["Rotation"]
      196 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["setOverflowScrollIndex"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["getOverflowScrollIndex"]
        8 CALL                             R2 0 1
        9 ADDK                             R1 R2 K1 [1]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 1
       13 GETTABLEKS                       R0 R0 K0 ["setOverflowScrollIndex"]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K2 ["getOverflowScrollIndex"]
       18 CALL                             R2 0 1
       19 SUBK                             R1 R2 K1 [1]
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 GETIMPORT                        R0 K3 [table.clear]
       11 GETUPVAL                         R1 0
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["ImageButton"]
        3 CALL                             R2 1 1
        4 LOADK                            R3 K4 ["ScrollButton"]
        5 SETTABLEKS                       R3 R2 K5 ["Name"]
        7 LOADN                            R3 1
        8 SETTABLEKS                       R3 R2 K6 ["BackgroundTransparency"]
       10 LOADK                            R3 K7 ["rbxassetid://120193229129639"]
       11 SETTABLEKS                       R3 R2 K8 ["Image"]
       13 LOADK                            R3 K9 ["rbxassetid://122643389561468"]
       14 SETTABLEKS                       R3 R2 K10 ["PressedImage"]
       16 GETTABLEKS                       R3 R0 K11 ["parentUIFrame"]
       18 SETTABLEKS                       R3 R2 K12 ["Parent"]
       20 NEWCLOSURE                       R3 P0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R1
       29 MOVE                             R4 R3
       30 CALL                             R4 0 0
       31 NEWTABLE                         R4 0 0
       33 MOVE                             R6 R4
       34 GETTABLEKS                       R7 R0 K11 ["parentUIFrame"]
       36 LOADK                            R9 K13 ["AbsoluteSize"]
       37 NAMECALL                         R7 R7 K14 ["GetPropertyChangedSignal"]
       39 CALL                             R7 2 1
       40 MOVE                             R9 R3
       41 NAMECALL                         R7 R7 K15 ["Connect"]
       43 CALL                             R7 2 -1
       44 FASTCALL                         TABLE_INSERT ; [+2]
       45 GETIMPORT                        R5 K18 [table.insert]
       47 CALL                             R5 -1 0
       48 GETTABLEKS                       R5 R2 K19 ["Activated"]
       50 NEWCLOSURE                       R7 P1
       51 CAPTURE                          VAL R1
       52 CAPTURE                          UPVAL U5
       53 NAMECALL                         R5 R5 K15 ["Connect"]
       55 CALL                             R5 2 0
       56 GETTABLEKS                       R5 R2 K20 ["Destroying"]
       58 NEWCLOSURE                       R7 P2
       59 CAPTURE                          VAL R4
       60 NAMECALL                         R5 R5 K15 ["Connect"]
       62 CALL                             R5 2 0
       63 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["managedButtons"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 NAMECALL                         R5 R4 K1 ["Destroy"]
        8 CALL                             R5 1 0
        9 FORGLOOP                         R0 2 ; [-4]
       11 GETUPVAL                         R0 0
       12 NEWTABLE                         R1 0 0
       14 SETTABLEKS                       R1 R0 K0 ["managedButtons"]
       16 GETUPVAL                         R0 1
       17 NAMECALL                         R0 R0 K2 ["isEnabled"]
       19 CALL                             R0 1 1
       20 JUMPIFNOT                        R0 ; [+247]
       21 GETUPVAL                         R0 2
       22 GETTABLEKS                       R0 R0 K3 ["GetSlotMap"]
       24 CALL                             R0 0 1
       25 GETIMPORT                        R1 K5 [pairs]
       27 MOVE                             R2 R0
       28 CALL                             R1 1 3
       29 FORGPREP_NEXT                    R1
       30 GETUPVAL                         R6 2
       31 GETTABLEKS                       R6 R6 K6 ["GetActionInSlot"]
       33 MOVE                             R7 R4
       34 CALL                             R6 1 1
       35 JUMPIFNOT                        R5 ; [+31]
       36 JUMPIFNOT                        R6 ; [+30]
       37 GETUPVAL                         R8 3
       38 LENGTH                           R7 R8
       39 JUMPIFNOTLE                      R4 R7 ; [+27]
       41 GETUPVAL                         R7 4
       42 JUMPIF                           R7 ; [+2]
       43 JUMPIFNOTEQKN                    R4 K7 [1] ; [+23]
       45 GETUPVAL                         R7 1
       46 MOVE                             R9 R5
       47 NAMECALL                         R7 R7 K8 ["GetAbilityConfig"]
       49 CALL                             R7 2 1
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R9 R9 K0 ["managedButtons"]
       53 GETUPVAL                         R10 0
       54 MOVE                             R12 R5
       55 MOVE                             R13 R7
       56 MOVE                             R14 R6
       57 GETUPVAL                         R16 3
       58 GETTABLE                         R15 R16 R4
       59 LOADB                            R16 0
       60 NAMECALL                         R10 R10 K9 ["CreateAbilityButton"]
       62 CALL                             R10 6 -1
       63 FASTCALL                         TABLE_INSERT ; [+2]
       64 GETIMPORT                        R8 K12 [table.insert]
       66 CALL                             R8 -1 0
       67 FORGLOOP                         R1 2 ; [-38]
       69 GETUPVAL                         R1 4
       70 JUMPIFNOT                        R1 ; [+197]
       71 GETUPVAL                         R1 5
       72 JUMPIFNOT                        R1 ; [+195]
       73 GETUPVAL                         R1 2
       74 GETTABLEKS                       R1 R1 K13 ["GetAbilitiesInOverflow"]
       76 CALL                             R1 0 1
       77 LOADN                            R2 0
       78 LOADN                            R3 0
       79 LENGTH                           R4 R1
       80 GETUPVAL                         R5 2
       81 GETTABLEKS                       R5 R5 K14 ["GetNumOverflowSlots"]
       83 CALL                             R5 0 1
       84 JUMPIFNOTLT                      R5 R4 ; [+50]
       86 GETUPVAL                         R4 2
       87 GETTABLEKS                       R4 R4 K15 ["getOverflowScrollIndex"]
       89 CALL                             R4 0 1
       90 LOADN                            R5 0
       91 JUMPIFNOTLT                      R5 R4 ; [+13]
       93 GETUPVAL                         R5 0
       94 GETTABLEKS                       R5 R5 K0 ["managedButtons"]
       96 GETUPVAL                         R6 0
       97 LOADB                            R8 0
       98 NAMECALL                         R6 R6 K16 ["CreateOverflowScrollButton"]
      100 CALL                             R6 2 -1
      101 FASTCALL                         TABLE_INSERT ; [+2]
      102 GETIMPORT                        R4 K12 [table.insert]
      104 CALL                             R4 -1 0
      105 GETUPVAL                         R4 2
      106 GETTABLEKS                       R4 R4 K15 ["getOverflowScrollIndex"]
      108 CALL                             R4 0 1
      109 LENGTH                           R6 R1
      110 GETUPVAL                         R7 2
      111 GETTABLEKS                       R7 R7 K14 ["GetNumOverflowSlots"]
      113 CALL                             R7 0 1
      114 SUB                              R5 R6 R7
      115 JUMPIFNOTLT                      R4 R5 ; [+13]
      117 GETUPVAL                         R5 0
      118 GETTABLEKS                       R5 R5 K0 ["managedButtons"]
      120 GETUPVAL                         R6 0
      121 LOADB                            R8 1
      122 NAMECALL                         R6 R6 K16 ["CreateOverflowScrollButton"]
      124 CALL                             R6 2 -1
      125 FASTCALL                         TABLE_INSERT ; [+2]
      126 GETIMPORT                        R4 K12 [table.insert]
      128 CALL                             R4 -1 0
      129 GETUPVAL                         R5 6
      130 GETTABLEN                        R4 R5 1
      131 ADDK                             R2 R4 K17 [8]
      132 GETUPVAL                         R5 7
      133 GETTABLEN                        R4 R5 1
      134 ADDK                             R3 R4 K18 [10]
      135 LOADN                            R6 1
      136 LENGTH                           R8 R1
      137 GETUPVAL                         R9 2
      138 GETTABLEKS                       R9 R9 K14 ["GetNumOverflowSlots"]
      140 CALL                             R9 0 -1
      141 FASTCALL                         MATH_MIN ; [+2]
      142 GETIMPORT                        R7 K21 [math.min]
      144 CALL                             R7 -1 1
      145 MOVE                             R4 R7
      146 LOADN                            R5 1
      147 FORNPREP                         R4
      148 GETUPVAL                         R9 2
      149 GETTABLEKS                       R9 R9 K15 ["getOverflowScrollIndex"]
      151 CALL                             R9 0 1
      152 ADD                              R8 R6 R9
      153 GETTABLE                         R7 R1 R8
      154 GETUPVAL                         R8 2
      155 GETTABLEKS                       R8 R8 K22 ["GetOverflowAction"]
      157 MOVE                             R9 R6
      158 CALL                             R8 1 1
      159 JUMPIFNOT                        R7 ; [+107]
      160 JUMPIFNOT                        R8 ; [+106]
      161 GETUPVAL                         R9 1
      162 MOVE                             R11 R7
      163 NAMECALL                         R9 R9 K8 ["GetAbilityConfig"]
      165 CALL                             R9 2 1
      166 LOADNIL                          R10
      167 GETUPVAL                         R12 8
      168 GETTABLEKS                       R12 R12 K23 ["LocalPlayer"]
      170 LOADK                            R14 K24 ["PlayerGui"]
      171 NAMECALL                         R12 R12 K25 ["FindFirstChildOfClass"]
      173 CALL                             R12 2 1
      174 JUMPIF                           R12 ; [+2]
      175 LOADB                            R11 0
      176 JUMP                             ; [+8]
      177 GETTABLEKS                       R13 R12 K26 ["CurrentScreenOrientation"]
      179 GETIMPORT                        R14 K30 [Enum.ScreenOrientation.Portrait]
      181 JUMPIFEQ                         R13 R14 ; [+2]
      183 LOADB                            R11 0 +1
      184 LOADB                            R11 1
      185 JUMPIFNOT                        R11 ; [+33]
      186 DUPTABLE                         R11 K33 [{"small", "large"}]
      187 NEWTABLE                         R12 0 3
      189 LOADN                            R13 44
      190 GETUPVAL                         R15 9
      191 GETTABLEN                        R14 R15 1
      192 GETUPVAL                         R18 9
      193 GETTABLEN                        R17 R18 2
      194 ADD                              R16 R17 R2
      195 SUBK                             R18 R6 K7 [1]
      196 MULK                             R17 R18 K34 [52]
      197 ADD                              R15 R16 R17
      198 SETLIST                          R12 R13 3 [1]
      200 SETTABLEKS                       R12 R11 K31 ["small"]
      202 NEWTABLE                         R12 0 3
      204 LOADN                            R13 56
      205 GETUPVAL                         R15 10
      206 GETTABLEN                        R14 R15 1
      207 GETUPVAL                         R18 10
      208 GETTABLEN                        R17 R18 2
      209 ADD                              R16 R17 R3
      210 SUBK                             R18 R6 K7 [1]
      211 MULK                             R17 R18 K35 [66]
      212 ADD                              R15 R16 R17
      213 SETLIST                          R12 R13 3 [1]
      215 SETTABLEKS                       R12 R11 K32 ["large"]
      217 MOVE                             R10 R11
      218 JUMP                             ; [+32]
      219 DUPTABLE                         R11 K33 [{"small", "large"}]
      220 NEWTABLE                         R12 0 3
      222 LOADN                            R13 44
      223 GETUPVAL                         R17 9
      224 GETTABLEN                        R16 R17 1
      225 ADD                              R15 R16 R2
      226 SUBK                             R17 R6 K7 [1]
      227 MULK                             R16 R17 K34 [52]
      228 ADD                              R14 R15 R16
      229 GETUPVAL                         R16 9
      230 GETTABLEN                        R15 R16 2
      231 SETLIST                          R12 R13 3 [1]
      233 SETTABLEKS                       R12 R11 K31 ["small"]
      235 NEWTABLE                         R12 0 3
      237 LOADN                            R13 56
      238 GETUPVAL                         R17 10
      239 GETTABLEN                        R16 R17 1
      240 ADD                              R15 R16 R3
      241 SUBK                             R17 R6 K7 [1]
      242 MULK                             R16 R17 K35 [66]
      243 ADD                              R14 R15 R16
      244 GETUPVAL                         R16 10
      245 GETTABLEN                        R15 R16 2
      246 SETLIST                          R12 R13 3 [1]
      248 SETTABLEKS                       R12 R11 K32 ["large"]
      250 MOVE                             R10 R11
      251 GETUPVAL                         R12 0
      252 GETTABLEKS                       R12 R12 K0 ["managedButtons"]
      254 GETUPVAL                         R13 0
      255 MOVE                             R15 R7
      256 MOVE                             R16 R9
      257 MOVE                             R17 R8
      258 MOVE                             R18 R10
      259 LOADB                            R19 1
      260 NAMECALL                         R13 R13 K9 ["CreateAbilityButton"]
      262 CALL                             R13 6 -1
      263 FASTCALL                         TABLE_INSERT ; [+2]
      264 GETIMPORT                        R11 K12 [table.insert]
      266 CALL                             R11 -1 0
      267 FORNLOOP                         R4
      268 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["parentUIFrame"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CAPTURE                          UPVAL U6
       13 CAPTURE                          UPVAL U7
       14 CAPTURE                          UPVAL U8
       15 CAPTURE                          UPVAL U9
       16 MOVE                             R2 R1
       17 CALL                             R2 0 0
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K1 ["GetSlotMapChangedSignal"]
       21 CALL                             R2 0 1
       22 MOVE                             R4 R1
       23 NAMECALL                         R2 R2 K2 ["Connect"]
       25 CALL                             R2 2 0
       26 GETUPVAL                         R2 0
       27 NAMECALL                         R2 R2 K3 ["GetEnabledChangedSignal"]
       29 CALL                             R2 1 1
       30 MOVE                             R4 R1
       31 NAMECALL                         R2 R2 K2 ["Connect"]
       33 CALL                             R2 2 0
       34 GETUPVAL                         R2 1
       35 GETTABLEKS                       R2 R2 K4 ["getScrollIndexChangedEvent"]
       37 CALL                             R2 0 1
       38 MOVE                             R4 R1
       39 NAMECALL                         R2 R2 K2 ["Connect"]
       41 CALL                             R2 2 0
       42 GETUPVAL                         R2 7
       43 GETTABLEKS                       R2 R2 K5 ["LocalPlayer"]
       45 LOADK                            R4 K6 ["PlayerGui"]
       46 LOADN                            R5 5
       47 NAMECALL                         R2 R2 K7 ["WaitForChild"]
       49 CALL                             R2 3 1
       50 JUMPIFNOT                        R2 ; [+8]
       51 LOADK                            R5 K8 ["CurrentScreenOrientation"]
       52 NAMECALL                         R3 R2 K9 ["GetPropertyChangedSignal"]
       54 CALL                             R3 2 1
       55 MOVE                             R5 R1
       56 NAMECALL                         R3 R3 K2 ["Connect"]
       58 CALL                             R3 2 0
       59 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Players"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K7 [script]
       11 GETTABLEKS                       R2 R2 K8 ["Parent"]
       13 GETTABLEKS                       R2 R2 K8 ["Parent"]
       15 LOADK                            R4 K9 ["CommonUtils"]
       16 NAMECALL                         R2 R2 K10 ["WaitForChild"]
       18 CALL                             R2 2 -1
       19 CALL                             R1 -1 1
       20 GETIMPORT                        R2 K5 [require]
       22 GETIMPORT                        R3 K7 [script]
       24 GETTABLEKS                       R3 R3 K8 ["Parent"]
       26 LOADK                            R5 K11 ["AvatarAbilitiesInterface"]
       27 NAMECALL                         R3 R3 K10 ["WaitForChild"]
       29 CALL                             R3 2 -1
       30 CALL                             R2 -1 1
       31 GETTABLEKS                       R3 R2 K12 ["get"]
       33 GETTABLEKS                       R4 R0 K13 ["LocalPlayer"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETIMPORT                        R5 K7 [script]
       40 GETTABLEKS                       R5 R5 K8 ["Parent"]
       42 LOADK                            R7 K14 ["InputSlots"]
       43 NAMECALL                         R5 R5 K10 ["WaitForChild"]
       45 CALL                             R5 2 -1
       46 CALL                             R4 -1 1
       47 GETTABLEKS                       R5 R1 K12 ["get"]
       49 LOADK                            R6 K15 ["FlagUtil"]
       50 CALL                             R5 1 1
       51 GETTABLEKS                       R6 R5 K16 ["getUserFlag"]
       53 LOADK                            R7 K17 ["UserAbilitiesUserInterfaceA"]
       54 CALL                             R6 1 1
       55 GETTABLEKS                       R7 R5 K16 ["getUserFlag"]
       57 LOADK                            R8 K18 ["UserAbilitiesUserInterfaceC"]
       58 CALL                             R7 1 1
       59 NEWTABLE                         R8 0 7
       61 DUPTABLE                         R9 K21 [{"small", "large"}]
       62 NEWTABLE                         R10 0 3
       64 LOADN                            R11 72
       65 LOADN                            R12 60
       66 LOADN                            R13 60
       67 SETLIST                          R10 R11 3 [1]
       69 SETTABLEKS                       R10 R9 K19 ["small"]
       71 NEWTABLE                         R10 0 3
       73 LOADN                            R11 92
       74 LOADN                            R12 112
       75 LOADN                            R13 112
       76 SETLIST                          R10 R11 3 [1]
       78 SETTABLEKS                       R10 R9 K20 ["large"]
       80 DUPTABLE                         R10 K21 [{"small", "large"}]
       81 NEWTABLE                         R11 0 3
       83 LOADN                            R12 44
       84 LOADN                            R13 132
       85 LOADN                            R14 132
       86 SETLIST                          R11 R12 3 [1]
       88 SETTABLEKS                       R11 R10 K19 ["small"]
       90 NEWTABLE                         R11 0 3
       92 LOADN                            R12 56
       93 LOADN                            R13 200
       94 LOADN                            R14 200
       95 SETLIST                          R11 R12 3 [1]
       97 SETTABLEKS                       R11 R10 K20 ["large"]
       99 DUPTABLE                         R11 K21 [{"small", "large"}]
      100 NEWTABLE                         R12 0 3
      102 LOADN                            R13 44
      103 LOADN                            R14 132
      104 LOADN                            R15 16
      105 SETLIST                          R12 R13 3 [1]
      107 SETTABLEKS                       R12 R11 K19 ["small"]
      109 NEWTABLE                         R12 0 3
      111 LOADN                            R13 56
      112 LOADN                            R14 200
      113 LOADN                            R15 60
      114 SETLIST                          R12 R13 3 [1]
      116 SETTABLEKS                       R12 R11 K20 ["large"]
      118 DUPTABLE                         R12 K21 [{"small", "large"}]
      119 NEWTABLE                         R13 0 3
      121 LOADN                            R14 44
      122 LOADN                            R15 16
      123 LOADN                            R16 132
      124 SETLIST                          R13 R14 3 [1]
      126 SETTABLEKS                       R13 R12 K19 ["small"]
      128 NEWTABLE                         R13 0 3
      130 LOADN                            R14 56
      131 LOADN                            R15 60
      132 LOADN                            R16 200
      133 SETLIST                          R13 R14 3 [1]
      135 SETTABLEKS                       R13 R12 K20 ["large"]
      137 DUPTABLE                         R13 K21 [{"small", "large"}]
      138 NEWTABLE                         R14 0 3
      140 LOADN                            R15 44
      141 LOADN                            R16 156
      142 LOADN                            R17 74
      143 SETLIST                          R14 R15 3 [1]
      145 SETTABLEKS                       R14 R13 K19 ["small"]
      147 NEWTABLE                         R14 0 3
      149 LOADN                            R15 56
      150 LOADN                            R16 228
      151 LOADN                            R17 130
      152 SETLIST                          R14 R15 3 [1]
      154 SETTABLEKS                       R14 R13 K20 ["large"]
      156 DUPTABLE                         R14 K21 [{"small", "large"}]
      157 NEWTABLE                         R15 0 3
      159 LOADN                            R16 44
      160 LOADN                            R17 74
      161 LOADN                            R18 156
      162 SETLIST                          R15 R16 3 [1]
      164 SETTABLEKS                       R15 R14 K19 ["small"]
      166 NEWTABLE                         R15 0 3
      168 LOADN                            R16 56
      169 LOADN                            R17 130
      170 LOADN                            R18 228
      171 SETLIST                          R15 R16 3 [1]
      173 SETTABLEKS                       R15 R14 K20 ["large"]
      175 DUPTABLE                         R15 K21 [{"small", "large"}]
      176 NEWTABLE                         R16 0 3
      178 LOADN                            R17 44
      179 LOADN                            R18 16
      180 LOADN                            R19 16
      181 SETLIST                          R16 R17 3 [1]
      183 SETTABLEKS                       R16 R15 K19 ["small"]
      185 NEWTABLE                         R16 0 3
      187 LOADN                            R17 56
      188 LOADN                            R18 60
      189 LOADN                            R19 60
      190 SETLIST                          R16 R17 3 [1]
      192 SETTABLEKS                       R16 R15 K20 ["large"]
      194 SETLIST                          R8 R9 7 [1]
      196 NEWTABLE                         R9 0 2
      198 LOADN                            R10 28
      199 LOADN                            R11 44
      200 SETLIST                          R9 R10 2 [1]
      202 NEWTABLE                         R10 0 2
      204 LOADN                            R11 36
      205 LOADN                            R12 56
      206 SETLIST                          R10 R11 2 [1]
      208 NEWTABLE                         R11 0 2
      210 LOADN                            R12 16
      211 LOADN                            R13 12
      212 SETLIST                          R11 R12 2 [1]
      214 NEWTABLE                         R12 0 2
      216 LOADN                            R13 16
      217 LOADN                            R14 12
      218 SETLIST                          R12 R13 2 [1]
      220 DUPCLOSURE                       R13 K22 [PROTO_0]
      221 CAPTURE                          VAL R0
      222 NEWTABLE                         R14 8 0
      224 SETTABLEKS                       R14 R14 K23 ["__index"]
      226 DUPCLOSURE                       R15 K24 [PROTO_1]
      227 CAPTURE                          VAL R14
      228 SETTABLEKS                       R15 R14 K25 ["new"]
      230 DUPCLOSURE                       R15 K26 [PROTO_2]
      231 SETTABLEKS                       R15 R14 K27 ["Enable"]
      233 DUPCLOSURE                       R15 K28 [PROTO_9]
      234 CAPTURE                          VAL R3
      235 SETTABLEKS                       R15 R14 K29 ["CreateAbilityButton"]
      237 DUPCLOSURE                       R15 K30 [PROTO_13]
      238 CAPTURE                          VAL R0
      239 CAPTURE                          VAL R9
      240 CAPTURE                          VAL R10
      241 CAPTURE                          VAL R11
      242 CAPTURE                          VAL R12
      243 CAPTURE                          VAL R4
      244 SETTABLEKS                       R15 R14 K31 ["CreateOverflowScrollButton"]
      246 DUPCLOSURE                       R15 K32 [PROTO_15]
      247 CAPTURE                          VAL R3
      248 CAPTURE                          VAL R4
      249 CAPTURE                          VAL R8
      250 CAPTURE                          VAL R6
      251 CAPTURE                          VAL R7
      252 CAPTURE                          VAL R9
      253 CAPTURE                          VAL R10
      254 CAPTURE                          VAL R0
      255 CAPTURE                          VAL R11
      256 CAPTURE                          VAL R12
      257 SETTABLEKS                       R15 R14 K33 ["Create"]
      259 RETURN                           R14 1
