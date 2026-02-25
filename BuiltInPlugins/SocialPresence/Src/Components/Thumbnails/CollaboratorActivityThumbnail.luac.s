PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R3 K1 ["Stylizer"]
        4 GETIMPORT                        R5 K5 [Enum.AssetFetchStatus.Success]
        6 JUMPIFNOTEQ                      R2 R5 ; [+2]
        8 RETURN                           R1 1
        9 GETIMPORT                        R5 K7 [Enum.AssetFetchStatus.Failure]
       11 JUMPIFNOTEQ                      R2 R5 ; [+6]
       13 GETTABLEKS                       R6 R4 K8 ["userThumbnail"]
       15 GETTABLEKS                       R5 R6 K9 ["loadFailureImage"]
       17 RETURN                           R5 1
       18 GETTABLEKS                       R6 R4 K8 ["userThumbnail"]
       20 GETTABLEKS                       R5 R6 K10 ["loadingImage"]
       22 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["getThumbnail"]
        5 CALL                             R2 3 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K1 ["Stylizer"]
        9 GETTABLEKS                       R7 R3 K4 ["userThumbnail"]
       11 GETTABLEKS                       R6 R7 K5 ["avatarSizeRatio"]
       13 SUBRK                            R5 R3 K6 ["IsIdle"]
       14 DIVK                             R4 R5 K2 [2]
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R6 R7 K6 ["IsIdle"]
       18 JUMPIFNOT                        R6 ; [+5]
       19 GETTABLEKS                       R6 R3 K4 ["userThumbnail"]
       21 GETTABLEKS                       R5 R6 K7 ["avatarIdleBackground"]
       23 JUMPIF                           R5 ; [+4]
       24 GETTABLEKS                       R6 R3 K4 ["userThumbnail"]
       26 GETTABLEKS                       R5 R6 K8 ["avatarBackground"]
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R6 R7 K9 ["createElement"]
       31 GETUPVAL                         R7 3
       32 DUPTABLE                         R8 K12 [{"BackgroundColor3", "BackgroundTransparency"}]
       33 GETUPVAL                         R10 1
       34 GETTABLEKS                       R9 R10 K10 ["BackgroundColor3"]
       36 SETTABLEKS                       R9 R8 K10 ["BackgroundColor3"]
       38 GETUPVAL                         R10 1
       39 GETTABLEKS                       R9 R10 K11 ["BackgroundTransparency"]
       41 SETTABLEKS                       R9 R8 K11 ["BackgroundTransparency"]
       43 DUPTABLE                         R9 K16 [{"ActivityRing", "Avatar", "Corner"}]
       44 GETUPVAL                         R11 2
       45 GETTABLEKS                       R10 R11 K9 ["createElement"]
       47 GETUPVAL                         R11 4
       48 DUPTABLE                         R12 K21 [{"Image", "ImageColor3", "Style", "Size"}]
       49 GETUPVAL                         R15 1
       50 GETTABLEKS                       R14 R15 K1 ["Stylizer"]
       52 GETTABLEKS                       R13 R14 K22 ["activityRing"]
       54 SETTABLEKS                       R13 R12 K17 ["Image"]
       56 GETUPVAL                         R15 1
       57 GETTABLEKS                       R14 R15 K6 ["IsIdle"]
       59 JUMPIFNOT                        R14 ; [+5]
       60 GETTABLEKS                       R14 R3 K4 ["userThumbnail"]
       62 GETTABLEKS                       R13 R14 K23 ["idleTint"]
       64 JUMPIF                           R13 ; [+3]
       65 GETUPVAL                         R14 1
       66 GETTABLEKS                       R13 R14 K24 ["RingColor"]
       68 SETTABLEKS                       R13 R12 K18 ["ImageColor3"]
       70 DUPTABLE                         R13 K26 [{"Transparency"}]
       71 GETUPVAL                         R16 1
       72 GETTABLEKS                       R15 R16 K6 ["IsIdle"]
       74 JUMPIFNOT                        R15 ; [+2]
       75 LOADK                            R14 K27 [0.2]
       76 JUMP                             ; [+1]
       77 LOADN                            R14 0
       78 SETTABLEKS                       R14 R13 K25 ["Transparency"]
       80 SETTABLEKS                       R13 R12 K19 ["Style"]
       82 GETIMPORT                        R13 K30 [UDim2.fromScale]
       84 LOADN                            R14 1
       85 LOADN                            R15 1
       86 CALL                             R13 2 1
       87 SETTABLEKS                       R13 R12 K20 ["Size"]
       89 CALL                             R10 2 1
       90 SETTABLEKS                       R10 R9 K13 ["ActivityRing"]
       92 GETUPVAL                         R11 2
       93 GETTABLEKS                       R10 R11 K9 ["createElement"]
       95 LOADK                            R11 K31 ["ImageLabel"]
       96 DUPTABLE                         R12 K34 [{"Image", "Size", "Position", "BackgroundColor3", "BackgroundTransparency", "ImageColor3", "ImageTransparency"}]
       97 SETTABLEKS                       R2 R12 K17 ["Image"]
       99 GETIMPORT                        R13 K30 [UDim2.fromScale]
      101 GETTABLEKS                       R15 R3 K4 ["userThumbnail"]
      103 GETTABLEKS                       R14 R15 K5 ["avatarSizeRatio"]
      105 GETTABLEKS                       R16 R3 K4 ["userThumbnail"]
      107 GETTABLEKS                       R15 R16 K5 ["avatarSizeRatio"]
      109 CALL                             R13 2 1
      110 SETTABLEKS                       R13 R12 K20 ["Size"]
      112 GETIMPORT                        R13 K30 [UDim2.fromScale]
      114 MOVE                             R14 R4
      115 MOVE                             R15 R4
      116 CALL                             R13 2 1
      117 SETTABLEKS                       R13 R12 K32 ["Position"]
      119 SETTABLEKS                       R5 R12 K10 ["BackgroundColor3"]
      121 LOADN                            R13 0
      122 SETTABLEKS                       R13 R12 K11 ["BackgroundTransparency"]
      124 GETUPVAL                         R15 1
      125 GETTABLEKS                       R14 R15 K6 ["IsIdle"]
      127 JUMPIFNOT                        R14 ; [+5]
      128 GETTABLEKS                       R14 R3 K4 ["userThumbnail"]
      130 GETTABLEKS                       R13 R14 K23 ["idleTint"]
      132 JUMPIF                           R13 ; [+1]
      133 LOADNIL                          R13
      134 SETTABLEKS                       R13 R12 K18 ["ImageColor3"]
      136 GETUPVAL                         R15 1
      137 GETTABLEKS                       R14 R15 K6 ["IsIdle"]
      139 JUMPIFNOT                        R14 ; [+2]
      140 LOADK                            R13 K27 [0.2]
      141 JUMP                             ; [+1]
      142 LOADN                            R13 0
      143 SETTABLEKS                       R13 R12 K33 ["ImageTransparency"]
      145 DUPTABLE                         R13 K35 [{"Corner"}]
      146 GETUPVAL                         R15 2
      147 GETTABLEKS                       R14 R15 K9 ["createElement"]
      149 LOADK                            R15 K36 ["UICorner"]
      150 DUPTABLE                         R16 K38 [{"CornerRadius"}]
      151 GETIMPORT                        R17 K41 [UDim.new]
      153 LOADK                            R18 K42 [0.5]
      154 LOADN                            R19 0
      155 CALL                             R17 2 1
      156 SETTABLEKS                       R17 R16 K37 ["CornerRadius"]
      158 CALL                             R14 2 1
      159 SETTABLEKS                       R14 R13 K15 ["Corner"]
      161 CALL                             R10 3 1
      162 SETTABLEKS                       R10 R9 K14 ["Avatar"]
      164 GETUPVAL                         R11 2
      165 GETTABLEKS                       R10 R11 K9 ["createElement"]
      167 LOADK                            R11 K36 ["UICorner"]
      168 DUPTABLE                         R12 K38 [{"CornerRadius"}]
      169 GETIMPORT                        R13 K41 [UDim.new]
      171 LOADK                            R14 K42 [0.5]
      172 LOADN                            R15 0
      173 CALL                             R13 2 1
      174 SETTABLEKS                       R13 R12 K37 ["CornerRadius"]
      176 CALL                             R10 2 1
      177 SETTABLEKS                       R10 R9 K15 ["Corner"]
      179 CALL                             R6 3 -1
      180 RETURN                           R6 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Id"]
        4 GETTABLEKS                       R3 R1 K2 ["Size"]
        6 GETTABLEKS                       R4 R1 K3 ["Position"]
        8 GETTABLEKS                       R5 R1 K4 ["AnchorPoint"]
       10 GETTABLEKS                       R6 R1 K5 ["LayoutOrder"]
       12 GETTABLEKS                       R7 R1 K6 ["ZIndex"]
       14 GETUPVAL                         R9 0
       15 GETTABLEKS                       R8 R9 K7 ["createElement"]
       17 LOADK                            R9 K8 ["Frame"]
       18 DUPTABLE                         R10 K10 [{"BackgroundTransparency", "Size", "Position", "AnchorPoint", "LayoutOrder", "ZIndex"}]
       19 LOADN                            R11 1
       20 SETTABLEKS                       R11 R10 K9 ["BackgroundTransparency"]
       22 SETTABLEKS                       R3 R10 K2 ["Size"]
       24 SETTABLEKS                       R4 R10 K3 ["Position"]
       26 SETTABLEKS                       R5 R10 K4 ["AnchorPoint"]
       28 SETTABLEKS                       R6 R10 K5 ["LayoutOrder"]
       30 SETTABLEKS                       R7 R10 K6 ["ZIndex"]
       32 DUPTABLE                         R11 K12 [{"AutoThumbnail"}]
       33 GETUPVAL                         R13 0
       34 GETTABLEKS                       R12 R13 K7 ["createElement"]
       36 GETUPVAL                         R13 1
       37 DUPTABLE                         R14 K14 [{"Id", "RenderContents"}]
       38 SETTABLEKS                       R2 R14 K1 ["Id"]
       40 NEWCLOSURE                       R15 P0
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R1
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          UPVAL U3
       46 SETTABLEKS                       R15 R14 K13 ["RenderContents"]
       48 CALL                             R12 2 1
       49 SETTABLEKS                       R12 R11 K11 ["AutoThumbnail"]
       51 CALL                             R8 3 -1
       52 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SocialPresence"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R2 K9 ["Style"]
       23 GETTABLEKS                       R3 R4 K10 ["Stylizer"]
       25 GETTABLEKS                       R4 R2 K11 ["ContextServices"]
       27 GETTABLEKS                       R5 R4 K12 ["withContext"]
       29 GETTABLEKS                       R7 R2 K13 ["UI"]
       31 GETTABLEKS                       R6 R7 K14 ["Image"]
       33 GETTABLEKS                       R8 R2 K13 ["UI"]
       35 GETTABLEKS                       R7 R8 K15 ["Pane"]
       37 GETIMPORT                        R10 K1 [script]
       39 GETTABLEKS                       R9 R10 K16 ["Parent"]
       41 GETTABLEKS                       R8 R9 K16 ["Parent"]
       43 GETIMPORT                        R9 K5 [require]
       45 GETTABLEKS                       R11 R8 K17 ["Thumbnails"]
       47 GETTABLEKS                       R10 R11 K18 ["AutoThumbnail"]
       49 CALL                             R9 1 1
       50 GETTABLEKS                       R10 R1 K19 ["Component"]
       52 GETIMPORT                        R13 K1 [script]
       54 GETTABLEKS                       R12 R13 K20 ["Name"]
       56 NAMECALL                         R10 R10 K21 ["extend"]
       58 CALL                             R10 2 1
       59 DUPCLOSURE                       R11 K22 [PROTO_0]
       60 SETTABLEKS                       R11 R10 K23 ["getThumbnail"]
       62 DUPCLOSURE                       R11 K24 [PROTO_2]
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R6
       67 SETTABLEKS                       R11 R10 K25 ["render"]
       69 MOVE                             R11 R5
       70 DUPTABLE                         R12 K26 [{"Stylizer"}]
       71 SETTABLEKS                       R3 R12 K10 ["Stylizer"]
       73 CALL                             R11 1 1
       74 MOVE                             R12 R10
       75 CALL                             R11 1 1
       76 MOVE                             R10 R11
       77 RETURN                           R10 1
