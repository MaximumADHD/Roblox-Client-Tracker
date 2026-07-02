PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R3 K1 ["Stylizer"]
        4 GETIMPORT                        R5 K5 [Enum.AssetFetchStatus.Success]
        6 JUMPIFNOTEQ                      R2 R5 ; [+2]
        8 RETURN                           R1 1
        9 GETIMPORT                        R5 K7 [Enum.AssetFetchStatus.Failure]
       11 JUMPIFNOTEQ                      R2 R5 ; [+6]
       13 GETTABLEKS                       R5 R4 K8 ["userThumbnail"]
       15 GETTABLEKS                       R5 R5 K9 ["loadFailureImage"]
       17 RETURN                           R5 1
       18 GETTABLEKS                       R5 R4 K8 ["userThumbnail"]
       20 GETTABLEKS                       R5 R5 K10 ["loadingImage"]
       22 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["getThumbnail"]
        5 CALL                             R2 3 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["Stylizer"]
        9 GETTABLEKS                       R6 R3 K4 ["userThumbnail"]
       11 GETTABLEKS                       R6 R6 K5 ["avatarSizeRatio"]
       13 SUBRK                            R5 K3 [1] R6
       14 DIVK                             R4 R5 K2 [2]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K6 ["IsIdle"]
       18 JUMPIFNOT                        R6 ; [+5]
       19 GETTABLEKS                       R5 R3 K4 ["userThumbnail"]
       21 GETTABLEKS                       R5 R5 K7 ["avatarIdleBackground"]
       23 JUMPIF                           R5 ; [+4]
       24 GETTABLEKS                       R5 R3 K4 ["userThumbnail"]
       26 GETTABLEKS                       R5 R5 K8 ["avatarBackground"]
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R6 R6 K9 ["createElement"]
       31 GETUPVAL                         R7 3
       32 DUPTABLE                         R8 K12 [{"BackgroundColor3", "BackgroundTransparency"}]
       33 GETUPVAL                         R9 1
       34 GETTABLEKS                       R9 R9 K10 ["BackgroundColor3"]
       36 SETTABLEKS                       R9 R8 K10 ["BackgroundColor3"]
       38 GETUPVAL                         R9 1
       39 GETTABLEKS                       R9 R9 K11 ["BackgroundTransparency"]
       41 SETTABLEKS                       R9 R8 K11 ["BackgroundTransparency"]
       43 DUPTABLE                         R9 K16 [{"ActivityRing", "Avatar", "Corner"}]
       44 GETUPVAL                         R10 2
       45 GETTABLEKS                       R10 R10 K9 ["createElement"]
       47 GETUPVAL                         R11 4
       48 DUPTABLE                         R12 K21 [{"Image", "ImageColor3", "Style", "Size"}]
       49 GETUPVAL                         R13 1
       50 GETTABLEKS                       R13 R13 K1 ["Stylizer"]
       52 GETTABLEKS                       R13 R13 K22 ["activityRing"]
       54 SETTABLEKS                       R13 R12 K17 ["Image"]
       56 GETUPVAL                         R14 1
       57 GETTABLEKS                       R14 R14 K6 ["IsIdle"]
       59 JUMPIFNOT                        R14 ; [+5]
       60 GETTABLEKS                       R13 R3 K4 ["userThumbnail"]
       62 GETTABLEKS                       R13 R13 K23 ["idleTint"]
       64 JUMPIF                           R13 ; [+3]
       65 GETUPVAL                         R13 1
       66 GETTABLEKS                       R13 R13 K24 ["RingColor"]
       68 SETTABLEKS                       R13 R12 K18 ["ImageColor3"]
       70 DUPTABLE                         R13 K26 [{"Transparency"}]
       71 GETUPVAL                         R15 1
       72 GETTABLEKS                       R15 R15 K6 ["IsIdle"]
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
       92 GETUPVAL                         R10 2
       93 GETTABLEKS                       R10 R10 K9 ["createElement"]
       95 LOADK                            R11 K31 ["ImageLabel"]
       96 DUPTABLE                         R12 K35 [{["Image"], ["Size"], ["Position"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["ImageColor3"], ["ImageTransparency"]}]
       97 SETTABLEKS                       R2 R12 K17 ["Image"]
       99 GETIMPORT                        R13 K30 [UDim2.fromScale]
      101 GETTABLEKS                       R14 R3 K4 ["userThumbnail"]
      103 GETTABLEKS                       R14 R14 K5 ["avatarSizeRatio"]
      105 GETTABLEKS                       R15 R3 K4 ["userThumbnail"]
      107 GETTABLEKS                       R15 R15 K5 ["avatarSizeRatio"]
      109 CALL                             R13 2 1
      110 SETTABLEKS                       R13 R12 K20 ["Size"]
      112 GETIMPORT                        R13 K30 [UDim2.fromScale]
      114 MOVE                             R14 R4
      115 MOVE                             R15 R4
      116 CALL                             R13 2 1
      117 SETTABLEKS                       R13 R12 K32 ["Position"]
      119 SETTABLEKS                       R5 R12 K10 ["BackgroundColor3"]
      121 GETUPVAL                         R14 1
      122 GETTABLEKS                       R14 R14 K6 ["IsIdle"]
      124 JUMPIFNOT                        R14 ; [+5]
      125 GETTABLEKS                       R13 R3 K4 ["userThumbnail"]
      127 GETTABLEKS                       R13 R13 K23 ["idleTint"]
      129 JUMPIF                           R13 ; [+1]
      130 LOADNIL                          R13
      131 SETTABLEKS                       R13 R12 K18 ["ImageColor3"]
      133 GETUPVAL                         R14 1
      134 GETTABLEKS                       R14 R14 K6 ["IsIdle"]
      136 JUMPIFNOT                        R14 ; [+2]
      137 LOADK                            R13 K27 [0.2]
      138 JUMP                             ; [+1]
      139 LOADN                            R13 0
      140 SETTABLEKS                       R13 R12 K34 ["ImageTransparency"]
      142 DUPTABLE                         R13 K36 [{"Corner"}]
      143 GETUPVAL                         R14 2
      144 GETTABLEKS                       R14 R14 K9 ["createElement"]
      146 LOADK                            R15 K37 ["UICorner"]
      147 DUPTABLE                         R16 K39 [{"CornerRadius"}]
      148 GETIMPORT                        R17 K42 [UDim.new]
      150 LOADK                            R18 K43 [0.5]
      151 LOADN                            R19 0
      152 CALL                             R17 2 1
      153 SETTABLEKS                       R17 R16 K38 ["CornerRadius"]
      155 CALL                             R14 2 1
      156 SETTABLEKS                       R14 R13 K15 ["Corner"]
      158 CALL                             R10 3 1
      159 SETTABLEKS                       R10 R9 K14 ["Avatar"]
      161 GETUPVAL                         R10 2
      162 GETTABLEKS                       R10 R10 K9 ["createElement"]
      164 LOADK                            R11 K37 ["UICorner"]
      165 DUPTABLE                         R12 K39 [{"CornerRadius"}]
      166 GETIMPORT                        R13 K42 [UDim.new]
      168 LOADK                            R14 K43 [0.5]
      169 LOADN                            R15 0
      170 CALL                             R13 2 1
      171 SETTABLEKS                       R13 R12 K38 ["CornerRadius"]
      173 CALL                             R10 2 1
      174 SETTABLEKS                       R10 R9 K15 ["Corner"]
      176 CALL                             R6 3 -1
      177 RETURN                           R6 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Id"]
        4 GETTABLEKS                       R3 R1 K2 ["Size"]
        6 GETTABLEKS                       R4 R1 K3 ["Position"]
        8 GETTABLEKS                       R5 R1 K4 ["AnchorPoint"]
       10 GETTABLEKS                       R6 R1 K5 ["LayoutOrder"]
       12 GETTABLEKS                       R7 R1 K6 ["ZIndex"]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K7 ["createElement"]
       17 LOADK                            R9 K8 ["Frame"]
       18 DUPTABLE                         R10 K11 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["AnchorPoint"], ["LayoutOrder"], ["ZIndex"]}]
       19 SETTABLEKS                       R3 R10 K2 ["Size"]
       21 SETTABLEKS                       R4 R10 K3 ["Position"]
       23 SETTABLEKS                       R5 R10 K4 ["AnchorPoint"]
       25 SETTABLEKS                       R6 R10 K5 ["LayoutOrder"]
       27 SETTABLEKS                       R7 R10 K6 ["ZIndex"]
       29 DUPTABLE                         R11 K13 [{"AutoThumbnail"}]
       30 GETUPVAL                         R12 0
       31 GETTABLEKS                       R12 R12 K7 ["createElement"]
       33 GETUPVAL                         R13 1
       34 DUPTABLE                         R14 K15 [{"Id", "RenderContents"}]
       35 SETTABLEKS                       R2 R14 K1 ["Id"]
       37 NEWCLOSURE                       R15 P0
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R1
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          UPVAL U3
       43 SETTABLEKS                       R15 R14 K14 ["RenderContents"]
       45 CALL                             R12 2 1
       46 SETTABLEKS                       R12 R11 K12 ["AutoThumbnail"]
       48 CALL                             R8 3 -1
       49 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SocialPresence"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Style"]
       23 GETTABLEKS                       R3 R3 K10 ["Stylizer"]
       25 GETTABLEKS                       R4 R2 K11 ["ContextServices"]
       27 GETTABLEKS                       R5 R4 K12 ["withContext"]
       29 GETTABLEKS                       R6 R2 K13 ["UI"]
       31 GETTABLEKS                       R6 R6 K14 ["Image"]
       33 GETTABLEKS                       R7 R2 K13 ["UI"]
       35 GETTABLEKS                       R7 R7 K15 ["Pane"]
       37 GETIMPORT                        R8 K1 [script]
       39 GETTABLEKS                       R8 R8 K16 ["Parent"]
       41 GETTABLEKS                       R8 R8 K16 ["Parent"]
       43 GETIMPORT                        R9 K5 [require]
       45 GETTABLEKS                       R10 R8 K17 ["Thumbnails"]
       47 GETTABLEKS                       R10 R10 K18 ["AutoThumbnail"]
       49 CALL                             R9 1 1
       50 GETTABLEKS                       R10 R1 K19 ["Component"]
       52 GETIMPORT                        R12 K1 [script]
       54 GETTABLEKS                       R12 R12 K20 ["Name"]
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
