PROTO_0:
        0 DUPTABLE                         R4 K4 [{"name", "override", "gate", "overrideClass"}]
        1 SETTABLEKS                       R0 R4 K0 ["name"]
        3 SETTABLEKS                       R1 R4 K1 ["override"]
        5 SETTABLEKS                       R2 R4 K2 ["gate"]
        7 SETTABLEKS                       R3 R4 K3 ["overrideClass"]
        9 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["gate"]
        2 JUMPIFNOTEQKS                    R3 K1 ["OnValue"] ; [+8]
        4 GETTABLEKS                       R4 R0 K2 ["onValue"]
        6 JUMPIFEQ                         R2 R4 ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 RETURN                           R3 1
       11 GETTABLEKS                       R4 R2 K3 ["Value"]
       13 JUMPIFNOTEQKN                    R4 K4 [0] ; [+2]
       15 LOADB                            R3 0 +1
       16 LOADB                            R3 1
       17 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R6 R1 K0 ["gate"]
        2 JUMPIFNOTEQKS                    R6 K1 ["OnValue"] ; [+8]
        4 GETTABLEKS                       R6 R0 K2 ["onValue"]
        6 JUMPIFEQ                         R2 R6 ; [+2]
        8 LOADB                            R5 0 +1
        9 LOADB                            R5 1
       10 JUMP                             ; [+6]
       11 GETTABLEKS                       R6 R2 K3 ["Value"]
       13 JUMPIFNOTEQKN                    R6 K4 [0] ; [+2]
       15 LOADB                            R5 0 +1
       16 LOADB                            R5 1
       17 JUMPIFNOT                        R5 ; [+1]
       18 JUMPIF                           R3 ; [+2]
       19 LOADN                            R5 0
       20 RETURN                           R5 1
       21 LOADN                            R6 0
       22 JUMPIFNOTLT                      R6 R4 ; [+3]
       24 MOVE                             R5 R4
       25 RETURN                           R5 1
       26 LOADN                            R5 -1
       27 RETURN                           R5 1

PROTO_3:
        0 LOADB                            R2 1
        1 JUMPIFEQ                         R0 R1 ; [+10]
        3 LOADB                            R2 0
        4 LOADN                            R3 0
        5 JUMPIFNOTLT                      R0 R3 ; [+6]
        7 LOADN                            R3 0
        8 JUMPIFLT                         R1 R3 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["overrideClass"]
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 1
        4 GETTABLEKS                       R3 R0 K1 ["Parent"]
        6 JUMPIFNOT                        R3 ; [+5]
        7 MOVE                             R6 R2
        8 NAMECALL                         R4 R3 K2 ["FindFirstChildWhichIsA"]
       10 CALL                             R4 2 1
       11 RETURN                           R4 1
       12 LOADNIL                          R4
       13 RETURN                           R4 1

PROTO_5:
        0 GETTABLEKS                       R3 R1 K0 ["overrideClass"]
        2 JUMPIF                           R3 ; [+2]
        3 MOVE                             R2 R0
        4 JUMP                             ; [+10]
        5 GETTABLEKS                       R4 R0 K1 ["Parent"]
        7 JUMPIFNOT                        R4 ; [+6]
        8 MOVE                             R7 R3
        9 NAMECALL                         R5 R4 K2 ["FindFirstChildWhichIsA"]
       11 CALL                             R5 2 1
       12 MOVE                             R2 R5
       13 JUMP                             ; [+1]
       14 LOADNIL                          R2
       15 JUMPIFNOT                        R2 ; [+4]
       16 GETTABLEKS                       R4 R1 K3 ["override"]
       18 GETTABLE                         R3 R2 R4
       19 RETURN                           R3 1
       20 LOADN                            R3 0
       21 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["ClassName"]
        3 GETTABLE                         R2 R3 R4
        4 LOADB                            R3 0
        5 JUMPIFEQKNIL                     R2 ; [+6]
        7 GETTABLE                         R4 R2 R1
        8 JUMPIFEQKB                       R4 TRUE ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 RETURN                           R3 1

