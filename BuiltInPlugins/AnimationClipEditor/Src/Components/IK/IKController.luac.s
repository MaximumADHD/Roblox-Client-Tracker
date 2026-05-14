PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showMenu"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["showMenu"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showMenu"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showMenu"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"showTree"}]
        2 SETTABLEKS                       R0 R3 K0 ["showTree"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R4 R2 K0 ["Name"]
        4 GETTABLE                         R3 R1 R4
        5 JUMPIFNOT                        R3 ; [+12]
        6 GETTABLEKS                       R4 R2 K0 ["Name"]
        8 LOADB                            R5 1
        9 SETTABLE                         R5 R0 R4
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K1 ["makeChainHelper"]
       13 MOVE                             R5 R0
       14 MOVE                             R6 R1
       15 GETTABLEKS                       R7 R3 K2 ["Part0"]
       17 CALL                             R4 3 0
       18 RETURN                           R0 0

PROTO_4:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 GETTABLEKS                       R4 R2 K0 ["Name"]
        4 GETTABLE                         R3 R1 R4
        5 JUMPIFNOT                        R3 ; [+14]
        6 GETTABLEKS                       R4 R2 K0 ["Name"]
        8 LOADB                            R5 1
        9 SETTABLE                         R5 R0 R4
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K1 ["makeChainHelperAnimationConstraint"]
       13 MOVE                             R5 R0
       14 MOVE                             R6 R1
       15 GETTABLEKS                       R7 R3 K2 ["Attachment0"]
       17 GETTABLEKS                       R7 R7 K3 ["Parent"]
       19 CALL                             R4 3 0
       20 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["SelectedTracks"]
        5 JUMPIFNOT                        R1 ; [+13]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K1 ["SelectedTracks"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["props"]
       14 GETTABLEKS                       R3 R3 K1 ["SelectedTracks"]
       16 LENGTH                           R2 R3
       17 GETTABLE                         R0 R1 R2
       18 RETURN                           R0 1
       19 LOADNIL                          R0
       20 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["ToggleIKEnabled"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["Analytics"]
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getLastSelectedTrack"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+2]
        5 GETTABLEN                        R1 R0 1
        6 JUMPIF                           R1 ; [+1]
        7 LOADNIL                          R1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K1 ["getRigInfo"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["props"]
       14 GETTABLEKS                       R3 R3 K3 ["RootInstance"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R2 K4 ["Parts"]
       19 GETTABLEKS                       R4 R2 K5 ["PartNameToMotor"]
       21 GETTABLEKS                       R5 R2 K6 ["PartNameToAnimConstraint"]
       23 NEWTABLE                         R6 0 0
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K2 ["props"]
       28 GETTABLEKS                       R7 R7 K7 ["PinnedParts"]
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K2 ["props"]
       33 GETTABLEKS                       R8 R8 K8 ["IKMode"]
       35 GETUPVAL                         R9 2
       36 GETTABLEKS                       R9 R9 K9 ["IK_MODE"]
       38 GETTABLEKS                       R9 R9 K10 ["BodyPart"]
       40 JUMPIFNOTEQ                      R8 R9 ; [+3]
       42 NEWTABLE                         R7 0 0
       44 GETIMPORT                        R8 K12 [ipairs]
       46 MOVE                             R9 R3
       47 CALL                             R8 1 3
       48 FORGPREP_INEXT                   R8
       49 GETTABLE                         R13 R7 R12
       50 JUMPIF                           R13 ; [+4]
       51 GETTABLEKS                       R13 R12 K13 ["Name"]
       53 LOADB                            R14 0
       54 SETTABLE                         R14 R6 R13
       55 FORGLOOP                         R8 2 [inext] ; [-7]
       57 JUMPIFNOT                        R1 ; [+81]
       58 GETUPVAL                         R8 1
       59 GETTABLEKS                       R8 R8 K14 ["getPartByName"]
       61 GETUPVAL                         R9 0
       62 GETTABLEKS                       R9 R9 K2 ["props"]
       64 GETTABLEKS                       R9 R9 K3 ["RootInstance"]
       66 MOVE                             R10 R1
       67 CALL                             R8 2 1
       68 JUMPIFNOT                        R8 ; [+70]
       69 GETUPVAL                         R9 0
       70 GETTABLEKS                       R9 R9 K2 ["props"]
       72 GETTABLEKS                       R9 R9 K8 ["IKMode"]
       74 GETUPVAL                         R10 2
       75 GETTABLEKS                       R10 R10 K9 ["IK_MODE"]
       77 GETTABLEKS                       R10 R10 K10 ["BodyPart"]
       79 JUMPIFNOTEQ                      R9 R10 ; [+9]
       81 GETUPVAL                         R9 3
       82 GETTABLEKS                       R9 R9 K15 ["pinForLimbMode"]
       84 MOVE                             R10 R8
       85 MOVE                             R11 R4
       86 MOVE                             R12 R5
       87 CALL                             R9 3 1
       88 MOVE                             R7 R9
       89 GETTABLE                         R9 R4 R1
       90 JUMPIFNOT                        R9 ; [+9]
       91 GETUPVAL                         R9 0
       92 GETTABLEKS                       R9 R9 K16 ["makeChainHelper"]
       94 MOVE                             R10 R6
       95 MOVE                             R11 R4
       96 GETTABLE                         R12 R4 R1
       97 GETTABLEKS                       R12 R12 K17 ["Part1"]
       99 CALL                             R9 3 0
      100 GETTABLE                         R9 R5 R1
      101 JUMPIFNOT                        R9 ; [+11]
      102 GETUPVAL                         R9 0
      103 GETTABLEKS                       R9 R9 K18 ["makeChainHelperAnimationConstraint"]
      105 MOVE                             R10 R6
      106 MOVE                             R11 R5
      107 GETTABLE                         R12 R5 R1
      108 GETTABLEKS                       R12 R12 K19 ["Attachment1"]
      110 GETTABLEKS                       R12 R12 K20 ["Parent"]
      112 CALL                             R9 3 0
      113 GETIMPORT                        R9 K22 [pairs]
      115 MOVE                             R10 R7
      116 CALL                             R9 1 3
      117 FORGPREP_NEXT                    R9
      118 GETTABLEKS                       R14 R12 K13 ["Name"]
      120 JUMPIFEQ                         R14 R1 ; [+16]
      122 JUMPIFNOT                        R13 ; [+14]
      123 GETUPVAL                         R14 0
      124 GETTABLEKS                       R14 R14 K16 ["makeChainHelper"]
      126 MOVE                             R15 R6
      127 MOVE                             R16 R4
      128 MOVE                             R17 R12
      129 CALL                             R14 3 0
      130 GETUPVAL                         R14 0
      131 GETTABLEKS                       R14 R14 K18 ["makeChainHelperAnimationConstraint"]
      133 MOVE                             R15 R6
      134 MOVE                             R16 R5
      135 MOVE                             R17 R12
      136 CALL                             R14 3 0
      137 FORGLOOP                         R9 2 ; [-20]
      139 RETURN                           R6 1

PROTO_8:
        0 DUPTABLE                         R1 K2 [{"showMenu", "showTree"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["showMenu"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["showTree"]
        7 SETTABLEKS                       R1 R0 K3 ["state"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K0 ["showMenu"]
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K4 ["hideMenu"]
       17 NEWCLOSURE                       R1 P2
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R1 R0 K5 ["setShowTree"]
       21 NEWCLOSURE                       R1 P3
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R1 R0 K6 ["makeChainHelper"]
       25 NEWCLOSURE                       R1 P4
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R1 R0 K7 ["makeChainHelperAnimationConstraint"]
       29 NEWCLOSURE                       R1 P5
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R1 R0 K8 ["getLastSelectedTrack"]
       33 NEWCLOSURE                       R1 P6
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R1 R0 K9 ["toggleIKEnabledHandler"]
       37 NEWCLOSURE                       R1 P7
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          UPVAL U2
       42 SETTABLEKS                       R1 R0 K10 ["makeChains"]
       44 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setShowTree"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["ShowTree"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["ShowTree"]
        6 GETTABLEKS                       R4 R2 K3 ["showTree"]
        8 JUMPIFEQ                         R3 R4 ; [+17]
       10 GETTABLEKS                       R3 R1 K2 ["ShowTree"]
       12 JUMPIFEQKNIL                     R3 ; [+8]
       14 GETIMPORT                        R3 K5 [spawn]
       16 NEWCLOSURE                       R4 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 CALL                             R3 1 0
       20 RETURN                           R0 0
       21 GETTABLEKS                       R3 R0 K6 ["setShowTree"]
       23 GETTABLEKS                       R4 R1 K2 ["ShowTree"]
       25 CALL                             R3 1 0
       26 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Localization"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R2 K2 ["Stylizer"]
        8 GETTABLEKS                       R4 R0 K3 ["getLastSelectedTrack"]
       10 CALL                             R4 0 1
       11 GETTABLEKS                       R5 R0 K4 ["state"]
       13 GETTABLEKS                       R6 R2 K5 ["ToggleShowTree"]
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K6 ["canUseIK"]
       18 GETTABLEKS                       R8 R2 K7 ["RootInstance"]
       20 CALL                             R7 1 2
       21 GETTABLEKS                       R10 R5 K8 ["showTree"]
       23 JUMPIFNOT                        R10 ; [+2]
       24 LOADK                            R9 K9 ["ACEHeaderButtonActive"]
       25 JUMP                             ; [+1]
       26 LOADK                            R9 K10 ["ACEHeaderButtonDefault"]
       27 GETTABLEKS                       R10 R0 K0 ["props"]
       29 GETTABLEKS                       R10 R10 K7 ["RootInstance"]
       31 JUMPIFNOT                        R10 ; [+188]
       32 GETUPVAL                         R10 1
       33 GETTABLEKS                       R10 R10 K11 ["createElement"]
       35 LOADK                            R11 K12 ["Frame"]
       36 DUPTABLE                         R12 K17 [{"Position", "Size", "BackgroundTransparency", "AnchorPoint"}]
       37 GETTABLEKS                       R13 R2 K13 ["Position"]
       39 SETTABLEKS                       R13 R12 K13 ["Position"]
       41 GETIMPORT                        R13 K20 [UDim2.new]
       43 LOADN                            R14 0
       44 LOADN                            R15 40
       45 LOADN                            R16 0
       46 LOADN                            R17 18
       47 CALL                             R13 4 1
       48 SETTABLEKS                       R13 R12 K14 ["Size"]
       50 LOADN                            R13 1
       51 SETTABLEKS                       R13 R12 K15 ["BackgroundTransparency"]
       53 GETIMPORT                        R13 K22 [Vector2.new]
       55 LOADN                            R14 0
       56 LOADK                            R15 K23 [0.5]
       57 CALL                             R13 2 1
       58 SETTABLEKS                       R13 R12 K16 ["AnchorPoint"]
       60 DUPTABLE                         R13 K27 [{"IKButton", "IKWindow", "R15IKRig"}]
       61 GETTABLEKS                       R14 R2 K7 ["RootInstance"]
       63 JUMPIFNOT                        R14 ; [+69]
       64 MOVE                             R14 R7
       65 JUMPIFNOT                        R14 ; [+67]
       66 GETUPVAL                         R14 1
       67 GETTABLEKS                       R14 R14 K11 ["createElement"]
       69 GETUPVAL                         R15 2
       70 DUPTABLE                         R16 K30 [{"Style", "Size", "OnClick"}]
       71 SETTABLEKS                       R9 R16 K28 ["Style"]
       73 GETIMPORT                        R17 K20 [UDim2.new]
       75 LOADN                            R18 1
       76 LOADN                            R19 0
       77 LOADN                            R20 1
       78 LOADN                            R21 0
       79 CALL                             R17 4 1
       80 SETTABLEKS                       R17 R16 K14 ["Size"]
       82 SETTABLEKS                       R6 R16 K29 ["OnClick"]
       84 DUPTABLE                         R17 K32 [{"Label"}]
       85 GETUPVAL                         R18 1
       86 GETTABLEKS                       R18 R18 K11 ["createElement"]
       88 LOADK                            R19 K33 ["TextLabel"]
       89 DUPTABLE                         R20 K39 [{"BackgroundTransparency", "Size", "TextYAlignment", "TextSize", "Text", "Font", "TextColor3"}]
       90 LOADN                            R21 1
       91 SETTABLEKS                       R21 R20 K15 ["BackgroundTransparency"]
       93 GETIMPORT                        R21 K20 [UDim2.new]
       95 LOADN                            R22 1
       96 LOADN                            R23 0
       97 LOADN                            R24 1
       98 LOADN                            R25 0
       99 CALL                             R21 4 1
      100 SETTABLEKS                       R21 R20 K14 ["Size"]
      102 GETIMPORT                        R21 K42 [Enum.TextYAlignment.Center]
      104 SETTABLEKS                       R21 R20 K34 ["TextYAlignment"]
      106 GETTABLEKS                       R21 R3 K43 ["ikTheme"]
      108 GETTABLEKS                       R21 R21 K44 ["textSize"]
      110 SETTABLEKS                       R21 R20 K35 ["TextSize"]
      112 LOADK                            R23 K45 ["Title"]
      113 LOADK                            R24 K46 ["IK"]
      114 NAMECALL                         R21 R1 K47 ["getText"]
      116 CALL                             R21 3 1
      117 SETTABLEKS                       R21 R20 K36 ["Text"]
      119 GETTABLEKS                       R21 R3 K48 ["font"]
      121 SETTABLEKS                       R21 R20 K37 ["Font"]
      123 GETTABLEKS                       R21 R3 K43 ["ikTheme"]
      125 GETTABLEKS                       R21 R21 K49 ["textColor"]
      127 SETTABLEKS                       R21 R20 K38 ["TextColor3"]
      129 CALL                             R18 2 1
      130 SETTABLEKS                       R18 R17 K31 ["Label"]
      132 CALL                             R14 3 1
      133 SETTABLEKS                       R14 R13 K24 ["IKButton"]
      135 GETTABLEKS                       R14 R2 K50 ["ShowTree"]
      137 JUMPIFNOT                        R14 ; [+62]
      138 GETTABLEKS                       R14 R5 K8 ["showTree"]
      140 JUMPIFNOT                        R14 ; [+59]
      141 GETUPVAL                         R14 1
      142 GETTABLEKS                       R14 R14 K11 ["createElement"]
      144 GETUPVAL                         R15 3
      145 DUPTABLE                         R16 K63 [{"RootInstance", "PinnedParts", "IKEnabled", "ShowTree", "SelectedTrack", "SetSelectedTracks", "ToggleIKEnabled", "TogglePinnedPart", "SetShowTree", "SetIKEnabled", "SetIKMode", "Chain", "IKMode", "IsR15"}]
      146 GETTABLEKS                       R17 R2 K7 ["RootInstance"]
      148 SETTABLEKS                       R17 R16 K7 ["RootInstance"]
      150 GETTABLEKS                       R17 R2 K51 ["PinnedParts"]
      152 SETTABLEKS                       R17 R16 K51 ["PinnedParts"]
      154 GETTABLEKS                       R17 R2 K52 ["IKEnabled"]
      156 SETTABLEKS                       R17 R16 K52 ["IKEnabled"]
      158 GETTABLEKS                       R17 R2 K50 ["ShowTree"]
      160 SETTABLEKS                       R17 R16 K50 ["ShowTree"]
      162 SETTABLEKS                       R4 R16 K53 ["SelectedTrack"]
      164 GETTABLEKS                       R17 R2 K54 ["SetSelectedTracks"]
      166 SETTABLEKS                       R17 R16 K54 ["SetSelectedTracks"]
      168 GETTABLEKS                       R17 R0 K64 ["toggleIKEnabledHandler"]
      170 SETTABLEKS                       R17 R16 K55 ["ToggleIKEnabled"]
      172 GETTABLEKS                       R17 R2 K56 ["TogglePinnedPart"]
      174 SETTABLEKS                       R17 R16 K56 ["TogglePinnedPart"]
      176 GETTABLEKS                       R17 R2 K57 ["SetShowTree"]
      178 SETTABLEKS                       R17 R16 K57 ["SetShowTree"]
      180 GETTABLEKS                       R17 R2 K58 ["SetIKEnabled"]
      182 SETTABLEKS                       R17 R16 K58 ["SetIKEnabled"]
      184 GETTABLEKS                       R17 R2 K59 ["SetIKMode"]
      186 SETTABLEKS                       R17 R16 K59 ["SetIKMode"]
      188 GETTABLEKS                       R17 R0 K65 ["makeChains"]
      190 CALL                             R17 0 1
      191 SETTABLEKS                       R17 R16 K60 ["Chain"]
      193 GETTABLEKS                       R17 R2 K61 ["IKMode"]
      195 SETTABLEKS                       R17 R16 K61 ["IKMode"]
      197 SETTABLEKS                       R8 R16 K62 ["IsR15"]
      199 CALL                             R14 2 1
      200 SETTABLEKS                       R14 R13 K25 ["IKWindow"]
      202 GETTABLEKS                       R14 R2 K52 ["IKEnabled"]
      204 JUMPIFNOT                        R14 ; [+12]
      205 MOVE                             R14 R8
      206 JUMPIFNOT                        R14 ; [+10]
      207 GETUPVAL                         R14 1
      208 GETTABLEKS                       R14 R14 K11 ["createElement"]
      210 GETUPVAL                         R15 4
      211 DUPTABLE                         R16 K66 [{"RootInstance"}]
      212 GETTABLEKS                       R17 R2 K7 ["RootInstance"]
      214 SETTABLEKS                       R17 R16 K7 ["RootInstance"]
      216 CALL                             R14 2 1
      217 SETTABLEKS                       R14 R13 K26 ["R15IKRig"]
      219 CALL                             R10 3 1
      220 RETURN                           R10 1

PROTO_12:
        0 DUPTABLE                         R2 K6 [{"ShowTree", "IKMode", "IKEnabled", "RootInstance", "PinnedParts", "SelectedTracks"}]
        1 GETTABLEKS                       R3 R0 K7 ["Status"]
        3 GETTABLEKS                       R3 R3 K0 ["ShowTree"]
        5 SETTABLEKS                       R3 R2 K0 ["ShowTree"]
        7 GETTABLEKS                       R3 R0 K7 ["Status"]
        9 GETTABLEKS                       R3 R3 K1 ["IKMode"]
       11 SETTABLEKS                       R3 R2 K1 ["IKMode"]
       13 GETTABLEKS                       R3 R0 K7 ["Status"]
       15 GETTABLEKS                       R3 R3 K2 ["IKEnabled"]
       17 SETTABLEKS                       R3 R2 K2 ["IKEnabled"]
       19 GETTABLEKS                       R3 R0 K7 ["Status"]
       21 GETTABLEKS                       R3 R3 K3 ["RootInstance"]
       23 SETTABLEKS                       R3 R2 K3 ["RootInstance"]
       25 GETTABLEKS                       R3 R0 K7 ["Status"]
       27 GETTABLEKS                       R3 R3 K4 ["PinnedParts"]
       29 SETTABLEKS                       R3 R2 K4 ["PinnedParts"]
       31 GETTABLEKS                       R3 R0 K7 ["Status"]
       33 GETTABLEKS                       R3 R3 K5 ["SelectedTracks"]
       35 SETTABLEKS                       R3 R2 K5 ["SelectedTracks"]
       37 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_20:
        0 DUPTABLE                         R1 K7 [{"ToggleShowTree", "SetIKMode", "SetIKEnabled", "ToggleIKEnabled", "TogglePinnedPart", "SetShowTree", "SetSelectedTracks"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["ToggleShowTree"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetIKMode"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["SetIKEnabled"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["ToggleIKEnabled"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["TogglePinnedPart"]
       26 NEWCLOSURE                       R2 P5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U5
       29 SETTABLEKS                       R2 R1 K5 ["SetShowTree"]
       31 NEWCLOSURE                       R2 P6
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U6
       34 SETTABLEKS                       R2 R1 K6 ["SetSelectedTracks"]
       36 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["UI"]
       30 GETTABLEKS                       R4 R4 K11 ["Button"]
       32 GETTABLEKS                       R5 R3 K12 ["ContextServices"]
       34 GETTABLEKS                       R6 R5 K13 ["withContext"]
       36 GETTABLEKS                       R7 R0 K14 ["Src"]
       38 GETTABLEKS                       R7 R7 K15 ["Actions"]
       40 GETIMPORT                        R8 K5 [require]
       42 GETTABLEKS                       R9 R7 K16 ["SetIKEnabled"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K5 [require]
       47 GETTABLEKS                       R10 R7 K17 ["SetIKMode"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K5 [require]
       52 GETTABLEKS                       R11 R7 K18 ["SetShowTree"]
       54 CALL                             R10 1 1
       55 GETTABLEKS                       R11 R0 K14 ["Src"]
       57 GETTABLEKS                       R11 R11 K19 ["Components"]
       59 GETIMPORT                        R12 K5 [require]
       61 GETTABLEKS                       R13 R11 K20 ["IK"]
       63 GETTABLEKS                       R13 R13 K21 ["IKWindow"]
       65 CALL                             R12 1 1
       66 GETIMPORT                        R13 K5 [require]
       68 GETTABLEKS                       R14 R11 K20 ["IK"]
       70 GETTABLEKS                       R14 R14 K22 ["R15IKRig"]
       72 CALL                             R13 1 1
       73 GETTABLEKS                       R14 R0 K14 ["Src"]
       75 GETTABLEKS                       R14 R14 K23 ["Thunks"]
       77 GETIMPORT                        R15 K5 [require]
       79 GETTABLEKS                       R16 R14 K24 ["SetSelectedTracks"]
       81 CALL                             R15 1 1
       82 GETIMPORT                        R16 K5 [require]
       84 GETTABLEKS                       R17 R14 K25 ["ToggleIKEnabled"]
       86 CALL                             R16 1 1
       87 GETIMPORT                        R17 K5 [require]
       89 GETTABLEKS                       R18 R14 K26 ["TogglePinnedPart"]
       91 CALL                             R17 1 1
       92 GETIMPORT                        R18 K5 [require]
       94 GETTABLEKS                       R19 R14 K27 ["ToggleShowTree"]
       96 CALL                             R18 1 1
       97 GETTABLEKS                       R19 R0 K14 ["Src"]
       99 GETTABLEKS                       R19 R19 K28 ["Util"]
      101 GETIMPORT                        R20 K5 [require]
      103 GETTABLEKS                       R21 R19 K29 ["Constants"]
      105 CALL                             R20 1 1
      106 GETIMPORT                        R21 K5 [require]
      108 GETTABLEKS                       R22 R19 K30 ["RigIK"]
      110 CALL                             R21 1 1
      111 GETIMPORT                        R22 K5 [require]
      113 GETTABLEKS                       R23 R19 K31 ["RigInfo"]
      115 CALL                             R22 1 1
      116 GETTABLEKS                       R23 R1 K32 ["PureComponent"]
      118 LOADK                            R25 K33 ["IKController"]
      119 NAMECALL                         R23 R23 K34 ["extend"]
      121 CALL                             R23 2 1
      122 DUPCLOSURE                       R24 K35 [PROTO_8]
      123 CAPTURE                          VAL R22
      124 CAPTURE                          VAL R20
      125 CAPTURE                          VAL R21
      126 SETTABLEKS                       R24 R23 K36 ["init"]
      128 DUPCLOSURE                       R24 K37 [PROTO_10]
      129 SETTABLEKS                       R24 R23 K38 ["didUpdate"]
      131 DUPCLOSURE                       R24 K39 [PROTO_11]
      132 CAPTURE                          VAL R21
      133 CAPTURE                          VAL R1
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R12
      136 CAPTURE                          VAL R13
      137 SETTABLEKS                       R24 R23 K40 ["render"]
      139 MOVE                             R24 R6
      140 DUPTABLE                         R25 K44 [{"Stylizer", "Localization", "Analytics"}]
      141 GETTABLEKS                       R26 R5 K41 ["Stylizer"]
      143 SETTABLEKS                       R26 R25 K41 ["Stylizer"]
      145 GETTABLEKS                       R26 R5 K42 ["Localization"]
      147 SETTABLEKS                       R26 R25 K42 ["Localization"]
      149 GETTABLEKS                       R26 R5 K43 ["Analytics"]
      151 SETTABLEKS                       R26 R25 K43 ["Analytics"]
      153 CALL                             R24 1 1
      154 MOVE                             R25 R23
      155 CALL                             R24 1 1
      156 MOVE                             R23 R24
      157 DUPCLOSURE                       R24 K45 [PROTO_12]
      158 DUPCLOSURE                       R25 K46 [PROTO_20]
      159 CAPTURE                          VAL R18
      160 CAPTURE                          VAL R9
      161 CAPTURE                          VAL R8
      162 CAPTURE                          VAL R16
      163 CAPTURE                          VAL R17
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R15
      166 GETTABLEKS                       R26 R2 K47 ["connect"]
      168 MOVE                             R27 R24
      169 MOVE                             R28 R25
      170 CALL                             R26 2 1
      171 MOVE                             R27 R23
      172 CALL                             R26 1 -1
      173 RETURN                           R26 -1
