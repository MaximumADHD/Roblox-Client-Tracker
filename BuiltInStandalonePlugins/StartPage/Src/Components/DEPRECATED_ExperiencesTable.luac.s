PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["ReachStatus"]
        3 CALL                             R2 1 1
        4 JUMPIFNOT                        R2 ; [+3]
        5 GETTABLEKS                       R3 R2 K1 ["label"]
        7 RETURN                           R3 1
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 GETTABLEKS                       R5 R0 K2 ["Audiences"]
       12 JUMPIFEQKNIL                     R5 ; [+18]
       14 GETTABLEKS                       R5 R0 K2 ["Audiences"]
       16 GETUPVAL                         R6 1
       17 MOVE                             R7 R5
       18 CALL                             R6 1 1
       19 NOT                              R3 R6
       20 MOVE                             R6 R3
       21 JUMPIFNOT                        R6 ; [+7]
       22 GETUPVAL                         R7 2
       23 MOVE                             R8 R5
       24 GETUPVAL                         R9 3
       25 GETTABLEKS                       R9 R9 K3 ["Public"]
       27 CALL                             R7 2 1
       28 NOT                              R6 R7
       29 MOVE                             R4 R6
       30 JUMP                             ; [+8]
       31 GETTABLEKS                       R5 R0 K4 ["PrivacyType"]
       33 JUMPIFEQKS                       R5 K3 ["Public"] ; [+2]
       35 LOADB                            R3 0 +1
       36 LOADB                            R3 1
       37 GETTABLEKS                       R4 R0 K5 ["IsFriendsOnly"]
       39 JUMPIF                           R3 ; [+6]
       40 LOADK                            R7 K6 ["Plugin"]
       41 LOADK                            R8 K7 ["PrivacyType.Private"]
       42 NAMECALL                         R5 R1 K8 ["getText"]
       44 CALL                             R5 3 -1
       45 RETURN                           R5 -1
       46 GETTABLEKS                       R6 R0 K9 ["ContentMaturity"]
       48 JUMPIFEQKS                       R6 K10 ["unrated"] ; [+2]
       50 LOADB                            R5 0 +1
       51 LOADB                            R5 1
       52 GETTABLEKS                       R6 R0 K11 ["IsSequestered"]
       54 JUMPIFNOT                        R3 ; [+8]
       55 JUMPIF                           R5 ; [+1]
       56 JUMPIFNOT                        R6 ; [+6]
       57 LOADK                            R9 K6 ["Plugin"]
       58 LOADK                            R10 K12 ["PrivacyType.Unplayable"]
       59 NAMECALL                         R7 R1 K8 ["getText"]
       61 CALL                             R7 3 -1
       62 RETURN                           R7 -1
       63 JUMPIFNOT                        R3 ; [+9]
       64 GETTABLEKS                       R7 R0 K13 ["IsDiscoveryBlocked"]
       66 JUMPIFNOT                        R7 ; [+6]
       67 LOADK                            R9 K6 ["Plugin"]
       68 LOADK                            R10 K14 ["PrivacyType.NeedsAttention"]
       69 NAMECALL                         R7 R1 K8 ["getText"]
       71 CALL                             R7 3 -1
       72 RETURN                           R7 -1
       73 GETTABLEKS                       R7 R0 K15 ["AgeRecommendation"]
       75 MOVE                             R8 R3
       76 JUMPIFNOT                        R8 ; [+8]
       77 NOT                              R8 R5
       78 JUMPIFNOT                        R8 ; [+6]
       79 GETTABLEKS                       R9 R0 K16 ["CoreContentSelectStatus"]
       81 JUMPIFEQKS                       R9 K17 ["Eligible"] ; [+2]
       83 LOADB                            R8 0 +1
       84 LOADB                            R8 1
       85 MOVE                             R9 R8
       86 JUMPIFNOT                        R9 ; [+13]
       87 LOADB                            R9 0
       88 GETTABLEKS                       R10 R0 K18 ["CoreContentReasons"]
       90 JUMPIFEQKNIL                     R10 ; [+9]
       92 GETTABLEKS                       R11 R0 K18 ["CoreContentReasons"]
       94 LENGTH                           R10 R11
       95 LOADN                            R11 0
       96 JUMPIFLT                         R11 R10 ; [+2]
       98 LOADB                            R9 0 +1
       99 LOADB                            R9 1
      100 JUMPIFNOT                        R3 ; [+13]
      101 JUMPIFEQKNIL                     R7 ; [+4]
      103 GETUPVAL                         R10 4
      104 JUMPIFNOTLT                      R7 R10 ; [+9]
      106 JUMPIFNOT                        R8 ; [+7]
      107 JUMPIFNOT                        R9 ; [+6]
      108 LOADK                            R12 K6 ["Plugin"]
      109 LOADK                            R13 K14 ["PrivacyType.NeedsAttention"]
      110 NAMECALL                         R10 R1 K8 ["getText"]
      112 CALL                             R10 3 -1
      113 RETURN                           R10 -1
      114 JUMPIFNOT                        R3 ; [+7]
      115 JUMPIFNOT                        R4 ; [+6]
      116 LOADK                            R12 K6 ["Plugin"]
      117 LOADK                            R13 K19 ["PrivacyType.Limited"]
      118 NAMECALL                         R10 R1 K8 ["getText"]
      120 CALL                             R10 3 -1
      121 RETURN                           R10 -1
      122 LOADNIL                          R10
      123 JUMPIFNOT                        R8 ; [+6]
      124 JUMPIFEQKNIL                     R7 ; [+3]
      126 MOVE                             R10 R7
      127 JUMP                             ; [+14]
      128 LOADN                            R10 0
      129 JUMP                             ; [+12]
      130 GETUPVAL                         R12 4
      131 JUMPIFEQKNIL                     R7 ; [+3]
      133 MOVE                             R13 R7
      134 JUMP                             ; [+1]
      135 LOADN                            R13 0
      136 FASTCALL2                        MATH_MAX R12 R13 ; [+3]
      138 GETIMPORT                        R11 K22 [math.max]
      140 CALL                             R11 2 1
      141 MOVE                             R10 R11
      142 LOADNIL                          R11
      143 GETUPVAL                         R12 4
      144 JUMPIFNOTLE                      R12 R10 ; [+8]
      146 GETUPVAL                         R13 4
      147 FASTCALL1                        TOSTRING R13 ; [+2]
      148 GETIMPORT                        R12 K24 [tostring]
      150 CALL                             R12 1 1
      151 MOVE                             R11 R12
      152 JUMP                             ; [+9]
      153 GETUPVAL                         R12 5
      154 JUMPIFNOTLE                      R12 R10 ; [+7]
      156 GETUPVAL                         R13 5
      157 FASTCALL1                        TOSTRING R13 ; [+2]
      158 GETIMPORT                        R12 K24 [tostring]
      160 CALL                             R12 1 1
      161 MOVE                             R11 R12
      162 JUMPIFEQKNIL                     R11 ; [+10]
      164 LOADK                            R14 K6 ["Plugin"]
      165 LOADK                            R15 K25 ["PrivacyType.PublicAgeGated"]
      166 DUPTABLE                         R16 K27 [{"minAge"}]
      167 SETTABLEKS                       R11 R16 K26 ["minAge"]
      169 NAMECALL                         R12 R1 K8 ["getText"]
      171 CALL                             R12 4 -1
      172 RETURN                           R12 -1
      173 LOADK                            R14 K6 ["Plugin"]
      174 LOADK                            R15 K28 ["PrivacyType.PublicAllAges"]
      175 NAMECALL                         R12 R1 K8 ["getText"]
      177 CALL                             R12 3 -1
      178 RETURN                           R12 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Component"]
        6 DUPTABLE                         R2 K7 [{["CornerRadius"] = 8, ["Size"], ["Position"], ["AnchorPoint"]}]
        7 GETIMPORT                        R3 K10 [UDim2.new]
        9 LOADK                            R4 K11 [0.9]
       10 LOADN                            R5 0
       11 LOADN                            R6 0
       12 LOADN                            R7 24
       13 CALL                             R3 4 1
       14 SETTABLEKS                       R3 R2 K4 ["Size"]
       16 GETIMPORT                        R3 K10 [UDim2.new]
       18 LOADN                            R4 0
       19 LOADN                            R5 0
       20 LOADK                            R6 K12 [0.5]
       21 LOADN                            R7 0
       22 CALL                             R3 4 1
       23 SETTABLEKS                       R3 R2 K5 ["Position"]
       25 GETIMPORT                        R3 K14 [Vector2.new]
       27 LOADN                            R4 0
       28 LOADK                            R5 K12 [0.5]
       29 CALL                             R3 2 1
       30 SETTABLEKS                       R3 R2 K6 ["AnchorPoint"]
       32 CALL                             R0 2 -1
       33 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Component"]
        6 DUPTABLE                         R2 K7 [{["CornerRadius"] = 8, ["Size"], ["Position"], ["AnchorPoint"]}]
        7 GETIMPORT                        R3 K10 [UDim2.new]
        9 LOADN                            R4 0
       10 LOADN                            R5 32
       11 LOADN                            R6 0
       12 LOADN                            R7 32
       13 CALL                             R3 4 1
       14 SETTABLEKS                       R3 R2 K4 ["Size"]
       16 GETIMPORT                        R3 K10 [UDim2.new]
       18 LOADN                            R4 0
       19 LOADN                            R5 0
       20 LOADK                            R6 K11 [0.5]
       21 LOADN                            R7 0
       22 CALL                             R3 4 1
       23 SETTABLEKS                       R3 R2 K5 ["Position"]
       25 GETIMPORT                        R3 K13 [Vector2.new]
       27 LOADN                            R4 0
       28 LOADK                            R5 K11 [0.5]
       29 CALL                             R3 2 1
       30 SETTABLEKS                       R3 R2 K6 ["AnchorPoint"]
       32 CALL                             R0 2 -1
       33 RETURN                           R0 -1

