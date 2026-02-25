PROTO_0:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R5 K1 [{"isHovered"}]
        2 LOADB                            R6 1
        3 SETTABLEKS                       R6 R5 K0 ["isHovered"]
        5 NAMECALL                         R3 R3 K2 ["setState"]
        7 CALL                             R3 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R5 K1 [{"isHovered"}]
        2 LOADB                            R6 0
        3 SETTABLEKS                       R6 R5 K0 ["isHovered"]
        5 NAMECALL                         R3 R3 K2 ["setState"]
        7 CALL                             R3 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R2 K2 [{"isHovered", "voteDownButtonHovered"}]
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["isHovered"]
        4 LOADB                            R3 0
        5 SETTABLEKS                       R3 R2 K1 ["voteDownButtonHovered"]
        7 SETTABLEKS                       R2 R0 K3 ["state"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R2 R0 K4 ["onMouseEntered"]
       13 NEWCLOSURE                       R2 P1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R2 R0 K5 ["onMouseLeft"]
       17 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R5 R3 K3 ["asset"]
        8 GETTABLEKS                       R4 R5 K4 ["voting"]
       10 GETTABLEKS                       R5 R1 K5 ["hasVoted"]
       12 GETTABLEKS                       R6 R1 K6 ["userVote"]
       14 GETTABLEKS                       R7 R1 K7 ["isVoteUp"]
       16 JUMPIF                           R7 ; [+1]
       17 NOT                              R6 R6
       18 GETTABLEKS                       R8 R2 K8 ["isHovered"]
       20 GETTABLEKS                       R9 R1 K9 ["onClicked"]
       22 GETTABLEKS                       R11 R3 K3 ["asset"]
       24 GETTABLEKS                       R10 R11 K4 ["voting"]
       26 GETTABLEKS                       R11 R10 K10 ["votingButtonImage"]
       28 GETTABLEKS                       R12 R10 K11 ["voteThumb"]
       30 LOADN                            R13 0
       31 GETIMPORT                        R14 K14 [UDim2.new]
       33 LOADN                            R15 1
       34 LOADN                            R16 254
       35 LOADN                            R17 1
       36 LOADN                            R18 254
       37 CALL                             R14 4 1
       38 JUMPIFNOT                        R5 ; [+13]
       39 JUMPIFNOT                        R6 ; [+12]
       40 JUMPIFNOT                        R7 ; [+6]
       41 GETTABLEKS                       R12 R10 K15 ["votedUpThumb"]
       43 GETUPVAL                         R15 0
       44 GETTABLEKS                       R11 R15 K16 ["THUMB_UP_GREEN"]
       46 JUMP                             ; [+5]
       47 GETTABLEKS                       R12 R10 K17 ["votedDownThumb"]
       49 GETUPVAL                         R15 0
       50 GETTABLEKS                       R11 R15 K18 ["THUMB_UP_RED"]
       52 JUMPIF                           R7 ; [+1]
       53 LOADN                            R13 180
       54 GETUPVAL                         R16 1
       55 GETTABLEKS                       R15 R16 K19 ["createElement"]
       57 LOADK                            R16 K20 ["ImageButton"]
       58 NEWTABLE                         R17 8 0
       60 LOADN                            R18 1
       61 SETTABLEKS                       R18 R17 K21 ["BackgroundTransparency"]
       63 JUMPIFNOT                        R7 ; [+2]
       64 LOADN                            R18 1
       65 JUMP                             ; [+1]
       66 LOADN                            R18 2
       67 SETTABLEKS                       R18 R17 K22 ["LayoutOrder"]
       69 GETIMPORT                        R18 K14 [UDim2.new]
       71 LOADN                            R19 0
       72 GETUPVAL                         R21 2
       73 GETTABLEKS                       R20 R21 K23 ["THUMB_ICON_WIDTH"]
       75 LOADN                            R21 0
       76 GETUPVAL                         R23 2
       77 GETTABLEKS                       R22 R23 K24 ["THUMB_ICON_HEIGHT"]
       79 CALL                             R18 4 1
       80 SETTABLEKS                       R18 R17 K25 ["Size"]
       82 LOADB                            R18 0
       83 SETTABLEKS                       R18 R17 K26 ["AutoButtonColor"]
       85 GETUPVAL                         R20 1
       86 GETTABLEKS                       R19 R20 K27 ["Event"]
       88 GETTABLEKS                       R18 R19 K28 ["MouseEnter"]
       90 GETTABLEKS                       R19 R0 K29 ["onMouseEntered"]
       92 SETTABLE                         R19 R17 R18
       93 GETUPVAL                         R20 1
       94 GETTABLEKS                       R19 R20 K27 ["Event"]
       96 GETTABLEKS                       R18 R19 K30 ["MouseLeave"]
       98 GETTABLEKS                       R19 R0 K31 ["onMouseLeft"]
      100 SETTABLE                         R19 R17 R18
      101 GETUPVAL                         R20 1
      102 GETTABLEKS                       R19 R20 K27 ["Event"]
      104 GETTABLEKS                       R18 R19 K32 ["MouseButton1Click"]
      106 SETTABLE                         R9 R17 R18
      107 DUPTABLE                         R18 K34 [{"Thumb"}]
      108 GETUPVAL                         R20 1
      109 GETTABLEKS                       R19 R20 K19 ["createElement"]
      111 LOADK                            R20 K35 ["ImageLabel"]
      112 DUPTABLE                         R21 K41 [{"AnchorPoint", "Position", "Size", "Rotation", "BackgroundTransparency", "Image", "ImageTransparency"}]
      113 GETIMPORT                        R22 K43 [Vector2.new]
      115 LOADK                            R23 K44 [0.5]
      116 LOADK                            R24 K44 [0.5]
      117 CALL                             R22 2 1
      118 SETTABLEKS                       R22 R21 K36 ["AnchorPoint"]
      120 GETIMPORT                        R22 K14 [UDim2.new]
      122 LOADK                            R23 K44 [0.5]
      123 LOADN                            R24 0
      124 LOADK                            R25 K44 [0.5]
      125 LOADN                            R26 0
      126 CALL                             R22 4 1
      127 SETTABLEKS                       R22 R21 K37 ["Position"]
      129 SETTABLEKS                       R14 R21 K25 ["Size"]
      131 SETTABLEKS                       R13 R21 K38 ["Rotation"]
      133 LOADN                            R22 1
      134 SETTABLEKS                       R22 R21 K21 ["BackgroundTransparency"]
      136 SETTABLEKS                       R11 R21 K39 ["Image"]
      138 JUMPIFNOT                        R8 ; [+2]
      139 LOADN                            R22 0
      140 JUMP                             ; [+1]
      141 LOADK                            R22 K45 [0.2]
      142 SETTABLEKS                       R22 R21 K40 ["ImageTransparency"]
      144 CALL                             R19 2 1
      145 SETTABLEKS                       R19 R18 K33 ["Thumb"]
      147 CALL                             R15 3 -1
      148 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R5 K1 [script]
        3 GETTABLEKS                       R4 R5 K2 ["Parent"]
        5 GETTABLEKS                       R3 R4 K2 ["Parent"]
        7 GETTABLEKS                       R2 R3 K2 ["Parent"]
        9 GETTABLEKS                       R1 R2 K2 ["Parent"]
       11 GETTABLEKS                       R0 R1 K2 ["Parent"]
       13 GETTABLEKS                       R1 R0 K3 ["Packages"]
       15 GETIMPORT                        R2 K5 [require]
       17 GETTABLEKS                       R3 R1 K6 ["Roact"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R6 R0 K7 ["Src"]
       24 GETTABLEKS                       R5 R6 K8 ["Util"]
       26 GETTABLEKS                       R4 R5 K9 ["Constants"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K5 [require]
       31 GETTABLEKS                       R7 R0 K7 ["Src"]
       33 GETTABLEKS                       R6 R7 K8 ["Util"]
       35 GETTABLEKS                       R5 R6 K10 ["Images"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R1 K11 ["Framework"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R5 R6 K12 ["ContextServices"]
       45 GETTABLEKS                       R6 R5 K13 ["withContext"]
       47 GETTABLEKS                       R7 R2 K14 ["PureComponent"]
       49 LOADK                            R9 K15 ["VoteButton"]
       50 NAMECALL                         R7 R7 K16 ["extend"]
       52 CALL                             R7 2 1
       53 DUPCLOSURE                       R8 K17 [PROTO_2]
       54 SETTABLEKS                       R8 R7 K18 ["init"]
       56 DUPCLOSURE                       R8 K19 [PROTO_3]
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R3
       60 SETTABLEKS                       R8 R7 K20 ["render"]
       62 MOVE                             R8 R6
       63 DUPTABLE                         R9 K22 [{"Stylizer"}]
       64 GETTABLEKS                       R10 R5 K21 ["Stylizer"]
       66 SETTABLEKS                       R10 R9 K21 ["Stylizer"]
       68 CALL                             R8 1 1
       69 MOVE                             R9 R7
       70 CALL                             R8 1 1
       71 MOVE                             R7 R8
       72 RETURN                           R7 1
