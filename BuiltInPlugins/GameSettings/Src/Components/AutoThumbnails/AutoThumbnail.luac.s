PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETTABLEN                        R3 R2 1
        3 LOADN                            R6 2
        4 LENGTH                           R4 R2
        5 LOADN                            R5 1
        6 FORNPREP                         R4
        7 GETTABLE                         R7 R2 R6
        8 GETTABLEKS                       R10 R1 K0 ["Magnitude"]
       10 GETTABLEKS                       R11 R3 K0 ["Magnitude"]
       12 SUB                              R9 R10 R11
       13 FASTCALL1                        MATH_ABS R9 ; [+2]
       14 GETIMPORT                        R8 K3 [math.abs]
       16 CALL                             R8 1 1
       17 GETTABLEKS                       R11 R1 K0 ["Magnitude"]
       19 GETTABLEKS                       R12 R7 K0 ["Magnitude"]
       21 SUB                              R10 R11 R12
       22 FASTCALL1                        MATH_ABS R10 ; [+2]
       23 GETIMPORT                        R9 K3 [math.abs]
       25 CALL                             R9 1 1
       26 JUMPIFNOTLT                      R9 R8 ; [+2]
       28 MOVE                             R3 R7
       29 FORNLOOP                         R4
       30 RETURN                           R3 1

PROTO_1:
        0 LOADK                            R4 K0 ["rbxthumb://type="]
        1 MOVE                             R5 R0
        2 LOADK                            R6 K1 ["&id="]
        3 MOVE                             R7 R1
        4 LOADK                            R8 K2 ["&w="]
        5 GETTABLEKS                       R9 R2 K3 ["X"]
        7 LOADK                            R10 K4 ["&h="]
        8 GETTABLEKS                       R11 R2 K5 ["Y"]
       10 CONCAT                           R3 R4 R11
       11 RETURN                           R3 1

