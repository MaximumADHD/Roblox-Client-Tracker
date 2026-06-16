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
        6 DUPTABLE                         R2 K6 [{"CornerRadius", "Size", "Position", "AnchorPoint"}]
        7 LOADN                            R3 8
        8 SETTABLEKS                       R3 R2 K2 ["CornerRadius"]
       10 GETIMPORT                        R3 K9 [UDim2.new]
       12 LOADK                            R4 K10 [0.9]
       13 LOADN                            R5 0
       14 LOADN                            R6 0
       15 LOADN                            R7 24
       16 CALL                             R3 4 1
       17 SETTABLEKS                       R3 R2 K3 ["Size"]
       19 GETIMPORT                        R3 K9 [UDim2.new]
       21 LOADN                            R4 0
       22 LOADN                            R5 0
       23 LOADK                            R6 K11 [0.5]
       24 LOADN                            R7 0
       25 CALL                             R3 4 1
       26 SETTABLEKS                       R3 R2 K4 ["Position"]
       28 GETIMPORT                        R3 K13 [Vector2.new]
       30 LOADN                            R4 0
       31 LOADK                            R5 K11 [0.5]
       32 CALL                             R3 2 1
       33 SETTABLEKS                       R3 R2 K5 ["AnchorPoint"]
       35 CALL                             R0 2 -1
       36 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Component"]
        6 DUPTABLE                         R2 K6 [{"CornerRadius", "Size", "Position", "AnchorPoint"}]
        7 LOADN                            R3 8
        8 SETTABLEKS                       R3 R2 K2 ["CornerRadius"]
       10 GETIMPORT                        R3 K9 [UDim2.new]
       12 LOADN                            R4 0
       13 LOADN                            R5 32
       14 LOADN                            R6 0
       15 LOADN                            R7 32
       16 CALL                             R3 4 1
       17 SETTABLEKS                       R3 R2 K3 ["Size"]
       19 GETIMPORT                        R3 K9 [UDim2.new]
       21 LOADN                            R4 0
       22 LOADN                            R5 0
       23 LOADK                            R6 K10 [0.5]
       24 LOADN                            R7 0
       25 CALL                             R3 4 1
       26 SETTABLEKS                       R3 R2 K4 ["Position"]
       28 GETIMPORT                        R3 K12 [Vector2.new]
       30 LOADN                            R4 0
       31 LOADK                            R5 K10 [0.5]
       32 CALL                             R3 2 1
       33 SETTABLEKS                       R3 R2 K5 ["AnchorPoint"]
       35 CALL                             R0 2 -1
       36 RETURN                           R0 -1

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
       16 NEWTABLE                         R1 0 2
       18 LOADK                            R2 K6 ["ConfigurePlace"]
       19 GETUPVAL                         R4 2
       20 JUMPIFNOT                        R4 ; [+2]
       21 LOADK                            R3 K7 ["OpenACopy"]
       22 JUMP                             ; [+1]
       23 LOADK                            R3 K8 [""]
       24 SETLIST                          R1 R2 2 [1]
       26 SETTABLEKS                       R1 R0 K3 ["_allowedActions"]
       28 GETUPVAL                         R1 3
       29 GETTABLEKS                       R1 R1 K9 ["createElement"]
       31 LOADK                            R2 K10 ["Frame"]
       32 DUPTABLE                         R3 K13 [{"Size", "BackgroundTransparency"}]
       33 GETIMPORT                        R4 K16 [UDim2.fromScale]
       35 LOADN                            R5 1
       36 LOADN                            R6 1
       37 CALL                             R4 2 1
       38 SETTABLEKS                       R4 R3 K11 ["Size"]
       40 LOADN                            R4 1
       41 SETTABLEKS                       R4 R3 K12 ["BackgroundTransparency"]
       43 DUPTABLE                         R4 K18 [{"Button"}]
       44 GETUPVAL                         R5 3
       45 GETTABLEKS                       R5 R5 K9 ["createElement"]
       47 LOADK                            R6 K19 ["ImageButton"]
       48 NEWTABLE                         R7 8 0
       50 GETIMPORT                        R8 K21 [UDim2.fromOffset]
       52 LOADN                            R9 28
       53 LOADN                            R10 28
       54 CALL                             R8 2 1
       55 SETTABLEKS                       R8 R7 K11 ["Size"]
       57 GETIMPORT                        R8 K24 [Vector2.new]
       59 LOADK                            R9 K25 [0.5]
       60 LOADK                            R10 K25 [0.5]
       61 CALL                             R8 2 1
       62 SETTABLEKS                       R8 R7 K26 ["AnchorPoint"]
       64 GETIMPORT                        R8 K16 [UDim2.fromScale]
       66 LOADK                            R9 K25 [0.5]
       67 LOADK                            R10 K25 [0.5]
       68 CALL                             R8 2 1
       69 SETTABLEKS                       R8 R7 K27 ["Position"]
       71 GETUPVAL                         R8 3
       72 GETTABLEKS                       R8 R8 K28 ["Tag"]
       74 LOADK                            R9 K29 ["X-Corner StartPage-TileBackground StartPage-NoBorder StartPage-KebabIcon"]
       75 SETTABLE                         R9 R7 R8
       76 GETUPVAL                         R8 3
       77 GETTABLEKS                       R8 R8 K30 ["Event"]
       79 GETTABLEKS                       R8 R8 K31 ["Activated"]
       81 NEWCLOSURE                       R9 P0
       82 CAPTURE                          UPVAL U4
       83 CAPTURE                          UPVAL U5
       84 CAPTURE                          VAL R0
       85 SETTABLE                         R9 R7 R8
       86 CALL                             R5 2 1
       87 SETTABLEKS                       R5 R4 K17 ["Button"]
       89 CALL                             R1 3 -1
       90 RETURN                           R1 -1

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
       25 DUPTABLE                         R6 K13 [{"label", "rightAlignIcon", "UniverseId"}]
       26 GETUPVAL                         R7 2
       27 LOADK                            R9 K14 ["Plugin"]
       28 LOADK                            R10 K15 ["Yes"]
       29 NAMECALL                         R7 R7 K16 ["getText"]
       31 CALL                             R7 3 1
       32 SETTABLEKS                       R7 R6 K10 ["label"]
       34 LOADB                            R7 1
       35 SETTABLEKS                       R7 R6 K11 ["rightAlignIcon"]
       37 GETUPVAL                         R7 3
       38 GETTABLEKS                       R7 R7 K17 ["Id"]
       40 SETTABLEKS                       R7 R6 K12 ["UniverseId"]
       42 CALL                             R4 2 1
       43 SETTABLEKS                       R4 R3 K8 ["Badge"]
       45 CALL                             R0 3 -1
       46 RETURN                           R0 -1

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
        4 DUPTABLE                         R2 K4 [{"Size", "BackgroundTransparency"}]
        5 GETIMPORT                        R3 K7 [UDim2.fromScale]
        7 LOADN                            R4 1
        8 LOADN                            R5 1
        9 CALL                             R3 2 1
       10 SETTABLEKS                       R3 R2 K2 ["Size"]
       12 LOADN                            R3 1
       13 SETTABLEKS                       R3 R2 K3 ["BackgroundTransparency"]
       15 DUPTABLE                         R3 K9 [{"Button"}]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K0 ["createElement"]
       19 LOADK                            R5 K10 ["ImageButton"]
       20 NEWTABLE                         R6 8 0
       22 GETIMPORT                        R7 K12 [UDim2.fromOffset]
       24 LOADN                            R8 28
       25 LOADN                            R9 28
       26 CALL                             R7 2 1
       27 SETTABLEKS                       R7 R6 K2 ["Size"]
       29 GETIMPORT                        R7 K15 [Vector2.new]
       31 LOADK                            R8 K16 [0.5]
       32 LOADK                            R9 K16 [0.5]
       33 CALL                             R7 2 1
       34 SETTABLEKS                       R7 R6 K17 ["AnchorPoint"]
       36 GETIMPORT                        R7 K7 [UDim2.fromScale]
       38 LOADK                            R8 K16 [0.5]
       39 LOADK                            R9 K16 [0.5]
       40 CALL                             R7 2 1
       41 SETTABLEKS                       R7 R6 K18 ["Position"]
       43 GETUPVAL                         R7 0
       44 GETTABLEKS                       R7 R7 K19 ["Tag"]
       46 LOADK                            R8 K20 ["X-Corner StartPage-TileBackground StartPage-NoBorder StartPage-KebabIcon"]
       47 SETTABLE                         R8 R6 R7
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R7 R7 K21 ["Event"]
       51 GETTABLEKS                       R7 R7 K22 ["Activated"]
       53 NEWCLOSURE                       R8 P0
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          UPVAL U3
       57 SETTABLE                         R8 R6 R7
       58 CALL                             R4 2 1
       59 SETTABLEKS                       R4 R3 K8 ["Button"]
       61 CALL                             R0 3 -1
       62 RETURN                           R0 -1

