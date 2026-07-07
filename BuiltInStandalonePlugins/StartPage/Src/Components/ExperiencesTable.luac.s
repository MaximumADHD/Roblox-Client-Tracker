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
       29 GETUPVAL                         R6 4
       30 JUMPIFNOT                        R6 ; [+2]
       31 LOADK                            R5 K10 ["SaveAs"]
       32 JUMP                             ; [+1]
       33 LOADK                            R5 K8 [""]
       34 SETLIST                          R1 R2 4 [1]
       36 SETTABLEKS                       R1 R0 K3 ["_allowedActions"]
       38 GETUPVAL                         R1 5
       39 GETTABLEKS                       R1 R1 K11 ["createElement"]
       41 LOADK                            R2 K12 ["Frame"]
       42 DUPTABLE                         R3 K16 [{["Size"], ["BackgroundTransparency"] = 1}]
       43 GETIMPORT                        R4 K19 [UDim2.fromScale]
       45 LOADN                            R5 1
       46 LOADN                            R6 1
       47 CALL                             R4 2 1
       48 SETTABLEKS                       R4 R3 K13 ["Size"]
       50 DUPTABLE                         R4 K21 [{"Button"}]
       51 GETUPVAL                         R5 5
       52 GETTABLEKS                       R5 R5 K11 ["createElement"]
       54 LOADK                            R6 K22 ["ImageButton"]
       55 NEWTABLE                         R7 8 0
       57 GETIMPORT                        R8 K24 [UDim2.fromOffset]
       59 LOADN                            R9 28
       60 LOADN                            R10 28
       61 CALL                             R8 2 1
       62 SETTABLEKS                       R8 R7 K13 ["Size"]
       64 GETIMPORT                        R8 K27 [Vector2.new]
       66 LOADK                            R9 K28 [0.5]
       67 LOADK                            R10 K28 [0.5]
       68 CALL                             R8 2 1
       69 SETTABLEKS                       R8 R7 K29 ["AnchorPoint"]
       71 GETIMPORT                        R8 K19 [UDim2.fromScale]
       73 LOADK                            R9 K28 [0.5]
       74 LOADK                            R10 K28 [0.5]
       75 CALL                             R8 2 1
       76 SETTABLEKS                       R8 R7 K30 ["Position"]
       78 GETUPVAL                         R8 5
       79 GETTABLEKS                       R8 R8 K31 ["Tag"]
       81 LOADK                            R9 K32 ["X-Corner StartPage-TileBackground StartPage-NoBorder StartPage-KebabIcon"]
       82 SETTABLE                         R9 R7 R8
       83 GETUPVAL                         R8 5
       84 GETTABLEKS                       R8 R8 K33 ["Event"]
       86 GETTABLEKS                       R8 R8 K34 ["Activated"]
       88 NEWCLOSURE                       R9 P0
       89 CAPTURE                          UPVAL U6
       90 CAPTURE                          UPVAL U7
       91 CAPTURE                          VAL R0
       92 SETTABLE                         R9 R7 R8
       93 CALL                             R5 2 1
       94 SETTABLEKS                       R5 R4 K20 ["Button"]
       96 CALL                             R1 3 -1
       97 RETURN                           R1 -1

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
       12 JUMPIF                           R7 ; [+147]
       13 GETTABLEKS                       R7 R5 K2 ["Children"]
       15 JUMPIFNOT                        R7 ; [+144]
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
      129 JUMPIFNOT                        R16 ; [+19]
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
      143 CAPTURE                          UPVAL U10
      144 SETTABLEKS                       R17 R16 K16 ["KebabMenu"]
      146 SETTABLEKS                       R16 R15 K31 ["Renderers"]
      148 JUMP                             ; [+1]
      149 LOADNIL                          R15
      150 SETTABLEKS                       R15 R14 K16 ["KebabMenu"]
      152 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      154 MOVE                             R13 R6
      155 GETIMPORT                        R12 K37 [table.insert]
      157 CALL                             R12 2 0
      158 FORGLOOP                         R7 2 ; [-138]
      160 GETTABLEKS                       R7 R5 K1 ["IsPlaceholder"]
      162 JUMPIFNOT                        R7 ; [+12]
      163 MOVE                             R8 R0
      164 GETUPVAL                         R9 11
      165 GETUPVAL                         R10 12
      166 DUPTABLE                         R11 K39 [{"children"}]
      167 SETTABLEKS                       R6 R11 K38 ["children"]
      169 CALL                             R9 2 -1
      170 FASTCALL                         TABLE_INSERT ; [+2]
      171 GETIMPORT                        R7 K37 [table.insert]
      173 CALL                             R7 -1 0
      174 JUMP                             ; [+212]
      175 DUPTABLE                         R9 K41 [{"Cell", "Icon", "Id", "Name", "Description", "Edited", "Created", "Playability", "Type", "UniverseId", "TeamCreate", "KebabMenu", "children"}]
      176 GETUPVAL                         R11 13
      177 JUMPIF                           R11 ; [+2]
      178 GETUPVAL                         R11 1
      179 JUMPIFNOT                        R11 ; [+2]
      180 MOVE                             R10 R5
      181 JUMP                             ; [+1]
      182 LOADNIL                          R10
      183 SETTABLEKS                       R10 R9 K40 ["Cell"]
      185 GETTABLEKS                       R11 R5 K42 ["ImageUrl"]
      187 JUMPIFNOT                        R11 ; [+18]
      188 DUPTABLE                         R10 K44 [{["Value"] = "", ["LeftIcon"]}]
      189 DUPTABLE                         R11 K47 [{"Image", "Size"}]
      190 GETTABLEKS                       R12 R5 K42 ["ImageUrl"]
      192 SETTABLEKS                       R12 R11 K45 ["Image"]
      194 GETIMPORT                        R12 K50 [UDim2.new]
      196 LOADN                            R13 0
      197 LOADN                            R14 32
      198 LOADN                            R15 0
      199 LOADN                            R16 32
      200 CALL                             R12 4 1
      201 SETTABLEKS                       R12 R11 K46 ["Size"]
      203 SETTABLEKS                       R11 R10 K43 ["LeftIcon"]
      205 JUMP                             ; [+27]
      206 GETTABLEKS                       R11 R5 K51 ["NoLoadableImage"]
      208 JUMPIFNOT                        R11 ; [+14]
      209 DUPTABLE                         R10 K44 [{["Value"] = "", ["LeftIcon"]}]
      210 DUPTABLE                         R11 K53 [{["Image"] = "rbxasset://studio_svg_textures/Lua/StartPage/Light/SI-Standard/Placeholder.png", ["Size"]}]
      211 GETIMPORT                        R12 K50 [UDim2.new]
      213 LOADN                            R13 0
      214 LOADN                            R14 32
      215 LOADN                            R15 0
      216 LOADN                            R16 32
      217 CALL                             R12 4 1
      218 SETTABLEKS                       R12 R11 K46 ["Size"]
      220 SETTABLEKS                       R11 R10 K43 ["LeftIcon"]
      222 JUMP                             ; [+10]
      223 DUPTABLE                         R10 K32 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      224 DUPTABLE                         R11 K55 [{["Type"] = "Placeholder"}]
      225 SETTABLEKS                       R11 R10 K30 ["Schema"]
      227 DUPTABLE                         R11 K56 [{"Placeholder"}]
      228 GETUPVAL                         R12 14
      229 SETTABLEKS                       R12 R11 K54 ["Placeholder"]
      231 SETTABLEKS                       R11 R10 K31 ["Renderers"]
      233 SETTABLEKS                       R10 R9 K7 ["Icon"]
      235 GETTABLEKS                       R11 R5 K57 ["RootPlaceId"]
      237 JUMPIFNOT                        R11 ; [+6]
      238 DUPTABLE                         R10 K22 [{["Type"] = "PlaceId", ["PlaceId"]}]
      239 GETTABLEKS                       R11 R5 K57 ["RootPlaceId"]
      241 SETTABLEKS                       R11 R10 K21 ["PlaceId"]
      243 JUMP                             ; [+10]
      244 GETTABLEKS                       R11 R5 K58 ["FilePath"]
      246 JUMPIFNOT                        R11 ; [+6]
      247 DUPTABLE                         R10 K59 [{["Type"] = "FilePath", ["FilePath"]}]
      248 GETTABLEKS                       R11 R5 K58 ["FilePath"]
      250 SETTABLEKS                       R11 R10 K58 ["FilePath"]
      252 JUMP                             ; [+1]
      253 LOADNIL                          R10
      254 SETTABLEKS                       R10 R9 K3 ["Id"]
      256 DUPTABLE                         R10 K23 [{"Value"}]
      257 GETTABLEKS                       R12 R5 K8 ["Name"]
      259 ORK                              R11 R12 K19 [""]
      260 SETTABLEKS                       R11 R10 K18 ["Value"]
      262 SETTABLEKS                       R10 R9 K8 ["Name"]
      264 DUPTABLE                         R10 K23 [{"Value"}]
      265 GETTABLEKS                       R12 R5 K9 ["Description"]
      267 JUMPIF                           R12 ; [+2]
      268 LOADK                            R11 K19 [""]
      269 JUMP                             ; [+2]
      270 GETTABLEKS                       R11 R5 K9 ["Description"]
      272 SETTABLEKS                       R11 R10 K18 ["Value"]
      274 SETTABLEKS                       R10 R9 K9 ["Description"]
      276 DUPTABLE                         R10 K23 [{"Value"}]
      277 GETTABLEKS                       R12 R5 K24 ["LastViewed"]
      279 JUMPIFNOT                        R12 ; [+6]
      280 GETUPVAL                         R11 2
      281 GETTABLEKS                       R12 R5 K24 ["LastViewed"]
      283 GETUPVAL                         R13 3
      284 CALL                             R11 2 1
      285 JUMP                             ; [+1]
      286 LOADK                            R11 K19 [""]
      287 SETTABLEKS                       R11 R10 K18 ["Value"]
      289 SETTABLEKS                       R10 R9 K10 ["Edited"]
      291 DUPTABLE                         R10 K23 [{"Value"}]
      292 GETUPVAL                         R11 2
      293 GETTABLEKS                       R12 R5 K11 ["Created"]
      295 GETUPVAL                         R13 3
      296 CALL                             R11 2 1
      297 SETTABLEKS                       R11 R10 K18 ["Value"]
      299 SETTABLEKS                       R10 R9 K11 ["Created"]
      301 DUPTABLE                         R10 K23 [{"Value"}]
      302 GETUPVAL                         R11 4
      303 MOVE                             R12 R5
      304 GETUPVAL                         R13 3
      305 CALL                             R11 2 1
      306 SETTABLEKS                       R11 R10 K18 ["Value"]
      308 SETTABLEKS                       R10 R9 K12 ["Playability"]
      310 DUPTABLE                         R10 K23 [{"Value"}]
      311 GETTABLEKS                       R12 R5 K60 ["IsGame"]
      313 JUMPIFNOT                        R12 ; [+2]
      314 LOADK                            R11 K61 ["Experience"]
      315 JUMP                             ; [+1]
      316 LOADK                            R11 K62 ["Place"]
      317 SETTABLEKS                       R11 R10 K18 ["Value"]
      319 SETTABLEKS                       R10 R9 K13 ["Type"]
      321 DUPTABLE                         R10 K23 [{"Value"}]
      322 GETTABLEKS                       R11 R5 K3 ["Id"]
      324 SETTABLEKS                       R11 R10 K18 ["Value"]
      326 SETTABLEKS                       R10 R9 K14 ["UniverseId"]
      328 GETUPVAL                         R11 15
      329 JUMPIFNOT                        R11 ; [+18]
      330 GETTABLEKS                       R11 R5 K63 ["IsAgeRestrictedCollaboration"]
      332 JUMPIFNOT                        R11 ; [+15]
      333 DUPTABLE                         R10 K32 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      334 DUPTABLE                         R11 K65 [{["Type"] = "CollaborationRestriction"}]
      335 SETTABLEKS                       R11 R10 K30 ["Schema"]
      337 DUPTABLE                         R11 K66 [{"CollaborationRestriction"}]
      338 NEWCLOSURE                       R12 P1
      339 CAPTURE                          UPVAL U8
      340 CAPTURE                          UPVAL U16
      341 CAPTURE                          UPVAL U3
      342 CAPTURE                          VAL R5
      343 SETTABLEKS                       R12 R11 K64 ["CollaborationRestriction"]
      345 SETTABLEKS                       R11 R10 K31 ["Renderers"]
      347 JUMP                             ; [+9]
      348 DUPTABLE                         R10 K23 [{"Value"}]
      349 GETTABLEKS                       R12 R5 K26 ["IsTeamCreateEnabled"]
      351 JUMPIFNOT                        R12 ; [+2]
      352 LOADK                            R11 K27 ["Yes"]
      353 JUMP                             ; [+1]
      354 LOADK                            R11 K28 ["No"]
      355 SETTABLEKS                       R11 R10 K18 ["Value"]
      357 SETTABLEKS                       R10 R9 K15 ["TeamCreate"]
      359 GETUPVAL                         R11 1
      360 JUMPIFNOT                        R11 ; [+15]
      361 DUPTABLE                         R10 K32 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      362 DUPTABLE                         R11 K33 [{["Type"] = "KebabMenu"}]
      363 SETTABLEKS                       R11 R10 K30 ["Schema"]
      365 DUPTABLE                         R11 K34 [{"KebabMenu"}]
      366 NEWCLOSURE                       R12 P2
      367 CAPTURE                          UPVAL U8
      368 CAPTURE                          UPVAL U9
      369 CAPTURE                          UPVAL U10
      370 CAPTURE                          VAL R5
      371 SETTABLEKS                       R12 R11 K16 ["KebabMenu"]
      373 SETTABLEKS                       R11 R10 K31 ["Renderers"]
      375 JUMP                             ; [+1]
      376 LOADNIL                          R10
      377 SETTABLEKS                       R10 R9 K16 ["KebabMenu"]
      379 SETTABLEKS                       R6 R9 K38 ["children"]
      381 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
      383 MOVE                             R8 R0
      384 GETIMPORT                        R7 K37 [table.insert]
      386 CALL                             R7 2 0
      387 FORGLOOP                         R1 2 ; [-380]
      389 RETURN                           R0 1

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
       52 CAPTURE                          UPVAL U11
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          REF R8
       55 CAPTURE                          VAL R5
       56 CAPTURE                          UPVAL U12
       57 CAPTURE                          UPVAL U13
       58 CAPTURE                          UPVAL U3
       59 CAPTURE                          UPVAL U14
       60 CAPTURE                          UPVAL U15
       61 CAPTURE                          UPVAL U16
       62 NEWTABLE                         R12 0 1
       64 GETTABLEKS                       R13 R0 K6 ["Cells"]
       66 SETLIST                          R12 R13 1 [1]
       68 CALL                             R10 2 1
       69 LOADNIL                          R11
       70 GETTABLEKS                       R12 R0 K7 ["CanDisplayComponentAdjustQuery"]
       72 JUMPIFNOT                        R12 ; [+11]
       73 GETTABLEKS                       R12 R0 K8 ["Query"]
       75 GETTABLEKS                       R12 R12 K9 ["sortOrder"]
       77 JUMPIFNOTEQKS                    R12 K10 ["Asc"] ; [+4]
       79 GETIMPORT                        R11 K14 [Enum.SortDirection.Descending]
       81 JUMP                             ; [+2]
       82 GETIMPORT                        R11 K16 [Enum.SortDirection.Ascending]
       84 LOADNIL                          R12
       85 LOADNIL                          R13
       86 LOADNIL                          R14
       87 GETUPVAL                         R15 17
       88 JUMPIF                           R15 ; [+2]
       89 GETUPVAL                         R15 18
       90 JUMPIFNOT                        R15 ; [+14]
       91 GETUPVAL                         R15 19
       92 GETUPVAL                         R16 20
       93 CALL                             R15 1 1
       94 MOVE                             R12 R15
       95 GETUPVAL                         R15 21
       96 GETTABLEKS                       R15 R15 K17 ["getDialogManager"]
       98 CALL                             R15 0 1
       99 MOVE                             R13 R15
      100 GETUPVAL                         R15 21
      101 GETTABLEKS                       R15 R15 K18 ["getActionsBridge"]
      103 CALL                             R15 0 1
      104 MOVE                             R14 R15
      105 GETUPVAL                         R15 2
      106 GETTABLEKS                       R15 R15 K19 ["createElement"]
      108 LOADK                            R16 K20 ["Frame"]
      109 NEWTABLE                         R17 1 0
      111 GETUPVAL                         R18 2
      112 GETTABLEKS                       R18 R18 K21 ["Tag"]
      114 LOADK                            R19 K22 ["X-Transparent StartPage-TablePadding X-Fill data-testid=--start-page-ExperiencesTable"]
      115 SETTABLE                         R19 R17 R18
      116 DUPTABLE                         R18 K25 [{"Table", "Menu"}]
      117 GETUPVAL                         R19 2
      118 GETTABLEKS                       R19 R19 K19 ["createElement"]
      120 GETUPVAL                         R20 22
      121 NEWTABLE                         R21 32 0
      123 GETUPVAL                         R22 23
      124 SETTABLEKS                       R22 R21 K26 ["Columns"]
      126 NEWCLOSURE                       R22 P2
      127 CAPTURE                          VAL R2
      128 CAPTURE                          UPVAL U12
      129 CAPTURE                          VAL R1
      130 SETTABLEKS                       R22 R21 K27 ["OnExpansionChange"]
      132 NEWTABLE                         R22 0 0
      134 SETTABLEKS                       R22 R21 K28 ["Selection"]
      136 NEWCLOSURE                       R22 P3
      137 CAPTURE                          UPVAL U17
      138 CAPTURE                          UPVAL U18
      139 CAPTURE                          UPVAL U24
      140 CAPTURE                          VAL R0
      141 CAPTURE                          UPVAL U25
      142 CAPTURE                          UPVAL U26
      143 CAPTURE                          REF R12
      144 CAPTURE                          REF R14
      145 CAPTURE                          REF R13
      146 CAPTURE                          VAL R3
      147 CAPTURE                          UPVAL U27
      148 CAPTURE                          VAL R10
      149 CAPTURE                          UPVAL U28
      150 CAPTURE                          UPVAL U29
      151 SETTABLEKS                       R22 R21 K29 ["OnSelectionChange"]
      153 SETTABLEKS                       R1 R21 K30 ["Expansion"]
      155 SETTABLEKS                       R10 R21 K31 ["RootItems"]
      157 SETTABLEKS                       R11 R21 K32 ["SortOrder"]
      159 GETTABLEKS                       R23 R0 K7 ["CanDisplayComponentAdjustQuery"]
      161 JUMPIFNOT                        R23 ; [+7]
      162 GETUPVAL                         R23 30
      163 GETTABLEKS                       R24 R0 K8 ["Query"]
      165 GETTABLEKS                       R24 R24 K33 ["sortParam"]
      167 GETTABLE                         R22 R23 R24
      168 JUMP                             ; [+1]
      169 LOADNIL                          R22
      170 SETTABLEKS                       R22 R21 K34 ["SortIndex"]
      172 NEWCLOSURE                       R22 P4
      173 CAPTURE                          UPVAL U23
      174 CAPTURE                          VAL R0
      175 SETTABLEKS                       R22 R21 K35 ["OnSortChange"]
      177 LOADN                            R22 53
      178 SETTABLEKS                       R22 R21 K36 ["RowHeight"]
      180 LOADB                            R22 1
      181 SETTABLEKS                       R22 R21 K37 ["UseDeficit"]
      183 DUPCLOSURE                       R22 K38 [PROTO_18]
      184 SETTABLEKS                       R22 R21 K39 ["GetChildren"]
      186 DUPCLOSURE                       R22 K40 [PROTO_19]
      187 SETTABLEKS                       R22 R21 K41 ["GetItemId"]
      189 GETTABLEKS                       R22 R0 K42 ["OnLoadRange"]
      191 SETTABLEKS                       R22 R21 K42 ["OnLoadRange"]
      193 LOADB                            R22 1
      194 SETTABLEKS                       R22 R21 K43 ["Scroll"]
      196 DUPTABLE                         R22 K45 [{"CanvasSize"}]
      197 GETTABLEKS                       R23 R0 K44 ["CanvasSize"]
      199 SETTABLEKS                       R23 R22 K44 ["CanvasSize"]
      201 SETTABLEKS                       R22 R21 K46 ["ScrollProps"]
      203 GETUPVAL                         R23 3
      204 JUMPIFNOT                        R23 ; [+4]
      205 NEWCLOSURE                       R22 P7
      206 CAPTURE                          REF R8
      207 CAPTURE                          VAL R5
      208 JUMP                             ; [+1]
      209 LOADNIL                          R22
      210 SETTABLEKS                       R22 R21 K47 ["RightClick"]
      212 LOADK                            R22 K48 ["modern"]
      213 SETTABLEKS                       R22 R21 K49 ["Variant"]
      215 GETUPVAL                         R22 2
      216 GETTABLEKS                       R22 R22 K21 ["Tag"]
      218 LOADK                            R23 K50 ["X-Fill"]
      219 SETTABLE                         R23 R21 R22
      220 GETUPVAL                         R23 3
      221 JUMPIF                           R23 ; [+2]
      222 GETUPVAL                         R23 4
      223 JUMPIFNOT                        R23 ; [+2]
      224 MOVE                             R22 R7
      225 JUMP                             ; [+1]
      226 LOADNIL                          R22
      227 SETTABLEKS                       R22 R21 K51 ["ref"]
      229 GETUPVAL                         R23 3
      230 JUMPIF                           R23 ; [+2]
      231 GETUPVAL                         R23 4
      232 JUMPIFNOT                        R23 ; [+2]
      233 MOVE                             R22 R6
      234 JUMP                             ; [+1]
      235 LOADNIL                          R22
      236 SETTABLEKS                       R22 R21 K52 ["DisableHover"]
      238 CALL                             R19 2 1
      239 SETTABLEKS                       R19 R18 K23 ["Table"]
      241 JUMPIFNOT                        R6 ; [+20]
      242 GETUPVAL                         R20 31
      243 JUMPIFEQKNIL                     R20 ; [+18]
      245 GETUPVAL                         R19 2
      246 GETTABLEKS                       R19 R19 K19 ["createElement"]
      248 GETUPVAL                         R20 32
      249 DUPTABLE                         R21 K58 [{"anchorRef", "isOpen", "cell", "onItemActivated", "onClose"}]
      250 SETTABLEKS                       R8 R21 K53 ["anchorRef"]
      252 SETTABLEKS                       R6 R21 K54 ["isOpen"]
      254 SETTABLEKS                       R4 R21 K55 ["cell"]
      256 SETTABLEKS                       R9 R21 K56 ["onItemActivated"]
      258 SETTABLEKS                       R9 R21 K57 ["onClose"]
      260 CALL                             R19 2 1
      261 JUMP                             ; [+1]
      262 LOADNIL                          R19
      263 SETTABLEKS                       R19 R18 K24 ["Menu"]
      265 CALL                             R15 3 -1
      266 CLOSEUPVALS                      R8
      267 RETURN                           R15 -1

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
      134 GETTABLEKS                       R20 R20 K21 ["SharedFlags"]
      136 GETTABLEKS                       R20 R20 K29 ["getFFlagStartPageSaveAsCopy"]
      138 CALL                             R19 1 1
      139 CALL                             R19 0 1
      140 GETIMPORT                        R20 K5 [require]
      142 GETTABLEKS                       R21 R0 K16 ["Src"]
      144 GETTABLEKS                       R21 R21 K30 ["Constants"]
      146 GETTABLEKS                       R21 R21 K31 ["Audience"]
      148 CALL                             R20 1 1
      149 GETIMPORT                        R21 K5 [require]
      151 GETTABLEKS                       R22 R0 K16 ["Src"]
      153 GETTABLEKS                       R22 R22 K17 ["Util"]
      155 GETTABLEKS                       R22 R22 K32 ["AudienceUtils"]
      157 CALL                             R21 1 1
      158 GETTABLEKS                       R22 R21 K33 ["audienceIsPrivate"]
      160 GETTABLEKS                       R23 R21 K34 ["audienceIncludes"]
      162 GETIMPORT                        R24 K5 [require]
      164 GETTABLEKS                       R25 R0 K16 ["Src"]
      166 GETTABLEKS                       R25 R25 K35 ["Contexts"]
      168 GETTABLEKS                       R25 R25 K36 ["ContextMenuActions"]
      170 CALL                             R24 1 1
      171 GETIMPORT                        R25 K5 [require]
      173 GETTABLEKS                       R26 R0 K16 ["Src"]
      175 GETTABLEKS                       R26 R26 K37 ["Hooks"]
      177 GETTABLEKS                       R26 R26 K38 ["useCellContextActions"]
      179 CALL                             R25 1 1
      180 GETTABLEKS                       R26 R9 K39 ["StudioService"]
      182 GETIMPORT                        R27 K5 [require]
      184 GETTABLEKS                       R28 R0 K16 ["Src"]
      186 GETTABLEKS                       R28 R28 K40 ["Network"]
      188 GETTABLEKS                       R28 R28 K41 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace"]
      190 CALL                             R27 1 1
      191 GETTABLEKS                       R28 R1 K42 ["useContext"]
      193 GETIMPORT                        R29 K5 [require]
      195 GETTABLEKS                       R30 R0 K16 ["Src"]
      197 GETTABLEKS                       R30 R30 K17 ["Util"]
      199 GETTABLEKS                       R30 R30 K43 ["Dialogs"]
      201 CALL                             R29 1 1
      202 GETIMPORT                        R30 K5 [require]
      204 GETTABLEKS                       R31 R0 K16 ["Src"]
      206 GETTABLEKS                       R31 R31 K21 ["SharedFlags"]
      208 GETTABLEKS                       R31 R31 K44 ["getFFlagLuaStartPageTCAgeGatingCheck"]
      210 CALL                             R30 1 1
      211 CALL                             R30 0 1
      212 GETIMPORT                        R31 K5 [require]
      214 GETTABLEKS                       R32 R0 K16 ["Src"]
      216 GETTABLEKS                       R32 R32 K21 ["SharedFlags"]
      218 GETTABLEKS                       R32 R32 K45 ["getFFlagLuaStartPagePlaceSequestrationCheck"]
      220 CALL                             R31 1 1
      221 CALL                             R31 0 1
      222 GETIMPORT                        R32 K5 [require]
      224 GETTABLEKS                       R33 R0 K16 ["Src"]
      226 GETTABLEKS                       R33 R33 K46 ["Types"]
      228 CALL                             R32 1 1
      229 GETTABLEKS                       R33 R5 K47 ["UI"]
      231 GETTABLEKS                       R34 R33 K48 ["TreeTable"]
      233 GETIMPORT                        R35 K5 [require]
      235 GETTABLEKS                       R36 R0 K16 ["Src"]
      237 GETTABLEKS                       R36 R36 K49 ["Components"]
      239 GETTABLEKS                       R36 R36 K50 ["Shimmer"]
      241 CALL                             R35 1 1
      242 JUMPIF                           R12 ; [+1]
      243 JUMPIFNOT                        R13 ; [+12]
      244 GETIMPORT                        R36 K5 [require]
      246 GETTABLEKS                       R37 R0 K16 ["Src"]
      248 GETTABLEKS                       R37 R37 K20 ["Foundation"]
      250 GETTABLEKS                       R37 R37 K49 ["Components"]
      252 GETTABLEKS                       R37 R37 K51 ["ContextMenu"]
      254 CALL                             R36 1 1
      255 JUMP                             ; [+1]
      256 LOADNIL                          R36
      257 JUMPIFNOT                        R15 ; [+10]
      258 GETIMPORT                        R37 K5 [require]
      260 GETTABLEKS                       R38 R0 K16 ["Src"]
      262 GETTABLEKS                       R38 R38 K49 ["Components"]
      264 GETTABLEKS                       R38 R38 K52 ["AgeRestrictedCollaborationBadge"]
      266 CALL                             R37 1 1
      267 JUMP                             ; [+1]
      268 LOADNIL                          R37
      269 GETTABLEKS                       R38 R11 K37 ["Hooks"]
      271 GETTABLEKS                       R38 R38 K53 ["useMeasurableRef"]
      273 GETIMPORT                        R39 K5 [require]
      275 GETTABLEKS                       R40 R0 K16 ["Src"]
      277 GETTABLEKS                       R40 R40 K17 ["Util"]
      279 GETTABLEKS                       R40 R40 K54 ["formatISOTimestamp"]
      281 CALL                             R39 1 1
      282 GETIMPORT                        R40 K5 [require]
      284 GETTABLEKS                       R41 R0 K16 ["Src"]
      286 GETTABLEKS                       R41 R41 K17 ["Util"]
      288 GETTABLEKS                       R41 R41 K55 ["CoreContentStatusConstants"]
      290 CALL                             R40 1 1
      291 GETTABLEKS                       R41 R40 K56 ["NEEDS_ATTENTION_AGE_THRESHOLD"]
      293 GETTABLEKS                       R42 R40 K57 ["AGE_BRACKET_9"]
      295 DUPCLOSURE                       R43 K58 [PROTO_0]
      296 CAPTURE                          VAL R14
      297 CAPTURE                          VAL R16
      298 CAPTURE                          VAL R22
      299 CAPTURE                          VAL R23
      300 CAPTURE                          VAL R20
      301 CAPTURE                          VAL R41
      302 CAPTURE                          VAL R42
      303 NEWTABLE                         R44 0 7
      305 DUPTABLE                         R45 K66 [{["Name"] = "", ["Key"] = "Icon", ["Width"], ["ShouldSort"] = False}]
      306 GETIMPORT                        R46 K69 [UDim.new]
      308 LOADN                            R47 0
      309 LOADN                            R48 64
      310 CALL                             R46 2 1
      311 SETTABLEKS                       R46 R45 K63 ["Width"]
      313 DUPTABLE                         R46 K73 [{["Name"] = "Name", ["Key"] = "Name", ["Width"], ["ShouldSort"] = True, ["SortParam"] = "GameName"}]
      314 JUMPIFNOT                        R13 ; [+6]
      315 GETIMPORT                        R47 K69 [UDim.new]
      317 LOADK                            R48 K74 [0.25]
      318 LOADN                            R49 -136
      319 CALL                             R47 2 1
      320 JUMP                             ; [+5]
      321 GETIMPORT                        R47 K69 [UDim.new]
      323 LOADK                            R48 K74 [0.25]
      324 LOADN                            R49 -64
      325 CALL                             R47 2 1
      326 SETTABLEKS                       R47 R46 K63 ["Width"]
      328 DUPTABLE                         R47 K76 [{["Name"] = "Description", ["Key"] = "Description", ["Width"], ["ShouldSort"] = False}]
      329 GETIMPORT                        R48 K69 [UDim.new]
      331 LOADK                            R49 K74 [0.25]
      332 LOADN                            R50 0
      333 CALL                             R48 2 1
      334 SETTABLEKS                       R48 R47 K63 ["Width"]
      336 DUPTABLE                         R48 K80 [{["Name"] = "Last Edited", ["Key"] = "Edited", ["Width"], ["ShouldSort"] = True, ["SortParam"] = "LastUpdated"}]
      337 GETIMPORT                        R49 K69 [UDim.new]
      339 LOADK                            R50 K81 [0.15]
      340 LOADN                            R51 0
      341 CALL                             R49 2 1
      342 SETTABLEKS                       R49 R48 K63 ["Width"]
      344 DUPTABLE                         R49 K85 [{["Name"] = "Date Created", ["Key"] = "Created", ["Width"], ["ShouldSort"] = True, ["SortParam"] = "GameCreated"}]
      345 GETIMPORT                        R50 K69 [UDim.new]
      347 LOADK                            R51 K81 [0.15]
      348 LOADN                            R52 0
      349 CALL                             R50 2 1
      350 SETTABLEKS                       R50 R49 K63 ["Width"]
      352 DUPTABLE                         R50 K87 [{["Name"] = "Playability", ["Key"] = "Playability", ["Width"], ["ShouldSort"] = False}]
      353 GETIMPORT                        R51 K69 [UDim.new]
      355 LOADK                            R52 K88 [0.1]
      356 LOADN                            R53 0
      357 CALL                             R51 2 1
      358 SETTABLEKS                       R51 R50 K63 ["Width"]
      360 DUPTABLE                         R51 K91 [{["Name"] = "Team Create", ["Key"] = "TeamCreate", ["Width"], ["ShouldSort"] = False}]
      361 GETIMPORT                        R52 K69 [UDim.new]
      363 LOADK                            R53 K88 [0.1]
      364 LOADN                            R54 0
      365 CALL                             R52 2 1
      366 SETTABLEKS                       R52 R51 K63 ["Width"]
      368 SETLIST                          R44 R45 7 [1]
      370 JUMPIFNOT                        R13 ; [+14]
      371 DUPTABLE                         R47 K93 [{["Name"] = "", ["Key"] = "KebabMenu", ["Width"], ["ShouldSort"] = False}]
      372 GETIMPORT                        R48 K69 [UDim.new]
      374 LOADN                            R49 0
      375 LOADN                            R50 72
      376 CALL                             R48 2 1
      377 SETTABLEKS                       R48 R47 K63 ["Width"]
      379 FASTCALL2                        TABLE_INSERT R44 R47 ; [+4]
      381 MOVE                             R46 R44
      382 GETIMPORT                        R45 K96 [table.insert]
      384 CALL                             R45 2 0
      385 NEWTABLE                         R45 4 0
      387 LOADN                            R46 2
      388 SETTABLEKS                       R46 R45 K72 ["GameName"]
      390 LOADN                            R46 4
      391 SETTABLEKS                       R46 R45 K79 ["LastUpdated"]
      393 LOADN                            R46 5
      394 SETTABLEKS                       R46 R45 K84 ["GameCreated"]
      396 DUPCLOSURE                       R46 K97 [PROTO_1]
      397 CAPTURE                          VAL R1
      398 CAPTURE                          VAL R35
      399 DUPCLOSURE                       R47 K98 [PROTO_2]
      400 CAPTURE                          VAL R1
      401 CAPTURE                          VAL R35
      402 DUPTABLE                         R48 K100 [{"Icon", "Name", "Description", "Edited", "Created", "Playability", "Type", "TeamCreate", "KebabMenu"}]
      403 DUPTABLE                         R49 K104 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      404 DUPTABLE                         R50 K106 [{["Type"] = "Placeholder"}]
      405 SETTABLEKS                       R50 R49 K102 ["Schema"]
      407 DUPTABLE                         R50 K107 [{"Placeholder"}]
      408 SETTABLEKS                       R47 R50 K105 ["Placeholder"]
      410 SETTABLEKS                       R50 R49 K103 ["Renderers"]
      412 SETTABLEKS                       R49 R48 K62 ["Icon"]
      414 DUPTABLE                         R49 K104 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      415 DUPTABLE                         R50 K106 [{["Type"] = "Placeholder"}]
      416 SETTABLEKS                       R50 R49 K102 ["Schema"]
      418 DUPTABLE                         R50 K107 [{"Placeholder"}]
      419 SETTABLEKS                       R46 R50 K105 ["Placeholder"]
      421 SETTABLEKS                       R50 R49 K103 ["Renderers"]
      423 SETTABLEKS                       R49 R48 K59 ["Name"]
      425 DUPTABLE                         R49 K104 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      426 DUPTABLE                         R50 K106 [{["Type"] = "Placeholder"}]
      427 SETTABLEKS                       R50 R49 K102 ["Schema"]
      429 DUPTABLE                         R50 K107 [{"Placeholder"}]
      430 SETTABLEKS                       R46 R50 K105 ["Placeholder"]
      432 SETTABLEKS                       R50 R49 K103 ["Renderers"]
      434 SETTABLEKS                       R49 R48 K75 ["Description"]
      436 DUPTABLE                         R49 K104 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      437 DUPTABLE                         R50 K106 [{["Type"] = "Placeholder"}]
      438 SETTABLEKS                       R50 R49 K102 ["Schema"]
      440 DUPTABLE                         R50 K107 [{"Placeholder"}]
      441 SETTABLEKS                       R46 R50 K105 ["Placeholder"]
      443 SETTABLEKS                       R50 R49 K103 ["Renderers"]
      445 SETTABLEKS                       R49 R48 K78 ["Edited"]
      447 DUPTABLE                         R49 K104 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      448 DUPTABLE                         R50 K106 [{["Type"] = "Placeholder"}]
      449 SETTABLEKS                       R50 R49 K102 ["Schema"]
      451 DUPTABLE                         R50 K107 [{"Placeholder"}]
      452 SETTABLEKS                       R46 R50 K105 ["Placeholder"]
      454 SETTABLEKS                       R50 R49 K103 ["Renderers"]
      456 SETTABLEKS                       R49 R48 K83 ["Created"]
      458 DUPTABLE                         R49 K104 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      459 DUPTABLE                         R50 K106 [{["Type"] = "Placeholder"}]
      460 SETTABLEKS                       R50 R49 K102 ["Schema"]
      462 DUPTABLE                         R50 K107 [{"Placeholder"}]
      463 SETTABLEKS                       R46 R50 K105 ["Placeholder"]
      465 SETTABLEKS                       R50 R49 K103 ["Renderers"]
      467 SETTABLEKS                       R49 R48 K86 ["Playability"]
      469 DUPTABLE                         R49 K104 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      470 DUPTABLE                         R50 K106 [{["Type"] = "Placeholder"}]
      471 SETTABLEKS                       R50 R49 K102 ["Schema"]
      473 DUPTABLE                         R50 K107 [{"Placeholder"}]
      474 SETTABLEKS                       R46 R50 K105 ["Placeholder"]
      476 SETTABLEKS                       R50 R49 K103 ["Renderers"]
      478 SETTABLEKS                       R49 R48 K99 ["Type"]
      480 DUPTABLE                         R49 K104 [{["Value"] = "", ["Schema"], ["Renderers"]}]
      481 DUPTABLE                         R50 K106 [{["Type"] = "Placeholder"}]
      482 SETTABLEKS                       R50 R49 K102 ["Schema"]
      484 DUPTABLE                         R50 K107 [{"Placeholder"}]
      485 SETTABLEKS                       R46 R50 K105 ["Placeholder"]
      487 SETTABLEKS                       R50 R49 K103 ["Renderers"]
      489 SETTABLEKS                       R49 R48 K90 ["TeamCreate"]
      491 JUMPIFNOT                        R13 ; [+2]
      492 DUPTABLE                         R49 K108 [{["Value"] = ""}]
      493 JUMP                             ; [+1]
      494 LOADNIL                          R49
      495 SETTABLEKS                       R49 R48 K92 ["KebabMenu"]
      497 DUPCLOSURE                       R49 K109 [PROTO_3]
      498 DUPCLOSURE                       R50 K110 [PROTO_4]
      499 CAPTURE                          VAL R30
      500 DUPCLOSURE                       R51 K111 [PROTO_5]
      501 CAPTURE                          VAL R31
      502 DUPCLOSURE                       R52 K112 [PROTO_7]
      503 CAPTURE                          VAL R24
      504 CAPTURE                          VAL R13
      505 CAPTURE                          VAL R25
      506 CAPTURE                          VAL R4
      507 CAPTURE                          VAL R1
      508 CAPTURE                          VAL R36
      509 DUPCLOSURE                       R53 K113 [PROTO_21]
      510 CAPTURE                          VAL R2
      511 CAPTURE                          VAL R6
      512 CAPTURE                          VAL R1
      513 CAPTURE                          VAL R12
      514 CAPTURE                          VAL R13
      515 CAPTURE                          VAL R38
      516 CAPTURE                          VAL R3
      517 CAPTURE                          VAL R39
      518 CAPTURE                          VAL R43
      519 CAPTURE                          VAL R17
      520 CAPTURE                          VAL R18
      521 CAPTURE                          VAL R19
      522 CAPTURE                          VAL R8
      523 CAPTURE                          VAL R48
      524 CAPTURE                          VAL R47
      525 CAPTURE                          VAL R15
      526 CAPTURE                          VAL R37
      527 CAPTURE                          VAL R31
      528 CAPTURE                          VAL R30
      529 CAPTURE                          VAL R28
      530 CAPTURE                          VAL R29
      531 CAPTURE                          VAL R9
      532 CAPTURE                          VAL R34
      533 CAPTURE                          VAL R44
      534 CAPTURE                          VAL R51
      535 CAPTURE                          VAL R27
      536 CAPTURE                          VAL R26
      537 CAPTURE                          VAL R50
      538 CAPTURE                          VAL R49
      539 CAPTURE                          VAL R10
      540 CAPTURE                          VAL R45
      541 CAPTURE                          VAL R36
      542 CAPTURE                          VAL R52
      543 SETGLOBAL                        R53 K114 ["ExperiencesTable"]
      545 GETGLOBAL                        R53 K114 ["ExperiencesTable"]
      547 RETURN                           R53 1
