PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+4]
        2 GETTABLEKS                       R3 R0 K1 ["PrivacyType"]
        4 ORK                              R2 R3 K0 [""]
        5 RETURN                           R2 1
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 GETUPVAL                         R4 1
        9 JUMPIFNOT                        R4 ; [+21]
       10 GETTABLEKS                       R4 R0 K2 ["Audiences"]
       12 JUMPIFEQKNIL                     R4 ; [+18]
       14 GETTABLEKS                       R4 R0 K2 ["Audiences"]
       16 GETUPVAL                         R5 2
       17 MOVE                             R6 R4
       18 CALL                             R5 1 1
       19 NOT                              R2 R5
       20 MOVE                             R5 R2
       21 JUMPIFNOT                        R5 ; [+7]
       22 GETUPVAL                         R6 3
       23 MOVE                             R7 R4
       24 GETUPVAL                         R8 4
       25 GETTABLEKS                       R8 R8 K3 ["Public"]
       27 CALL                             R6 2 1
       28 NOT                              R5 R6
       29 MOVE                             R3 R5
       30 JUMP                             ; [+8]
       31 GETTABLEKS                       R4 R0 K1 ["PrivacyType"]
       33 JUMPIFEQKS                       R4 K3 ["Public"] ; [+2]
       35 LOADB                            R2 0 +1
       36 LOADB                            R2 1
       37 GETTABLEKS                       R3 R0 K4 ["IsFriendsOnly"]
       39 JUMPIF                           R2 ; [+6]
       40 LOADK                            R6 K5 ["Plugin"]
       41 LOADK                            R7 K6 ["PrivacyType.Private"]
       42 NAMECALL                         R4 R1 K7 ["getText"]
       44 CALL                             R4 3 -1
       45 RETURN                           R4 -1
       46 GETTABLEKS                       R5 R0 K8 ["ContentMaturity"]
       48 JUMPIFEQKS                       R5 K9 ["unrated"] ; [+2]
       50 LOADB                            R4 0 +1
       51 LOADB                            R4 1
       52 GETTABLEKS                       R5 R0 K10 ["IsSequestered"]
       54 JUMPIFNOT                        R2 ; [+8]
       55 JUMPIF                           R4 ; [+1]
       56 JUMPIFNOT                        R5 ; [+6]
       57 LOADK                            R8 K5 ["Plugin"]
       58 LOADK                            R9 K11 ["PrivacyType.Unplayable"]
       59 NAMECALL                         R6 R1 K7 ["getText"]
       61 CALL                             R6 3 -1
       62 RETURN                           R6 -1
       63 JUMPIFNOT                        R2 ; [+9]
       64 GETTABLEKS                       R6 R0 K12 ["IsDiscoveryBlocked"]
       66 JUMPIFNOT                        R6 ; [+6]
       67 LOADK                            R8 K5 ["Plugin"]
       68 LOADK                            R9 K13 ["PrivacyType.NeedsAttention"]
       69 NAMECALL                         R6 R1 K7 ["getText"]
       71 CALL                             R6 3 -1
       72 RETURN                           R6 -1
       73 GETTABLEKS                       R6 R0 K14 ["AgeRecommendation"]
       75 MOVE                             R7 R2
       76 JUMPIFNOT                        R7 ; [+8]
       77 NOT                              R7 R4
       78 JUMPIFNOT                        R7 ; [+6]
       79 GETTABLEKS                       R8 R0 K15 ["CoreContentSelectStatus"]
       81 JUMPIFEQKS                       R8 K16 ["Eligible"] ; [+2]
       83 LOADB                            R7 0 +1
       84 LOADB                            R7 1
       85 MOVE                             R8 R7
       86 JUMPIFNOT                        R8 ; [+13]
       87 LOADB                            R8 0
       88 GETTABLEKS                       R9 R0 K17 ["CoreContentReasons"]
       90 JUMPIFEQKNIL                     R9 ; [+9]
       92 GETTABLEKS                       R10 R0 K17 ["CoreContentReasons"]
       94 LENGTH                           R9 R10
       95 LOADN                            R10 0
       96 JUMPIFLT                         R10 R9 ; [+2]
       98 LOADB                            R8 0 +1
       99 LOADB                            R8 1
      100 JUMPIFNOT                        R2 ; [+13]
      101 JUMPIFEQKNIL                     R6 ; [+4]
      103 GETUPVAL                         R9 5
      104 JUMPIFNOTLT                      R6 R9 ; [+9]
      106 JUMPIFNOT                        R7 ; [+7]
      107 JUMPIFNOT                        R8 ; [+6]
      108 LOADK                            R11 K5 ["Plugin"]
      109 LOADK                            R12 K13 ["PrivacyType.NeedsAttention"]
      110 NAMECALL                         R9 R1 K7 ["getText"]
      112 CALL                             R9 3 -1
      113 RETURN                           R9 -1
      114 JUMPIFNOT                        R2 ; [+7]
      115 JUMPIFNOT                        R3 ; [+6]
      116 LOADK                            R11 K5 ["Plugin"]
      117 LOADK                            R12 K18 ["PrivacyType.Limited"]
      118 NAMECALL                         R9 R1 K7 ["getText"]
      120 CALL                             R9 3 -1
      121 RETURN                           R9 -1
      122 LOADNIL                          R9
      123 JUMPIFNOT                        R7 ; [+6]
      124 JUMPIFEQKNIL                     R6 ; [+3]
      126 MOVE                             R9 R6
      127 JUMP                             ; [+14]
      128 LOADN                            R9 0
      129 JUMP                             ; [+12]
      130 GETUPVAL                         R11 5
      131 JUMPIFEQKNIL                     R6 ; [+3]
      133 MOVE                             R12 R6
      134 JUMP                             ; [+1]
      135 LOADN                            R12 0
      136 FASTCALL2                        MATH_MAX R11 R12 ; [+3]
      138 GETIMPORT                        R10 K21 [math.max]
      140 CALL                             R10 2 1
      141 MOVE                             R9 R10
      142 LOADNIL                          R10
      143 GETUPVAL                         R11 5
      144 JUMPIFNOTLE                      R11 R9 ; [+8]
      146 GETUPVAL                         R12 5
      147 FASTCALL1                        TOSTRING R12 ; [+2]
      148 GETIMPORT                        R11 K23 [tostring]
      150 CALL                             R11 1 1
      151 MOVE                             R10 R11
      152 JUMP                             ; [+9]
      153 GETUPVAL                         R11 6
      154 JUMPIFNOTLE                      R11 R9 ; [+7]
      156 GETUPVAL                         R12 6
      157 FASTCALL1                        TOSTRING R12 ; [+2]
      158 GETIMPORT                        R11 K23 [tostring]
      160 CALL                             R11 1 1
      161 MOVE                             R10 R11
      162 JUMPIFEQKNIL                     R10 ; [+10]
      164 LOADK                            R13 K5 ["Plugin"]
      165 LOADK                            R14 K24 ["PrivacyType.PublicAgeGated"]
      166 DUPTABLE                         R15 K26 [{"minAge"}]
      167 SETTABLEKS                       R10 R15 K25 ["minAge"]
      169 NAMECALL                         R11 R1 K7 ["getText"]
      171 CALL                             R11 4 -1
      172 RETURN                           R11 -1
      173 LOADK                            R13 K5 ["Plugin"]
      174 LOADK                            R14 K27 ["PrivacyType.PublicAllAges"]
      175 NAMECALL                         R11 R1 K7 ["getText"]
      177 CALL                             R11 3 -1
      178 RETURN                           R11 -1

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
        0 GETIMPORT                        R2 K1 [ipairs]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 3
        4 FORGPREP_INEXT                   R2
        5 GETTABLEKS                       R7 R6 K2 ["Id"]
        7 JUMPIFNOT                        R7 ; [+25]
        8 GETTABLEKS                       R7 R6 K2 ["Id"]
       10 GETTABLEKS                       R7 R7 K3 ["Type"]
       12 JUMPIFNOTEQKS                    R7 K4 ["PlaceId"] ; [+20]
       14 GETTABLEKS                       R7 R6 K2 ["Id"]
       16 GETTABLEKS                       R7 R7 K4 ["PlaceId"]
       18 JUMPIFNOTEQ                      R7 R1 ; [+14]
       20 GETTABLEKS                       R7 R6 K5 ["UniverseId"]
       22 JUMPIFNOT                        R7 ; [+10]
       23 GETTABLEKS                       R7 R6 K5 ["UniverseId"]
       25 GETTABLEKS                       R7 R7 K6 ["Value"]
       27 JUMPIFNOT                        R7 ; [+5]
       28 GETTABLEKS                       R7 R6 K5 ["UniverseId"]
       30 GETTABLEKS                       R7 R7 K6 ["Value"]
       32 RETURN                           R7 1
       33 GETTABLEKS                       R7 R6 K7 ["children"]
       35 JUMPIFNOT                        R7 ; [+36]
       36 GETIMPORT                        R7 K1 [ipairs]
       38 GETTABLEKS                       R8 R6 K7 ["children"]
       40 CALL                             R7 1 3
       41 FORGPREP_INEXT                   R7
       42 GETTABLEKS                       R12 R11 K2 ["Id"]
       44 JUMPIFNOT                        R12 ; [+25]
       45 GETTABLEKS                       R12 R11 K2 ["Id"]
       47 GETTABLEKS                       R12 R12 K3 ["Type"]
       49 JUMPIFNOTEQKS                    R12 K4 ["PlaceId"] ; [+20]
       51 GETTABLEKS                       R12 R11 K2 ["Id"]
       53 GETTABLEKS                       R12 R12 K4 ["PlaceId"]
       55 JUMPIFNOTEQ                      R12 R1 ; [+14]
       57 GETTABLEKS                       R12 R11 K5 ["UniverseId"]
       59 JUMPIFNOT                        R12 ; [+10]
       60 GETTABLEKS                       R12 R11 K5 ["UniverseId"]
       62 GETTABLEKS                       R12 R12 K6 ["Value"]
       64 JUMPIFNOT                        R12 ; [+5]
       65 GETTABLEKS                       R12 R11 K5 ["UniverseId"]
       67 GETTABLEKS                       R12 R12 K6 ["Value"]
       69 RETURN                           R12 1
       70 FORGLOOP                         R7 2 [inext] ; [-29]
       72 FORGLOOP                         R2 2 [inext] ; [-68]
       74 LOADB                            R3 0
       75 LOADK                            R5 K8 ["Universe ID not found for place ID "]
       76 MOVE                             R6 R1
       77 CONCAT                           R4 R5 R6
       78 FASTCALL2                        ASSERT R3 R4 ; [+3]
       80 GETIMPORT                        R2 K10 [assert]
       82 CALL                             R2 2 0
       83 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        ASSERT R3 ; [+2]
        2 GETIMPORT                        R2 K1 [assert]
        4 CALL                             R2 1 0
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 MOVE                             R4 R0
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 GETTABLEKS                       R9 R8 K2 ["RootPlaceId"]
       13 JUMPIFNOTEQ                      R9 R1 ; [+13]
       15 GETTABLEKS                       R9 R8 K3 ["Id"]
       17 JUMPIFNOT                        R9 ; [+2]
       18 GETTABLEKS                       R2 R8 K3 ["Id"]
       20 GETTABLEKS                       R9 R8 K4 ["IsTeamCreateEnabled"]
       22 JUMPIFEQKNIL                     R9 ; [+3]
       24 GETTABLEKS                       R3 R8 K4 ["IsTeamCreateEnabled"]
       26 RETURN                           R2 2
       27 GETTABLEKS                       R9 R8 K5 ["Children"]
       29 JUMPIFNOT                        R9 ; [+23]
       30 GETTABLEKS                       R9 R8 K5 ["Children"]
       32 LOADNIL                          R10
       33 LOADNIL                          R11
       34 FORGPREP                         R9
       35 GETTABLEKS                       R14 R13 K3 ["Id"]
       37 JUMPIFNOTEQ                      R14 R1 ; [+13]
       39 GETTABLEKS                       R14 R13 K6 ["UniverseId"]
       41 JUMPIFNOT                        R14 ; [+2]
       42 GETTABLEKS                       R2 R13 K6 ["UniverseId"]
       44 GETTABLEKS                       R14 R8 K4 ["IsTeamCreateEnabled"]
       46 JUMPIFEQKNIL                     R14 ; [+3]
       48 GETTABLEKS                       R3 R8 K4 ["IsTeamCreateEnabled"]
       50 RETURN                           R2 2
       51 FORGLOOP                         R9 2 ; [-17]
       53 FORGLOOP                         R4 2 ; [-43]
       55 LOADB                            R5 0
       56 LOADK                            R7 K7 ["Universe ID not found for place ID "]
       57 MOVE                             R8 R1
       58 CONCAT                           R6 R7 R8
       59 FASTCALL2                        ASSERT R5 R6 ; [+3]
       61 GETIMPORT                        R4 K1 [assert]
       63 CALL                             R4 2 0
       64 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        ASSERT R3 ; [+2]
        2 GETIMPORT                        R2 K1 [assert]
        4 CALL                             R2 1 0
        5 MOVE                             R2 R0
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 GETTABLEKS                       R7 R6 K2 ["IsPlaceholder"]
       11 JUMPIF                           R7 ; [+56]
       12 GETTABLEKS                       R7 R6 K3 ["RootPlaceId"]
       14 GETTABLEKS                       R8 R6 K4 ["Id"]
       16 JUMPIFNOT                        R7 ; [+17]
       17 JUMPIFNOT                        R8 ; [+16]
       18 JUMPIFNOTEQ                      R7 R1 ; [+15]
       20 DUPTABLE                         R9 K8 [{"universeId", "isTeamCreateEnabled", "rootPlaceId"}]
       21 SETTABLEKS                       R8 R9 K5 ["universeId"]
       23 GETTABLEKS                       R11 R6 K9 ["IsTeamCreateEnabled"]
       25 JUMPIFEQKB                       R11 TRUE ; [+2]
       27 LOADB                            R10 0 +1
       28 LOADB                            R10 1
       29 SETTABLEKS                       R10 R9 K6 ["isTeamCreateEnabled"]
       31 SETTABLEKS                       R7 R9 K7 ["rootPlaceId"]
       33 RETURN                           R9 1
       34 GETTABLEKS                       R9 R6 K10 ["Children"]
       36 JUMPIFNOT                        R9 ; [+31]
       37 JUMPIFNOT                        R7 ; [+30]
       38 GETTABLEKS                       R9 R6 K10 ["Children"]
       40 LOADNIL                          R10
       41 LOADNIL                          R11
       42 FORGPREP                         R9
       43 GETTABLEKS                       R14 R13 K4 ["Id"]
       45 JUMPIFNOTEQ                      R14 R1 ; [+20]
       47 GETTABLEKS                       R14 R13 K11 ["UniverseId"]
       49 JUMPIFNOT                        R14 ; [+16]
       50 GETTABLEKS                       R15 R6 K9 ["IsTeamCreateEnabled"]
       52 JUMPIFEQKB                       R15 TRUE ; [+2]
       54 LOADB                            R14 0 +1
       55 LOADB                            R14 1
       56 DUPTABLE                         R15 K8 [{"universeId", "isTeamCreateEnabled", "rootPlaceId"}]
       57 GETTABLEKS                       R16 R13 K11 ["UniverseId"]
       59 SETTABLEKS                       R16 R15 K5 ["universeId"]
       61 SETTABLEKS                       R14 R15 K6 ["isTeamCreateEnabled"]
       63 SETTABLEKS                       R7 R15 K7 ["rootPlaceId"]
       65 RETURN                           R15 1
       66 FORGLOOP                         R9 2 ; [-24]
       68 FORGLOOP                         R2 2 ; [-60]
       70 LOADB                            R3 0
       71 LOADK                            R5 K12 ["PlaceInfo not found for place ID "]
       72 MOVE                             R6 R1
       73 CONCAT                           R4 R5 R6
       74 FASTCALL2                        ASSERT R3 R4 ; [+3]
       76 GETIMPORT                        R2 K1 [assert]
       78 CALL                             R2 2 0
       79 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["onClose"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
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
       16 NEWTABLE                         R1 0 3
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
       29 SETLIST                          R1 R2 3 [1]
       31 SETTABLEKS                       R1 R0 K3 ["_allowedActions"]
       33 GETUPVAL                         R1 4
       34 GETTABLEKS                       R1 R1 K10 ["createElement"]
       36 LOADK                            R2 K11 ["Frame"]
       37 DUPTABLE                         R3 K15 [{["Size"], ["BackgroundTransparency"] = 1}]
       38 GETIMPORT                        R4 K18 [UDim2.fromScale]
       40 LOADN                            R5 1
       41 LOADN                            R6 1
       42 CALL                             R4 2 1
       43 SETTABLEKS                       R4 R3 K12 ["Size"]
       45 DUPTABLE                         R4 K20 [{"Button"}]
       46 GETUPVAL                         R5 4
       47 GETTABLEKS                       R5 R5 K10 ["createElement"]
       49 LOADK                            R6 K21 ["ImageButton"]
       50 NEWTABLE                         R7 8 0
       52 GETIMPORT                        R8 K23 [UDim2.fromOffset]
       54 LOADN                            R9 28
       55 LOADN                            R10 28
       56 CALL                             R8 2 1
       57 SETTABLEKS                       R8 R7 K12 ["Size"]
       59 GETIMPORT                        R8 K26 [Vector2.new]
       61 LOADK                            R9 K27 [0.5]
       62 LOADK                            R10 K27 [0.5]
       63 CALL                             R8 2 1
       64 SETTABLEKS                       R8 R7 K28 ["AnchorPoint"]
       66 GETIMPORT                        R8 K18 [UDim2.fromScale]
       68 LOADK                            R9 K27 [0.5]
       69 LOADK                            R10 K27 [0.5]
       70 CALL                             R8 2 1
       71 SETTABLEKS                       R8 R7 K29 ["Position"]
       73 GETUPVAL                         R8 4
       74 GETTABLEKS                       R8 R8 K30 ["Tag"]
       76 LOADK                            R9 K31 ["X-Corner StartPage-TileBackground StartPage-NoBorder StartPage-KebabIcon"]
       77 SETTABLE                         R9 R7 R8
       78 GETUPVAL                         R8 4
       79 GETTABLEKS                       R8 R8 K32 ["Event"]
       81 GETTABLEKS                       R8 R8 K33 ["Activated"]
       83 NEWCLOSURE                       R9 P0
       84 CAPTURE                          UPVAL U5
       85 CAPTURE                          UPVAL U6
       86 CAPTURE                          VAL R0
       87 SETTABLE                         R9 R7 R8
       88 CALL                             R5 2 1
       89 SETTABLEKS                       R5 R4 K19 ["Button"]
       91 CALL                             R1 3 -1
       92 RETURN                           R1 -1

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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
      173 JUMP                             ; [+212]
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
      327 GETUPVAL                         R11 14
      328 JUMPIFNOT                        R11 ; [+18]
      329 GETTABLEKS                       R11 R5 K63 ["IsAgeRestrictedCollaboration"]
      331 JUMPIFNOT                        R11 ; [+15]
      332 DUPTABLE                         R10 K32 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      333 DUPTABLE                         R11 K65 [{["Type"] = "CollaborationRestriction"}]
      334 SETTABLEKS                       R11 R10 K30 ["Schema"]
      336 DUPTABLE                         R11 K66 [{"CollaborationRestriction"}]
      337 NEWCLOSURE                       R12 P1
      338 CAPTURE                          UPVAL U7
      339 CAPTURE                          UPVAL U15
      340 CAPTURE                          UPVAL U3
      341 CAPTURE                          VAL R5
      342 SETTABLEKS                       R12 R11 K64 ["CollaborationRestriction"]
      344 SETTABLEKS                       R11 R10 K31 ["Renderers"]
      346 JUMP                             ; [+9]
      347 DUPTABLE                         R10 K23 [{"Value"}]
      348 GETTABLEKS                       R12 R5 K26 ["IsTeamCreateEnabled"]
      350 JUMPIFNOT                        R12 ; [+2]
      351 LOADK                            R11 K27 ["Yes"]
      352 JUMP                             ; [+1]
      353 LOADK                            R11 K28 ["No"]
      354 SETTABLEKS                       R11 R10 K18 ["Value"]
      356 SETTABLEKS                       R10 R9 K15 ["TeamCreate"]
      358 GETUPVAL                         R11 1
      359 JUMPIFNOT                        R11 ; [+15]
      360 DUPTABLE                         R10 K32 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      361 DUPTABLE                         R11 K33 [{["Type"] = "KebabMenu"}]
      362 SETTABLEKS                       R11 R10 K30 ["Schema"]
      364 DUPTABLE                         R11 K34 [{"KebabMenu"}]
      365 NEWCLOSURE                       R12 P2
      366 CAPTURE                          UPVAL U7
      367 CAPTURE                          UPVAL U8
      368 CAPTURE                          UPVAL U9
      369 CAPTURE                          VAL R5
      370 SETTABLEKS                       R12 R11 K16 ["KebabMenu"]
      372 SETTABLEKS                       R11 R10 K31 ["Renderers"]
      374 JUMP                             ; [+1]
      375 LOADNIL                          R10
      376 SETTABLEKS                       R10 R9 K16 ["KebabMenu"]
      378 SETTABLEKS                       R6 R9 K38 ["children"]
      380 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
      382 MOVE                             R8 R0
      383 GETIMPORT                        R7 K37 [table.insert]
      385 CALL                             R7 2 0
      386 FORGLOOP                         R1 2 ; [-379]
      388 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R1 K1 [next]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 FASTCALL1                        TYPE R1 ; [+3]
        5 MOVE                             R3 R1
        6 GETIMPORT                        R2 K3 [type]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K4 ["number"] ; [+74]
       11 GETUPVAL                         R2 0
       12 JUMPIF                           R2 ; [+2]
       13 GETUPVAL                         R2 1
       14 JUMPIFNOT                        R2 ; [+57]
       15 GETUPVAL                         R2 0
       16 JUMPIFNOT                        R2 ; [+30]
       17 GETUPVAL                         R2 2
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R3 R3 K5 ["Cells"]
       21 MOVE                             R4 R1
       22 CALL                             R2 2 1
       23 GETUPVAL                         R3 4
       24 GETUPVAL                         R4 5
       25 NAMECALL                         R4 R4 K6 ["GetUserId"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R2 K7 ["universeId"]
       30 MOVE                             R6 R1
       31 GETTABLEKS                       R7 R2 K8 ["rootPlaceId"]
       33 GETUPVAL                         R8 6
       34 GETTABLEKS                       R8 R8 K9 ["showVerifyAge"]
       36 GETUPVAL                         R9 6
       37 GETTABLEKS                       R9 R9 K10 ["showAgeRestricted"]
       39 GETTABLEKS                       R10 R2 K11 ["isTeamCreateEnabled"]
       41 GETUPVAL                         R11 7
       42 GETUPVAL                         R12 8
       43 GETUPVAL                         R13 9
       44 LOADB                            R14 0
       45 CALL                             R3 11 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R2 10
       48 GETUPVAL                         R3 11
       49 MOVE                             R4 R1
       50 CALL                             R2 2 2
       51 GETUPVAL                         R4 4
       52 GETUPVAL                         R5 5
       53 NAMECALL                         R5 R5 K6 ["GetUserId"]
       55 CALL                             R5 1 1
       56 MOVE                             R6 R2
       57 MOVE                             R7 R1
       58 MOVE                             R8 R1
       59 GETUPVAL                         R9 6
       60 GETTABLEKS                       R9 R9 K9 ["showVerifyAge"]
       62 GETUPVAL                         R10 6
       63 GETTABLEKS                       R10 R10 K10 ["showAgeRestricted"]
       65 MOVE                             R11 R3
       66 GETUPVAL                         R12 7
       67 GETUPVAL                         R13 8
       68 GETUPVAL                         R14 9
       69 LOADB                            R15 0
       70 CALL                             R4 11 0
       71 RETURN                           R0 0
       72 GETUPVAL                         R2 12
       73 GETUPVAL                         R3 11
       74 MOVE                             R4 R1
       75 CALL                             R2 2 1
       76 GETUPVAL                         R3 13
       77 MOVE                             R5 R1
       78 MOVE                             R6 R2
       79 LOADB                            R7 0
       80 NAMECALL                         R3 R3 K12 ["openPlace"]
       82 CALL                             R3 4 0
       83 RETURN                           R0 0
       84 FASTCALL1                        TYPE R1 ; [+3]
       85 MOVE                             R3 R1
       86 GETIMPORT                        R2 K3 [type]
       88 CALL                             R2 1 1
       89 JUMPIFNOTEQKS                    R2 K13 ["string"] ; [+7]
       91 GETUPVAL                         R2 13
       92 MOVE                             R4 R1
       93 LOADB                            R5 0
       94 NAMECALL                         R2 R2 K14 ["openLocalFile"]
       96 CALL                             R2 3 0
       97 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_19:
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

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R2 0 0
        3 CALL                             R1 1 2
        4 GETUPVAL                         R3 1
        5 NAMECALL                         R3 R3 K0 ["use"]
        7 CALL                             R3 1 1
        8 GETUPVAL                         R4 0
        9 LOADNIL                          R5
       10 CALL                             R4 1 2
       11 JUMPIFNOTEQKNIL                  R4 ; [+2]
       13 LOADB                            R6 0 +1
       14 LOADB                            R6 1
       15 GETUPVAL                         R7 2
       16 GETTABLEKS                       R7 R7 K1 ["useRef"]
       18 LOADNIL                          R8
       19 CALL                             R7 1 1
       20 LOADNIL                          R8
       21 LOADNIL                          R9
       22 GETUPVAL                         R10 3
       23 JUMPIF                           R10 ; [+2]
       24 GETUPVAL                         R10 4
       25 JUMPIFNOT                        R10 ; [+17]
       26 GETUPVAL                         R10 5
       27 GETIMPORT                        R11 K4 [Vector2.zero]
       29 CALL                             R10 1 1
       30 MOVE                             R8 R10
       31 GETUPVAL                         R10 2
       32 GETTABLEKS                       R10 R10 K5 ["useCallback"]
       34 NEWCLOSURE                       R11 P0
       35 CAPTURE                          VAL R5
       36 NEWTABLE                         R12 0 1
       38 MOVE                             R13 R5
       39 SETLIST                          R12 R13 1 [1]
       41 CALL                             R10 2 1
       42 MOVE                             R9 R10
       43 GETUPVAL                         R10 6
       44 NEWCLOSURE                       R11 P1
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U4
       47 CAPTURE                          UPVAL U7
       48 CAPTURE                          VAL R3
       49 CAPTURE                          UPVAL U8
       50 CAPTURE                          UPVAL U9
       51 CAPTURE                          UPVAL U10
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          REF R8
       54 CAPTURE                          VAL R5
       55 CAPTURE                          UPVAL U11
       56 CAPTURE                          UPVAL U12
       57 CAPTURE                          UPVAL U3
       58 CAPTURE                          UPVAL U13
       59 CAPTURE                          UPVAL U14
       60 CAPTURE                          UPVAL U15
       61 NEWTABLE                         R12 0 1
       63 GETTABLEKS                       R13 R0 K6 ["Cells"]
       65 SETLIST                          R12 R13 1 [1]
       67 CALL                             R10 2 1
       68 LOADNIL                          R11
       69 GETTABLEKS                       R12 R0 K7 ["CanDisplayComponentAdjustQuery"]
       71 JUMPIFNOT                        R12 ; [+11]
       72 GETTABLEKS                       R12 R0 K8 ["Query"]
       74 GETTABLEKS                       R12 R12 K9 ["sortOrder"]
       76 JUMPIFNOTEQKS                    R12 K10 ["Asc"] ; [+4]
       78 GETIMPORT                        R11 K14 [Enum.SortDirection.Descending]
       80 JUMP                             ; [+2]
       81 GETIMPORT                        R11 K16 [Enum.SortDirection.Ascending]
       83 LOADNIL                          R12
       84 LOADNIL                          R13
       85 LOADNIL                          R14
       86 GETUPVAL                         R15 16
       87 JUMPIF                           R15 ; [+2]
       88 GETUPVAL                         R15 17
       89 JUMPIFNOT                        R15 ; [+14]
       90 GETUPVAL                         R15 18
       91 GETUPVAL                         R16 19
       92 CALL                             R15 1 1
       93 MOVE                             R12 R15
       94 GETUPVAL                         R15 20
       95 GETTABLEKS                       R15 R15 K17 ["getDialogManager"]
       97 CALL                             R15 0 1
       98 MOVE                             R13 R15
       99 GETUPVAL                         R15 20
      100 GETTABLEKS                       R15 R15 K18 ["getActionsBridge"]
      102 CALL                             R15 0 1
      103 MOVE                             R14 R15
      104 GETUPVAL                         R15 2
      105 GETTABLEKS                       R15 R15 K19 ["createElement"]
      107 LOADK                            R16 K20 ["Frame"]
      108 NEWTABLE                         R17 1 0
      110 GETUPVAL                         R18 2
      111 GETTABLEKS                       R18 R18 K21 ["Tag"]
      113 LOADK                            R19 K22 ["X-Transparent StartPage-TablePadding X-Fill data-testid=--start-page-ExperiencesTable"]
      114 SETTABLE                         R19 R17 R18
      115 DUPTABLE                         R18 K25 [{"Table", "Menu"}]
      116 GETUPVAL                         R19 2
      117 GETTABLEKS                       R19 R19 K19 ["createElement"]
      119 GETUPVAL                         R20 21
      120 NEWTABLE                         R21 32 0
      122 GETUPVAL                         R22 22
      123 SETTABLEKS                       R22 R21 K26 ["Columns"]
      125 NEWCLOSURE                       R22 P2
      126 CAPTURE                          VAL R2
      127 CAPTURE                          UPVAL U11
      128 CAPTURE                          VAL R1
      129 SETTABLEKS                       R22 R21 K27 ["OnExpansionChange"]
      131 NEWTABLE                         R22 0 0
      133 SETTABLEKS                       R22 R21 K28 ["Selection"]
      135 NEWCLOSURE                       R22 P3
      136 CAPTURE                          UPVAL U16
      137 CAPTURE                          UPVAL U17
      138 CAPTURE                          UPVAL U23
      139 CAPTURE                          VAL R0
      140 CAPTURE                          UPVAL U24
      141 CAPTURE                          UPVAL U25
      142 CAPTURE                          REF R12
      143 CAPTURE                          REF R14
      144 CAPTURE                          REF R13
      145 CAPTURE                          VAL R3
      146 CAPTURE                          UPVAL U26
      147 CAPTURE                          VAL R10
      148 CAPTURE                          UPVAL U27
      149 CAPTURE                          UPVAL U28
      150 SETTABLEKS                       R22 R21 K29 ["OnSelectionChange"]
      152 SETTABLEKS                       R1 R21 K30 ["Expansion"]
      154 SETTABLEKS                       R10 R21 K31 ["RootItems"]
      156 SETTABLEKS                       R11 R21 K32 ["SortOrder"]
      158 GETTABLEKS                       R23 R0 K7 ["CanDisplayComponentAdjustQuery"]
      160 JUMPIFNOT                        R23 ; [+7]
      161 GETUPVAL                         R23 29
      162 GETTABLEKS                       R24 R0 K8 ["Query"]
      164 GETTABLEKS                       R24 R24 K33 ["sortParam"]
      166 GETTABLE                         R22 R23 R24
      167 JUMP                             ; [+1]
      168 LOADNIL                          R22
      169 SETTABLEKS                       R22 R21 K34 ["SortIndex"]
      171 NEWCLOSURE                       R22 P4
      172 CAPTURE                          UPVAL U22
      173 CAPTURE                          VAL R0
      174 SETTABLEKS                       R22 R21 K35 ["OnSortChange"]
      176 LOADN                            R22 53
      177 SETTABLEKS                       R22 R21 K36 ["RowHeight"]
      179 LOADB                            R22 1
      180 SETTABLEKS                       R22 R21 K37 ["UseDeficit"]
      182 DUPCLOSURE                       R22 K38 [PROTO_18]
      183 SETTABLEKS                       R22 R21 K39 ["GetChildren"]
      185 DUPCLOSURE                       R22 K40 [PROTO_19]
      186 SETTABLEKS                       R22 R21 K41 ["GetItemId"]
      188 GETTABLEKS                       R22 R0 K42 ["OnLoadRange"]
      190 SETTABLEKS                       R22 R21 K42 ["OnLoadRange"]
      192 LOADB                            R22 1
      193 SETTABLEKS                       R22 R21 K43 ["Scroll"]
      195 DUPTABLE                         R22 K45 [{"CanvasSize"}]
      196 GETTABLEKS                       R23 R0 K44 ["CanvasSize"]
      198 SETTABLEKS                       R23 R22 K44 ["CanvasSize"]
      200 SETTABLEKS                       R22 R21 K46 ["ScrollProps"]
      202 GETUPVAL                         R23 3
      203 JUMPIFNOT                        R23 ; [+4]
      204 NEWCLOSURE                       R22 P7
      205 CAPTURE                          REF R8
      206 CAPTURE                          VAL R5
      207 JUMP                             ; [+1]
      208 LOADNIL                          R22
      209 SETTABLEKS                       R22 R21 K47 ["RightClick"]
      211 LOADK                            R22 K48 ["modern"]
      212 SETTABLEKS                       R22 R21 K49 ["Variant"]
      214 GETUPVAL                         R22 2
      215 GETTABLEKS                       R22 R22 K21 ["Tag"]
      217 LOADK                            R23 K50 ["X-Fill"]
      218 SETTABLE                         R23 R21 R22
      219 GETUPVAL                         R23 3
      220 JUMPIF                           R23 ; [+2]
      221 GETUPVAL                         R23 4
      222 JUMPIFNOT                        R23 ; [+2]
      223 MOVE                             R22 R7
      224 JUMP                             ; [+1]
      225 LOADNIL                          R22
      226 SETTABLEKS                       R22 R21 K51 ["ref"]
      228 GETUPVAL                         R23 3
      229 JUMPIF                           R23 ; [+2]
      230 GETUPVAL                         R23 4
      231 JUMPIFNOT                        R23 ; [+2]
      232 MOVE                             R22 R6
      233 JUMP                             ; [+1]
      234 LOADNIL                          R22
      235 SETTABLEKS                       R22 R21 K52 ["DisableHover"]
      237 CALL                             R19 2 1
      238 SETTABLEKS                       R19 R18 K23 ["Table"]
      240 JUMPIFNOT                        R6 ; [+20]
      241 GETUPVAL                         R20 30
      242 JUMPIFEQKNIL                     R20 ; [+18]
      244 GETUPVAL                         R19 2
      245 GETTABLEKS                       R19 R19 K19 ["createElement"]
      247 GETUPVAL                         R20 31
      248 DUPTABLE                         R21 K58 [{"anchorRef", "isOpen", "cell", "onItemActivated", "onClose"}]
      249 SETTABLEKS                       R8 R21 K53 ["anchorRef"]
      251 SETTABLEKS                       R6 R21 K54 ["isOpen"]
      253 SETTABLEKS                       R4 R21 K55 ["cell"]
      255 SETTABLEKS                       R9 R21 K56 ["onItemActivated"]
      257 SETTABLEKS                       R9 R21 K57 ["onClose"]
      259 CALL                             R19 2 1
      260 JUMP                             ; [+1]
      261 LOADNIL                          R19
      262 SETTABLEKS                       R19 R18 K24 ["Menu"]
      264 CALL                             R15 3 -1
      265 CLOSEUPVALS                      R8
      266 RETURN                           R15 -1

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
       86 GETTABLEKS                       R15 R15 K24 ["getFFlagLuaStartPageCoreContentStatus"]
       88 CALL                             R14 1 1
       89 CALL                             R14 0 1
       90 GETIMPORT                        R15 K5 [require]
       92 GETTABLEKS                       R16 R0 K16 ["Src"]
       94 GETTABLEKS                       R16 R16 K21 ["SharedFlags"]
       96 GETTABLEKS                       R16 R16 K25 ["getFFlagLuaStartPageCollaborationRestriction"]
       98 CALL                             R15 1 1
       99 CALL                             R15 0 1
      100 GETIMPORT                        R16 K5 [require]
      102 GETTABLEKS                       R17 R0 K16 ["Src"]
      104 GETTABLEKS                       R17 R17 K21 ["SharedFlags"]
      106 GETTABLEKS                       R17 R17 K26 ["getFFlagLuaStartPageAudiencesReplacement"]
      108 CALL                             R16 1 1
      109 CALL                             R16 0 1
      110 GETIMPORT                        R17 K5 [require]
      112 GETTABLEKS                       R18 R0 K16 ["Src"]
      114 GETTABLEKS                       R18 R18 K21 ["SharedFlags"]
      116 GETTABLEKS                       R18 R18 K27 ["getFFlagLuaStartPageOpenACopy"]
      118 CALL                             R17 1 1
      119 CALL                             R17 0 1
      120 GETIMPORT                        R18 K5 [require]
      122 GETTABLEKS                       R19 R0 K16 ["Src"]
      124 GETTABLEKS                       R19 R19 K21 ["SharedFlags"]
      126 GETTABLEKS                       R19 R19 K28 ["getFFlagStartPageAllowDisableTeamCreate"]
      128 CALL                             R18 1 1
      129 CALL                             R18 0 1
      130 GETIMPORT                        R19 K5 [require]
      132 GETTABLEKS                       R20 R0 K16 ["Src"]
      134 GETTABLEKS                       R20 R20 K29 ["Constants"]
      136 GETTABLEKS                       R20 R20 K30 ["Audience"]
      138 CALL                             R19 1 1
      139 GETIMPORT                        R20 K5 [require]
      141 GETTABLEKS                       R21 R0 K16 ["Src"]
      143 GETTABLEKS                       R21 R21 K17 ["Util"]
      145 GETTABLEKS                       R21 R21 K31 ["AudienceUtils"]
      147 CALL                             R20 1 1
      148 GETTABLEKS                       R21 R20 K32 ["audienceIsPrivate"]
      150 GETTABLEKS                       R22 R20 K33 ["audienceIncludes"]
      152 GETIMPORT                        R23 K5 [require]
      154 GETTABLEKS                       R24 R0 K16 ["Src"]
      156 GETTABLEKS                       R24 R24 K34 ["Contexts"]
      158 GETTABLEKS                       R24 R24 K35 ["ContextMenuActions"]
      160 CALL                             R23 1 1
      161 GETIMPORT                        R24 K5 [require]
      163 GETTABLEKS                       R25 R0 K16 ["Src"]
      165 GETTABLEKS                       R25 R25 K36 ["Hooks"]
      167 GETTABLEKS                       R25 R25 K37 ["useCellContextActions"]
      169 CALL                             R24 1 1
      170 GETTABLEKS                       R25 R9 K38 ["StudioService"]
      172 GETIMPORT                        R26 K5 [require]
      174 GETTABLEKS                       R27 R0 K16 ["Src"]
      176 GETTABLEKS                       R27 R27 K39 ["Network"]
      178 GETTABLEKS                       R27 R27 K40 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace"]
      180 CALL                             R26 1 1
      181 GETTABLEKS                       R27 R1 K41 ["useContext"]
      183 GETIMPORT                        R28 K5 [require]
      185 GETTABLEKS                       R29 R0 K16 ["Src"]
      187 GETTABLEKS                       R29 R29 K17 ["Util"]
      189 GETTABLEKS                       R29 R29 K42 ["Dialogs"]
      191 CALL                             R28 1 1
      192 GETIMPORT                        R29 K5 [require]
      194 GETTABLEKS                       R30 R0 K16 ["Src"]
      196 GETTABLEKS                       R30 R30 K21 ["SharedFlags"]
      198 GETTABLEKS                       R30 R30 K43 ["getFFlagLuaStartPageTCAgeGatingCheck"]
      200 CALL                             R29 1 1
      201 CALL                             R29 0 1
      202 GETIMPORT                        R30 K5 [require]
      204 GETTABLEKS                       R31 R0 K16 ["Src"]
      206 GETTABLEKS                       R31 R31 K21 ["SharedFlags"]
      208 GETTABLEKS                       R31 R31 K44 ["getFFlagLuaStartPagePlaceSequestrationCheck"]
      210 CALL                             R30 1 1
      211 CALL                             R30 0 1
      212 GETIMPORT                        R31 K5 [require]
      214 GETTABLEKS                       R32 R0 K16 ["Src"]
      216 GETTABLEKS                       R32 R32 K45 ["Types"]
      218 CALL                             R31 1 1
      219 GETTABLEKS                       R32 R5 K46 ["UI"]
      221 GETTABLEKS                       R33 R32 K47 ["TreeTable"]
      223 GETIMPORT                        R34 K5 [require]
      225 GETTABLEKS                       R35 R0 K16 ["Src"]
      227 GETTABLEKS                       R35 R35 K48 ["Components"]
      229 GETTABLEKS                       R35 R35 K49 ["Shimmer"]
      231 CALL                             R34 1 1
      232 JUMPIF                           R12 ; [+1]
      233 JUMPIFNOT                        R13 ; [+12]
      234 GETIMPORT                        R35 K5 [require]
      236 GETTABLEKS                       R36 R0 K16 ["Src"]
      238 GETTABLEKS                       R36 R36 K20 ["Foundation"]
      240 GETTABLEKS                       R36 R36 K48 ["Components"]
      242 GETTABLEKS                       R36 R36 K50 ["ContextMenu"]
      244 CALL                             R35 1 1
      245 JUMP                             ; [+1]
      246 LOADNIL                          R35
      247 JUMPIFNOT                        R15 ; [+10]
      248 GETIMPORT                        R36 K5 [require]
      250 GETTABLEKS                       R37 R0 K16 ["Src"]
      252 GETTABLEKS                       R37 R37 K48 ["Components"]
      254 GETTABLEKS                       R37 R37 K51 ["AgeRestrictedCollaborationBadge"]
      256 CALL                             R36 1 1
      257 JUMP                             ; [+1]
      258 LOADNIL                          R36
      259 GETTABLEKS                       R37 R11 K36 ["Hooks"]
      261 GETTABLEKS                       R37 R37 K52 ["useMeasurableRef"]
      263 GETIMPORT                        R38 K5 [require]
      265 GETTABLEKS                       R39 R0 K16 ["Src"]
      267 GETTABLEKS                       R39 R39 K17 ["Util"]
      269 GETTABLEKS                       R39 R39 K53 ["formatISOTimestamp"]
      271 CALL                             R38 1 1
      272 GETIMPORT                        R39 K5 [require]
      274 GETTABLEKS                       R40 R0 K16 ["Src"]
      276 GETTABLEKS                       R40 R40 K17 ["Util"]
      278 GETTABLEKS                       R40 R40 K54 ["CoreContentStatusConstants"]
      280 CALL                             R39 1 1
      281 GETTABLEKS                       R40 R39 K55 ["NEEDS_ATTENTION_AGE_THRESHOLD"]
      283 GETTABLEKS                       R41 R39 K56 ["AGE_BRACKET_9"]
      285 DUPCLOSURE                       R42 K57 [PROTO_0]
      286 CAPTURE                          VAL R14
      287 CAPTURE                          VAL R16
      288 CAPTURE                          VAL R21
      289 CAPTURE                          VAL R22
      290 CAPTURE                          VAL R19
      291 CAPTURE                          VAL R40
      292 CAPTURE                          VAL R41
      293 NEWTABLE                         R43 0 7
      295 DUPTABLE                         R44 K65 [{["Name"] = "", ["Key"] = "Icon", ["Width"], ["ShouldSort"] = False}]
      296 GETIMPORT                        R45 K68 [UDim.new]
      298 LOADN                            R46 0
      299 LOADN                            R47 64
      300 CALL                             R45 2 1
      301 SETTABLEKS                       R45 R44 K62 ["Width"]
      303 DUPTABLE                         R45 K72 [{["Name"] = "Name", ["Key"] = "Name", ["Width"], ["ShouldSort"] = True, ["SortParam"] = "GameName"}]
      304 JUMPIFNOT                        R13 ; [+6]
      305 GETIMPORT                        R46 K68 [UDim.new]
      307 LOADK                            R47 K73 [0.25]
      308 LOADN                            R48 -136
      309 CALL                             R46 2 1
      310 JUMP                             ; [+5]
      311 GETIMPORT                        R46 K68 [UDim.new]
      313 LOADK                            R47 K73 [0.25]
      314 LOADN                            R48 -64
      315 CALL                             R46 2 1
      316 SETTABLEKS                       R46 R45 K62 ["Width"]
      318 DUPTABLE                         R46 K75 [{["Name"] = "Description", ["Key"] = "Description", ["Width"], ["ShouldSort"] = False}]
      319 GETIMPORT                        R47 K68 [UDim.new]
      321 LOADK                            R48 K73 [0.25]
      322 LOADN                            R49 0
      323 CALL                             R47 2 1
      324 SETTABLEKS                       R47 R46 K62 ["Width"]
      326 DUPTABLE                         R47 K79 [{["Name"] = "Last Edited", ["Key"] = "Edited", ["Width"], ["ShouldSort"] = True, ["SortParam"] = "LastUpdated"}]
      327 GETIMPORT                        R48 K68 [UDim.new]
      329 LOADK                            R49 K80 [0.15]
      330 LOADN                            R50 0
      331 CALL                             R48 2 1
      332 SETTABLEKS                       R48 R47 K62 ["Width"]
      334 DUPTABLE                         R48 K84 [{["Name"] = "Date Created", ["Key"] = "Created", ["Width"], ["ShouldSort"] = True, ["SortParam"] = "GameCreated"}]
      335 GETIMPORT                        R49 K68 [UDim.new]
      337 LOADK                            R50 K80 [0.15]
      338 LOADN                            R51 0
      339 CALL                             R49 2 1
      340 SETTABLEKS                       R49 R48 K62 ["Width"]
      342 DUPTABLE                         R49 K86 [{["Name"] = "Playability", ["Key"] = "Playability", ["Width"], ["ShouldSort"] = False}]
      343 GETIMPORT                        R50 K68 [UDim.new]
      345 LOADK                            R51 K87 [0.1]
      346 LOADN                            R52 0
      347 CALL                             R50 2 1
      348 SETTABLEKS                       R50 R49 K62 ["Width"]
      350 DUPTABLE                         R50 K90 [{["Name"] = "Team Create", ["Key"] = "TeamCreate", ["Width"], ["ShouldSort"] = False}]
      351 GETIMPORT                        R51 K68 [UDim.new]
      353 LOADK                            R52 K87 [0.1]
      354 LOADN                            R53 0
      355 CALL                             R51 2 1
      356 SETTABLEKS                       R51 R50 K62 ["Width"]
      358 SETLIST                          R43 R44 7 [1]
      360 JUMPIFNOT                        R13 ; [+14]
      361 DUPTABLE                         R46 K92 [{["Name"] = "", ["Key"] = "KebabMenu", ["Width"], ["ShouldSort"] = False}]
      362 GETIMPORT                        R47 K68 [UDim.new]
      364 LOADN                            R48 0
      365 LOADN                            R49 72
      366 CALL                             R47 2 1
      367 SETTABLEKS                       R47 R46 K62 ["Width"]
      369 FASTCALL2                        TABLE_INSERT R43 R46 ; [+4]
      371 MOVE                             R45 R43
      372 GETIMPORT                        R44 K95 [table.insert]
      374 CALL                             R44 2 0
      375 NEWTABLE                         R44 4 0
      377 LOADN                            R45 2
      378 SETTABLEKS                       R45 R44 K71 ["GameName"]
      380 LOADN                            R45 4
      381 SETTABLEKS                       R45 R44 K78 ["LastUpdated"]
      383 LOADN                            R45 5
      384 SETTABLEKS                       R45 R44 K83 ["GameCreated"]
      386 DUPCLOSURE                       R45 K96 [PROTO_1]
      387 CAPTURE                          VAL R1
      388 CAPTURE                          VAL R34
      389 DUPCLOSURE                       R46 K97 [PROTO_2]
      390 CAPTURE                          VAL R1
      391 CAPTURE                          VAL R34
      392 DUPTABLE                         R47 K99 [{"Icon", "Name", "Description", "Edited", "Created", "Playability", "Type", "TeamCreate", "KebabMenu"}]
      393 DUPTABLE                         R48 K103 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      394 DUPTABLE                         R49 K105 [{["Type"] = "Placeholder"}]
      395 SETTABLEKS                       R49 R48 K101 ["Schema"]
      397 DUPTABLE                         R49 K106 [{"Placeholder"}]
      398 SETTABLEKS                       R46 R49 K104 ["Placeholder"]
      400 SETTABLEKS                       R49 R48 K102 ["Renderers"]
      402 SETTABLEKS                       R48 R47 K61 ["Icon"]
      404 DUPTABLE                         R48 K103 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      405 DUPTABLE                         R49 K105 [{["Type"] = "Placeholder"}]
      406 SETTABLEKS                       R49 R48 K101 ["Schema"]
      408 DUPTABLE                         R49 K106 [{"Placeholder"}]
      409 SETTABLEKS                       R45 R49 K104 ["Placeholder"]
      411 SETTABLEKS                       R49 R48 K102 ["Renderers"]
      413 SETTABLEKS                       R48 R47 K58 ["Name"]
      415 DUPTABLE                         R48 K103 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      416 DUPTABLE                         R49 K105 [{["Type"] = "Placeholder"}]
      417 SETTABLEKS                       R49 R48 K101 ["Schema"]
      419 DUPTABLE                         R49 K106 [{"Placeholder"}]
      420 SETTABLEKS                       R45 R49 K104 ["Placeholder"]
      422 SETTABLEKS                       R49 R48 K102 ["Renderers"]
      424 SETTABLEKS                       R48 R47 K74 ["Description"]
      426 DUPTABLE                         R48 K103 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      427 DUPTABLE                         R49 K105 [{["Type"] = "Placeholder"}]
      428 SETTABLEKS                       R49 R48 K101 ["Schema"]
      430 DUPTABLE                         R49 K106 [{"Placeholder"}]
      431 SETTABLEKS                       R45 R49 K104 ["Placeholder"]
      433 SETTABLEKS                       R49 R48 K102 ["Renderers"]
      435 SETTABLEKS                       R48 R47 K77 ["Edited"]
      437 DUPTABLE                         R48 K103 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      438 DUPTABLE                         R49 K105 [{["Type"] = "Placeholder"}]
      439 SETTABLEKS                       R49 R48 K101 ["Schema"]
      441 DUPTABLE                         R49 K106 [{"Placeholder"}]
      442 SETTABLEKS                       R45 R49 K104 ["Placeholder"]
      444 SETTABLEKS                       R49 R48 K102 ["Renderers"]
      446 SETTABLEKS                       R48 R47 K82 ["Created"]
      448 DUPTABLE                         R48 K103 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      449 DUPTABLE                         R49 K105 [{["Type"] = "Placeholder"}]
      450 SETTABLEKS                       R49 R48 K101 ["Schema"]
      452 DUPTABLE                         R49 K106 [{"Placeholder"}]
      453 SETTABLEKS                       R45 R49 K104 ["Placeholder"]
      455 SETTABLEKS                       R49 R48 K102 ["Renderers"]
      457 SETTABLEKS                       R48 R47 K85 ["Playability"]
      459 DUPTABLE                         R48 K103 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      460 DUPTABLE                         R49 K105 [{["Type"] = "Placeholder"}]
      461 SETTABLEKS                       R49 R48 K101 ["Schema"]
      463 DUPTABLE                         R49 K106 [{"Placeholder"}]
      464 SETTABLEKS                       R45 R49 K104 ["Placeholder"]
      466 SETTABLEKS                       R49 R48 K102 ["Renderers"]
      468 SETTABLEKS                       R48 R47 K98 ["Type"]
      470 DUPTABLE                         R48 K103 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      471 DUPTABLE                         R49 K105 [{["Type"] = "Placeholder"}]
      472 SETTABLEKS                       R49 R48 K101 ["Schema"]
      474 DUPTABLE                         R49 K106 [{"Placeholder"}]
      475 SETTABLEKS                       R45 R49 K104 ["Placeholder"]
      477 SETTABLEKS                       R49 R48 K102 ["Renderers"]
      479 SETTABLEKS                       R48 R47 K89 ["TeamCreate"]
      481 JUMPIFNOT                        R13 ; [+2]
      482 DUPTABLE                         R48 K107 [{["Value"] = ""}]
      483 JUMP                             ; [+1]
      484 LOADNIL                          R48
      485 SETTABLEKS                       R48 R47 K91 ["KebabMenu"]
      487 DUPCLOSURE                       R48 K108 [PROTO_3]
      488 DUPCLOSURE                       R49 K109 [PROTO_4]
      489 CAPTURE                          VAL R29
      490 DUPCLOSURE                       R50 K110 [PROTO_5]
      491 CAPTURE                          VAL R30
      492 DUPCLOSURE                       R51 K111 [PROTO_7]
      493 CAPTURE                          VAL R23
      494 CAPTURE                          VAL R13
      495 CAPTURE                          VAL R24
      496 CAPTURE                          VAL R4
      497 CAPTURE                          VAL R1
      498 CAPTURE                          VAL R35
      499 DUPCLOSURE                       R52 K112 [PROTO_21]
      500 CAPTURE                          VAL R2
      501 CAPTURE                          VAL R6
      502 CAPTURE                          VAL R1
      503 CAPTURE                          VAL R12
      504 CAPTURE                          VAL R13
      505 CAPTURE                          VAL R37
      506 CAPTURE                          VAL R3
      507 CAPTURE                          VAL R38
      508 CAPTURE                          VAL R42
      509 CAPTURE                          VAL R17
      510 CAPTURE                          VAL R18
      511 CAPTURE                          VAL R8
      512 CAPTURE                          VAL R47
      513 CAPTURE                          VAL R46
      514 CAPTURE                          VAL R15
      515 CAPTURE                          VAL R36
      516 CAPTURE                          VAL R30
      517 CAPTURE                          VAL R29
      518 CAPTURE                          VAL R27
      519 CAPTURE                          VAL R28
      520 CAPTURE                          VAL R9
      521 CAPTURE                          VAL R33
      522 CAPTURE                          VAL R43
      523 CAPTURE                          VAL R50
      524 CAPTURE                          VAL R26
      525 CAPTURE                          VAL R25
      526 CAPTURE                          VAL R49
      527 CAPTURE                          VAL R48
      528 CAPTURE                          VAL R10
      529 CAPTURE                          VAL R44
      530 CAPTURE                          VAL R35
      531 CAPTURE                          VAL R51
      532 SETGLOBAL                        R52 K113 ["ExperiencesTable"]
      534 GETGLOBAL                        R52 K113 ["ExperiencesTable"]
      536 RETURN                           R52 1