PROTO_14:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["Cells"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 NEWTABLE                         R6 0 0
       10 GETTABLEKS                       R7 R5 K1 ["IsPlaceholder"]
       12 JUMPIF                           R7 ; [+160]
       13 GETTABLEKS                       R7 R5 K2 ["Children"]
       15 JUMPIFNOT                        R7 ; [+157]
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
       30 DUPTABLE                         R15 K19 [{"Value"}]
       31 LOADK                            R16 K20 [""]
       32 SETTABLEKS                       R16 R15 K18 ["Value"]
       34 SETTABLEKS                       R15 R14 K7 ["Icon"]
       36 DUPTABLE                         R15 K22 [{"Type", "PlaceId"}]
       37 LOADK                            R16 K21 ["PlaceId"]
       38 SETTABLEKS                       R16 R15 K13 ["Type"]
       40 GETTABLEKS                       R16 R11 K3 ["Id"]
       42 SETTABLEKS                       R16 R15 K21 ["PlaceId"]
       44 SETTABLEKS                       R15 R14 K3 ["Id"]
       46 DUPTABLE                         R15 K19 [{"Value"}]
       47 GETTABLEKS                       R16 R11 K8 ["Name"]
       49 SETTABLEKS                       R16 R15 K18 ["Value"]
       51 SETTABLEKS                       R15 R14 K8 ["Name"]
       53 DUPTABLE                         R15 K19 [{"Value"}]
       54 GETTABLEKS                       R16 R11 K9 ["Description"]
       56 SETTABLEKS                       R16 R15 K18 ["Value"]
       58 SETTABLEKS                       R15 R14 K9 ["Description"]
       60 DUPTABLE                         R15 K19 [{"Value"}]
       61 GETUPVAL                         R17 1
       62 JUMPIFNOT                        R17 ; [+9]
       63 GETTABLEKS                       R17 R11 K23 ["LastViewed"]
       65 JUMPIFNOT                        R17 ; [+6]
       66 GETUPVAL                         R16 2
       67 GETTABLEKS                       R17 R11 K23 ["LastViewed"]
       69 GETUPVAL                         R18 3
       70 CALL                             R16 2 1
       71 JUMP                             ; [+1]
       72 LOADK                            R16 K20 [""]
       73 SETTABLEKS                       R16 R15 K18 ["Value"]
       75 SETTABLEKS                       R15 R14 K10 ["Edited"]
       77 DUPTABLE                         R15 K19 [{"Value"}]
       78 GETUPVAL                         R17 1
       79 JUMPIFNOT                        R17 ; [+6]
       80 GETUPVAL                         R16 2
       81 GETTABLEKS                       R17 R11 K11 ["Created"]
       83 GETUPVAL                         R18 3
       84 CALL                             R16 2 1
       85 JUMP                             ; [+1]
       86 LOADK                            R16 K20 [""]
       87 SETTABLEKS                       R16 R15 K18 ["Value"]
       89 SETTABLEKS                       R15 R14 K11 ["Created"]
       91 DUPTABLE                         R15 K19 [{"Value"}]
       92 GETUPVAL                         R17 1
       93 JUMPIFNOT                        R17 ; [+5]
       94 GETUPVAL                         R16 4
       95 MOVE                             R17 R11
       96 GETUPVAL                         R18 3
       97 CALL                             R16 2 1
       98 JUMP                             ; [+1]
       99 LOADK                            R16 K20 [""]
      100 SETTABLEKS                       R16 R15 K18 ["Value"]
      102 SETTABLEKS                       R15 R14 K12 ["Playability"]
      104 DUPTABLE                         R15 K19 [{"Value"}]
      105 LOADK                            R16 K20 [""]
      106 SETTABLEKS                       R16 R15 K18 ["Value"]
      108 SETTABLEKS                       R15 R14 K13 ["Type"]
      110 DUPTABLE                         R15 K19 [{"Value"}]
      111 GETTABLEKS                       R16 R11 K14 ["UniverseId"]
      113 SETTABLEKS                       R16 R15 K18 ["Value"]
      115 SETTABLEKS                       R15 R14 K14 ["UniverseId"]
      117 GETUPVAL                         R16 1
      118 JUMPIFNOT                        R16 ; [+15]
      119 DUPTABLE                         R15 K19 [{"Value"}]
      120 GETUPVAL                         R16 3
      121 LOADK                            R18 K24 ["Plugin"]
      122 GETTABLEKS                       R20 R5 K25 ["IsTeamCreateEnabled"]
      124 JUMPIFNOT                        R20 ; [+2]
      125 LOADK                            R19 K26 ["Yes"]
      126 JUMP                             ; [+1]
      127 LOADK                            R19 K27 ["No"]
      128 NAMECALL                         R16 R16 K28 ["getText"]
      130 CALL                             R16 3 1
      131 SETTABLEKS                       R16 R15 K18 ["Value"]
      133 JUMP                             ; [+1]
      134 LOADNIL                          R15
      135 SETTABLEKS                       R15 R14 K15 ["TeamCreate"]
      137 GETUPVAL                         R16 1
      138 JUMPIFNOT                        R16 ; [+23]
      139 DUPTABLE                         R15 K31 [{"Value", "Schema", "Renderers"}]
      140 LOADK                            R16 K20 [""]
      141 SETTABLEKS                       R16 R15 K18 ["Value"]
      143 DUPTABLE                         R16 K32 [{"Type"}]
      144 LOADK                            R17 K16 ["KebabMenu"]
      145 SETTABLEKS                       R17 R16 K13 ["Type"]
      147 SETTABLEKS                       R16 R15 K29 ["Schema"]
      149 DUPTABLE                         R16 K33 [{"KebabMenu"}]
      150 NEWCLOSURE                       R17 P0
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R5
      153 CAPTURE                          UPVAL U5
      154 CAPTURE                          UPVAL U6
      155 CAPTURE                          UPVAL U7
      156 CAPTURE                          UPVAL U8
      157 SETTABLEKS                       R17 R16 K16 ["KebabMenu"]
      159 SETTABLEKS                       R16 R15 K30 ["Renderers"]
      161 JUMP                             ; [+1]
      162 LOADNIL                          R15
      163 SETTABLEKS                       R15 R14 K16 ["KebabMenu"]
      165 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      167 MOVE                             R13 R6
      168 GETIMPORT                        R12 K36 [table.insert]
      170 CALL                             R12 2 0
      171 FORGLOOP                         R7 2 ; [-151]
      173 GETTABLEKS                       R7 R5 K1 ["IsPlaceholder"]
      175 JUMPIFNOT                        R7 ; [+12]
      176 MOVE                             R8 R0
      177 GETUPVAL                         R9 9
      178 GETUPVAL                         R10 10
      179 DUPTABLE                         R11 K38 [{"children"}]
      180 SETTABLEKS                       R6 R11 K37 ["children"]
      182 CALL                             R9 2 -1
      183 FASTCALL                         TABLE_INSERT ; [+2]
      184 GETIMPORT                        R7 K36 [table.insert]
      186 CALL                             R7 -1 0
      187 JUMP                             ; [+245]
      188 DUPTABLE                         R9 K40 [{"Cell", "Icon", "Id", "Name", "Description", "Edited", "Created", "Playability", "Type", "UniverseId", "TeamCreate", "KebabMenu", "children"}]
      189 GETUPVAL                         R11 11
      190 JUMPIF                           R11 ; [+2]
      191 GETUPVAL                         R11 1
      192 JUMPIFNOT                        R11 ; [+2]
      193 MOVE                             R10 R5
      194 JUMP                             ; [+1]
      195 LOADNIL                          R10
      196 SETTABLEKS                       R10 R9 K39 ["Cell"]
      198 GETTABLEKS                       R11 R5 K41 ["ImageUrl"]
      200 JUMPIFNOT                        R11 ; [+21]
      201 DUPTABLE                         R10 K43 [{"Value", "LeftIcon"}]
      202 LOADK                            R11 K20 [""]
      203 SETTABLEKS                       R11 R10 K18 ["Value"]
      205 DUPTABLE                         R11 K46 [{"Image", "Size"}]
      206 GETTABLEKS                       R12 R5 K41 ["ImageUrl"]
      208 SETTABLEKS                       R12 R11 K44 ["Image"]
      210 GETIMPORT                        R12 K49 [UDim2.new]
      212 LOADN                            R13 0
      213 LOADN                            R14 32
      214 LOADN                            R15 0
      215 LOADN                            R16 32
      216 CALL                             R12 4 1
      217 SETTABLEKS                       R12 R11 K45 ["Size"]
      219 SETTABLEKS                       R11 R10 K42 ["LeftIcon"]
      221 JUMP                             ; [+39]
      222 GETTABLEKS                       R11 R5 K50 ["NoLoadableImage"]
      224 JUMPIFNOT                        R11 ; [+20]
      225 DUPTABLE                         R10 K43 [{"Value", "LeftIcon"}]
      226 LOADK                            R11 K20 [""]
      227 SETTABLEKS                       R11 R10 K18 ["Value"]
      229 DUPTABLE                         R11 K46 [{"Image", "Size"}]
      230 LOADK                            R12 K51 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/SI-Standard/Placeholder.png"]
      231 SETTABLEKS                       R12 R11 K44 ["Image"]
      233 GETIMPORT                        R12 K49 [UDim2.new]
      235 LOADN                            R13 0
      236 LOADN                            R14 32
      237 LOADN                            R15 0
      238 LOADN                            R16 32
      239 CALL                             R12 4 1
      240 SETTABLEKS                       R12 R11 K45 ["Size"]
      242 SETTABLEKS                       R11 R10 K42 ["LeftIcon"]
      244 JUMP                             ; [+16]
      245 DUPTABLE                         R10 K31 [{"Value", "Schema", "Renderers"}]
      246 LOADK                            R11 K20 [""]
      247 SETTABLEKS                       R11 R10 K18 ["Value"]
      249 DUPTABLE                         R11 K32 [{"Type"}]
      250 LOADK                            R12 K52 ["Placeholder"]
      251 SETTABLEKS                       R12 R11 K13 ["Type"]
      253 SETTABLEKS                       R11 R10 K29 ["Schema"]
      255 DUPTABLE                         R11 K53 [{"Placeholder"}]
      256 GETUPVAL                         R12 12
      257 SETTABLEKS                       R12 R11 K52 ["Placeholder"]
      259 SETTABLEKS                       R11 R10 K30 ["Renderers"]
      261 SETTABLEKS                       R10 R9 K7 ["Icon"]
      263 GETTABLEKS                       R11 R5 K54 ["RootPlaceId"]
      265 JUMPIFNOT                        R11 ; [+9]
      266 DUPTABLE                         R10 K22 [{"Type", "PlaceId"}]
      267 LOADK                            R11 K21 ["PlaceId"]
      268 SETTABLEKS                       R11 R10 K13 ["Type"]
      270 GETTABLEKS                       R11 R5 K54 ["RootPlaceId"]
      272 SETTABLEKS                       R11 R10 K21 ["PlaceId"]
      274 JUMP                             ; [+13]
      275 GETTABLEKS                       R11 R5 K55 ["FilePath"]
      277 JUMPIFNOT                        R11 ; [+9]
      278 DUPTABLE                         R10 K56 [{"Type", "FilePath"}]
      279 LOADK                            R11 K55 ["FilePath"]
      280 SETTABLEKS                       R11 R10 K13 ["Type"]
      282 GETTABLEKS                       R11 R5 K55 ["FilePath"]
      284 SETTABLEKS                       R11 R10 K55 ["FilePath"]
      286 JUMP                             ; [+1]
      287 LOADNIL                          R10
      288 SETTABLEKS                       R10 R9 K3 ["Id"]
      290 DUPTABLE                         R10 K19 [{"Value"}]
      291 GETTABLEKS                       R12 R5 K8 ["Name"]
      293 ORK                              R11 R12 K20 [""]
      294 SETTABLEKS                       R11 R10 K18 ["Value"]
      296 SETTABLEKS                       R10 R9 K8 ["Name"]
      298 DUPTABLE                         R10 K19 [{"Value"}]
      299 GETTABLEKS                       R12 R5 K9 ["Description"]
      301 JUMPIF                           R12 ; [+2]
      302 LOADK                            R11 K20 [""]
      303 JUMP                             ; [+2]
      304 GETTABLEKS                       R11 R5 K9 ["Description"]
      306 SETTABLEKS                       R11 R10 K18 ["Value"]
      308 SETTABLEKS                       R10 R9 K9 ["Description"]
      310 DUPTABLE                         R10 K19 [{"Value"}]
      311 GETTABLEKS                       R12 R5 K23 ["LastViewed"]
      313 JUMPIFNOT                        R12 ; [+6]
      314 GETUPVAL                         R11 2
      315 GETTABLEKS                       R12 R5 K23 ["LastViewed"]
      317 GETUPVAL                         R13 3
      318 CALL                             R11 2 1
      319 JUMP                             ; [+1]
      320 LOADK                            R11 K20 [""]
      321 SETTABLEKS                       R11 R10 K18 ["Value"]
      323 SETTABLEKS                       R10 R9 K10 ["Edited"]
      325 DUPTABLE                         R10 K19 [{"Value"}]
      326 GETUPVAL                         R11 2
      327 GETTABLEKS                       R12 R5 K11 ["Created"]
      329 GETUPVAL                         R13 3
      330 CALL                             R11 2 1
      331 SETTABLEKS                       R11 R10 K18 ["Value"]
      333 SETTABLEKS                       R10 R9 K11 ["Created"]
      335 DUPTABLE                         R10 K19 [{"Value"}]
      336 GETUPVAL                         R11 4
      337 MOVE                             R12 R5
      338 GETUPVAL                         R13 3
      339 CALL                             R11 2 1
      340 SETTABLEKS                       R11 R10 K18 ["Value"]
      342 SETTABLEKS                       R10 R9 K12 ["Playability"]
      344 DUPTABLE                         R10 K19 [{"Value"}]
      345 GETTABLEKS                       R12 R5 K57 ["IsGame"]
      347 JUMPIFNOT                        R12 ; [+2]
      348 LOADK                            R11 K58 ["Experience"]
      349 JUMP                             ; [+1]
      350 LOADK                            R11 K59 ["Place"]
      351 SETTABLEKS                       R11 R10 K18 ["Value"]
      353 SETTABLEKS                       R10 R9 K13 ["Type"]
      355 DUPTABLE                         R10 K19 [{"Value"}]
      356 GETTABLEKS                       R11 R5 K3 ["Id"]
      358 SETTABLEKS                       R11 R10 K18 ["Value"]
      360 SETTABLEKS                       R10 R9 K14 ["UniverseId"]
      362 GETUPVAL                         R11 13
      363 JUMPIFNOT                        R11 ; [+24]
      364 GETTABLEKS                       R11 R5 K60 ["IsAgeRestrictedCollaboration"]
      366 JUMPIFNOT                        R11 ; [+21]
      367 DUPTABLE                         R10 K31 [{"Value", "Schema", "Renderers"}]
      368 LOADK                            R11 K20 [""]
      369 SETTABLEKS                       R11 R10 K18 ["Value"]
      371 DUPTABLE                         R11 K32 [{"Type"}]
      372 LOADK                            R12 K61 ["CollaborationRestriction"]
      373 SETTABLEKS                       R12 R11 K13 ["Type"]
      375 SETTABLEKS                       R11 R10 K29 ["Schema"]
      377 DUPTABLE                         R11 K62 [{"CollaborationRestriction"}]
      378 NEWCLOSURE                       R12 P1
      379 CAPTURE                          UPVAL U6
      380 CAPTURE                          UPVAL U14
      381 CAPTURE                          UPVAL U3
      382 CAPTURE                          VAL R5
      383 SETTABLEKS                       R12 R11 K61 ["CollaborationRestriction"]
      385 SETTABLEKS                       R11 R10 K30 ["Renderers"]
      387 JUMP                             ; [+9]
      388 DUPTABLE                         R10 K19 [{"Value"}]
      389 GETTABLEKS                       R12 R5 K25 ["IsTeamCreateEnabled"]
      391 JUMPIFNOT                        R12 ; [+2]
      392 LOADK                            R11 K26 ["Yes"]
      393 JUMP                             ; [+1]
      394 LOADK                            R11 K27 ["No"]
      395 SETTABLEKS                       R11 R10 K18 ["Value"]
      397 SETTABLEKS                       R10 R9 K15 ["TeamCreate"]
      399 GETUPVAL                         R11 1
      400 JUMPIFNOT                        R11 ; [+21]
      401 DUPTABLE                         R10 K31 [{"Value", "Schema", "Renderers"}]
      402 LOADK                            R11 K20 [""]
      403 SETTABLEKS                       R11 R10 K18 ["Value"]
      405 DUPTABLE                         R11 K32 [{"Type"}]
      406 LOADK                            R12 K16 ["KebabMenu"]
      407 SETTABLEKS                       R12 R11 K13 ["Type"]
      409 SETTABLEKS                       R11 R10 K29 ["Schema"]
      411 DUPTABLE                         R11 K33 [{"KebabMenu"}]
      412 NEWCLOSURE                       R12 P2
      413 CAPTURE                          UPVAL U6
      414 CAPTURE                          UPVAL U7
      415 CAPTURE                          UPVAL U8
      416 CAPTURE                          VAL R5
      417 SETTABLEKS                       R12 R11 K16 ["KebabMenu"]
      419 SETTABLEKS                       R11 R10 K30 ["Renderers"]
      421 JUMP                             ; [+1]
      422 LOADNIL                          R10
      423 SETTABLEKS                       R10 R9 K16 ["KebabMenu"]
      425 SETTABLEKS                       R6 R9 K37 ["children"]
      427 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
      429 MOVE                             R8 R0
      430 GETIMPORT                        R7 K36 [table.insert]
      432 CALL                             R7 2 0
      433 FORGLOOP                         R1 2 ; [-426]
      435 RETURN                           R0 1

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
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          REF R8
       53 CAPTURE                          VAL R5
       54 CAPTURE                          UPVAL U10
       55 CAPTURE                          UPVAL U11
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          UPVAL U12
       58 CAPTURE                          UPVAL U13
       59 CAPTURE                          UPVAL U14
       60 NEWTABLE                         R12 0 1
       62 GETTABLEKS                       R13 R0 K6 ["Cells"]
       64 SETLIST                          R12 R13 1 [1]
       66 CALL                             R10 2 1
       67 LOADNIL                          R11
       68 GETTABLEKS                       R12 R0 K7 ["CanDisplayComponentAdjustQuery"]
       70 JUMPIFNOT                        R12 ; [+11]
       71 GETTABLEKS                       R12 R0 K8 ["Query"]
       73 GETTABLEKS                       R12 R12 K9 ["sortOrder"]
       75 JUMPIFNOTEQKS                    R12 K10 ["Asc"] ; [+4]
       77 GETIMPORT                        R11 K14 [Enum.SortDirection.Descending]
       79 JUMP                             ; [+2]
       80 GETIMPORT                        R11 K16 [Enum.SortDirection.Ascending]
       82 LOADNIL                          R12
       83 LOADNIL                          R13
       84 LOADNIL                          R14
       85 GETUPVAL                         R15 15
       86 JUMPIF                           R15 ; [+2]
       87 GETUPVAL                         R15 16
       88 JUMPIFNOT                        R15 ; [+14]
       89 GETUPVAL                         R15 17
       90 GETUPVAL                         R16 18
       91 CALL                             R15 1 1
       92 MOVE                             R12 R15
       93 GETUPVAL                         R15 19
       94 GETTABLEKS                       R15 R15 K17 ["getDialogManager"]
       96 CALL                             R15 0 1
       97 MOVE                             R13 R15
       98 GETUPVAL                         R15 19
       99 GETTABLEKS                       R15 R15 K18 ["getActionsBridge"]
      101 CALL                             R15 0 1
      102 MOVE                             R14 R15
      103 GETUPVAL                         R15 2
      104 GETTABLEKS                       R15 R15 K19 ["createElement"]
      106 LOADK                            R16 K20 ["Frame"]
      107 NEWTABLE                         R17 1 0
      109 GETUPVAL                         R18 2
      110 GETTABLEKS                       R18 R18 K21 ["Tag"]
      112 LOADK                            R19 K22 ["X-Transparent StartPage-TablePadding X-Fill data-testid=--start-page-ExperiencesTable"]
      113 SETTABLE                         R19 R17 R18
      114 DUPTABLE                         R18 K25 [{"Table", "Menu"}]
      115 GETUPVAL                         R19 2
      116 GETTABLEKS                       R19 R19 K19 ["createElement"]
      118 GETUPVAL                         R20 20
      119 NEWTABLE                         R21 32 0
      121 GETUPVAL                         R22 21
      122 SETTABLEKS                       R22 R21 K26 ["Columns"]
      124 NEWCLOSURE                       R22 P2
      125 CAPTURE                          VAL R2
      126 CAPTURE                          UPVAL U10
      127 CAPTURE                          VAL R1
      128 SETTABLEKS                       R22 R21 K27 ["OnExpansionChange"]
      130 NEWTABLE                         R22 0 0
      132 SETTABLEKS                       R22 R21 K28 ["Selection"]
      134 NEWCLOSURE                       R22 P3
      135 CAPTURE                          UPVAL U15
      136 CAPTURE                          UPVAL U16
      137 CAPTURE                          UPVAL U22
      138 CAPTURE                          VAL R0
      139 CAPTURE                          UPVAL U23
      140 CAPTURE                          UPVAL U24
      141 CAPTURE                          REF R12
      142 CAPTURE                          REF R14
      143 CAPTURE                          REF R13
      144 CAPTURE                          VAL R3
      145 CAPTURE                          UPVAL U25
      146 CAPTURE                          VAL R10
      147 CAPTURE                          UPVAL U26
      148 CAPTURE                          UPVAL U27
      149 SETTABLEKS                       R22 R21 K29 ["OnSelectionChange"]
      151 SETTABLEKS                       R1 R21 K30 ["Expansion"]
      153 SETTABLEKS                       R10 R21 K31 ["RootItems"]
      155 SETTABLEKS                       R11 R21 K32 ["SortOrder"]
      157 GETTABLEKS                       R23 R0 K7 ["CanDisplayComponentAdjustQuery"]
      159 JUMPIFNOT                        R23 ; [+7]
      160 GETUPVAL                         R23 28
      161 GETTABLEKS                       R24 R0 K8 ["Query"]
      163 GETTABLEKS                       R24 R24 K33 ["sortParam"]
      165 GETTABLE                         R22 R23 R24
      166 JUMP                             ; [+1]
      167 LOADNIL                          R22
      168 SETTABLEKS                       R22 R21 K34 ["SortIndex"]
      170 NEWCLOSURE                       R22 P4
      171 CAPTURE                          UPVAL U21
      172 CAPTURE                          VAL R0
      173 SETTABLEKS                       R22 R21 K35 ["OnSortChange"]
      175 LOADN                            R22 53
      176 SETTABLEKS                       R22 R21 K36 ["RowHeight"]
      178 LOADB                            R22 1
      179 SETTABLEKS                       R22 R21 K37 ["UseDeficit"]
      181 DUPCLOSURE                       R22 K38 [PROTO_18]
      182 SETTABLEKS                       R22 R21 K39 ["GetChildren"]
      184 DUPCLOSURE                       R22 K40 [PROTO_19]
      185 SETTABLEKS                       R22 R21 K41 ["GetItemId"]
      187 GETTABLEKS                       R22 R0 K42 ["OnLoadRange"]
      189 SETTABLEKS                       R22 R21 K42 ["OnLoadRange"]
      191 LOADB                            R22 1
      192 SETTABLEKS                       R22 R21 K43 ["Scroll"]
      194 DUPTABLE                         R22 K45 [{"CanvasSize"}]
      195 GETTABLEKS                       R23 R0 K44 ["CanvasSize"]
      197 SETTABLEKS                       R23 R22 K44 ["CanvasSize"]
      199 SETTABLEKS                       R22 R21 K46 ["ScrollProps"]
      201 GETUPVAL                         R23 3
      202 JUMPIFNOT                        R23 ; [+4]
      203 NEWCLOSURE                       R22 P7
      204 CAPTURE                          REF R8
      205 CAPTURE                          VAL R5
      206 JUMP                             ; [+1]
      207 LOADNIL                          R22
      208 SETTABLEKS                       R22 R21 K47 ["RightClick"]
      210 LOADK                            R22 K48 ["modern"]
      211 SETTABLEKS                       R22 R21 K49 ["Variant"]
      213 GETUPVAL                         R22 2
      214 GETTABLEKS                       R22 R22 K21 ["Tag"]
      216 LOADK                            R23 K50 ["X-Fill"]
      217 SETTABLE                         R23 R21 R22
      218 GETUPVAL                         R23 3
      219 JUMPIF                           R23 ; [+2]
      220 GETUPVAL                         R23 4
      221 JUMPIFNOT                        R23 ; [+2]
      222 MOVE                             R22 R7
      223 JUMP                             ; [+1]
      224 LOADNIL                          R22
      225 SETTABLEKS                       R22 R21 K51 ["ref"]
      227 GETUPVAL                         R23 3
      228 JUMPIF                           R23 ; [+2]
      229 GETUPVAL                         R23 4
      230 JUMPIFNOT                        R23 ; [+2]
      231 MOVE                             R22 R6
      232 JUMP                             ; [+1]
      233 LOADNIL                          R22
      234 SETTABLEKS                       R22 R21 K52 ["DisableHover"]
      236 CALL                             R19 2 1
      237 SETTABLEKS                       R19 R18 K23 ["Table"]
      239 JUMPIFNOT                        R6 ; [+20]
      240 GETUPVAL                         R20 29
      241 JUMPIFEQKNIL                     R20 ; [+18]
      243 GETUPVAL                         R19 2
      244 GETTABLEKS                       R19 R19 K19 ["createElement"]
      246 GETUPVAL                         R20 30
      247 DUPTABLE                         R21 K58 [{"anchorRef", "isOpen", "cell", "onItemActivated", "onClose"}]
      248 SETTABLEKS                       R8 R21 K53 ["anchorRef"]
      250 SETTABLEKS                       R6 R21 K54 ["isOpen"]
      252 SETTABLEKS                       R4 R21 K55 ["cell"]
      254 SETTABLEKS                       R9 R21 K56 ["onItemActivated"]
      256 SETTABLEKS                       R9 R21 K57 ["onClose"]
      258 CALL                             R19 2 1
      259 JUMP                             ; [+1]
      260 LOADNIL                          R19
      261 SETTABLEKS                       R19 R18 K24 ["Menu"]
      263 CALL                             R15 3 -1
      264 CLOSEUPVALS                      R8
      265 RETURN                           R15 -1

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
      124 GETTABLEKS                       R19 R19 K28 ["Constants"]
      126 GETTABLEKS                       R19 R19 K29 ["Audience"]
      128 CALL                             R18 1 1
      129 GETIMPORT                        R19 K5 [require]
      131 GETTABLEKS                       R20 R0 K16 ["Src"]
      133 GETTABLEKS                       R20 R20 K17 ["Util"]
      135 GETTABLEKS                       R20 R20 K30 ["AudienceUtils"]
      137 CALL                             R19 1 1
      138 GETTABLEKS                       R20 R19 K31 ["audienceIsPrivate"]
      140 GETTABLEKS                       R21 R19 K32 ["audienceIncludes"]
      142 GETIMPORT                        R22 K5 [require]
      144 GETTABLEKS                       R23 R0 K16 ["Src"]
      146 GETTABLEKS                       R23 R23 K33 ["Contexts"]
      148 GETTABLEKS                       R23 R23 K34 ["ContextMenuActions"]
      150 CALL                             R22 1 1
      151 GETIMPORT                        R23 K5 [require]
      153 GETTABLEKS                       R24 R0 K16 ["Src"]
      155 GETTABLEKS                       R24 R24 K35 ["Hooks"]
      157 GETTABLEKS                       R24 R24 K36 ["useCellContextActions"]
      159 CALL                             R23 1 1
      160 GETTABLEKS                       R24 R9 K37 ["StudioService"]
      162 GETIMPORT                        R25 K5 [require]
      164 GETTABLEKS                       R26 R0 K16 ["Src"]
      166 GETTABLEKS                       R26 R26 K38 ["Network"]
      168 GETTABLEKS                       R26 R26 K39 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace"]
      170 CALL                             R25 1 1
      171 GETTABLEKS                       R26 R1 K40 ["useContext"]
      173 GETIMPORT                        R27 K5 [require]
      175 GETTABLEKS                       R28 R0 K16 ["Src"]
      177 GETTABLEKS                       R28 R28 K17 ["Util"]
      179 GETTABLEKS                       R28 R28 K41 ["Dialogs"]
      181 CALL                             R27 1 1
      182 GETIMPORT                        R28 K5 [require]
      184 GETTABLEKS                       R29 R0 K16 ["Src"]
      186 GETTABLEKS                       R29 R29 K21 ["SharedFlags"]
      188 GETTABLEKS                       R29 R29 K42 ["getFFlagLuaStartPageTCAgeGatingCheck"]
      190 CALL                             R28 1 1
      191 CALL                             R28 0 1
      192 GETIMPORT                        R29 K5 [require]
      194 GETTABLEKS                       R30 R0 K16 ["Src"]
      196 GETTABLEKS                       R30 R30 K21 ["SharedFlags"]
      198 GETTABLEKS                       R30 R30 K43 ["getFFlagLuaStartPagePlaceSequestrationCheck"]
      200 CALL                             R29 1 1
      201 CALL                             R29 0 1
      202 GETIMPORT                        R30 K5 [require]
      204 GETTABLEKS                       R31 R0 K16 ["Src"]
      206 GETTABLEKS                       R31 R31 K44 ["Types"]
      208 CALL                             R30 1 1
      209 GETTABLEKS                       R31 R5 K45 ["UI"]
      211 GETTABLEKS                       R32 R31 K46 ["TreeTable"]
      213 GETIMPORT                        R33 K5 [require]
      215 GETTABLEKS                       R34 R0 K16 ["Src"]
      217 GETTABLEKS                       R34 R34 K47 ["Components"]
      219 GETTABLEKS                       R34 R34 K48 ["Shimmer"]
      221 CALL                             R33 1 1
      222 JUMPIF                           R12 ; [+1]
      223 JUMPIFNOT                        R13 ; [+12]
      224 GETIMPORT                        R34 K5 [require]
      226 GETTABLEKS                       R35 R0 K16 ["Src"]
      228 GETTABLEKS                       R35 R35 K20 ["Foundation"]
      230 GETTABLEKS                       R35 R35 K47 ["Components"]
      232 GETTABLEKS                       R35 R35 K49 ["ContextMenu"]
      234 CALL                             R34 1 1
      235 JUMP                             ; [+1]
      236 LOADNIL                          R34
      237 JUMPIFNOT                        R15 ; [+10]
      238 GETIMPORT                        R35 K5 [require]
      240 GETTABLEKS                       R36 R0 K16 ["Src"]
      242 GETTABLEKS                       R36 R36 K47 ["Components"]
      244 GETTABLEKS                       R36 R36 K50 ["AgeRestrictedCollaborationBadge"]
      246 CALL                             R35 1 1
      247 JUMP                             ; [+1]
      248 LOADNIL                          R35
      249 GETTABLEKS                       R36 R11 K35 ["Hooks"]
      251 GETTABLEKS                       R36 R36 K51 ["useMeasurableRef"]
      253 GETIMPORT                        R37 K5 [require]
      255 GETTABLEKS                       R38 R0 K16 ["Src"]
      257 GETTABLEKS                       R38 R38 K17 ["Util"]
      259 GETTABLEKS                       R38 R38 K52 ["formatISOTimestamp"]
      261 CALL                             R37 1 1
      262 GETIMPORT                        R38 K5 [require]
      264 GETTABLEKS                       R39 R0 K16 ["Src"]
      266 GETTABLEKS                       R39 R39 K17 ["Util"]
      268 GETTABLEKS                       R39 R39 K53 ["CoreContentStatusConstants"]
      270 CALL                             R38 1 1
      271 GETTABLEKS                       R39 R38 K54 ["NEEDS_ATTENTION_AGE_THRESHOLD"]
      273 GETTABLEKS                       R40 R38 K55 ["AGE_BRACKET_9"]
      275 DUPCLOSURE                       R41 K56 [PROTO_0]
      276 CAPTURE                          VAL R14
      277 CAPTURE                          VAL R16
      278 CAPTURE                          VAL R20
      279 CAPTURE                          VAL R21
      280 CAPTURE                          VAL R18
      281 CAPTURE                          VAL R39
      282 CAPTURE                          VAL R40
      283 NEWTABLE                         R42 0 7
      285 DUPTABLE                         R43 K61 [{"Name", "Key", "Width", "ShouldSort"}]
      286 LOADK                            R44 K62 [""]
      287 SETTABLEKS                       R44 R43 K57 ["Name"]
      289 LOADK                            R44 K63 ["Icon"]
      290 SETTABLEKS                       R44 R43 K58 ["Key"]
      292 GETIMPORT                        R44 K66 [UDim.new]
      294 LOADN                            R45 0
      295 LOADN                            R46 64
      296 CALL                             R44 2 1
      297 SETTABLEKS                       R44 R43 K59 ["Width"]
      299 LOADB                            R44 0
      300 SETTABLEKS                       R44 R43 K60 ["ShouldSort"]
      302 DUPTABLE                         R44 K68 [{"Name", "Key", "Width", "ShouldSort", "SortParam"}]
      303 LOADK                            R45 K57 ["Name"]
      304 SETTABLEKS                       R45 R44 K57 ["Name"]
      306 LOADK                            R45 K57 ["Name"]
      307 SETTABLEKS                       R45 R44 K58 ["Key"]
      309 JUMPIFNOT                        R13 ; [+6]
      310 GETIMPORT                        R45 K66 [UDim.new]
      312 LOADK                            R46 K69 [0.25]
      313 LOADN                            R47 120
      314 CALL                             R45 2 1
      315 JUMP                             ; [+5]
      316 GETIMPORT                        R45 K66 [UDim.new]
      318 LOADK                            R46 K69 [0.25]
      319 LOADN                            R47 192
      320 CALL                             R45 2 1
      321 SETTABLEKS                       R45 R44 K59 ["Width"]
      323 LOADB                            R45 1
      324 SETTABLEKS                       R45 R44 K60 ["ShouldSort"]
      326 LOADK                            R45 K70 ["GameName"]
      327 SETTABLEKS                       R45 R44 K67 ["SortParam"]
      329 DUPTABLE                         R45 K61 [{"Name", "Key", "Width", "ShouldSort"}]
      330 LOADK                            R46 K71 ["Description"]
      331 SETTABLEKS                       R46 R45 K57 ["Name"]
      333 LOADK                            R46 K71 ["Description"]
      334 SETTABLEKS                       R46 R45 K58 ["Key"]
      336 GETIMPORT                        R46 K66 [UDim.new]
      338 LOADK                            R47 K69 [0.25]
      339 LOADN                            R48 0
      340 CALL                             R46 2 1
      341 SETTABLEKS                       R46 R45 K59 ["Width"]
      343 LOADB                            R46 0
      344 SETTABLEKS                       R46 R45 K60 ["ShouldSort"]
      346 DUPTABLE                         R46 K68 [{"Name", "Key", "Width", "ShouldSort", "SortParam"}]
      347 LOADK                            R47 K72 ["Last Edited"]
      348 SETTABLEKS                       R47 R46 K57 ["Name"]
      350 LOADK                            R47 K73 ["Edited"]
      351 SETTABLEKS                       R47 R46 K58 ["Key"]
      353 GETIMPORT                        R47 K66 [UDim.new]
      355 LOADK                            R48 K74 [0.15]
      356 LOADN                            R49 0
      357 CALL                             R47 2 1
      358 SETTABLEKS                       R47 R46 K59 ["Width"]
      360 LOADB                            R47 1
      361 SETTABLEKS                       R47 R46 K60 ["ShouldSort"]
      363 LOADK                            R47 K75 ["LastUpdated"]
      364 SETTABLEKS                       R47 R46 K67 ["SortParam"]
      366 DUPTABLE                         R47 K68 [{"Name", "Key", "Width", "ShouldSort", "SortParam"}]
      367 LOADK                            R48 K76 ["Date Created"]
      368 SETTABLEKS                       R48 R47 K57 ["Name"]
      370 LOADK                            R48 K77 ["Created"]
      371 SETTABLEKS                       R48 R47 K58 ["Key"]
      373 GETIMPORT                        R48 K66 [UDim.new]
      375 LOADK                            R49 K74 [0.15]
      376 LOADN                            R50 0
      377 CALL                             R48 2 1
      378 SETTABLEKS                       R48 R47 K59 ["Width"]
      380 LOADB                            R48 1
      381 SETTABLEKS                       R48 R47 K60 ["ShouldSort"]
      383 LOADK                            R48 K78 ["GameCreated"]
      384 SETTABLEKS                       R48 R47 K67 ["SortParam"]
      386 DUPTABLE                         R48 K61 [{"Name", "Key", "Width", "ShouldSort"}]
      387 LOADK                            R49 K79 ["Playability"]
      388 SETTABLEKS                       R49 R48 K57 ["Name"]
      390 LOADK                            R49 K79 ["Playability"]
      391 SETTABLEKS                       R49 R48 K58 ["Key"]
      393 GETIMPORT                        R49 K66 [UDim.new]
      395 LOADK                            R50 K80 [0.1]
      396 LOADN                            R51 0
      397 CALL                             R49 2 1
      398 SETTABLEKS                       R49 R48 K59 ["Width"]
      400 LOADB                            R49 0
      401 SETTABLEKS                       R49 R48 K60 ["ShouldSort"]
      403 DUPTABLE                         R49 K61 [{"Name", "Key", "Width", "ShouldSort"}]
      404 LOADK                            R50 K81 ["Team Create"]
      405 SETTABLEKS                       R50 R49 K57 ["Name"]
      407 LOADK                            R50 K82 ["TeamCreate"]
      408 SETTABLEKS                       R50 R49 K58 ["Key"]
      410 GETIMPORT                        R50 K66 [UDim.new]
      412 LOADK                            R51 K80 [0.1]
      413 LOADN                            R52 0
      414 CALL                             R50 2 1
      415 SETTABLEKS                       R50 R49 K59 ["Width"]
      417 LOADB                            R50 0
      418 SETTABLEKS                       R50 R49 K60 ["ShouldSort"]
      420 SETLIST                          R42 R43 7 [1]
      422 JUMPIFNOT                        R13 ; [+23]
      423 DUPTABLE                         R45 K61 [{"Name", "Key", "Width", "ShouldSort"}]
      424 LOADK                            R46 K62 [""]
      425 SETTABLEKS                       R46 R45 K57 ["Name"]
      427 LOADK                            R46 K83 ["KebabMenu"]
      428 SETTABLEKS                       R46 R45 K58 ["Key"]
      430 GETIMPORT                        R46 K66 [UDim.new]
      432 LOADN                            R47 0
      433 LOADN                            R48 72
      434 CALL                             R46 2 1
      435 SETTABLEKS                       R46 R45 K59 ["Width"]
      437 LOADB                            R46 0
      438 SETTABLEKS                       R46 R45 K60 ["ShouldSort"]
      440 FASTCALL2                        TABLE_INSERT R42 R45 ; [+4]
      442 MOVE                             R44 R42
      443 GETIMPORT                        R43 K86 [table.insert]
      445 CALL                             R43 2 0
      446 NEWTABLE                         R43 4 0
      448 LOADN                            R44 2
      449 SETTABLEKS                       R44 R43 K70 ["GameName"]
      451 LOADN                            R44 4
      452 SETTABLEKS                       R44 R43 K75 ["LastUpdated"]
      454 LOADN                            R44 5
      455 SETTABLEKS                       R44 R43 K78 ["GameCreated"]
      457 DUPCLOSURE                       R44 K87 [PROTO_1]
      458 CAPTURE                          VAL R1
      459 CAPTURE                          VAL R33
      460 DUPCLOSURE                       R45 K88 [PROTO_2]
      461 CAPTURE                          VAL R1
      462 CAPTURE                          VAL R33
      463 DUPTABLE                         R46 K90 [{"Icon", "Name", "Description", "Edited", "Created", "Playability", "Type", "TeamCreate", "KebabMenu"}]
      464 DUPTABLE                         R47 K94 [{"Value", "Schema", "Renderers"}]
      465 LOADK                            R48 K62 [""]
      466 SETTABLEKS                       R48 R47 K91 ["Value"]
      468 DUPTABLE                         R48 K95 [{"Type"}]
      469 LOADK                            R49 K96 ["Placeholder"]
      470 SETTABLEKS                       R49 R48 K89 ["Type"]
      472 SETTABLEKS                       R48 R47 K92 ["Schema"]
      474 DUPTABLE                         R48 K97 [{"Placeholder"}]
      475 SETTABLEKS                       R45 R48 K96 ["Placeholder"]
      477 SETTABLEKS                       R48 R47 K93 ["Renderers"]
      479 SETTABLEKS                       R47 R46 K63 ["Icon"]
      481 DUPTABLE                         R47 K94 [{"Value", "Schema", "Renderers"}]
      482 LOADK                            R48 K62 [""]
      483 SETTABLEKS                       R48 R47 K91 ["Value"]
      485 DUPTABLE                         R48 K95 [{"Type"}]
      486 LOADK                            R49 K96 ["Placeholder"]
      487 SETTABLEKS                       R49 R48 K89 ["Type"]
      489 SETTABLEKS                       R48 R47 K92 ["Schema"]
      491 DUPTABLE                         R48 K97 [{"Placeholder"}]
      492 SETTABLEKS                       R44 R48 K96 ["Placeholder"]
      494 SETTABLEKS                       R48 R47 K93 ["Renderers"]
      496 SETTABLEKS                       R47 R46 K57 ["Name"]
      498 DUPTABLE                         R47 K94 [{"Value", "Schema", "Renderers"}]
      499 LOADK                            R48 K62 [""]
      500 SETTABLEKS                       R48 R47 K91 ["Value"]
      502 DUPTABLE                         R48 K95 [{"Type"}]
      503 LOADK                            R49 K96 ["Placeholder"]
      504 SETTABLEKS                       R49 R48 K89 ["Type"]
      506 SETTABLEKS                       R48 R47 K92 ["Schema"]
      508 DUPTABLE                         R48 K97 [{"Placeholder"}]
      509 SETTABLEKS                       R44 R48 K96 ["Placeholder"]
      511 SETTABLEKS                       R48 R47 K93 ["Renderers"]
      513 SETTABLEKS                       R47 R46 K71 ["Description"]
      515 DUPTABLE                         R47 K94 [{"Value", "Schema", "Renderers"}]
      516 LOADK                            R48 K62 [""]
      517 SETTABLEKS                       R48 R47 K91 ["Value"]
      519 DUPTABLE                         R48 K95 [{"Type"}]
      520 LOADK                            R49 K96 ["Placeholder"]
      521 SETTABLEKS                       R49 R48 K89 ["Type"]
      523 SETTABLEKS                       R48 R47 K92 ["Schema"]
      525 DUPTABLE                         R48 K97 [{"Placeholder"}]
      526 SETTABLEKS                       R44 R48 K96 ["Placeholder"]
      528 SETTABLEKS                       R48 R47 K93 ["Renderers"]
      530 SETTABLEKS                       R47 R46 K73 ["Edited"]
      532 DUPTABLE                         R47 K94 [{"Value", "Schema", "Renderers"}]
      533 LOADK                            R48 K62 [""]
      534 SETTABLEKS                       R48 R47 K91 ["Value"]
      536 DUPTABLE                         R48 K95 [{"Type"}]
      537 LOADK                            R49 K96 ["Placeholder"]
      538 SETTABLEKS                       R49 R48 K89 ["Type"]
      540 SETTABLEKS                       R48 R47 K92 ["Schema"]
      542 DUPTABLE                         R48 K97 [{"Placeholder"}]
      543 SETTABLEKS                       R44 R48 K96 ["Placeholder"]
      545 SETTABLEKS                       R48 R47 K93 ["Renderers"]
      547 SETTABLEKS                       R47 R46 K77 ["Created"]
      549 DUPTABLE                         R47 K94 [{"Value", "Schema", "Renderers"}]
      550 LOADK                            R48 K62 [""]
      551 SETTABLEKS                       R48 R47 K91 ["Value"]
      553 DUPTABLE                         R48 K95 [{"Type"}]
      554 LOADK                            R49 K96 ["Placeholder"]
      555 SETTABLEKS                       R49 R48 K89 ["Type"]
      557 SETTABLEKS                       R48 R47 K92 ["Schema"]
      559 DUPTABLE                         R48 K97 [{"Placeholder"}]
      560 SETTABLEKS                       R44 R48 K96 ["Placeholder"]
      562 SETTABLEKS                       R48 R47 K93 ["Renderers"]
      564 SETTABLEKS                       R47 R46 K79 ["Playability"]
      566 DUPTABLE                         R47 K94 [{"Value", "Schema", "Renderers"}]
      567 LOADK                            R48 K62 [""]
      568 SETTABLEKS                       R48 R47 K91 ["Value"]
      570 DUPTABLE                         R48 K95 [{"Type"}]
      571 LOADK                            R49 K96 ["Placeholder"]
      572 SETTABLEKS                       R49 R48 K89 ["Type"]
      574 SETTABLEKS                       R48 R47 K92 ["Schema"]
      576 DUPTABLE                         R48 K97 [{"Placeholder"}]
      577 SETTABLEKS                       R44 R48 K96 ["Placeholder"]
      579 SETTABLEKS                       R48 R47 K93 ["Renderers"]
      581 SETTABLEKS                       R47 R46 K89 ["Type"]
      583 DUPTABLE                         R47 K94 [{"Value", "Schema", "Renderers"}]
      584 LOADK                            R48 K62 [""]
      585 SETTABLEKS                       R48 R47 K91 ["Value"]
      587 DUPTABLE                         R48 K95 [{"Type"}]
      588 LOADK                            R49 K96 ["Placeholder"]
      589 SETTABLEKS                       R49 R48 K89 ["Type"]
      591 SETTABLEKS                       R48 R47 K92 ["Schema"]
      593 DUPTABLE                         R48 K97 [{"Placeholder"}]
      594 SETTABLEKS                       R44 R48 K96 ["Placeholder"]
      596 SETTABLEKS                       R48 R47 K93 ["Renderers"]
      598 SETTABLEKS                       R47 R46 K82 ["TeamCreate"]
      600 JUMPIFNOT                        R13 ; [+5]
      601 DUPTABLE                         R47 K98 [{"Value"}]
      602 LOADK                            R48 K62 [""]
      603 SETTABLEKS                       R48 R47 K91 ["Value"]
      605 JUMP                             ; [+1]
      606 LOADNIL                          R47
      607 SETTABLEKS                       R47 R46 K83 ["KebabMenu"]
      609 DUPCLOSURE                       R47 K99 [PROTO_3]
      610 DUPCLOSURE                       R48 K100 [PROTO_4]
      611 CAPTURE                          VAL R28
      612 DUPCLOSURE                       R49 K101 [PROTO_5]
      613 CAPTURE                          VAL R29
      614 DUPCLOSURE                       R50 K102 [PROTO_7]
      615 CAPTURE                          VAL R22
      616 CAPTURE                          VAL R13
      617 CAPTURE                          VAL R23
      618 CAPTURE                          VAL R4
      619 CAPTURE                          VAL R1
      620 CAPTURE                          VAL R34
      621 DUPCLOSURE                       R51 K103 [PROTO_21]
      622 CAPTURE                          VAL R2
      623 CAPTURE                          VAL R6
      624 CAPTURE                          VAL R1
      625 CAPTURE                          VAL R12
      626 CAPTURE                          VAL R13
      627 CAPTURE                          VAL R36
      628 CAPTURE                          VAL R3
      629 CAPTURE                          VAL R37
      630 CAPTURE                          VAL R41
      631 CAPTURE                          VAL R17
      632 CAPTURE                          VAL R8
      633 CAPTURE                          VAL R46
      634 CAPTURE                          VAL R45
      635 CAPTURE                          VAL R15
      636 CAPTURE                          VAL R35
      637 CAPTURE                          VAL R29
      638 CAPTURE                          VAL R28
      639 CAPTURE                          VAL R26
      640 CAPTURE                          VAL R27
      641 CAPTURE                          VAL R9
      642 CAPTURE                          VAL R32
      643 CAPTURE                          VAL R42
      644 CAPTURE                          VAL R49
      645 CAPTURE                          VAL R25
      646 CAPTURE                          VAL R24
      647 CAPTURE                          VAL R48
      648 CAPTURE                          VAL R47
      649 CAPTURE                          VAL R10
      650 CAPTURE                          VAL R43
      651 CAPTURE                          VAL R34
      652 CAPTURE                          VAL R50
      653 SETGLOBAL                        R51 K104 ["ExperiencesTable"]
      655 GETGLOBAL                        R51 K104 ["ExperiencesTable"]
      657 RETURN                           R51 1