PROTO_2:
        0 LOADK                            R3 K0 ["https://www.roblox.com/asset-thumbnail/image?width="]
        1 GETTABLEKS                       R4 R1 K1 ["X"]
        3 LOADK                            R5 K2 ["&height="]
        4 GETTABLEKS                       R6 R1 K3 ["Y"]
        6 LOADK                            R7 K4 ["&format=png&assetId="]
        7 MOVE                             R8 R0
        8 CONCAT                           R2 R3 R8
        9 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["ThumbnailType"]
        5 GETTABLEKS                       R2 R0 K2 ["Id"]
        7 GETTABLEKS                       R3 R0 K3 ["UseAssetThumbnailUrl"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K4 ["ref"]
       12 NAMECALL                         R5 R4 K5 ["getValue"]
       14 CALL                             R5 1 1
       15 JUMPIF                           R5 ; [+1]
       16 RETURN                           R0 0
       17 NAMECALL                         R5 R4 K5 ["getValue"]
       19 CALL                             R5 1 1
       20 GETTABLEKS                       R5 R5 K6 ["AbsoluteSize"]
       22 GETUPVAL                         R6 1
       23 MOVE                             R7 R1
       24 MOVE                             R8 R5
       25 CALL                             R6 2 1
       26 LOADNIL                          R7
       27 JUMPIFNOT                        R3 ; [+10]
       28 LOADK                            R8 K7 ["https://www.roblox.com/asset-thumbnail/image?width="]
       29 GETTABLEKS                       R9 R6 K8 ["X"]
       31 LOADK                            R10 K9 ["&height="]
       32 GETTABLEKS                       R11 R6 K10 ["Y"]
       34 LOADK                            R12 K11 ["&format=png&assetId="]
       35 MOVE                             R13 R2
       36 CONCAT                           R7 R8 R13
       37 JUMP                             ; [+11]
       38 LOADK                            R8 K12 ["rbxthumb://type="]
       39 MOVE                             R9 R1
       40 LOADK                            R10 K13 ["&id="]
       41 MOVE                             R11 R2
       42 LOADK                            R12 K14 ["&w="]
       43 GETTABLEKS                       R13 R6 K8 ["X"]
       45 LOADK                            R14 K15 ["&h="]
       46 GETTABLEKS                       R15 R6 K10 ["Y"]
       48 CONCAT                           R7 R8 R15
       49 GETUPVAL                         R8 0
       50 GETTABLEKS                       R8 R8 K16 ["currentId"]
       52 JUMPIFNOTEQ                      R2 R8 ; [+6]
       54 GETUPVAL                         R8 0
       55 GETTABLEKS                       R8 R8 K17 ["currentThumbnailType"]
       57 JUMPIFEQ                         R1 R8 ; [+19]
       59 GETUPVAL                         R8 0
       60 SETTABLEKS                       R2 R8 K16 ["currentId"]
       62 GETUPVAL                         R8 0
       63 SETTABLEKS                       R1 R8 K17 ["currentThumbnailType"]
       65 GETUPVAL                         R8 0
       66 DUPTABLE                         R10 K20 [{"fetchStatus", "contentId"}]
       67 GETUPVAL                         R11 2
       68 GETTABLEKS                       R11 R11 K21 ["None"]
       70 SETTABLEKS                       R11 R10 K18 ["fetchStatus"]
       72 SETTABLEKS                       R7 R10 K19 ["contentId"]
       74 NAMECALL                         R8 R8 K22 ["setState"]
       76 CALL                             R8 2 0
       77 GETUPVAL                         R8 0
       78 GETTABLEKS                       R8 R8 K23 ["currentContentId"]
       80 JUMPIFEQ                         R7 R8 ; [+9]
       82 GETUPVAL                         R8 0
       83 SETTABLEKS                       R7 R8 K23 ["currentContentId"]
       85 GETUPVAL                         R8 0
       86 GETTABLEKS                       R8 R8 K24 ["loadThumbnail"]
       88 MOVE                             R9 R7
       89 CALL                             R8 1 0
       90 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["ref"]
        3 NAMECALL                         R3 R3 K1 ["getValue"]
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKNIL                  R3 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K2 ["fetchingContentId"]
       13 JUMPIFNOTEQ                      R3 R0 ; [+15]
       15 JUMPIFNOT                        R2 ; [+13]
       16 GETUPVAL                         R3 0
       17 LOADNIL                          R4
       18 SETTABLEKS                       R4 R3 K2 ["fetchingContentId"]
       20 GETUPVAL                         R3 0
       21 DUPTABLE                         R5 K5 [{"fetchStatus", "contentId"}]
       22 SETTABLEKS                       R1 R5 K3 ["fetchStatus"]
       24 SETTABLEKS                       R0 R5 K4 ["contentId"]
       26 NAMECALL                         R3 R3 K6 ["setState"]
       28 CALL                             R3 2 0
       29 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U2
        8 NAMECALL                         R0 R0 K0 ["PreloadAsync"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["fetchingContentId"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 SETTABLEKS                       R0 R1 K0 ["fetchingContentId"]
        9 GETIMPORT                        R1 K3 [coroutine.wrap]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U0
       15 CALL                             R1 1 1
       16 CALL                             R1 0 0
       17 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K3 [{[1] = , ["contentId"] = }]
        1 SETTABLEKS                       R1 R0 K4 ["state"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K5 ["createRef"]
        6 CALL                             R1 0 1
        7 SETTABLEKS                       R1 R0 K6 ["ref"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K7 ["fetchingContentId"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K8 ["currentId"]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K9 ["currentThumbnailType"]
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K10 ["currentContentId"]
       21 NEWCLOSURE                       R1 P0
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          UPVAL U0
       25 SETTABLEKS                       R1 R0 K11 ["updateThumbnail"]
       27 NEWCLOSURE                       R1 P1
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U2
       30 SETTABLEKS                       R1 R0 K12 ["loadThumbnail"]
       32 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R1 K1 ["Id"]
        4 GETTABLEKS                       R5 R3 K1 ["Id"]
        6 GETTABLEKS                       R6 R1 K2 ["ThumbnailType"]
        8 GETTABLEKS                       R7 R3 K2 ["ThumbnailType"]
       10 JUMPIFNOTEQ                      R4 R5 ; [+3]
       12 JUMPIFEQ                         R6 R7 ; [+4]
       14 GETTABLEKS                       R8 R0 K3 ["updateThumbnail"]
       16 CALL                             R8 0 0
       17 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["updateThumbnail"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["RenderContents"]
        6 GETTABLEKS                       R4 R2 K3 ["contentId"]
        8 GETTABLEKS                       R5 R2 K4 ["fetchStatus"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["createElement"]
       13 LOADK                            R7 K6 ["Frame"]
       14 NEWTABLE                         R8 4 0
       16 LOADN                            R9 1
       17 SETTABLEKS                       R9 R8 K7 ["BackgroundTransparency"]
       19 GETIMPORT                        R9 K10 [UDim2.fromScale]
       21 LOADN                            R10 1
       22 LOADN                            R11 1
       23 CALL                             R9 2 1
       24 SETTABLEKS                       R9 R8 K11 ["Size"]
       26 GETUPVAL                         R9 0
       27 GETTABLEKS                       R9 R9 K12 ["Ref"]
       29 GETTABLEKS                       R10 R0 K13 ["ref"]
       31 SETTABLE                         R10 R8 R9
       32 GETUPVAL                         R9 0
       33 GETTABLEKS                       R9 R9 K14 ["Change"]
       35 GETTABLEKS                       R9 R9 K15 ["AbsoluteSize"]
       37 GETTABLEKS                       R10 R0 K16 ["updateThumbnail"]
       39 SETTABLE                         R10 R8 R9
       40 DUPTABLE                         R9 K18 [{"Thumbnail"}]
       41 MOVE                             R10 R3
       42 MOVE                             R11 R4
       43 MOVE                             R12 R5
       44 CALL                             R10 2 1
       45 SETTABLEKS                       R10 R9 K17 ["Thumbnail"]
       47 CALL                             R6 3 -1
       48 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K8 [game]
       20 LOADK                            R4 K9 ["ContentProvider"]
       21 NAMECALL                         R2 R2 K10 ["GetService"]
       23 CALL                             R2 2 1
       24 DUPTABLE                         R3 K20 [{"GroupIcon", "AvatarHeadShot", "Avatar", "GameIcon", "BadgeIcon", "GamePass", "Asset", "BundleThumbnail", "Outfit"}]
       25 NEWTABLE                         R4 0 2
       27 GETIMPORT                        R5 K23 [Vector2.new]
       29 LOADN                            R6 150
       30 LOADN                            R7 150
       31 CALL                             R5 2 1
       32 GETIMPORT                        R6 K23 [Vector2.new]
       34 LOADN                            R7 420
       35 LOADN                            R8 420
       36 CALL                             R6 2 -1
       37 SETLIST                          R4 R5 -1 [1]
       39 SETTABLEKS                       R4 R3 K11 ["GroupIcon"]
       41 NEWTABLE                         R4 0 3
       43 GETIMPORT                        R5 K23 [Vector2.new]
       45 LOADN                            R6 48
       46 LOADN                            R7 48
       47 CALL                             R5 2 1
       48 GETIMPORT                        R6 K23 [Vector2.new]
       50 LOADN                            R7 60
       51 LOADN                            R8 60
       52 CALL                             R6 2 1
       53 GETIMPORT                        R7 K23 [Vector2.new]
       55 LOADN                            R8 150
       56 LOADN                            R9 150
       57 CALL                             R7 2 -1
       58 SETLIST                          R4 R5 -1 [1]
       60 SETTABLEKS                       R4 R3 K12 ["AvatarHeadShot"]
       62 NEWTABLE                         R4 0 3
       64 GETIMPORT                        R5 K23 [Vector2.new]
       66 LOADN                            R6 100
       67 LOADN                            R7 100
       68 CALL                             R5 2 1
       69 GETIMPORT                        R6 K23 [Vector2.new]
       71 LOADN                            R7 352
       72 LOADN                            R8 352
       73 CALL                             R6 2 1
       74 GETIMPORT                        R7 K23 [Vector2.new]
       76 LOADN                            R8 720
       77 LOADN                            R9 720
       78 CALL                             R7 2 -1
       79 SETLIST                          R4 R5 -1 [1]
       81 SETTABLEKS                       R4 R3 K13 ["Avatar"]
       83 NEWTABLE                         R4 0 5
       85 GETIMPORT                        R5 K23 [Vector2.new]
       87 LOADN                            R6 50
       88 LOADN                            R7 50
       89 CALL                             R5 2 1
       90 GETIMPORT                        R6 K23 [Vector2.new]
       92 LOADN                            R7 128
       93 LOADN                            R8 128
       94 CALL                             R6 2 1
       95 GETIMPORT                        R7 K23 [Vector2.new]
       97 LOADN                            R8 150
       98 LOADN                            R9 150
       99 CALL                             R7 2 1
      100 GETIMPORT                        R8 K23 [Vector2.new]
      102 LOADN                            R9 256
      103 LOADN                            R10 256
      104 CALL                             R8 2 1
      105 GETIMPORT                        R9 K23 [Vector2.new]
      107 LOADN                            R10 512
      108 LOADN                            R11 512
      109 CALL                             R9 2 -1
      110 SETLIST                          R4 R5 -1 [1]
      112 SETTABLEKS                       R4 R3 K14 ["GameIcon"]
      114 NEWTABLE                         R4 0 1
      116 GETIMPORT                        R5 K23 [Vector2.new]
      118 LOADN                            R6 150
      119 LOADN                            R7 150
      120 CALL                             R5 2 -1
      121 SETLIST                          R4 R5 -1 [1]
      123 SETTABLEKS                       R4 R3 K15 ["BadgeIcon"]
      125 NEWTABLE                         R4 0 1
      127 GETIMPORT                        R5 K23 [Vector2.new]
      129 LOADN                            R6 150
      130 LOADN                            R7 150
      131 CALL                             R5 2 -1
      132 SETLIST                          R4 R5 -1 [1]
      134 SETTABLEKS                       R4 R3 K16 ["GamePass"]
      136 NEWTABLE                         R4 0 2
      138 GETIMPORT                        R5 K23 [Vector2.new]
      140 LOADN                            R6 150
      141 LOADN                            R7 150
      142 CALL                             R5 2 1
      143 GETIMPORT                        R6 K23 [Vector2.new]
      145 LOADN                            R7 420
      146 LOADN                            R8 420
      147 CALL                             R6 2 -1
      148 SETLIST                          R4 R5 -1 [1]
      150 SETTABLEKS                       R4 R3 K17 ["Asset"]
      152 NEWTABLE                         R4 0 2
      154 GETIMPORT                        R5 K23 [Vector2.new]
      156 LOADN                            R6 150
      157 LOADN                            R7 150
      158 CALL                             R5 2 1
      159 GETIMPORT                        R6 K23 [Vector2.new]
      161 LOADN                            R7 420
      162 LOADN                            R8 420
      163 CALL                             R6 2 -1
      164 SETLIST                          R4 R5 -1 [1]
      166 SETTABLEKS                       R4 R3 K18 ["BundleThumbnail"]
      168 NEWTABLE                         R4 0 2
      170 GETIMPORT                        R5 K23 [Vector2.new]
      172 LOADN                            R6 150
      173 LOADN                            R7 150
      174 CALL                             R5 2 1
      175 GETIMPORT                        R6 K23 [Vector2.new]
      177 LOADN                            R7 420
      178 LOADN                            R8 420
      179 CALL                             R6 2 -1
      180 SETLIST                          R4 R5 -1 [1]
      182 SETTABLEKS                       R4 R3 K19 ["Outfit"]
      184 DUPCLOSURE                       R4 K24 [PROTO_0]
      185 CAPTURE                          VAL R3
      186 DUPCLOSURE                       R5 K25 [PROTO_1]
      187 DUPCLOSURE                       R6 K26 [PROTO_2]
      188 GETTABLEKS                       R7 R1 K27 ["Component"]
      190 GETIMPORT                        R9 K1 [script]
      192 GETTABLEKS                       R9 R9 K28 ["Name"]
      194 NAMECALL                         R7 R7 K29 ["extend"]
      196 CALL                             R7 2 1
      197 DUPCLOSURE                       R8 K30 [PROTO_7]
      198 CAPTURE                          VAL R1
      199 CAPTURE                          VAL R4
      200 CAPTURE                          VAL R2
      201 SETTABLEKS                       R8 R7 K31 ["init"]
      203 DUPCLOSURE                       R8 K32 [PROTO_8]
      204 SETTABLEKS                       R8 R7 K33 ["didUpdate"]
      206 DUPCLOSURE                       R8 K34 [PROTO_9]
      207 SETTABLEKS                       R8 R7 K35 ["didMount"]
      209 DUPCLOSURE                       R8 K36 [PROTO_10]
      210 CAPTURE                          VAL R1
      211 SETTABLEKS                       R8 R7 K37 ["render"]
      213 RETURN                           R7 1