PROTO_7:
        0 LOADK                            R3 K0 ["AvatarRules"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+20]
        5 LOADK                            R3 K2 ["AvatarBodyRules"]
        6 NAMECALL                         R1 R0 K3 ["FindFirstChildWhichIsA"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+14]
       10 GETTABLEKS                       R2 R1 K4 ["AvatarType"]
       12 GETTABLEKS                       R3 R0 K4 ["AvatarType"]
       14 JUMPIFEQ                         R2 R3 ; [+9]
       16 LOADB                            R2 1
       17 SETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R0 K4 ["AvatarType"]
       20 SETTABLEKS                       R2 R1 K4 ["AvatarType"]
       22 LOADB                            R2 0
       23 SETUPVAL                         R2 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R3 R0 K5 ["ClassName"]
       28 GETTABLE                         R1 R2 R3
       29 JUMPIF                           R1 ; [+1]
       30 RETURN                           R0 0
       31 GETTABLEKS                       R3 R1 K6 ["modeProperty"]
       33 GETTABLE                         R2 R0 R3
       34 LOADB                            R3 1
       35 SETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R1 K7 ["slots"]
       38 LOADNIL                          R4
       39 LOADNIL                          R5
       40 FORGPREP                         R3
       41 GETTABLEKS                       R9 R7 K8 ["overrideClass"]
       43 JUMPIF                           R9 ; [+2]
       44 MOVE                             R8 R0
       45 JUMP                             ; [+10]
       46 GETTABLEKS                       R10 R0 K9 ["Parent"]
       48 JUMPIFNOT                        R10 ; [+6]
       49 MOVE                             R13 R9
       50 NAMECALL                         R11 R10 K3 ["FindFirstChildWhichIsA"]
       52 CALL                             R11 2 1
       53 MOVE                             R8 R11
       54 JUMP                             ; [+1]
       55 LOADNIL                          R8
       56 JUMPIFNOT                        R8 ; [+56]
       57 GETTABLEKS                       R12 R7 K10 ["name"]
       59 LOADK                            R13 K11 ["Enabled"]
       60 CONCAT                           R11 R12 R13
       61 GETTABLE                         R10 R0 R11
       62 GETTABLEKS                       R13 R7 K10 ["name"]
       64 LOADK                            R14 K12 ["Id"]
       65 CONCAT                           R12 R13 R14
       66 GETTABLE                         R11 R0 R12
       67 GETTABLEKS                       R13 R7 K13 ["gate"]
       69 JUMPIFNOTEQKS                    R13 K14 ["OnValue"] ; [+8]
       71 GETTABLEKS                       R13 R1 K15 ["onValue"]
       73 JUMPIFEQ                         R2 R13 ; [+2]
       75 LOADB                            R12 0 +1
       76 LOADB                            R12 1
       77 JUMP                             ; [+6]
       78 GETTABLEKS                       R13 R2 K16 ["Value"]
       80 JUMPIFNOTEQKN                    R13 K17 [0] ; [+2]
       82 LOADB                            R12 0 +1
       83 LOADB                            R12 1
       84 JUMPIFNOT                        R12 ; [+1]
       85 JUMPIF                           R10 ; [+2]
       86 LOADN                            R9 0
       87 JUMP                             ; [+6]
       88 LOADN                            R12 0
       89 JUMPIFNOTLT                      R12 R11 ; [+3]
       91 MOVE                             R9 R11
       92 JUMP                             ; [+1]
       93 LOADN                            R9 -1
       94 GETTABLEKS                       R12 R7 K18 ["override"]
       96 GETTABLE                         R11 R8 R12
       97 LOADB                            R10 1
       98 JUMPIFEQ                         R11 R9 ; [+10]
      100 LOADB                            R10 0
      101 LOADN                            R12 0
      102 JUMPIFNOTLT                      R11 R12 ; [+6]
      104 LOADN                            R12 0
      105 JUMPIFLT                         R9 R12 ; [+2]
      107 LOADB                            R10 0 +1
      108 LOADB                            R10 1
      109 JUMPIF                           R10 ; [+3]
      110 GETTABLEKS                       R10 R7 K18 ["override"]
      112 SETTABLE                         R9 R8 R10
      113 FORGLOOP                         R3 2 ; [-73]
      115 LOADB                            R3 0
      116 SETUPVAL                         R3 0
      117 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["ClassName"]
        3 GETTABLE                         R1 R2 R3
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R3 R1 K1 ["modeProperty"]
        8 GETTABLE                         R2 R0 R3
        9 GETTABLEKS                       R3 R1 K2 ["slots"]
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 GETTABLEKS                       R10 R7 K3 ["overrideClass"]
       16 JUMPIF                           R10 ; [+2]
       17 MOVE                             R9 R0
       18 JUMP                             ; [+10]
       19 GETTABLEKS                       R11 R0 K4 ["Parent"]
       21 JUMPIFNOT                        R11 ; [+6]
       22 MOVE                             R14 R10
       23 NAMECALL                         R12 R11 K5 ["FindFirstChildWhichIsA"]
       25 CALL                             R12 2 1
       26 MOVE                             R9 R12
       27 JUMP                             ; [+1]
       28 LOADNIL                          R9
       29 JUMPIFNOT                        R9 ; [+4]
       30 GETTABLEKS                       R10 R7 K6 ["override"]
       32 GETTABLE                         R8 R9 R10
       33 JUMP                             ; [+1]
       34 LOADN                            R8 0
       35 JUMPIFEQKN                       R8 K7 [0] ; [+26]
       37 MOVE                             R9 R2
       38 GETTABLEKS                       R10 R7 K8 ["gate"]
       40 JUMPIFNOTEQKS                    R10 K9 ["OnValue"] ; [+8]
       42 GETTABLEKS                       R10 R1 K10 ["onValue"]
       44 JUMPIFEQ                         R9 R10 ; [+2]
       46 LOADB                            R8 0 +1
       47 LOADB                            R8 1
       48 JUMP                             ; [+6]
       49 GETTABLEKS                       R10 R9 K11 ["Value"]
       51 JUMPIFNOTEQKN                    R10 K7 [0] ; [+2]
       53 LOADB                            R8 0 +1
       54 LOADB                            R8 1
       55 JUMPIF                           R8 ; [+6]
       56 GETTABLEKS                       R2 R1 K10 ["onValue"]
       58 GETTABLEKS                       R8 R1 K1 ["modeProperty"]
       60 SETTABLE                         R2 R0 R8
       61 JUMP                             ; [+2]
       62 FORGLOOP                         R3 2 ; [-49]
       64 GETTABLEKS                       R3 R1 K2 ["slots"]
       66 LOADNIL                          R4
       67 LOADNIL                          R5
       68 FORGPREP                         R3
       69 GETTABLEKS                       R9 R7 K12 ["name"]
       71 LOADK                            R10 K13 ["Enabled"]
       72 CONCAT                           R8 R9 R10
       73 GETTABLEKS                       R10 R7 K12 ["name"]
       75 LOADK                            R11 K14 ["Id"]
       76 CONCAT                           R9 R10 R11
       77 GETTABLEKS                       R12 R7 K3 ["overrideClass"]
       79 JUMPIF                           R12 ; [+2]
       80 MOVE                             R11 R0
       81 JUMP                             ; [+10]
       82 GETTABLEKS                       R13 R0 K4 ["Parent"]
       84 JUMPIFNOT                        R13 ; [+6]
       85 MOVE                             R16 R12
       86 NAMECALL                         R14 R13 K5 ["FindFirstChildWhichIsA"]
       88 CALL                             R14 2 1
       89 MOVE                             R11 R14
       90 JUMP                             ; [+1]
       91 LOADNIL                          R11
       92 JUMPIFNOT                        R11 ; [+4]
       93 GETTABLEKS                       R12 R7 K6 ["override"]
       95 GETTABLE                         R10 R11 R12
       96 JUMP                             ; [+1]
       97 LOADN                            R10 0
       98 MOVE                             R12 R2
       99 GETTABLE                         R13 R0 R8
      100 GETTABLE                         R14 R0 R9
      101 GETTABLEKS                       R16 R7 K8 ["gate"]
      103 JUMPIFNOTEQKS                    R16 K9 ["OnValue"] ; [+8]
      105 GETTABLEKS                       R16 R1 K10 ["onValue"]
      107 JUMPIFEQ                         R12 R16 ; [+2]
      109 LOADB                            R15 0 +1
      110 LOADB                            R15 1
      111 JUMP                             ; [+6]
      112 GETTABLEKS                       R16 R12 K11 ["Value"]
      114 JUMPIFNOTEQKN                    R16 K7 [0] ; [+2]
      116 LOADB                            R15 0 +1
      117 LOADB                            R15 1
      118 JUMPIFNOT                        R15 ; [+1]
      119 JUMPIF                           R13 ; [+2]
      120 LOADN                            R11 0
      121 JUMP                             ; [+6]
      122 LOADN                            R15 0
      123 JUMPIFNOTLT                      R15 R14 ; [+3]
      125 MOVE                             R11 R14
      126 JUMP                             ; [+1]
      127 LOADN                            R11 -1
      128 LOADB                            R12 1
      129 JUMPIFEQ                         R10 R11 ; [+10]
      131 LOADB                            R12 0
      132 LOADN                            R13 0
      133 JUMPIFNOTLT                      R10 R13 ; [+6]
      135 LOADN                            R13 0
      136 JUMPIFLT                         R11 R13 ; [+2]
      138 LOADB                            R12 0 +1
      139 LOADB                            R12 1
      140 JUMPIF                           R12 ; [+15]
      141 JUMPIFNOTEQKN                    R10 K7 [0] ; [+2]
      143 LOADB                            R12 0 +1
      144 LOADB                            R12 1
      145 SETTABLE                         R12 R0 R8
      146 LOADN                            R12 0
      147 JUMPIFNOTLT                      R12 R10 ; [+3]
      149 SETTABLE                         R10 R0 R9
      150 JUMP                             ; [+5]
      151 LOADN                            R12 0
      152 JUMPIFNOTLT                      R10 R12 ; [+3]
      154 LOADN                            R12 0
      155 SETTABLE                         R12 R0 R9
      156 FORGLOOP                         R3 2 ; [-88]
      158 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+14]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["AvatarType"]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K0 ["AvatarType"]
        8 JUMPIFEQ                         R0 R1 ; [+7]
       10 GETUPVAL                         R0 1
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K0 ["AvatarType"]
       14 SETTABLEKS                       R1 R0 K0 ["AvatarType"]
       16 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["syncLegacyProperties"]
        5 GETUPVAL                         R1 2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_11:
        0 NEWTABLE                         R1 0 0
        2 LOADK                            R4 K0 ["AvatarBodyRules"]
        3 NAMECALL                         R2 R0 K1 ["FindFirstChildWhichIsA"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+29]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R2
       11 GETUPVAL                         R4 0
       12 JUMPIF                           R4 ; [+10]
       13 GETTABLEKS                       R4 R0 K2 ["AvatarType"]
       15 GETTABLEKS                       R5 R2 K2 ["AvatarType"]
       17 JUMPIFEQ                         R4 R5 ; [+5]
       19 GETTABLEKS                       R4 R2 K2 ["AvatarType"]
       21 SETTABLEKS                       R4 R0 K2 ["AvatarType"]
       23 MOVE                             R5 R1
       24 LOADK                            R8 K2 ["AvatarType"]
       25 NAMECALL                         R6 R2 K3 ["GetPropertyChangedSignal"]
       27 CALL                             R6 2 1
       28 MOVE                             R8 R3
       29 NAMECALL                         R6 R6 K4 ["Connect"]
       31 CALL                             R6 2 -1
       32 FASTCALL                         TABLE_INSERT ; [+2]
       33 GETIMPORT                        R4 K7 [table.insert]
       35 CALL                             R4 -1 0
       36 GETUPVAL                         R3 1
       37 LOADNIL                          R4
       38 LOADNIL                          R5
       39 FORGPREP                         R3
       40 MOVE                             R10 R6
       41 NAMECALL                         R8 R0 K1 ["FindFirstChildWhichIsA"]
       43 CALL                             R8 2 1
       44 JUMPIFNOT                        R8 ; [+46]
       45 GETUPVAL                         R9 2
       46 GETTABLEKS                       R9 R9 K8 ["syncLegacyProperties"]
       48 MOVE                             R10 R8
       49 CALL                             R9 1 0
       50 NEWCLOSURE                       R9 P1
       51 CAPTURE                          UPVAL U0
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          VAL R8
       54 GETTABLEKS                       R10 R7 K9 ["slots"]
       56 LOADNIL                          R11
       57 LOADNIL                          R12
       58 FORGPREP                         R10
       59 GETTABLEKS                       R16 R14 K10 ["overrideClass"]
       61 JUMPIF                           R16 ; [+2]
       62 MOVE                             R15 R8
       63 JUMP                             ; [+10]
       64 GETTABLEKS                       R17 R8 K11 ["Parent"]
       66 JUMPIFNOT                        R17 ; [+6]
       67 MOVE                             R20 R16
       68 NAMECALL                         R18 R17 K1 ["FindFirstChildWhichIsA"]
       70 CALL                             R18 2 1
       71 MOVE                             R15 R18
       72 JUMP                             ; [+1]
       73 LOADNIL                          R15
       74 JUMPIFNOT                        R15 ; [+14]
       75 MOVE                             R17 R1
       76 GETTABLEKS                       R20 R14 K12 ["override"]
       78 NAMECALL                         R18 R15 K3 ["GetPropertyChangedSignal"]
       80 CALL                             R18 2 1
       81 MOVE                             R20 R9
       82 NAMECALL                         R18 R18 K4 ["Connect"]
       84 CALL                             R18 2 -1
       85 FASTCALL                         TABLE_INSERT ; [+2]
       86 GETIMPORT                        R16 K7 [table.insert]
       88 CALL                             R16 -1 0
       89 FORGLOOP                         R10 2 ; [-31]
       91 FORGLOOP                         R3 2 ; [-52]
       93 RETURN                           R1 1

