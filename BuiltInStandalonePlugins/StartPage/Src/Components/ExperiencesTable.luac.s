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
       37 DUPTABLE                         R3 K14 [{"Size", "BackgroundTransparency"}]
       38 GETIMPORT                        R4 K17 [UDim2.fromScale]
       40 LOADN                            R5 1
       41 LOADN                            R6 1
       42 CALL                             R4 2 1
       43 SETTABLEKS                       R4 R3 K12 ["Size"]
       45 LOADN                            R4 1
       46 SETTABLEKS                       R4 R3 K13 ["BackgroundTransparency"]
       48 DUPTABLE                         R4 K19 [{"Button"}]
       49 GETUPVAL                         R5 4
       50 GETTABLEKS                       R5 R5 K10 ["createElement"]
       52 LOADK                            R6 K20 ["ImageButton"]
       53 NEWTABLE                         R7 8 0
       55 GETIMPORT                        R8 K22 [UDim2.fromOffset]
       57 LOADN                            R9 28
       58 LOADN                            R10 28
       59 CALL                             R8 2 1
       60 SETTABLEKS                       R8 R7 K12 ["Size"]
       62 GETIMPORT                        R8 K25 [Vector2.new]
       64 LOADK                            R9 K26 [0.5]
       65 LOADK                            R10 K26 [0.5]
       66 CALL                             R8 2 1
       67 SETTABLEKS                       R8 R7 K27 ["AnchorPoint"]
       69 GETIMPORT                        R8 K17 [UDim2.fromScale]
       71 LOADK                            R9 K26 [0.5]
       72 LOADK                            R10 K26 [0.5]
       73 CALL                             R8 2 1
       74 SETTABLEKS                       R8 R7 K28 ["Position"]
       76 GETUPVAL                         R8 4
       77 GETTABLEKS                       R8 R8 K29 ["Tag"]
       79 LOADK                            R9 K30 ["X-Corner StartPage-TileBackground StartPage-NoBorder StartPage-KebabIcon"]
       80 SETTABLE                         R9 R7 R8
       81 GETUPVAL                         R8 4
       82 GETTABLEKS                       R8 R8 K31 ["Event"]
       84 GETTABLEKS                       R8 R8 K32 ["Activated"]
       86 NEWCLOSURE                       R9 P0
       87 CAPTURE                          UPVAL U5
       88 CAPTURE                          UPVAL U6
       89 CAPTURE                          VAL R0
       90 SETTABLE                         R9 R7 R8
       91 CALL                             R5 2 1
       92 SETTABLEKS                       R5 R4 K18 ["Button"]
       94 CALL                             R1 3 -1
       95 RETURN                           R1 -1

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
       12 JUMPIF                           R7 ; [+161]
       13 GETTABLEKS                       R7 R5 K2 ["Children"]
       15 JUMPIFNOT                        R7 ; [+158]
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
      138 JUMPIFNOT                        R16 ; [+24]
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
      157 CAPTURE                          UPVAL U9
      158 SETTABLEKS                       R17 R16 K16 ["KebabMenu"]
      160 SETTABLEKS                       R16 R15 K30 ["Renderers"]
      162 JUMP                             ; [+1]
      163 LOADNIL                          R15
      164 SETTABLEKS                       R15 R14 K16 ["KebabMenu"]
      166 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      168 MOVE                             R13 R6
      169 GETIMPORT                        R12 K36 [table.insert]
      171 CALL                             R12 2 0
      172 FORGLOOP                         R7 2 ; [-152]
      174 GETTABLEKS                       R7 R5 K1 ["IsPlaceholder"]
      176 JUMPIFNOT                        R7 ; [+12]
      177 MOVE                             R8 R0
      178 GETUPVAL                         R9 10
      179 GETUPVAL                         R10 11
      180 DUPTABLE                         R11 K38 [{"children"}]
      181 SETTABLEKS                       R6 R11 K37 ["children"]
      183 CALL                             R9 2 -1
      184 FASTCALL                         TABLE_INSERT ; [+2]
      185 GETIMPORT                        R7 K36 [table.insert]
      187 CALL                             R7 -1 0
      188 JUMP                             ; [+245]
      189 DUPTABLE                         R9 K40 [{"Cell", "Icon", "Id", "Name", "Description", "Edited", "Created", "Playability", "Type", "UniverseId", "TeamCreate", "KebabMenu", "children"}]
      190 GETUPVAL                         R11 12
      191 JUMPIF                           R11 ; [+2]
      192 GETUPVAL                         R11 1
      193 JUMPIFNOT                        R11 ; [+2]
      194 MOVE                             R10 R5
      195 JUMP                             ; [+1]
      196 LOADNIL                          R10
      197 SETTABLEKS                       R10 R9 K39 ["Cell"]
      199 GETTABLEKS                       R11 R5 K41 ["ImageUrl"]
      201 JUMPIFNOT                        R11 ; [+21]
      202 DUPTABLE                         R10 K43 [{"Value", "LeftIcon"}]
      203 LOADK                            R11 K20 [""]
      204 SETTABLEKS                       R11 R10 K18 ["Value"]
      206 DUPTABLE                         R11 K46 [{"Image", "Size"}]
      207 GETTABLEKS                       R12 R5 K41 ["ImageUrl"]
      209 SETTABLEKS                       R12 R11 K44 ["Image"]
      211 GETIMPORT                        R12 K49 [UDim2.new]
      213 LOADN                            R13 0
      214 LOADN                            R14 32
      215 LOADN                            R15 0
      216 LOADN                            R16 32
      217 CALL                             R12 4 1
      218 SETTABLEKS                       R12 R11 K45 ["Size"]
      220 SETTABLEKS                       R11 R10 K42 ["LeftIcon"]
      222 JUMP                             ; [+39]
      223 GETTABLEKS                       R11 R5 K50 ["NoLoadableImage"]
      225 JUMPIFNOT                        R11 ; [+20]
      226 DUPTABLE                         R10 K43 [{"Value", "LeftIcon"}]
      227 LOADK                            R11 K20 [""]
      228 SETTABLEKS                       R11 R10 K18 ["Value"]
      230 DUPTABLE                         R11 K46 [{"Image", "Size"}]
      231 LOADK                            R12 K51 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/SI-Standard/Placeholder.png"]
      232 SETTABLEKS                       R12 R11 K44 ["Image"]
      234 GETIMPORT                        R12 K49 [UDim2.new]
      236 LOADN                            R13 0
      237 LOADN                            R14 32
      238 LOADN                            R15 0
      239 LOADN                            R16 32
      240 CALL                             R12 4 1
      241 SETTABLEKS                       R12 R11 K45 ["Size"]
      243 SETTABLEKS                       R11 R10 K42 ["LeftIcon"]
      245 JUMP                             ; [+16]
      246 DUPTABLE                         R10 K31 [{"Value", "Schema", "Renderers"}]
      247 LOADK                            R11 K20 [""]
      248 SETTABLEKS                       R11 R10 K18 ["Value"]
      250 DUPTABLE                         R11 K32 [{"Type"}]
      251 LOADK                            R12 K52 ["Placeholder"]
      252 SETTABLEKS                       R12 R11 K13 ["Type"]
      254 SETTABLEKS                       R11 R10 K29 ["Schema"]
      256 DUPTABLE                         R11 K53 [{"Placeholder"}]
      257 GETUPVAL                         R12 13
      258 SETTABLEKS                       R12 R11 K52 ["Placeholder"]
      260 SETTABLEKS                       R11 R10 K30 ["Renderers"]
      262 SETTABLEKS                       R10 R9 K7 ["Icon"]
      264 GETTABLEKS                       R11 R5 K54 ["RootPlaceId"]
      266 JUMPIFNOT                        R11 ; [+9]
      267 DUPTABLE                         R10 K22 [{"Type", "PlaceId"}]
      268 LOADK                            R11 K21 ["PlaceId"]
      269 SETTABLEKS                       R11 R10 K13 ["Type"]
      271 GETTABLEKS                       R11 R5 K54 ["RootPlaceId"]
      273 SETTABLEKS                       R11 R10 K21 ["PlaceId"]
      275 JUMP                             ; [+13]
      276 GETTABLEKS                       R11 R5 K55 ["FilePath"]
      278 JUMPIFNOT                        R11 ; [+9]
      279 DUPTABLE                         R10 K56 [{"Type", "FilePath"}]
      280 LOADK                            R11 K55 ["FilePath"]
      281 SETTABLEKS                       R11 R10 K13 ["Type"]
      283 GETTABLEKS                       R11 R5 K55 ["FilePath"]
      285 SETTABLEKS                       R11 R10 K55 ["FilePath"]
      287 JUMP                             ; [+1]
      288 LOADNIL                          R10
      289 SETTABLEKS                       R10 R9 K3 ["Id"]
      291 DUPTABLE                         R10 K19 [{"Value"}]
      292 GETTABLEKS                       R12 R5 K8 ["Name"]
      294 ORK                              R11 R12 K20 [""]
      295 SETTABLEKS                       R11 R10 K18 ["Value"]
      297 SETTABLEKS                       R10 R9 K8 ["Name"]
      299 DUPTABLE                         R10 K19 [{"Value"}]
      300 GETTABLEKS                       R12 R5 K9 ["Description"]
      302 JUMPIF                           R12 ; [+2]
      303 LOADK                            R11 K20 [""]
      304 JUMP                             ; [+2]
      305 GETTABLEKS                       R11 R5 K9 ["Description"]
      307 SETTABLEKS                       R11 R10 K18 ["Value"]
      309 SETTABLEKS                       R10 R9 K9 ["Description"]
      311 DUPTABLE                         R10 K19 [{"Value"}]
      312 GETTABLEKS                       R12 R5 K23 ["LastViewed"]
      314 JUMPIFNOT                        R12 ; [+6]
      315 GETUPVAL                         R11 2
      316 GETTABLEKS                       R12 R5 K23 ["LastViewed"]
      318 GETUPVAL                         R13 3
      319 CALL                             R11 2 1
      320 JUMP                             ; [+1]
      321 LOADK                            R11 K20 [""]
      322 SETTABLEKS                       R11 R10 K18 ["Value"]
      324 SETTABLEKS                       R10 R9 K10 ["Edited"]
      326 DUPTABLE                         R10 K19 [{"Value"}]
      327 GETUPVAL                         R11 2
      328 GETTABLEKS                       R12 R5 K11 ["Created"]
      330 GETUPVAL                         R13 3
      331 CALL                             R11 2 1
      332 SETTABLEKS                       R11 R10 K18 ["Value"]
      334 SETTABLEKS                       R10 R9 K11 ["Created"]
      336 DUPTABLE                         R10 K19 [{"Value"}]
      337 GETUPVAL                         R11 4
      338 MOVE                             R12 R5
      339 GETUPVAL                         R13 3
      340 CALL                             R11 2 1
      341 SETTABLEKS                       R11 R10 K18 ["Value"]
      343 SETTABLEKS                       R10 R9 K12 ["Playability"]
      345 DUPTABLE                         R10 K19 [{"Value"}]
      346 GETTABLEKS                       R12 R5 K57 ["IsGame"]
      348 JUMPIFNOT                        R12 ; [+2]
      349 LOADK                            R11 K58 ["Experience"]
      350 JUMP                             ; [+1]
      351 LOADK                            R11 K59 ["Place"]
      352 SETTABLEKS                       R11 R10 K18 ["Value"]
      354 SETTABLEKS                       R10 R9 K13 ["Type"]
      356 DUPTABLE                         R10 K19 [{"Value"}]
      357 GETTABLEKS                       R11 R5 K3 ["Id"]
      359 SETTABLEKS                       R11 R10 K18 ["Value"]
      361 SETTABLEKS                       R10 R9 K14 ["UniverseId"]
      363 GETUPVAL                         R11 14
      364 JUMPIFNOT                        R11 ; [+24]
      365 GETTABLEKS                       R11 R5 K60 ["IsAgeRestrictedCollaboration"]
      367 JUMPIFNOT                        R11 ; [+21]
      368 DUPTABLE                         R10 K31 [{"Value", "Schema", "Renderers"}]
      369 LOADK                            R11 K20 [""]
      370 SETTABLEKS                       R11 R10 K18 ["Value"]
      372 DUPTABLE                         R11 K32 [{"Type"}]
      373 LOADK                            R12 K61 ["CollaborationRestriction"]
      374 SETTABLEKS                       R12 R11 K13 ["Type"]
      376 SETTABLEKS                       R11 R10 K29 ["Schema"]
      378 DUPTABLE                         R11 K62 [{"CollaborationRestriction"}]
      379 NEWCLOSURE                       R12 P1
      380 CAPTURE                          UPVAL U7
      381 CAPTURE                          UPVAL U15
      382 CAPTURE                          UPVAL U3
      383 CAPTURE                          VAL R5
      384 SETTABLEKS                       R12 R11 K61 ["CollaborationRestriction"]
      386 SETTABLEKS                       R11 R10 K30 ["Renderers"]
      388 JUMP                             ; [+9]
      389 DUPTABLE                         R10 K19 [{"Value"}]
      390 GETTABLEKS                       R12 R5 K25 ["IsTeamCreateEnabled"]
      392 JUMPIFNOT                        R12 ; [+2]
      393 LOADK                            R11 K26 ["Yes"]
      394 JUMP                             ; [+1]
      395 LOADK                            R11 K27 ["No"]
      396 SETTABLEKS                       R11 R10 K18 ["Value"]
      398 SETTABLEKS                       R10 R9 K15 ["TeamCreate"]
      400 GETUPVAL                         R11 1
      401 JUMPIFNOT                        R11 ; [+21]
      402 DUPTABLE                         R10 K31 [{"Value", "Schema", "Renderers"}]
      403 LOADK                            R11 K20 [""]
      404 SETTABLEKS                       R11 R10 K18 ["Value"]
      406 DUPTABLE                         R11 K32 [{"Type"}]
      407 LOADK                            R12 K16 ["KebabMenu"]
      408 SETTABLEKS                       R12 R11 K13 ["Type"]
      410 SETTABLEKS                       R11 R10 K29 ["Schema"]
      412 DUPTABLE                         R11 K33 [{"KebabMenu"}]
      413 NEWCLOSURE                       R12 P2
      414 CAPTURE                          UPVAL U7
      415 CAPTURE                          UPVAL U8
      416 CAPTURE                          UPVAL U9
      417 CAPTURE                          VAL R5
      418 SETTABLEKS                       R12 R11 K16 ["KebabMenu"]
      420 SETTABLEKS                       R11 R10 K30 ["Renderers"]
      422 JUMP                             ; [+1]
      423 LOADNIL                          R10
      424 SETTABLEKS                       R10 R9 K16 ["KebabMenu"]
      426 SETTABLEKS                       R6 R9 K37 ["children"]
      428 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
      430 MOVE                             R8 R0
      431 GETIMPORT                        R7 K36 [table.insert]
      433 CALL                             R7 2 0
      434 FORGLOOP                         R1 2 ; [-427]
      436 RETURN                           R0 1

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
      295 DUPTABLE                         R44 K62 [{"Name", "Key", "Width", "ShouldSort"}]
      296 LOADK                            R45 K63 [""]
      297 SETTABLEKS                       R45 R44 K58 ["Name"]
      299 LOADK                            R45 K64 ["Icon"]
      300 SETTABLEKS                       R45 R44 K59 ["Key"]
      302 GETIMPORT                        R45 K67 [UDim.new]
      304 LOADN                            R46 0
      305 LOADN                            R47 64
      306 CALL                             R45 2 1
      307 SETTABLEKS                       R45 R44 K60 ["Width"]
      309 LOADB                            R45 0
      310 SETTABLEKS                       R45 R44 K61 ["ShouldSort"]
      312 DUPTABLE                         R45 K69 [{"Name", "Key", "Width", "ShouldSort", "SortParam"}]
      313 LOADK                            R46 K58 ["Name"]
      314 SETTABLEKS                       R46 R45 K58 ["Name"]
      316 LOADK                            R46 K58 ["Name"]
      317 SETTABLEKS                       R46 R45 K59 ["Key"]
      319 JUMPIFNOT                        R13 ; [+6]
      320 GETIMPORT                        R46 K67 [UDim.new]
      322 LOADK                            R47 K70 [0.25]
      323 LOADN                            R48 120
      324 CALL                             R46 2 1
      325 JUMP                             ; [+5]
      326 GETIMPORT                        R46 K67 [UDim.new]
      328 LOADK                            R47 K70 [0.25]
      329 LOADN                            R48 192
      330 CALL                             R46 2 1
      331 SETTABLEKS                       R46 R45 K60 ["Width"]
      333 LOADB                            R46 1
      334 SETTABLEKS                       R46 R45 K61 ["ShouldSort"]
      336 LOADK                            R46 K71 ["GameName"]
      337 SETTABLEKS                       R46 R45 K68 ["SortParam"]
      339 DUPTABLE                         R46 K62 [{"Name", "Key", "Width", "ShouldSort"}]
      340 LOADK                            R47 K72 ["Description"]
      341 SETTABLEKS                       R47 R46 K58 ["Name"]
      343 LOADK                            R47 K72 ["Description"]
      344 SETTABLEKS                       R47 R46 K59 ["Key"]
      346 GETIMPORT                        R47 K67 [UDim.new]
      348 LOADK                            R48 K70 [0.25]
      349 LOADN                            R49 0
      350 CALL                             R47 2 1
      351 SETTABLEKS                       R47 R46 K60 ["Width"]
      353 LOADB                            R47 0
      354 SETTABLEKS                       R47 R46 K61 ["ShouldSort"]
      356 DUPTABLE                         R47 K69 [{"Name", "Key", "Width", "ShouldSort", "SortParam"}]
      357 LOADK                            R48 K73 ["Last Edited"]
      358 SETTABLEKS                       R48 R47 K58 ["Name"]
      360 LOADK                            R48 K74 ["Edited"]
      361 SETTABLEKS                       R48 R47 K59 ["Key"]
      363 GETIMPORT                        R48 K67 [UDim.new]
      365 LOADK                            R49 K75 [0.15]
      366 LOADN                            R50 0
      367 CALL                             R48 2 1
      368 SETTABLEKS                       R48 R47 K60 ["Width"]
      370 LOADB                            R48 1
      371 SETTABLEKS                       R48 R47 K61 ["ShouldSort"]
      373 LOADK                            R48 K76 ["LastUpdated"]
      374 SETTABLEKS                       R48 R47 K68 ["SortParam"]
      376 DUPTABLE                         R48 K69 [{"Name", "Key", "Width", "ShouldSort", "SortParam"}]
      377 LOADK                            R49 K77 ["Date Created"]
      378 SETTABLEKS                       R49 R48 K58 ["Name"]
      380 LOADK                            R49 K78 ["Created"]
      381 SETTABLEKS                       R49 R48 K59 ["Key"]
      383 GETIMPORT                        R49 K67 [UDim.new]
      385 LOADK                            R50 K75 [0.15]
      386 LOADN                            R51 0
      387 CALL                             R49 2 1
      388 SETTABLEKS                       R49 R48 K60 ["Width"]
      390 LOADB                            R49 1
      391 SETTABLEKS                       R49 R48 K61 ["ShouldSort"]
      393 LOADK                            R49 K79 ["GameCreated"]
      394 SETTABLEKS                       R49 R48 K68 ["SortParam"]
      396 DUPTABLE                         R49 K62 [{"Name", "Key", "Width", "ShouldSort"}]
      397 LOADK                            R50 K80 ["Playability"]
      398 SETTABLEKS                       R50 R49 K58 ["Name"]
      400 LOADK                            R50 K80 ["Playability"]
      401 SETTABLEKS                       R50 R49 K59 ["Key"]
      403 GETIMPORT                        R50 K67 [UDim.new]
      405 LOADK                            R51 K81 [0.1]
      406 LOADN                            R52 0
      407 CALL                             R50 2 1
      408 SETTABLEKS                       R50 R49 K60 ["Width"]
      410 LOADB                            R50 0
      411 SETTABLEKS                       R50 R49 K61 ["ShouldSort"]
      413 DUPTABLE                         R50 K62 [{"Name", "Key", "Width", "ShouldSort"}]
      414 LOADK                            R51 K82 ["Team Create"]
      415 SETTABLEKS                       R51 R50 K58 ["Name"]
      417 LOADK                            R51 K83 ["TeamCreate"]
      418 SETTABLEKS                       R51 R50 K59 ["Key"]
      420 GETIMPORT                        R51 K67 [UDim.new]
      422 LOADK                            R52 K81 [0.1]
      423 LOADN                            R53 0
      424 CALL                             R51 2 1
      425 SETTABLEKS                       R51 R50 K60 ["Width"]
      427 LOADB                            R51 0
      428 SETTABLEKS                       R51 R50 K61 ["ShouldSort"]
      430 SETLIST                          R43 R44 7 [1]
      432 JUMPIFNOT                        R13 ; [+23]
      433 DUPTABLE                         R46 K62 [{"Name", "Key", "Width", "ShouldSort"}]
      434 LOADK                            R47 K63 [""]
      435 SETTABLEKS                       R47 R46 K58 ["Name"]
      437 LOADK                            R47 K84 ["KebabMenu"]
      438 SETTABLEKS                       R47 R46 K59 ["Key"]
      440 GETIMPORT                        R47 K67 [UDim.new]
      442 LOADN                            R48 0
      443 LOADN                            R49 72
      444 CALL                             R47 2 1
      445 SETTABLEKS                       R47 R46 K60 ["Width"]
      447 LOADB                            R47 0
      448 SETTABLEKS                       R47 R46 K61 ["ShouldSort"]
      450 FASTCALL2                        TABLE_INSERT R43 R46 ; [+4]
      452 MOVE                             R45 R43
      453 GETIMPORT                        R44 K87 [table.insert]
      455 CALL                             R44 2 0
      456 NEWTABLE                         R44 4 0
      458 LOADN                            R45 2
      459 SETTABLEKS                       R45 R44 K71 ["GameName"]
      461 LOADN                            R45 4
      462 SETTABLEKS                       R45 R44 K76 ["LastUpdated"]
      464 LOADN                            R45 5
      465 SETTABLEKS                       R45 R44 K79 ["GameCreated"]
      467 DUPCLOSURE                       R45 K88 [PROTO_1]
      468 CAPTURE                          VAL R1
      469 CAPTURE                          VAL R34
      470 DUPCLOSURE                       R46 K89 [PROTO_2]
      471 CAPTURE                          VAL R1
      472 CAPTURE                          VAL R34
      473 DUPTABLE                         R47 K91 [{"Icon", "Name", "Description", "Edited", "Created", "Playability", "Type", "TeamCreate", "KebabMenu"}]
      474 DUPTABLE                         R48 K95 [{"Value", "Schema", "Renderers"}]
      475 LOADK                            R49 K63 [""]
      476 SETTABLEKS                       R49 R48 K92 ["Value"]
      478 DUPTABLE                         R49 K96 [{"Type"}]
      479 LOADK                            R50 K97 ["Placeholder"]
      480 SETTABLEKS                       R50 R49 K90 ["Type"]
      482 SETTABLEKS                       R49 R48 K93 ["Schema"]
      484 DUPTABLE                         R49 K98 [{"Placeholder"}]
      485 SETTABLEKS                       R46 R49 K97 ["Placeholder"]
      487 SETTABLEKS                       R49 R48 K94 ["Renderers"]
      489 SETTABLEKS                       R48 R47 K64 ["Icon"]
      491 DUPTABLE                         R48 K95 [{"Value", "Schema", "Renderers"}]
      492 LOADK                            R49 K63 [""]
      493 SETTABLEKS                       R49 R48 K92 ["Value"]
      495 DUPTABLE                         R49 K96 [{"Type"}]
      496 LOADK                            R50 K97 ["Placeholder"]
      497 SETTABLEKS                       R50 R49 K90 ["Type"]
      499 SETTABLEKS                       R49 R48 K93 ["Schema"]
      501 DUPTABLE                         R49 K98 [{"Placeholder"}]
      502 SETTABLEKS                       R45 R49 K97 ["Placeholder"]
      504 SETTABLEKS                       R49 R48 K94 ["Renderers"]
      506 SETTABLEKS                       R48 R47 K58 ["Name"]
      508 DUPTABLE                         R48 K95 [{"Value", "Schema", "Renderers"}]
      509 LOADK                            R49 K63 [""]
      510 SETTABLEKS                       R49 R48 K92 ["Value"]
      512 DUPTABLE                         R49 K96 [{"Type"}]
      513 LOADK                            R50 K97 ["Placeholder"]
      514 SETTABLEKS                       R50 R49 K90 ["Type"]
      516 SETTABLEKS                       R49 R48 K93 ["Schema"]
      518 DUPTABLE                         R49 K98 [{"Placeholder"}]
      519 SETTABLEKS                       R45 R49 K97 ["Placeholder"]
      521 SETTABLEKS                       R49 R48 K94 ["Renderers"]
      523 SETTABLEKS                       R48 R47 K72 ["Description"]
      525 DUPTABLE                         R48 K95 [{"Value", "Schema", "Renderers"}]
      526 LOADK                            R49 K63 [""]
      527 SETTABLEKS                       R49 R48 K92 ["Value"]
      529 DUPTABLE                         R49 K96 [{"Type"}]
      530 LOADK                            R50 K97 ["Placeholder"]
      531 SETTABLEKS                       R50 R49 K90 ["Type"]
      533 SETTABLEKS                       R49 R48 K93 ["Schema"]
      535 DUPTABLE                         R49 K98 [{"Placeholder"}]
      536 SETTABLEKS                       R45 R49 K97 ["Placeholder"]
      538 SETTABLEKS                       R49 R48 K94 ["Renderers"]
      540 SETTABLEKS                       R48 R47 K74 ["Edited"]
      542 DUPTABLE                         R48 K95 [{"Value", "Schema", "Renderers"}]
      543 LOADK                            R49 K63 [""]
      544 SETTABLEKS                       R49 R48 K92 ["Value"]
      546 DUPTABLE                         R49 K96 [{"Type"}]
      547 LOADK                            R50 K97 ["Placeholder"]
      548 SETTABLEKS                       R50 R49 K90 ["Type"]
      550 SETTABLEKS                       R49 R48 K93 ["Schema"]
      552 DUPTABLE                         R49 K98 [{"Placeholder"}]
      553 SETTABLEKS                       R45 R49 K97 ["Placeholder"]
      555 SETTABLEKS                       R49 R48 K94 ["Renderers"]
      557 SETTABLEKS                       R48 R47 K78 ["Created"]
      559 DUPTABLE                         R48 K95 [{"Value", "Schema", "Renderers"}]
      560 LOADK                            R49 K63 [""]
      561 SETTABLEKS                       R49 R48 K92 ["Value"]
      563 DUPTABLE                         R49 K96 [{"Type"}]
      564 LOADK                            R50 K97 ["Placeholder"]
      565 SETTABLEKS                       R50 R49 K90 ["Type"]
      567 SETTABLEKS                       R49 R48 K93 ["Schema"]
      569 DUPTABLE                         R49 K98 [{"Placeholder"}]
      570 SETTABLEKS                       R45 R49 K97 ["Placeholder"]
      572 SETTABLEKS                       R49 R48 K94 ["Renderers"]
      574 SETTABLEKS                       R48 R47 K80 ["Playability"]
      576 DUPTABLE                         R48 K95 [{"Value", "Schema", "Renderers"}]
      577 LOADK                            R49 K63 [""]
      578 SETTABLEKS                       R49 R48 K92 ["Value"]
      580 DUPTABLE                         R49 K96 [{"Type"}]
      581 LOADK                            R50 K97 ["Placeholder"]
      582 SETTABLEKS                       R50 R49 K90 ["Type"]
      584 SETTABLEKS                       R49 R48 K93 ["Schema"]
      586 DUPTABLE                         R49 K98 [{"Placeholder"}]
      587 SETTABLEKS                       R45 R49 K97 ["Placeholder"]
      589 SETTABLEKS                       R49 R48 K94 ["Renderers"]
      591 SETTABLEKS                       R48 R47 K90 ["Type"]
      593 DUPTABLE                         R48 K95 [{"Value", "Schema", "Renderers"}]
      594 LOADK                            R49 K63 [""]
      595 SETTABLEKS                       R49 R48 K92 ["Value"]
      597 DUPTABLE                         R49 K96 [{"Type"}]
      598 LOADK                            R50 K97 ["Placeholder"]
      599 SETTABLEKS                       R50 R49 K90 ["Type"]
      601 SETTABLEKS                       R49 R48 K93 ["Schema"]
      603 DUPTABLE                         R49 K98 [{"Placeholder"}]
      604 SETTABLEKS                       R45 R49 K97 ["Placeholder"]
      606 SETTABLEKS                       R49 R48 K94 ["Renderers"]
      608 SETTABLEKS                       R48 R47 K83 ["TeamCreate"]
      610 JUMPIFNOT                        R13 ; [+5]
      611 DUPTABLE                         R48 K99 [{"Value"}]
      612 LOADK                            R49 K63 [""]
      613 SETTABLEKS                       R49 R48 K92 ["Value"]
      615 JUMP                             ; [+1]
      616 LOADNIL                          R48
      617 SETTABLEKS                       R48 R47 K84 ["KebabMenu"]
      619 DUPCLOSURE                       R48 K100 [PROTO_3]
      620 DUPCLOSURE                       R49 K101 [PROTO_4]
      621 CAPTURE                          VAL R29
      622 DUPCLOSURE                       R50 K102 [PROTO_5]
      623 CAPTURE                          VAL R30
      624 DUPCLOSURE                       R51 K103 [PROTO_7]
      625 CAPTURE                          VAL R23
      626 CAPTURE                          VAL R13
      627 CAPTURE                          VAL R24
      628 CAPTURE                          VAL R4
      629 CAPTURE                          VAL R1
      630 CAPTURE                          VAL R35
      631 DUPCLOSURE                       R52 K104 [PROTO_21]
      632 CAPTURE                          VAL R2
      633 CAPTURE                          VAL R6
      634 CAPTURE                          VAL R1
      635 CAPTURE                          VAL R12
      636 CAPTURE                          VAL R13
      637 CAPTURE                          VAL R37
      638 CAPTURE                          VAL R3
      639 CAPTURE                          VAL R38
      640 CAPTURE                          VAL R42
      641 CAPTURE                          VAL R17
      642 CAPTURE                          VAL R18
      643 CAPTURE                          VAL R8
      644 CAPTURE                          VAL R47
      645 CAPTURE                          VAL R46
      646 CAPTURE                          VAL R15
      647 CAPTURE                          VAL R36
      648 CAPTURE                          VAL R30
      649 CAPTURE                          VAL R29
      650 CAPTURE                          VAL R27
      651 CAPTURE                          VAL R28
      652 CAPTURE                          VAL R9
      653 CAPTURE                          VAL R33
      654 CAPTURE                          VAL R43
      655 CAPTURE                          VAL R50
      656 CAPTURE                          VAL R26
      657 CAPTURE                          VAL R25
      658 CAPTURE                          VAL R49
      659 CAPTURE                          VAL R48
      660 CAPTURE                          VAL R10
      661 CAPTURE                          VAL R44
      662 CAPTURE                          VAL R35
      663 CAPTURE                          VAL R51
      664 SETGLOBAL                        R52 K105 ["ExperiencesTable"]
      666 GETGLOBAL                        R52 K105 ["ExperiencesTable"]
      668 RETURN                           R52 1