PROTO_3:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R7 R6 K0 ["IsPlaceholder"]
        6 JUMPIF                           R7 ; [+56]
        7 GETTABLEKS                       R7 R6 K1 ["RootPlaceId"]
        9 GETTABLEKS                       R8 R6 K2 ["Id"]
       11 JUMPIFNOT                        R7 ; [+17]
       12 JUMPIFNOT                        R8 ; [+16]
       13 JUMPIFNOTEQ                      R7 R1 ; [+15]
       15 DUPTABLE                         R9 K6 [{"universeId", "isTeamCreateEnabled", "rootPlaceId"}]
       16 SETTABLEKS                       R8 R9 K3 ["universeId"]
       18 GETTABLEKS                       R11 R6 K7 ["IsTeamCreateEnabled"]
       20 JUMPIFEQKB                       R11 TRUE ; [+2]
       22 LOADB                            R10 0 +1
       23 LOADB                            R10 1
       24 SETTABLEKS                       R10 R9 K4 ["isTeamCreateEnabled"]
       26 SETTABLEKS                       R7 R9 K5 ["rootPlaceId"]
       28 RETURN                           R9 1
       29 GETTABLEKS                       R9 R6 K8 ["Children"]
       31 JUMPIFNOT                        R9 ; [+31]
       32 JUMPIFNOT                        R7 ; [+30]
       33 GETTABLEKS                       R9 R6 K8 ["Children"]
       35 LOADNIL                          R10
       36 LOADNIL                          R11
       37 FORGPREP                         R9
       38 GETTABLEKS                       R14 R13 K2 ["Id"]
       40 JUMPIFNOTEQ                      R14 R1 ; [+20]
       42 GETTABLEKS                       R14 R13 K9 ["UniverseId"]
       44 JUMPIFNOT                        R14 ; [+16]
       45 GETTABLEKS                       R15 R6 K7 ["IsTeamCreateEnabled"]
       47 JUMPIFEQKB                       R15 TRUE ; [+2]
       49 LOADB                            R14 0 +1
       50 LOADB                            R14 1
       51 DUPTABLE                         R15 K6 [{"universeId", "isTeamCreateEnabled", "rootPlaceId"}]
       52 GETTABLEKS                       R16 R13 K9 ["UniverseId"]
       54 SETTABLEKS                       R16 R15 K3 ["universeId"]
       56 SETTABLEKS                       R14 R15 K4 ["isTeamCreateEnabled"]
       58 SETTABLEKS                       R7 R15 K5 ["rootPlaceId"]
       60 RETURN                           R15 1
       61 FORGLOOP                         R9 2 ; [-24]
       63 FORGLOOP                         R2 2 ; [-60]
       65 LOADB                            R3 0
       66 LOADK                            R5 K10 ["PlaceInfo not found for place ID "]
       67 MOVE                             R6 R1
       68 CONCAT                           R4 R5 R6
       69 FASTCALL2                        ASSERT R3 R4 ; [+3]
       71 GETIMPORT                        R2 K12 [assert]
       73 CALL                             R2 2 0
       74 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["onClose"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContextMenuActions"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 JUMPIFNOT                        R3 ; [+10]
        6 GETTABLEKS                       R3 R0 K1 ["cell"]
        8 GETTABLEKS                       R3 R3 K2 ["_allowedActions"]
       10 JUMPIFNOT                        R3 ; [+5]
       11 GETTABLEKS                       R2 R0 K1 ["cell"]
       13 GETTABLEKS                       R2 R2 K2 ["_allowedActions"]
       15 JUMP                             ; [+1]
       16 MOVE                             R2 R1
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R4 R0 K1 ["cell"]
       20 MOVE                             R5 R2
       21 JUMPIF                           R5 ; [+2]
       22 NEWTABLE                         R5 0 0
       24 CALL                             R3 2 1
       25 LENGTH                           R5 R3
       26 LOADN                            R6 0
       27 JUMPIFLT                         R6 R5 ; [+2]
       29 LOADB                            R4 0 +1
       30 LOADB                            R4 1
       31 GETUPVAL                         R5 3
       32 NEWCLOSURE                       R6 P0
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R0
       35 NEWTABLE                         R7 0 2
       37 MOVE                             R8 R4
       38 GETTABLEKS                       R9 R0 K3 ["onClose"]
       40 SETLIST                          R7 R8 2 [1]
       42 CALL                             R5 2 0
       43 JUMPIF                           R4 ; [+2]
       44 LOADNIL                          R5
       45 RETURN                           R5 1
       46 GETUPVAL                         R5 4
       47 GETTABLEKS                       R5 R5 K4 ["createElement"]
       49 GETUPVAL                         R6 5
       50 DUPTABLE                         R7 K9 [{"anchorRef", "isOpen", "actions", "onItemActivated", "onClose"}]
       51 GETTABLEKS                       R8 R0 K5 ["anchorRef"]
       53 SETTABLEKS                       R8 R7 K5 ["anchorRef"]
       55 GETTABLEKS                       R8 R0 K6 ["isOpen"]
       57 SETTABLEKS                       R8 R7 K6 ["isOpen"]
       59 SETTABLEKS                       R3 R7 K7 ["actions"]
       61 GETTABLEKS                       R8 R0 K8 ["onItemActivated"]
       63 SETTABLEKS                       R8 R7 K8 ["onItemActivated"]
       65 GETTABLEKS                       R8 R0 K3 ["onClose"]
       67 SETTABLEKS                       R8 R7 K3 ["onClose"]
       69 CALL                             R5 2 -1
       70 RETURN                           R5 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["AbsolutePosition"]
        2 GETIMPORT                        R3 K3 [Vector2.new]
        4 GETTABLEKS                       R5 R0 K5 ["AbsoluteSize"]
        6 GETTABLEKS                       R5 R5 K6 ["X"]
        8 DIVK                             R4 R5 K4 [2]
        9 GETTABLEKS                       R5 R0 K5 ["AbsoluteSize"]
       11 GETTABLEKS                       R5 R5 K7 ["Y"]
       13 CALL                             R3 2 1
       14 ADD                              R1 R2 R3
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K8 ["current"]
       18 MOVE                             R4 R1
       19 NAMECALL                         R2 R2 K9 ["SetPosition"]
       21 CALL                             R2 2 0
       22 GETUPVAL                         R2 1
       23 GETUPVAL                         R3 2
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R0 K4 [{"Id", "RootPlaceId", "IsTeamCreateEnabled", "_allowedActions"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K5 ["UniverseId"]
        4 SETTABLEKS                       R1 R0 K0 ["Id"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["Id"]
        9 SETTABLEKS                       R1 R0 K1 ["RootPlaceId"]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K2 ["IsTeamCreateEnabled"]
       14 SETTABLEKS                       R1 R0 K2 ["IsTeamCreateEnabled"]
       16 NEWTABLE                         R1 0 4
       18 LOADK                            R2 K6 ["ConfigurePlace"]
       19 GETUPVAL                         R4 2
       20 JUMPIFNOT                        R4 ; [+2]
       21 LOADK                            R3 K7 ["OpenACopy"]
       22 JUMP                             ; [+1]
       23 LOADK                            R3 K8 [""]
       24 GETUPVAL                         R5 3
       25 JUMPIFNOT                        R5 ; [+2]
       26 LOADK                            R4 K9 ["DisableTeamCreate"]
       27 JUMP                             ; [+1]
       28 LOADK                            R4 K8 [""]
       29 LOADK                            R5 K10 ["SaveAs"]
       30 SETLIST                          R1 R2 4 [1]
       32 SETTABLEKS                       R1 R0 K3 ["_allowedActions"]
       34 GETUPVAL                         R1 4
       35 GETTABLEKS                       R1 R1 K11 ["createElement"]
       37 LOADK                            R2 K12 ["Frame"]
       38 DUPTABLE                         R3 K16 [{["Size"], ["BackgroundTransparency"] = 1}]
       39 GETIMPORT                        R4 K19 [UDim2.fromScale]
       41 LOADN                            R5 1
       42 LOADN                            R6 1
       43 CALL                             R4 2 1
       44 SETTABLEKS                       R4 R3 K13 ["Size"]
       46 DUPTABLE                         R4 K21 [{"Button"}]
       47 GETUPVAL                         R5 4
       48 GETTABLEKS                       R5 R5 K11 ["createElement"]
       50 LOADK                            R6 K22 ["ImageButton"]
       51 NEWTABLE                         R7 8 0
       53 GETIMPORT                        R8 K24 [UDim2.fromOffset]
       55 LOADN                            R9 28
       56 LOADN                            R10 28
       57 CALL                             R8 2 1
       58 SETTABLEKS                       R8 R7 K13 ["Size"]
       60 GETIMPORT                        R8 K27 [Vector2.new]
       62 LOADK                            R9 K28 [0.5]
       63 LOADK                            R10 K28 [0.5]
       64 CALL                             R8 2 1
       65 SETTABLEKS                       R8 R7 K29 ["AnchorPoint"]
       67 GETIMPORT                        R8 K19 [UDim2.fromScale]
       69 LOADK                            R9 K28 [0.5]
       70 LOADK                            R10 K28 [0.5]
       71 CALL                             R8 2 1
       72 SETTABLEKS                       R8 R7 K30 ["Position"]
       74 GETUPVAL                         R8 4
       75 GETTABLEKS                       R8 R8 K31 ["Tag"]
       77 LOADK                            R9 K32 ["X-Corner StartPage-TileBackground StartPage-NoBorder StartPage-KebabIcon"]
       78 SETTABLE                         R9 R7 R8
       79 GETUPVAL                         R8 4
       80 GETTABLEKS                       R8 R8 K33 ["Event"]
       82 GETTABLEKS                       R8 R8 K34 ["Activated"]
       84 NEWCLOSURE                       R9 P0
       85 CAPTURE                          UPVAL U5
       86 CAPTURE                          UPVAL U6
       87 CAPTURE                          VAL R0
       88 SETTABLE                         R9 R7 R8
       89 CALL                             R5 2 1
       90 SETTABLEKS                       R5 R4 K20 ["Button"]
       92 CALL                             R1 3 -1
       93 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 LOADK                            R1 K1 ["Frame"]
        4 NEWTABLE                         R2 2 0
        6 GETIMPORT                        R3 K4 [UDim2.new]
        8 LOADN                            R4 1
        9 LOADN                            R5 0
       10 LOADN                            R6 1
       11 LOADN                            R7 0
       12 CALL                             R3 4 1
       13 SETTABLEKS                       R3 R2 K5 ["Size"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K6 ["Tag"]
       18 LOADK                            R4 K7 ["X-Transparent X-Middle"]
       19 SETTABLE                         R4 R2 R3
       20 DUPTABLE                         R3 K9 [{"Badge"}]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K0 ["createElement"]
       24 GETUPVAL                         R5 1
       25 DUPTABLE                         R6 K14 [{["label"], ["rightAlignIcon"] = True, ["UniverseId"]}]
       26 GETUPVAL                         R7 2
       27 LOADK                            R9 K15 ["Plugin"]
       28 LOADK                            R10 K16 ["Yes"]
       29 NAMECALL                         R7 R7 K17 ["getText"]
       31 CALL                             R7 3 1
       32 SETTABLEKS                       R7 R6 K10 ["label"]
       34 GETUPVAL                         R7 3
       35 GETTABLEKS                       R7 R7 K18 ["Id"]
       37 SETTABLEKS                       R7 R6 K13 ["UniverseId"]
       39 CALL                             R4 2 1
       40 SETTABLEKS                       R4 R3 K8 ["Badge"]
       42 CALL                             R0 3 -1
       43 RETURN                           R0 -1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["AbsolutePosition"]
        2 GETIMPORT                        R3 K3 [Vector2.new]
        4 GETTABLEKS                       R5 R0 K5 ["AbsoluteSize"]
        6 GETTABLEKS                       R5 R5 K6 ["X"]
        8 DIVK                             R4 R5 K4 [2]
        9 GETTABLEKS                       R5 R0 K5 ["AbsoluteSize"]
       11 GETTABLEKS                       R5 R5 K7 ["Y"]
       13 CALL                             R3 2 1
       14 ADD                              R1 R2 R3
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K8 ["current"]
       18 MOVE                             R4 R1
       19 NAMECALL                         R2 R2 K9 ["SetPosition"]
       21 CALL                             R2 2 0
       22 GETUPVAL                         R2 1
       23 GETUPVAL                         R3 2
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 LOADK                            R1 K1 ["Frame"]
        4 DUPTABLE                         R2 K5 [{["Size"], ["BackgroundTransparency"] = 1}]
        5 GETIMPORT                        R3 K8 [UDim2.fromScale]
        7 LOADN                            R4 1
        8 LOADN                            R5 1
        9 CALL                             R3 2 1
       10 SETTABLEKS                       R3 R2 K2 ["Size"]
       12 DUPTABLE                         R3 K10 [{"Button"}]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K0 ["createElement"]
       16 LOADK                            R5 K11 ["ImageButton"]
       17 NEWTABLE                         R6 8 0
       19 GETIMPORT                        R7 K13 [UDim2.fromOffset]
       21 LOADN                            R8 28
       22 LOADN                            R9 28
       23 CALL                             R7 2 1
       24 SETTABLEKS                       R7 R6 K2 ["Size"]
       26 GETIMPORT                        R7 K16 [Vector2.new]
       28 LOADK                            R8 K17 [0.5]
       29 LOADK                            R9 K17 [0.5]
       30 CALL                             R7 2 1
       31 SETTABLEKS                       R7 R6 K18 ["AnchorPoint"]
       33 GETIMPORT                        R7 K8 [UDim2.fromScale]
       35 LOADK                            R8 K17 [0.5]
       36 LOADK                            R9 K17 [0.5]
       37 CALL                             R7 2 1
       38 SETTABLEKS                       R7 R6 K19 ["Position"]
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R7 R7 K20 ["Tag"]
       43 LOADK                            R8 K21 ["X-Corner StartPage-TileBackground StartPage-NoBorder StartPage-KebabIcon"]
       44 SETTABLE                         R8 R6 R7
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R7 R7 K22 ["Event"]
       48 GETTABLEKS                       R7 R7 K23 ["Activated"]
       50 NEWCLOSURE                       R8 P0
       51 CAPTURE                          UPVAL U1
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          UPVAL U3
       54 SETTABLE                         R8 R6 R7
       55 CALL                             R4 2 1
       56 SETTABLEKS                       R4 R3 K9 ["Button"]
       58 CALL                             R0 3 -1
       59 RETURN                           R0 -1

PROTO_12:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["Cells"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 NEWTABLE                         R6 0 0
       10 GETTABLEKS                       R7 R5 K1 ["IsPlaceholder"]
       12 JUMPIF                           R7 ; [+146]
       13 GETTABLEKS                       R7 R5 K2 ["Children"]
       15 JUMPIFNOT                        R7 ; [+143]
       16 GETTABLEKS                       R7 R5 K2 ["Children"]
       18 LOADNIL                          R8
       19 LOADNIL                          R9
       20 FORGPREP                         R7
       21 GETTABLEKS                       R13 R11 K3 ["Id"]
       23 FASTCALL2K                       ASSERT R13 K4 ; [+4]
       25 LOADK                            R14 K4 ["Child place must have a place ID"]
       26 GETIMPORT                        R12 K6 [assert]
       28 CALL                             R12 2 0
       29 DUPTABLE                         R14 K17 [{"Icon", "Id", "Name", "Description", "Edited", "Created", "Playability", "Type", "UniverseId", "TeamCreate", "KebabMenu"}]
       30 DUPTABLE                         R15 K20 [{["Value"] = ""}]
       31 SETTABLEKS                       R15 R14 K7 ["Icon"]
       33 DUPTABLE                         R15 K22 [{["Type"] = "PlaceId", ["PlaceId"]}]
       34 GETTABLEKS                       R16 R11 K3 ["Id"]
       36 SETTABLEKS                       R16 R15 K21 ["PlaceId"]
       38 SETTABLEKS                       R15 R14 K3 ["Id"]
       40 DUPTABLE                         R15 K23 [{"Value"}]
       41 GETTABLEKS                       R16 R11 K8 ["Name"]
       43 SETTABLEKS                       R16 R15 K18 ["Value"]
       45 SETTABLEKS                       R15 R14 K8 ["Name"]
       47 DUPTABLE                         R15 K23 [{"Value"}]
       48 GETTABLEKS                       R16 R11 K9 ["Description"]
       50 SETTABLEKS                       R16 R15 K18 ["Value"]
       52 SETTABLEKS                       R15 R14 K9 ["Description"]
       54 DUPTABLE                         R15 K23 [{"Value"}]
       55 GETUPVAL                         R17 1
       56 JUMPIFNOT                        R17 ; [+9]
       57 GETTABLEKS                       R17 R11 K24 ["LastViewed"]
       59 JUMPIFNOT                        R17 ; [+6]
       60 GETUPVAL                         R16 2
       61 GETTABLEKS                       R17 R11 K24 ["LastViewed"]
       63 GETUPVAL                         R18 3
       64 CALL                             R16 2 1
       65 JUMP                             ; [+1]
       66 LOADK                            R16 K19 [""]
       67 SETTABLEKS                       R16 R15 K18 ["Value"]
       69 SETTABLEKS                       R15 R14 K10 ["Edited"]
       71 DUPTABLE                         R15 K23 [{"Value"}]
       72 GETUPVAL                         R17 1
       73 JUMPIFNOT                        R17 ; [+6]
       74 GETUPVAL                         R16 2
       75 GETTABLEKS                       R17 R11 K11 ["Created"]
       77 GETUPVAL                         R18 3
       78 CALL                             R16 2 1
       79 JUMP                             ; [+1]
       80 LOADK                            R16 K19 [""]
       81 SETTABLEKS                       R16 R15 K18 ["Value"]
       83 SETTABLEKS                       R15 R14 K11 ["Created"]
       85 DUPTABLE                         R15 K23 [{"Value"}]
       86 GETUPVAL                         R17 1
       87 JUMPIFNOT                        R17 ; [+5]
       88 GETUPVAL                         R16 4
       89 MOVE                             R17 R11
       90 GETUPVAL                         R18 3
       91 CALL                             R16 2 1
       92 JUMP                             ; [+1]
       93 LOADK                            R16 K19 [""]
       94 SETTABLEKS                       R16 R15 K18 ["Value"]
       96 SETTABLEKS                       R15 R14 K12 ["Playability"]
       98 DUPTABLE                         R15 K20 [{["Value"] = ""}]
       99 SETTABLEKS                       R15 R14 K13 ["Type"]
      101 DUPTABLE                         R15 K23 [{"Value"}]
      102 GETTABLEKS                       R16 R11 K14 ["UniverseId"]
      104 SETTABLEKS                       R16 R15 K18 ["Value"]
      106 SETTABLEKS                       R15 R14 K14 ["UniverseId"]
      108 GETUPVAL                         R16 1
      109 JUMPIFNOT                        R16 ; [+15]
      110 DUPTABLE                         R15 K23 [{"Value"}]
      111 GETUPVAL                         R16 3
      112 LOADK                            R18 K25 ["Plugin"]
      113 GETTABLEKS                       R20 R5 K26 ["IsTeamCreateEnabled"]
      115 JUMPIFNOT                        R20 ; [+2]
      116 LOADK                            R19 K27 ["Yes"]
      117 JUMP                             ; [+1]
      118 LOADK                            R19 K28 ["No"]
      119 NAMECALL                         R16 R16 K29 ["getText"]
      121 CALL                             R16 3 1
      122 SETTABLEKS                       R16 R15 K18 ["Value"]
      124 JUMP                             ; [+1]
      125 LOADNIL                          R15
      126 SETTABLEKS                       R15 R14 K15 ["TeamCreate"]
      128 GETUPVAL                         R16 1
      129 JUMPIFNOT                        R16 ; [+18]
      130 DUPTABLE                         R15 K32 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      131 DUPTABLE                         R16 K33 [{["Type"] = "KebabMenu"}]
      132 SETTABLEKS                       R16 R15 K30 ["Schema"]
      134 DUPTABLE                         R16 K34 [{"KebabMenu"}]
      135 NEWCLOSURE                       R17 P0
      136 CAPTURE                          VAL R11
      137 CAPTURE                          VAL R5
      138 CAPTURE                          UPVAL U5
      139 CAPTURE                          UPVAL U6
      140 CAPTURE                          UPVAL U7
      141 CAPTURE                          UPVAL U8
      142 CAPTURE                          UPVAL U9
      143 SETTABLEKS                       R17 R16 K16 ["KebabMenu"]
      145 SETTABLEKS                       R16 R15 K31 ["Renderers"]
      147 JUMP                             ; [+1]
      148 LOADNIL                          R15
      149 SETTABLEKS                       R15 R14 K16 ["KebabMenu"]
      151 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      153 MOVE                             R13 R6
      154 GETIMPORT                        R12 K37 [table.insert]
      156 CALL                             R12 2 0
      157 FORGLOOP                         R7 2 ; [-137]
      159 GETTABLEKS                       R7 R5 K1 ["IsPlaceholder"]
      161 JUMPIFNOT                        R7 ; [+12]
      162 MOVE                             R8 R0
      163 GETUPVAL                         R9 10
      164 GETUPVAL                         R10 11
      165 DUPTABLE                         R11 K39 [{"children"}]
      166 SETTABLEKS                       R6 R11 K38 ["children"]
      168 CALL                             R9 2 -1
      169 FASTCALL                         TABLE_INSERT ; [+2]
      170 GETIMPORT                        R7 K37 [table.insert]
      172 CALL                             R7 -1 0
      173 JUMP                             ; [+210]
      174 DUPTABLE                         R9 K41 [{"Cell", "Icon", "Id", "Name", "Description", "Edited", "Created", "Playability", "Type", "UniverseId", "TeamCreate", "KebabMenu", "children"}]
      175 GETUPVAL                         R11 12
      176 JUMPIF                           R11 ; [+2]
      177 GETUPVAL                         R11 1
      178 JUMPIFNOT                        R11 ; [+2]
      179 MOVE                             R10 R5
      180 JUMP                             ; [+1]
      181 LOADNIL                          R10
      182 SETTABLEKS                       R10 R9 K40 ["Cell"]
      184 GETTABLEKS                       R11 R5 K42 ["ImageUrl"]
      186 JUMPIFNOT                        R11 ; [+18]
      187 DUPTABLE                         R10 K44 [{["Value"] = "", ["LeftIcon"]}]
      188 DUPTABLE                         R11 K47 [{"Image", "Size"}]
      189 GETTABLEKS                       R12 R5 K42 ["ImageUrl"]
      191 SETTABLEKS                       R12 R11 K45 ["Image"]
      193 GETIMPORT                        R12 K50 [UDim2.new]
      195 LOADN                            R13 0
      196 LOADN                            R14 32
      197 LOADN                            R15 0
      198 LOADN                            R16 32
      199 CALL                             R12 4 1
      200 SETTABLEKS                       R12 R11 K46 ["Size"]
      202 SETTABLEKS                       R11 R10 K43 ["LeftIcon"]
      204 JUMP                             ; [+27]
      205 GETTABLEKS                       R11 R5 K51 ["NoLoadableImage"]
      207 JUMPIFNOT                        R11 ; [+14]
      208 DUPTABLE                         R10 K44 [{["Value"] = "", ["LeftIcon"]}]
      209 DUPTABLE                         R11 K53 [{["Image"] = "rbxasset://studio_svg_textures/Lua/StartPage/Light/SI-Standard/Placeholder.png", ["Size"]}]
      210 GETIMPORT                        R12 K50 [UDim2.new]
      212 LOADN                            R13 0
      213 LOADN                            R14 32
      214 LOADN                            R15 0
      215 LOADN                            R16 32
      216 CALL                             R12 4 1
      217 SETTABLEKS                       R12 R11 K46 ["Size"]
      219 SETTABLEKS                       R11 R10 K43 ["LeftIcon"]
      221 JUMP                             ; [+10]
      222 DUPTABLE                         R10 K32 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      223 DUPTABLE                         R11 K55 [{["Type"] = "Placeholder"}]
      224 SETTABLEKS                       R11 R10 K30 ["Schema"]
      226 DUPTABLE                         R11 K56 [{"Placeholder"}]
      227 GETUPVAL                         R12 13
      228 SETTABLEKS                       R12 R11 K54 ["Placeholder"]
      230 SETTABLEKS                       R11 R10 K31 ["Renderers"]
      232 SETTABLEKS                       R10 R9 K7 ["Icon"]
      234 GETTABLEKS                       R11 R5 K57 ["RootPlaceId"]
      236 JUMPIFNOT                        R11 ; [+6]
      237 DUPTABLE                         R10 K22 [{["Type"] = "PlaceId", ["PlaceId"]}]
      238 GETTABLEKS                       R11 R5 K57 ["RootPlaceId"]
      240 SETTABLEKS                       R11 R10 K21 ["PlaceId"]
      242 JUMP                             ; [+10]
      243 GETTABLEKS                       R11 R5 K58 ["FilePath"]
      245 JUMPIFNOT                        R11 ; [+6]
      246 DUPTABLE                         R10 K59 [{["Type"] = "FilePath", ["FilePath"]}]
      247 GETTABLEKS                       R11 R5 K58 ["FilePath"]
      249 SETTABLEKS                       R11 R10 K58 ["FilePath"]
      251 JUMP                             ; [+1]
      252 LOADNIL                          R10
      253 SETTABLEKS                       R10 R9 K3 ["Id"]
      255 DUPTABLE                         R10 K23 [{"Value"}]
      256 GETTABLEKS                       R12 R5 K8 ["Name"]
      258 ORK                              R11 R12 K19 [""]
      259 SETTABLEKS                       R11 R10 K18 ["Value"]
      261 SETTABLEKS                       R10 R9 K8 ["Name"]
      263 DUPTABLE                         R10 K23 [{"Value"}]
      264 GETTABLEKS                       R12 R5 K9 ["Description"]
      266 JUMPIF                           R12 ; [+2]
      267 LOADK                            R11 K19 [""]
      268 JUMP                             ; [+2]
      269 GETTABLEKS                       R11 R5 K9 ["Description"]
      271 SETTABLEKS                       R11 R10 K18 ["Value"]
      273 SETTABLEKS                       R10 R9 K9 ["Description"]
      275 DUPTABLE                         R10 K23 [{"Value"}]
      276 GETTABLEKS                       R12 R5 K24 ["LastViewed"]
      278 JUMPIFNOT                        R12 ; [+6]
      279 GETUPVAL                         R11 2
      280 GETTABLEKS                       R12 R5 K24 ["LastViewed"]
      282 GETUPVAL                         R13 3
      283 CALL                             R11 2 1
      284 JUMP                             ; [+1]
      285 LOADK                            R11 K19 [""]
      286 SETTABLEKS                       R11 R10 K18 ["Value"]
      288 SETTABLEKS                       R10 R9 K10 ["Edited"]
      290 DUPTABLE                         R10 K23 [{"Value"}]
      291 GETUPVAL                         R11 2
      292 GETTABLEKS                       R12 R5 K11 ["Created"]
      294 GETUPVAL                         R13 3
      295 CALL                             R11 2 1
      296 SETTABLEKS                       R11 R10 K18 ["Value"]
      298 SETTABLEKS                       R10 R9 K11 ["Created"]
      300 DUPTABLE                         R10 K23 [{"Value"}]
      301 GETUPVAL                         R11 4
      302 MOVE                             R12 R5
      303 GETUPVAL                         R13 3
      304 CALL                             R11 2 1
      305 SETTABLEKS                       R11 R10 K18 ["Value"]
      307 SETTABLEKS                       R10 R9 K12 ["Playability"]
      309 DUPTABLE                         R10 K23 [{"Value"}]
      310 GETTABLEKS                       R12 R5 K60 ["IsGame"]
      312 JUMPIFNOT                        R12 ; [+2]
      313 LOADK                            R11 K61 ["Experience"]
      314 JUMP                             ; [+1]
      315 LOADK                            R11 K62 ["Place"]
      316 SETTABLEKS                       R11 R10 K18 ["Value"]
      318 SETTABLEKS                       R10 R9 K13 ["Type"]
      320 DUPTABLE                         R10 K23 [{"Value"}]
      321 GETTABLEKS                       R11 R5 K3 ["Id"]
      323 SETTABLEKS                       R11 R10 K18 ["Value"]
      325 SETTABLEKS                       R10 R9 K14 ["UniverseId"]
      327 GETTABLEKS                       R11 R5 K63 ["IsAgeRestrictedCollaboration"]
      329 JUMPIFNOT                        R11 ; [+15]
      330 DUPTABLE                         R10 K32 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      331 DUPTABLE                         R11 K65 [{["Type"] = "CollaborationRestriction"}]
      332 SETTABLEKS                       R11 R10 K30 ["Schema"]
      334 DUPTABLE                         R11 K66 [{"CollaborationRestriction"}]
      335 NEWCLOSURE                       R12 P1
      336 CAPTURE                          UPVAL U7
      337 CAPTURE                          UPVAL U14
      338 CAPTURE                          UPVAL U3
      339 CAPTURE                          VAL R5
      340 SETTABLEKS                       R12 R11 K64 ["CollaborationRestriction"]
      342 SETTABLEKS                       R11 R10 K31 ["Renderers"]
      344 JUMP                             ; [+9]
      345 DUPTABLE                         R10 K23 [{"Value"}]
      346 GETTABLEKS                       R12 R5 K26 ["IsTeamCreateEnabled"]
      348 JUMPIFNOT                        R12 ; [+2]
      349 LOADK                            R11 K27 ["Yes"]
      350 JUMP                             ; [+1]
      351 LOADK                            R11 K28 ["No"]
      352 SETTABLEKS                       R11 R10 K18 ["Value"]
      354 SETTABLEKS                       R10 R9 K15 ["TeamCreate"]
      356 GETUPVAL                         R11 1
      357 JUMPIFNOT                        R11 ; [+15]
      358 DUPTABLE                         R10 K32 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      359 DUPTABLE                         R11 K33 [{["Type"] = "KebabMenu"}]
      360 SETTABLEKS                       R11 R10 K30 ["Schema"]
      362 DUPTABLE                         R11 K34 [{"KebabMenu"}]
      363 NEWCLOSURE                       R12 P2
      364 CAPTURE                          UPVAL U7
      365 CAPTURE                          UPVAL U8
      366 CAPTURE                          UPVAL U9
      367 CAPTURE                          VAL R5
      368 SETTABLEKS                       R12 R11 K16 ["KebabMenu"]
      370 SETTABLEKS                       R11 R10 K31 ["Renderers"]
      372 JUMP                             ; [+1]
      373 LOADNIL                          R10
      374 SETTABLEKS                       R10 R9 K16 ["KebabMenu"]
      376 SETTABLEKS                       R6 R9 K38 ["children"]
      378 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
      380 MOVE                             R8 R0
      381 GETIMPORT                        R7 K37 [table.insert]
      383 CALL                             R7 2 0
      384 FORGLOOP                         R1 2 ; [-377]
      386 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R1 K1 [next]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 FASTCALL1                        TYPE R1 ; [+3]
        5 MOVE                             R3 R1
        6 GETIMPORT                        R2 K3 [type]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K4 ["number"] ; [+31]
       11 GETUPVAL                         R2 0
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K5 ["Cells"]
       15 MOVE                             R4 R1
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 2
       18 GETUPVAL                         R4 3
       19 NAMECALL                         R4 R4 K6 ["GetUserId"]
       21 CALL                             R4 1 1
       22 GETTABLEKS                       R5 R2 K7 ["universeId"]
       24 MOVE                             R6 R1
       25 GETTABLEKS                       R7 R2 K8 ["rootPlaceId"]
       27 GETUPVAL                         R8 4
       28 GETTABLEKS                       R8 R8 K9 ["showVerifyAge"]
       30 GETUPVAL                         R9 4
       31 GETTABLEKS                       R9 R9 K10 ["showAgeRestricted"]
       33 GETTABLEKS                       R10 R2 K11 ["isTeamCreateEnabled"]
       35 GETUPVAL                         R11 5
       36 GETUPVAL                         R12 6
       37 GETUPVAL                         R13 7
       38 LOADB                            R14 0
       39 CALL                             R3 11 0
       40 RETURN                           R0 0
       41 FASTCALL1                        TYPE R1 ; [+3]
       42 MOVE                             R3 R1
       43 GETIMPORT                        R2 K3 [type]
       45 CALL                             R2 1 1
       46 JUMPIFNOTEQKS                    R2 K12 ["string"] ; [+7]
       48 GETUPVAL                         R2 8
       49 MOVE                             R4 R1
       50 LOADB                            R5 0
       51 NAMECALL                         R2 R2 K13 ["openLocalFile"]
       53 CALL                             R2 3 0
       54 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 FASTCALL2K                       ASSERT R2 K0 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K0 ["There must be a column at the index when you are attempting to sort"]
        6 GETIMPORT                        R3 K2 [assert]
        8 CALL                             R3 2 0
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K3 ["CanDisplayComponentAdjustQuery"]
       12 JUMPIF                           R3 ; [+1]
       13 RETURN                           R0 0
       14 GETTABLEKS                       R3 R2 K4 ["ShouldSort"]
       16 JUMPIF                           R3 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K5 ["DisplayComponentHasAdjustedQuery"]
       21 DUPTABLE                         R4 K8 [{"sortParam", "sortOrder"}]
       22 GETTABLEKS                       R5 R2 K9 ["SortParam"]
       24 SETTABLEKS                       R5 R4 K6 ["sortParam"]
       26 GETIMPORT                        R6 K13 [Enum.SortDirection.Ascending]
       28 JUMPIFNOTEQ                      R1 R6 ; [+3]
       30 LOADK                            R5 K14 ["Desc"]
       31 JUMP                             ; [+1]
       32 LOADK                            R5 K15 ["Asc"]
       33 SETTABLEKS                       R5 R4 K7 ["sortOrder"]
       35 CALL                             R3 1 0
       36 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["Id"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADN                            R1 1
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K0 ["Id"]
        7 GETTABLEKS                       R1 R1 K1 ["Type"]
        9 JUMPIFNOTEQKS                    R1 K2 ["PlaceId"] ; [+6]
       11 GETTABLEKS                       R1 R0 K0 ["Id"]
       13 GETTABLEKS                       R1 R1 K2 ["PlaceId"]
       15 RETURN                           R1 1
       16 GETTABLEKS                       R1 R0 K0 ["Id"]
       18 GETTABLEKS                       R1 R1 K3 ["FilePath"]
       20 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R2 K1 ["SetPosition"]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R3 R0 K2 ["item"]
       10 GETTABLEKS                       R3 R3 K3 ["Cell"]
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["ExperiencesTable is deprecated by the new list view"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 1
       10 NEWTABLE                         R2 0 0
       12 CALL                             R1 1 2
       13 GETUPVAL                         R3 2
       14 NAMECALL                         R3 R3 K3 ["use"]
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 1
       18 LOADNIL                          R5
       19 CALL                             R4 1 2
       20 JUMPIFNOTEQKNIL                  R4 ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R7 R7 K4 ["useRef"]
       27 LOADNIL                          R8
       28 CALL                             R7 1 1
       29 LOADNIL                          R8
       30 LOADNIL                          R9
       31 GETUPVAL                         R10 4
       32 JUMPIF                           R10 ; [+2]
       33 GETUPVAL                         R10 5
       34 JUMPIFNOT                        R10 ; [+17]
       35 GETUPVAL                         R10 6
       36 GETIMPORT                        R11 K7 [Vector2.zero]
       38 CALL                             R10 1 1
       39 MOVE                             R8 R10
       40 GETUPVAL                         R10 3
       41 GETTABLEKS                       R10 R10 K8 ["useCallback"]
       43 NEWCLOSURE                       R11 P0
       44 CAPTURE                          VAL R5
       45 NEWTABLE                         R12 0 1
       47 MOVE                             R13 R5
       48 SETLIST                          R12 R13 1 [1]
       50 CALL                             R10 2 1
       51 MOVE                             R9 R10
       52 GETUPVAL                         R10 7
       53 NEWCLOSURE                       R11 P1
       54 CAPTURE                          VAL R0
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          UPVAL U8
       57 CAPTURE                          VAL R3
       58 CAPTURE                          UPVAL U9
       59 CAPTURE                          UPVAL U10
       60 CAPTURE                          UPVAL U11
       61 CAPTURE                          UPVAL U3
       62 CAPTURE                          REF R8
       63 CAPTURE                          VAL R5
       64 CAPTURE                          UPVAL U12
       65 CAPTURE                          UPVAL U13
       66 CAPTURE                          UPVAL U4
       67 CAPTURE                          UPVAL U14
       68 CAPTURE                          UPVAL U15
       69 NEWTABLE                         R12 0 1
       71 GETTABLEKS                       R13 R0 K9 ["Cells"]
       73 SETLIST                          R12 R13 1 [1]
       75 CALL                             R10 2 1
       76 LOADNIL                          R11
       77 GETTABLEKS                       R12 R0 K10 ["CanDisplayComponentAdjustQuery"]
       79 JUMPIFNOT                        R12 ; [+11]
       80 GETTABLEKS                       R12 R0 K11 ["Query"]
       82 GETTABLEKS                       R12 R12 K12 ["sortOrder"]
       84 JUMPIFNOTEQKS                    R12 K13 ["Asc"] ; [+4]
       86 GETIMPORT                        R11 K17 [Enum.SortDirection.Descending]
       88 JUMP                             ; [+2]
       89 GETIMPORT                        R11 K19 [Enum.SortDirection.Ascending]
       91 GETUPVAL                         R12 16
       92 GETUPVAL                         R13 17
       93 CALL                             R12 1 1
       94 GETUPVAL                         R13 18
       95 GETTABLEKS                       R13 R13 K20 ["getDialogManager"]
       97 CALL                             R13 0 1
       98 GETUPVAL                         R14 18
       99 GETTABLEKS                       R14 R14 K21 ["getActionsBridge"]
      101 CALL                             R14 0 1
      102 GETUPVAL                         R15 3
      103 GETTABLEKS                       R15 R15 K22 ["createElement"]
      105 LOADK                            R16 K23 ["Frame"]
      106 NEWTABLE                         R17 1 0
      108 GETUPVAL                         R18 3
      109 GETTABLEKS                       R18 R18 K24 ["Tag"]
      111 LOADK                            R19 K25 ["X-Transparent StartPage-TablePadding X-Fill data-testid=--start-page-ExperiencesTable"]
      112 SETTABLE                         R19 R17 R18
      113 DUPTABLE                         R18 K28 [{"Table", "Menu"}]
      114 GETUPVAL                         R19 3
      115 GETTABLEKS                       R19 R19 K22 ["createElement"]
      117 GETUPVAL                         R20 19
      118 NEWTABLE                         R21 32 0
      120 GETUPVAL                         R22 20
      121 SETTABLEKS                       R22 R21 K29 ["Columns"]
      123 NEWCLOSURE                       R22 P2
      124 CAPTURE                          VAL R2
      125 CAPTURE                          UPVAL U12
      126 CAPTURE                          VAL R1
      127 SETTABLEKS                       R22 R21 K30 ["OnExpansionChange"]
      129 NEWTABLE                         R22 0 0
      131 SETTABLEKS                       R22 R21 K31 ["Selection"]
      133 NEWCLOSURE                       R22 P3
      134 CAPTURE                          UPVAL U21
      135 CAPTURE                          VAL R0
      136 CAPTURE                          UPVAL U22
      137 CAPTURE                          UPVAL U23
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R13
      141 CAPTURE                          VAL R3
      142 CAPTURE                          UPVAL U24
      143 SETTABLEKS                       R22 R21 K32 ["OnSelectionChange"]
      145 SETTABLEKS                       R1 R21 K33 ["Expansion"]
      147 SETTABLEKS                       R10 R21 K34 ["RootItems"]
      149 SETTABLEKS                       R11 R21 K35 ["SortOrder"]
      151 GETTABLEKS                       R23 R0 K10 ["CanDisplayComponentAdjustQuery"]
      153 JUMPIFNOT                        R23 ; [+7]
      154 GETUPVAL                         R23 25
      155 GETTABLEKS                       R24 R0 K11 ["Query"]
      157 GETTABLEKS                       R24 R24 K36 ["sortParam"]
      159 GETTABLE                         R22 R23 R24
      160 JUMP                             ; [+1]
      161 LOADNIL                          R22
      162 SETTABLEKS                       R22 R21 K37 ["SortIndex"]
      164 NEWCLOSURE                       R22 P4
      165 CAPTURE                          UPVAL U20
      166 CAPTURE                          VAL R0
      167 SETTABLEKS                       R22 R21 K38 ["OnSortChange"]
      169 LOADN                            R22 53
      170 SETTABLEKS                       R22 R21 K39 ["RowHeight"]
      172 LOADB                            R22 1
      173 SETTABLEKS                       R22 R21 K40 ["UseDeficit"]
      175 DUPCLOSURE                       R22 K41 [PROTO_16]
      176 SETTABLEKS                       R22 R21 K42 ["GetChildren"]
      178 DUPCLOSURE                       R22 K43 [PROTO_17]
      179 SETTABLEKS                       R22 R21 K44 ["GetItemId"]
      181 GETTABLEKS                       R22 R0 K45 ["OnLoadRange"]
      183 SETTABLEKS                       R22 R21 K45 ["OnLoadRange"]
      185 LOADB                            R22 1
      186 SETTABLEKS                       R22 R21 K46 ["Scroll"]
      188 DUPTABLE                         R22 K48 [{"CanvasSize"}]
      189 GETTABLEKS                       R23 R0 K47 ["CanvasSize"]
      191 SETTABLEKS                       R23 R22 K47 ["CanvasSize"]
      193 SETTABLEKS                       R22 R21 K49 ["ScrollProps"]
      195 GETUPVAL                         R23 4
      196 JUMPIFNOT                        R23 ; [+4]
      197 NEWCLOSURE                       R22 P7
      198 CAPTURE                          REF R8
      199 CAPTURE                          VAL R5
      200 JUMP                             ; [+1]
      201 LOADNIL                          R22
      202 SETTABLEKS                       R22 R21 K50 ["RightClick"]
      204 LOADK                            R22 K51 ["modern"]
      205 SETTABLEKS                       R22 R21 K52 ["Variant"]
      207 GETUPVAL                         R22 3
      208 GETTABLEKS                       R22 R22 K24 ["Tag"]
      210 LOADK                            R23 K53 ["X-Fill"]
      211 SETTABLE                         R23 R21 R22
      212 GETUPVAL                         R23 4
      213 JUMPIF                           R23 ; [+2]
      214 GETUPVAL                         R23 5
      215 JUMPIFNOT                        R23 ; [+2]
      216 MOVE                             R22 R7
      217 JUMP                             ; [+1]
      218 LOADNIL                          R22
      219 SETTABLEKS                       R22 R21 K54 ["ref"]
      221 GETUPVAL                         R23 4
      222 JUMPIF                           R23 ; [+2]
      223 GETUPVAL                         R23 5
      224 JUMPIFNOT                        R23 ; [+2]
      225 MOVE                             R22 R6
      226 JUMP                             ; [+1]
      227 LOADNIL                          R22
      228 SETTABLEKS                       R22 R21 K55 ["DisableHover"]
      230 CALL                             R19 2 1
      231 SETTABLEKS                       R19 R18 K26 ["Table"]
      233 JUMPIFNOT                        R6 ; [+20]
      234 GETUPVAL                         R20 26
      235 JUMPIFEQKNIL                     R20 ; [+18]
      237 GETUPVAL                         R19 3
      238 GETTABLEKS                       R19 R19 K22 ["createElement"]
      240 GETUPVAL                         R20 27
      241 DUPTABLE                         R21 K61 [{"anchorRef", "isOpen", "cell", "onItemActivated", "onClose"}]
      242 SETTABLEKS                       R8 R21 K56 ["anchorRef"]
      244 SETTABLEKS                       R6 R21 K57 ["isOpen"]
      246 SETTABLEKS                       R4 R21 K58 ["cell"]
      248 SETTABLEKS                       R9 R21 K59 ["onItemActivated"]
      250 SETTABLEKS                       R9 R21 K60 ["onClose"]
      252 CALL                             R19 2 1
      253 JUMP                             ; [+1]
      254 LOADNIL                          R19
      255 SETTABLEKS                       R19 R18 K27 ["Menu"]
      257 CALL                             R15 3 -1
      258 CLOSEUPVALS                      R8
      259 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useState"]
       16 GETTABLEKS                       R3 R1 K9 ["useMemo"]
       18 GETTABLEKS                       R4 R1 K10 ["useEffect"]
       20 GETIMPORT                        R5 K5 [require]
       22 GETTABLEKS                       R6 R0 K6 ["Packages"]
       24 GETTABLEKS                       R6 R6 K11 ["Framework"]
       26 CALL                             R5 1 1
       27 GETTABLEKS                       R6 R5 K12 ["ContextServices"]
       29 GETTABLEKS                       R6 R6 K13 ["Localization"]
       31 GETIMPORT                        R7 K5 [require]
       33 GETTABLEKS                       R8 R0 K6 ["Packages"]
       35 GETTABLEKS                       R8 R8 K14 ["Dash"]
       37 CALL                             R7 1 1
       38 GETTABLEKS                       R8 R7 K15 ["join"]
       40 GETIMPORT                        R9 K5 [require]
       42 GETTABLEKS                       R10 R0 K16 ["Src"]
       44 GETTABLEKS                       R10 R10 K17 ["Util"]
       46 GETTABLEKS                       R10 R10 K18 ["Services"]
       48 CALL                             R9 1 1
       49 GETTABLEKS                       R10 R9 K19 ["StartPageManager"]
       51 GETIMPORT                        R11 K5 [require]
       53 GETTABLEKS                       R12 R0 K16 ["Src"]
       55 GETTABLEKS                       R12 R12 K17 ["Util"]
       57 GETTABLEKS                       R12 R12 K20 ["Foundation"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K5 [require]
       62 GETTABLEKS                       R13 R0 K16 ["Src"]
       64 GETTABLEKS                       R13 R13 K21 ["SharedFlags"]
       66 GETTABLEKS                       R13 R13 K22 ["getFFlagLuaStartPageTableContextMenu"]
       68 CALL                             R12 1 1
       69 CALL                             R12 0 1
       70 GETIMPORT                        R13 K5 [require]
       72 GETTABLEKS                       R14 R0 K16 ["Src"]
       74 GETTABLEKS                       R14 R14 K21 ["SharedFlags"]
       76 GETTABLEKS                       R14 R14 K23 ["getFFlagLuaStartPageAddKebabMenuToListView"]
       78 CALL                             R13 1 1
       79 CALL                             R13 0 1
       80 GETIMPORT                        R14 K5 [require]
       82 GETTABLEKS                       R15 R0 K16 ["Src"]
       84 GETTABLEKS                       R15 R15 K21 ["SharedFlags"]
       86 GETTABLEKS                       R15 R15 K24 ["getFFlagLuaStartPageOpenACopy"]
       88 CALL                             R14 1 1
       89 CALL                             R14 0 1
       90 GETIMPORT                        R15 K5 [require]
       92 GETTABLEKS                       R16 R0 K16 ["Src"]
       94 GETTABLEKS                       R16 R16 K21 ["SharedFlags"]
       96 GETTABLEKS                       R16 R16 K25 ["getFFlagLuaStartPageNewListView"]
       98 CALL                             R15 1 1
       99 GETIMPORT                        R16 K5 [require]
      101 GETTABLEKS                       R17 R0 K16 ["Src"]
      103 GETTABLEKS                       R17 R17 K21 ["SharedFlags"]
      105 GETTABLEKS                       R17 R17 K26 ["getFFlagStartPageAllowDisableTeamCreate"]
      107 CALL                             R16 1 1
      108 CALL                             R16 0 1
      109 GETIMPORT                        R17 K5 [require]
      111 GETTABLEKS                       R18 R0 K16 ["Src"]
      113 GETTABLEKS                       R18 R18 K27 ["Constants"]
      115 GETTABLEKS                       R18 R18 K28 ["Audience"]
      117 CALL                             R17 1 1
      118 GETIMPORT                        R18 K5 [require]
      120 GETTABLEKS                       R19 R0 K16 ["Src"]
      122 GETTABLEKS                       R19 R19 K17 ["Util"]
      124 GETTABLEKS                       R19 R19 K29 ["AudienceUtils"]
      126 CALL                             R18 1 1
      127 GETTABLEKS                       R19 R18 K30 ["audienceIsPrivate"]
      129 GETTABLEKS                       R20 R18 K31 ["audienceIncludes"]
      131 GETIMPORT                        R21 K5 [require]
      133 GETTABLEKS                       R22 R0 K16 ["Src"]
      135 GETTABLEKS                       R22 R22 K32 ["Contexts"]
      137 GETTABLEKS                       R22 R22 K33 ["ContextMenuActions"]
      139 CALL                             R21 1 1
      140 GETIMPORT                        R22 K5 [require]
      142 GETTABLEKS                       R23 R0 K16 ["Src"]
      144 GETTABLEKS                       R23 R23 K34 ["Hooks"]
      146 GETTABLEKS                       R23 R23 K35 ["useCellContextActions"]
      148 CALL                             R22 1 1
      149 GETTABLEKS                       R23 R9 K36 ["StudioService"]
      151 GETIMPORT                        R24 K5 [require]
      153 GETTABLEKS                       R25 R0 K16 ["Src"]
      155 GETTABLEKS                       R25 R25 K37 ["Network"]
      157 GETTABLEKS                       R25 R25 K38 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace"]
      159 CALL                             R24 1 1
      160 GETTABLEKS                       R25 R1 K39 ["useContext"]
      162 GETIMPORT                        R26 K5 [require]
      164 GETTABLEKS                       R27 R0 K16 ["Src"]
      166 GETTABLEKS                       R27 R27 K17 ["Util"]
      168 GETTABLEKS                       R27 R27 K40 ["Dialogs"]
      170 CALL                             R26 1 1
      171 GETIMPORT                        R27 K5 [require]
      173 GETTABLEKS                       R28 R0 K16 ["Src"]
      175 GETTABLEKS                       R28 R28 K41 ["Types"]
      177 CALL                             R27 1 1
      178 GETTABLEKS                       R28 R5 K42 ["UI"]
      180 GETTABLEKS                       R29 R28 K43 ["TreeTable"]
      182 GETIMPORT                        R30 K5 [require]
      184 GETTABLEKS                       R31 R0 K16 ["Src"]
      186 GETTABLEKS                       R31 R31 K44 ["Components"]
      188 GETTABLEKS                       R31 R31 K45 ["Shimmer"]
      190 CALL                             R30 1 1
      191 JUMPIF                           R12 ; [+1]
      192 JUMPIFNOT                        R13 ; [+12]
      193 GETIMPORT                        R31 K5 [require]
      195 GETTABLEKS                       R32 R0 K16 ["Src"]
      197 GETTABLEKS                       R32 R32 K20 ["Foundation"]
      199 GETTABLEKS                       R32 R32 K44 ["Components"]
      201 GETTABLEKS                       R32 R32 K46 ["ContextMenu"]
      203 CALL                             R31 1 1
      204 JUMP                             ; [+1]
      205 LOADNIL                          R31
      206 GETIMPORT                        R32 K5 [require]
      208 GETTABLEKS                       R33 R0 K16 ["Src"]
      210 GETTABLEKS                       R33 R33 K44 ["Components"]
      212 GETTABLEKS                       R33 R33 K47 ["AgeRestrictedCollaborationBadge"]
      214 CALL                             R32 1 1
      215 GETTABLEKS                       R33 R11 K34 ["Hooks"]
      217 GETTABLEKS                       R33 R33 K48 ["useMeasurableRef"]
      219 GETIMPORT                        R34 K5 [require]
      221 GETTABLEKS                       R35 R0 K16 ["Src"]
      223 GETTABLEKS                       R35 R35 K17 ["Util"]
      225 GETTABLEKS                       R35 R35 K49 ["formatISOTimestamp"]
      227 CALL                             R34 1 1
      228 GETIMPORT                        R35 K5 [require]
      230 GETTABLEKS                       R36 R0 K16 ["Src"]
      232 GETTABLEKS                       R36 R36 K17 ["Util"]
      234 GETTABLEKS                       R36 R36 K50 ["getReachStatusBadgePresentation"]
      236 CALL                             R35 1 1
      237 GETIMPORT                        R36 K5 [require]
      239 GETTABLEKS                       R37 R0 K16 ["Src"]
      241 GETTABLEKS                       R37 R37 K17 ["Util"]
      243 GETTABLEKS                       R37 R37 K51 ["CoreContentStatusConstants"]
      245 CALL                             R36 1 1
      246 GETTABLEKS                       R37 R36 K52 ["NEEDS_ATTENTION_AGE_THRESHOLD"]
      248 GETTABLEKS                       R38 R36 K53 ["AGE_BRACKET_9"]
      250 DUPCLOSURE                       R39 K54 [PROTO_0]
      251 CAPTURE                          VAL R35
      252 CAPTURE                          VAL R19
      253 CAPTURE                          VAL R20
      254 CAPTURE                          VAL R17
      255 CAPTURE                          VAL R37
      256 CAPTURE                          VAL R38
      257 NEWTABLE                         R40 0 7
      259 DUPTABLE                         R41 K62 [{["Name"] = "", ["Key"] = "Icon", ["Width"], ["ShouldSort"] = False}]
      260 GETIMPORT                        R42 K65 [UDim.new]
      262 LOADN                            R43 0
      263 LOADN                            R44 64
      264 CALL                             R42 2 1
      265 SETTABLEKS                       R42 R41 K59 ["Width"]
      267 DUPTABLE                         R42 K69 [{["Name"] = "Name", ["Key"] = "Name", ["Width"], ["ShouldSort"] = True, ["SortParam"] = "GameName"}]
      268 JUMPIFNOT                        R13 ; [+6]
      269 GETIMPORT                        R43 K65 [UDim.new]
      271 LOADK                            R44 K70 [0.25]
      272 LOADN                            R45 -136
      273 CALL                             R43 2 1
      274 JUMP                             ; [+5]
      275 GETIMPORT                        R43 K65 [UDim.new]
      277 LOADK                            R44 K70 [0.25]
      278 LOADN                            R45 -64
      279 CALL                             R43 2 1
      280 SETTABLEKS                       R43 R42 K59 ["Width"]
      282 DUPTABLE                         R43 K72 [{["Name"] = "Description", ["Key"] = "Description", ["Width"], ["ShouldSort"] = False}]
      283 GETIMPORT                        R44 K65 [UDim.new]
      285 LOADK                            R45 K70 [0.25]
      286 LOADN                            R46 0
      287 CALL                             R44 2 1
      288 SETTABLEKS                       R44 R43 K59 ["Width"]
      290 DUPTABLE                         R44 K76 [{["Name"] = "Last Edited", ["Key"] = "Edited", ["Width"], ["ShouldSort"] = True, ["SortParam"] = "LastUpdated"}]
      291 GETIMPORT                        R45 K65 [UDim.new]
      293 LOADK                            R46 K77 [0.15]
      294 LOADN                            R47 0
      295 CALL                             R45 2 1
      296 SETTABLEKS                       R45 R44 K59 ["Width"]
      298 DUPTABLE                         R45 K81 [{["Name"] = "Date Created", ["Key"] = "Created", ["Width"], ["ShouldSort"] = True, ["SortParam"] = "GameCreated"}]
      299 GETIMPORT                        R46 K65 [UDim.new]
      301 LOADK                            R47 K77 [0.15]
      302 LOADN                            R48 0
      303 CALL                             R46 2 1
      304 SETTABLEKS                       R46 R45 K59 ["Width"]
      306 DUPTABLE                         R46 K83 [{["Name"] = "Playability", ["Key"] = "Playability", ["Width"], ["ShouldSort"] = False}]
      307 GETIMPORT                        R47 K65 [UDim.new]
      309 LOADK                            R48 K84 [0.1]
      310 LOADN                            R49 0
      311 CALL                             R47 2 1
      312 SETTABLEKS                       R47 R46 K59 ["Width"]
      314 DUPTABLE                         R47 K87 [{["Name"] = "Team Create", ["Key"] = "TeamCreate", ["Width"], ["ShouldSort"] = False}]
      315 GETIMPORT                        R48 K65 [UDim.new]
      317 LOADK                            R49 K84 [0.1]
      318 LOADN                            R50 0
      319 CALL                             R48 2 1
      320 SETTABLEKS                       R48 R47 K59 ["Width"]
      322 SETLIST                          R40 R41 7 [1]
      324 JUMPIFNOT                        R13 ; [+14]
      325 DUPTABLE                         R43 K89 [{["Name"] = "", ["Key"] = "KebabMenu", ["Width"], ["ShouldSort"] = False}]
      326 GETIMPORT                        R44 K65 [UDim.new]
      328 LOADN                            R45 0
      329 LOADN                            R46 72
      330 CALL                             R44 2 1
      331 SETTABLEKS                       R44 R43 K59 ["Width"]
      333 FASTCALL2                        TABLE_INSERT R40 R43 ; [+4]
      335 MOVE                             R42 R40
      336 GETIMPORT                        R41 K92 [table.insert]
      338 CALL                             R41 2 0
      339 NEWTABLE                         R41 4 0
      341 LOADN                            R42 2
      342 SETTABLEKS                       R42 R41 K68 ["GameName"]
      344 LOADN                            R42 4
      345 SETTABLEKS                       R42 R41 K75 ["LastUpdated"]
      347 LOADN                            R42 5
      348 SETTABLEKS                       R42 R41 K80 ["GameCreated"]
      350 DUPCLOSURE                       R42 K93 [PROTO_1]
      351 CAPTURE                          VAL R1
      352 CAPTURE                          VAL R30
      353 DUPCLOSURE                       R43 K94 [PROTO_2]
      354 CAPTURE                          VAL R1
      355 CAPTURE                          VAL R30
      356 DUPTABLE                         R44 K96 [{"Icon", "Name", "Description", "Edited", "Created", "Playability", "Type", "TeamCreate", "KebabMenu"}]
      357 DUPTABLE                         R45 K100 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      358 DUPTABLE                         R46 K102 [{["Type"] = "Placeholder"}]
      359 SETTABLEKS                       R46 R45 K98 ["Schema"]
      361 DUPTABLE                         R46 K103 [{"Placeholder"}]
      362 SETTABLEKS                       R43 R46 K101 ["Placeholder"]
      364 SETTABLEKS                       R46 R45 K99 ["Renderers"]
      366 SETTABLEKS                       R45 R44 K58 ["Icon"]
      368 DUPTABLE                         R45 K100 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      369 DUPTABLE                         R46 K102 [{["Type"] = "Placeholder"}]
      370 SETTABLEKS                       R46 R45 K98 ["Schema"]
      372 DUPTABLE                         R46 K103 [{"Placeholder"}]
      373 SETTABLEKS                       R42 R46 K101 ["Placeholder"]
      375 SETTABLEKS                       R46 R45 K99 ["Renderers"]
      377 SETTABLEKS                       R45 R44 K55 ["Name"]
      379 DUPTABLE                         R45 K100 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      380 DUPTABLE                         R46 K102 [{["Type"] = "Placeholder"}]
      381 SETTABLEKS                       R46 R45 K98 ["Schema"]
      383 DUPTABLE                         R46 K103 [{"Placeholder"}]
      384 SETTABLEKS                       R42 R46 K101 ["Placeholder"]
      386 SETTABLEKS                       R46 R45 K99 ["Renderers"]
      388 SETTABLEKS                       R45 R44 K71 ["Description"]
      390 DUPTABLE                         R45 K100 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      391 DUPTABLE                         R46 K102 [{["Type"] = "Placeholder"}]
      392 SETTABLEKS                       R46 R45 K98 ["Schema"]
      394 DUPTABLE                         R46 K103 [{"Placeholder"}]
      395 SETTABLEKS                       R42 R46 K101 ["Placeholder"]
      397 SETTABLEKS                       R46 R45 K99 ["Renderers"]
      399 SETTABLEKS                       R45 R44 K74 ["Edited"]
      401 DUPTABLE                         R45 K100 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      402 DUPTABLE                         R46 K102 [{["Type"] = "Placeholder"}]
      403 SETTABLEKS                       R46 R45 K98 ["Schema"]
      405 DUPTABLE                         R46 K103 [{"Placeholder"}]
      406 SETTABLEKS                       R42 R46 K101 ["Placeholder"]
      408 SETTABLEKS                       R46 R45 K99 ["Renderers"]
      410 SETTABLEKS                       R45 R44 K79 ["Created"]
      412 DUPTABLE                         R45 K100 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      413 DUPTABLE                         R46 K102 [{["Type"] = "Placeholder"}]
      414 SETTABLEKS                       R46 R45 K98 ["Schema"]
      416 DUPTABLE                         R46 K103 [{"Placeholder"}]
      417 SETTABLEKS                       R42 R46 K101 ["Placeholder"]
      419 SETTABLEKS                       R46 R45 K99 ["Renderers"]
      421 SETTABLEKS                       R45 R44 K82 ["Playability"]
      423 DUPTABLE                         R45 K100 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      424 DUPTABLE                         R46 K102 [{["Type"] = "Placeholder"}]
      425 SETTABLEKS                       R46 R45 K98 ["Schema"]
      427 DUPTABLE                         R46 K103 [{"Placeholder"}]
      428 SETTABLEKS                       R42 R46 K101 ["Placeholder"]
      430 SETTABLEKS                       R46 R45 K99 ["Renderers"]
      432 SETTABLEKS                       R45 R44 K95 ["Type"]
      434 DUPTABLE                         R45 K100 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      435 DUPTABLE                         R46 K102 [{["Type"] = "Placeholder"}]
      436 SETTABLEKS                       R46 R45 K98 ["Schema"]
      438 DUPTABLE                         R46 K103 [{"Placeholder"}]
      439 SETTABLEKS                       R42 R46 K101 ["Placeholder"]
      441 SETTABLEKS                       R46 R45 K99 ["Renderers"]
      443 SETTABLEKS                       R45 R44 K86 ["TeamCreate"]
      445 JUMPIFNOT                        R13 ; [+2]
      446 DUPTABLE                         R45 K104 [{["Value"] = ""}]
      447 JUMP                             ; [+1]
      448 LOADNIL                          R45
      449 SETTABLEKS                       R45 R44 K88 ["KebabMenu"]
      451 DUPCLOSURE                       R45 K105 [PROTO_3]
      452 DUPCLOSURE                       R46 K106 [PROTO_5]
      453 CAPTURE                          VAL R21
      454 CAPTURE                          VAL R13
      455 CAPTURE                          VAL R22
      456 CAPTURE                          VAL R4
      457 CAPTURE                          VAL R1
      458 CAPTURE                          VAL R31
      459 DUPCLOSURE                       R47 K107 [PROTO_19]
      460 CAPTURE                          VAL R15
      461 CAPTURE                          VAL R2
      462 CAPTURE                          VAL R6
      463 CAPTURE                          VAL R1
      464 CAPTURE                          VAL R12
      465 CAPTURE                          VAL R13
      466 CAPTURE                          VAL R33
      467 CAPTURE                          VAL R3
      468 CAPTURE                          VAL R34
      469 CAPTURE                          VAL R39
      470 CAPTURE                          VAL R14
      471 CAPTURE                          VAL R16
      472 CAPTURE                          VAL R8
      473 CAPTURE                          VAL R44
      474 CAPTURE                          VAL R43
      475 CAPTURE                          VAL R32
      476 CAPTURE                          VAL R25
      477 CAPTURE                          VAL R26
      478 CAPTURE                          VAL R9
      479 CAPTURE                          VAL R29
      480 CAPTURE                          VAL R40
      481 CAPTURE                          VAL R45
      482 CAPTURE                          VAL R24
      483 CAPTURE                          VAL R23
      484 CAPTURE                          VAL R10
      485 CAPTURE                          VAL R41
      486 CAPTURE                          VAL R31
      487 CAPTURE                          VAL R46
      488 SETGLOBAL                        R47 K108 ["DEPRECATED_ExperiencesTable"]
      490 GETGLOBAL                        R47 K108 ["DEPRECATED_ExperiencesTable"]
      492 RETURN                           R47 1