PROTO_12:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R3 R4 R0
        4 JUMPIF                           R3 ; [+1]
        5 RETURN                           R2 1
        6 GETTABLEKS                       R5 R3 K0 ["modeProperty"]
        8 GETTABLE                         R4 R1 R5
        9 GETTABLEKS                       R5 R3 K1 ["slots"]
       11 LOADNIL                          R6
       12 LOADNIL                          R7
       13 FORGPREP                         R5
       14 GETTABLEKS                       R11 R9 K2 ["name"]
       16 GETTABLE                         R10 R1 R11
       17 GETTABLEKS                       R12 R9 K3 ["overrideClass"]
       19 OR                               R11 R12 R0
       20 GETTABLE                         R12 R2 R11
       21 JUMPIF                           R12 ; [+2]
       22 NEWTABLE                         R12 0 0
       24 SETTABLE                         R12 R2 R11
       25 GETTABLE                         R12 R2 R11
       26 GETTABLEKS                       R13 R9 K4 ["override"]
       28 GETTABLEKS                       R15 R10 K5 ["Enabled"]
       30 GETTABLEKS                       R16 R10 K6 ["AssetId"]
       32 GETTABLEKS                       R18 R9 K7 ["gate"]
       34 JUMPIFNOTEQKS                    R18 K8 ["OnValue"] ; [+8]
       36 GETTABLEKS                       R18 R3 K9 ["onValue"]
       38 JUMPIFEQ                         R4 R18 ; [+2]
       40 LOADB                            R17 0 +1
       41 LOADB                            R17 1
       42 JUMP                             ; [+6]
       43 GETTABLEKS                       R18 R4 K10 ["Value"]
       45 JUMPIFNOTEQKN                    R18 K11 [0] ; [+2]
       47 LOADB                            R17 0 +1
       48 LOADB                            R17 1
       49 JUMPIFNOT                        R17 ; [+1]
       50 JUMPIF                           R15 ; [+2]
       51 LOADN                            R14 0
       52 JUMP                             ; [+6]
       53 LOADN                            R17 0
       54 JUMPIFNOTLT                      R17 R16 ; [+3]
       56 MOVE                             R14 R16
       57 JUMP                             ; [+1]
       58 LOADN                            R14 -1
       59 SETTABLE                         R14 R12 R13
       60 FORGLOOP                         R5 2 ; [-47]
       62 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 DUPTABLE                         R2 K5 [{"AvatarBodyRules", "AvatarAnimationRules", "AvatarAccessoryRules", "AvatarClothingRules"}]
        5 DUPTABLE                         R3 K10 [{["modeProperty"] = "AppearanceMode", ["onValue"], ["slots"]}]
        6 GETIMPORT                        R4 K14 [Enum.AvatarSettingsAppearanceMode.CustomParts]
        8 SETTABLEKS                       R4 R3 K8 ["onValue"]
       10 NEWTABLE                         R4 0 7
       12 DUPTABLE                         R5 K23 [{["name"] = "CustomHead", ["override"] = "HeadOverride", ["gate"] = "NotPlayerChoice", ["overrideClass"] = }]
       13 DUPTABLE                         R6 K26 [{["name"] = "CustomTorso", ["override"] = "TorsoOverride", ["gate"] = "NotPlayerChoice", ["overrideClass"] = }]
       14 DUPTABLE                         R7 K29 [{["name"] = "CustomLeftArm", ["override"] = "LeftArmOverride", ["gate"] = "NotPlayerChoice", ["overrideClass"] = }]
       15 DUPTABLE                         R8 K32 [{["name"] = "CustomRightArm", ["override"] = "RightArmOverride", ["gate"] = "NotPlayerChoice", ["overrideClass"] = }]
       16 DUPTABLE                         R9 K35 [{["name"] = "CustomLeftLeg", ["override"] = "LeftLegOverride", ["gate"] = "NotPlayerChoice", ["overrideClass"] = }]
       17 DUPTABLE                         R10 K38 [{["name"] = "CustomRightLeg", ["override"] = "RightLegOverride", ["gate"] = "NotPlayerChoice", ["overrideClass"] = }]
       18 DUPTABLE                         R11 K42 [{["name"] = "CustomMood", ["override"] = "MoodAnimationOverride", ["gate"] = "OnValue", ["overrideClass"] = "AvatarAnimationRules"}]
       19 SETLIST                          R4 R5 7 [1]
       21 SETTABLEKS                       R4 R3 K9 ["slots"]
       23 SETTABLEKS                       R3 R2 K1 ["AvatarBodyRules"]
       25 DUPTABLE                         R3 K44 [{["modeProperty"] = "AnimationClipsMode", ["onValue"], ["slots"]}]
       26 GETIMPORT                        R4 K47 [Enum.AvatarSettingsAnimationClipsMode.CustomClips]
       28 SETTABLEKS                       R4 R3 K8 ["onValue"]
       30 NEWTABLE                         R4 0 9
       32 DUPTABLE                         R5 K50 [{["name"] = "CustomRunAnimation", ["override"] = "RunAnimationOverride", ["gate"] = "OnValue", ["overrideClass"] = }]
       33 DUPTABLE                         R6 K53 [{["name"] = "CustomWalkAnimation", ["override"] = "WalkAnimationOverride", ["gate"] = "OnValue", ["overrideClass"] = }]
       34 DUPTABLE                         R7 K56 [{["name"] = "CustomFallAnimation", ["override"] = "FallAnimationOverride", ["gate"] = "OnValue", ["overrideClass"] = }]
       35 DUPTABLE                         R8 K59 [{["name"] = "CustomJumpAnimation", ["override"] = "JumpAnimationOverride", ["gate"] = "OnValue", ["overrideClass"] = }]
       36 DUPTABLE                         R9 K62 [{["name"] = "CustomIdleAnimation", ["override"] = "IdleAnimationOverride", ["gate"] = "OnValue", ["overrideClass"] = }]
       37 DUPTABLE                         R10 K65 [{["name"] = "CustomIdleAlt1Animation", ["override"] = "IdleAltAnimationOverride", ["gate"] = "OnValue", ["overrideClass"] = }]
       38 DUPTABLE                         R11 K68 [{["name"] = "CustomSwimAnimation", ["override"] = "SwimAnimationOverride", ["gate"] = "OnValue", ["overrideClass"] = }]
       39 DUPTABLE                         R12 K71 [{["name"] = "CustomSwimIdleAnimation", ["override"] = "SwimIdleAnimationOverride", ["gate"] = "OnValue", ["overrideClass"] = }]
       40 DUPTABLE                         R13 K74 [{["name"] = "CustomClimbAnimation", ["override"] = "ClimbAnimationOverride", ["gate"] = "OnValue", ["overrideClass"] = }]
       41 SETLIST                          R4 R5 9 [1]
       43 SETTABLEKS                       R4 R3 K9 ["slots"]
       45 SETTABLEKS                       R3 R2 K2 ["AvatarAnimationRules"]
       47 DUPTABLE                         R3 K76 [{["modeProperty"] = "CustomAccessoryMode", ["onValue"], ["slots"]}]
       48 GETIMPORT                        R4 K79 [Enum.AvatarSettingsCustomAccessoryMode.CustomAccessories]
       50 SETTABLEKS                       R4 R3 K8 ["onValue"]
       52 NEWTABLE                         R4 0 0
       54 SETTABLEKS                       R4 R3 K9 ["slots"]
       56 SETTABLEKS                       R3 R2 K3 ["AvatarAccessoryRules"]
       58 DUPTABLE                         R3 K81 [{["modeProperty"] = "CustomClothingMode", ["onValue"], ["slots"]}]
       59 GETIMPORT                        R4 K84 [Enum.AvatarSettingsCustomClothingMode.CustomClothing]
       61 SETTABLEKS                       R4 R3 K8 ["onValue"]
       63 NEWTABLE                         R4 0 0
       65 SETTABLEKS                       R4 R3 K9 ["slots"]
       67 SETTABLEKS                       R3 R2 K4 ["AvatarClothingRules"]
       69 NEWTABLE                         R3 0 8
       71 LOADK                            R6 K85 ["Hair"]
       72 LOADK                            R7 K86 ["Head"]
       73 LOADK                            R8 K87 ["Face"]
       74 LOADK                            R9 K88 ["Neck"]
       75 LOADK                            R10 K89 ["Shoulder"]
       76 LOADK                            R11 K90 ["Front"]
       77 LOADK                            R12 K91 ["Back"]
       78 LOADK                            R13 K92 ["Waist"]
       79 SETLIST                          R3 R6 8 [1]
       81 LOADNIL                          R4
       82 LOADNIL                          R5
       83 FORGPREP                         R3
       84 GETTABLEKS                       R9 R2 K3 ["AvatarAccessoryRules"]
       86 GETTABLEKS                       R9 R9 K9 ["slots"]
       88 LOADK                            R12 K93 ["Custom"]
       89 MOVE                             R13 R7
       90 LOADK                            R14 K94 ["Accessory"]
       91 CONCAT                           R11 R12 R14
       92 MOVE                             R13 R7
       93 LOADK                            R14 K95 ["AccessoryOverride"]
       94 CONCAT                           R12 R13 R14
       95 DUPTABLE                         R10 K96 [{["name"], ["override"], ["gate"] = "NotPlayerChoice", ["overrideClass"] = }]
       96 SETTABLEKS                       R11 R10 K15 ["name"]
       98 SETTABLEKS                       R12 R10 K17 ["override"]
      100 FASTCALL2                        TABLE_INSERT R9 R10 ; [+3]
      102 GETIMPORT                        R8 K99 [table.insert]
      104 CALL                             R8 2 0
      105 FORGLOOP                         R3 2 ; [-22]
      107 NEWTABLE                         R3 0 12
      109 LOADK                            R6 K100 ["TShirt"]
      110 LOADK                            R7 K101 ["Shirt"]
      111 LOADK                            R8 K102 ["Jacket"]
      112 LOADK                            R9 K103 ["Sweater"]
      113 LOADK                            R10 K104 ["Pants"]
      114 LOADK                            R11 K105 ["Shorts"]
      115 LOADK                            R12 K106 ["DressSkirt"]
      116 LOADK                            R13 K107 ["LeftShoes"]
      117 LOADK                            R14 K108 ["RightShoes"]
      118 LOADK                            R15 K109 ["ClassicShirts"]
      119 LOADK                            R16 K110 ["ClassicTShirts"]
      120 LOADK                            R17 K111 ["ClassicPants"]
      121 SETLIST                          R3 R6 12 [1]
      123 LOADNIL                          R4
      124 LOADNIL                          R5
      125 FORGPREP                         R3
      126 GETTABLEKS                       R9 R2 K4 ["AvatarClothingRules"]
      128 GETTABLEKS                       R9 R9 K9 ["slots"]
      130 LOADK                            R12 K93 ["Custom"]
      131 MOVE                             R13 R7
      132 LOADK                            R14 K94 ["Accessory"]
      133 CONCAT                           R11 R12 R14
      134 MOVE                             R13 R7
      135 LOADK                            R14 K95 ["AccessoryOverride"]
      136 CONCAT                           R12 R13 R14
      137 DUPTABLE                         R10 K96 [{["name"], ["override"], ["gate"] = "NotPlayerChoice", ["overrideClass"] = }]
      138 SETTABLEKS                       R11 R10 K15 ["name"]
      140 SETTABLEKS                       R12 R10 K17 ["override"]
      142 FASTCALL2                        TABLE_INSERT R9 R10 ; [+3]
      144 GETIMPORT                        R8 K99 [table.insert]
      146 CALL                             R8 2 0
      147 FORGLOOP                         R3 2 ; [-22]
      149 DUPTABLE                         R3 K113 [{"AvatarRules"}]
      150 DUPTABLE                         R4 K116 [{["AvatarType"] = True}]
      151 SETTABLEKS                       R4 R3 K112 ["AvatarRules"]
      153 MOVE                             R4 R2
      154 LOADNIL                          R5
      155 LOADNIL                          R6
      156 FORGPREP                         R4
      157 NEWTABLE                         R9 1 0
      159 GETTABLEKS                       R10 R8 K6 ["modeProperty"]
      161 LOADB                            R11 1
      162 SETTABLE                         R11 R9 R10
      163 GETTABLEKS                       R10 R8 K9 ["slots"]
      165 LOADNIL                          R11
      166 LOADNIL                          R12
      167 FORGPREP                         R10
      168 GETTABLEKS                       R16 R14 K15 ["name"]
      170 LOADK                            R17 K117 ["Enabled"]
      171 CONCAT                           R15 R16 R17
      172 LOADB                            R16 1
      173 SETTABLE                         R16 R9 R15
      174 GETTABLEKS                       R16 R14 K15 ["name"]
      176 LOADK                            R17 K118 ["Id"]
      177 CONCAT                           R15 R16 R17
      178 LOADB                            R16 1
      179 SETTABLE                         R16 R9 R15
      180 FORGLOOP                         R10 2 ; [-13]
      182 SETTABLE                         R9 R3 R7
      183 FORGLOOP                         R4 2 ; [-27]
      185 LOADB                            R4 0
      186 DUPCLOSURE                       R5 K119 [PROTO_1]
      187 DUPCLOSURE                       R6 K120 [PROTO_2]
      188 DUPCLOSURE                       R7 K121 [PROTO_3]
      189 DUPCLOSURE                       R8 K122 [PROTO_4]
      190 DUPCLOSURE                       R9 K123 [PROTO_5]
      191 DUPCLOSURE                       R10 K124 [PROTO_6]
      192 CAPTURE                          VAL R3
      193 SETTABLEKS                       R10 R0 K125 ["isOverrideBacked"]
      195 NEWCLOSURE                       R10 P7
      196 CAPTURE                          REF R4
      197 CAPTURE                          VAL R2
      198 SETTABLEKS                       R10 R0 K126 ["writeOverrides"]
      200 DUPCLOSURE                       R10 K127 [PROTO_8]
      201 CAPTURE                          VAL R2
      202 SETTABLEKS                       R10 R0 K128 ["syncLegacyProperties"]
      204 NEWCLOSURE                       R10 P9
      205 CAPTURE                          REF R4
      206 CAPTURE                          VAL R2
      207 CAPTURE                          VAL R0
      208 SETTABLEKS                       R10 R0 K129 ["connect"]
      210 DUPCLOSURE                       R10 K130 [PROTO_12]
      211 CAPTURE                          VAL R2
      212 SETTABLEKS                       R10 R0 K131 ["computeOverrides"]
      214 CLOSEUPVALS                      R4
      215 RETURN                           R0 1
