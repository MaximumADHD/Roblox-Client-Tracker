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
        0 DUPTABLE                         R0 K3 [{"Id", "RootPlaceId", "_allowedActions"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K4 ["UniverseId"]
        4 SETTABLEKS                       R1 R0 K0 ["Id"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["Id"]
        9 SETTABLEKS                       R1 R0 K1 ["RootPlaceId"]
       11 NEWTABLE                         R1 0 1
       13 LOADK                            R2 K5 ["ConfigurePlace"]
       14 SETLIST                          R1 R2 1 [1]
       16 SETTABLEKS                       R1 R0 K2 ["_allowedActions"]
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K6 ["createElement"]
       21 LOADK                            R2 K7 ["Frame"]
       22 DUPTABLE                         R3 K10 [{"Size", "BackgroundTransparency"}]
       23 GETIMPORT                        R4 K13 [UDim2.fromScale]
       25 LOADN                            R5 1
       26 LOADN                            R6 1
       27 CALL                             R4 2 1
       28 SETTABLEKS                       R4 R3 K8 ["Size"]
       30 LOADN                            R4 1
       31 SETTABLEKS                       R4 R3 K9 ["BackgroundTransparency"]
       33 DUPTABLE                         R4 K15 [{"Button"}]
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K6 ["createElement"]
       37 LOADK                            R6 K16 ["ImageButton"]
       38 NEWTABLE                         R7 8 0
       40 GETIMPORT                        R8 K18 [UDim2.fromOffset]
       42 LOADN                            R9 28
       43 LOADN                            R10 28
       44 CALL                             R8 2 1
       45 SETTABLEKS                       R8 R7 K8 ["Size"]
       47 GETIMPORT                        R8 K21 [Vector2.new]
       49 LOADK                            R9 K22 [0.5]
       50 LOADK                            R10 K22 [0.5]
       51 CALL                             R8 2 1
       52 SETTABLEKS                       R8 R7 K23 ["AnchorPoint"]
       54 GETIMPORT                        R8 K13 [UDim2.fromScale]
       56 LOADK                            R9 K22 [0.5]
       57 LOADK                            R10 K22 [0.5]
       58 CALL                             R8 2 1
       59 SETTABLEKS                       R8 R7 K24 ["Position"]
       61 GETUPVAL                         R8 1
       62 GETTABLEKS                       R8 R8 K25 ["Tag"]
       64 LOADK                            R9 K26 ["X-Corner StartPage-TileBackground StartPage-NoBorder StartPage-KebabIcon"]
       65 SETTABLE                         R9 R7 R8
       66 GETUPVAL                         R8 1
       67 GETTABLEKS                       R8 R8 K27 ["Event"]
       69 GETTABLEKS                       R8 R8 K28 ["Activated"]
       71 NEWCLOSURE                       R9 P0
       72 CAPTURE                          UPVAL U2
       73 CAPTURE                          UPVAL U3
       74 CAPTURE                          VAL R0
       75 SETTABLE                         R9 R7 R8
       76 CALL                             R5 2 1
       77 SETTABLEKS                       R5 R4 K14 ["Button"]
       79 CALL                             R1 3 -1
       80 RETURN                           R1 -1

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
       25 DUPTABLE                         R6 K11 [{"UniverseId"}]
       26 GETUPVAL                         R7 2
       27 GETTABLEKS                       R7 R7 K12 ["Id"]
       29 SETTABLEKS                       R7 R6 K10 ["UniverseId"]
       31 CALL                             R4 2 1
       32 SETTABLEKS                       R4 R3 K8 ["Badge"]
       34 CALL                             R0 3 -1
       35 RETURN                           R0 -1

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
       12 JUMPIF                           R7 ; [+127]
       13 GETTABLEKS                       R7 R5 K2 ["Children"]
       15 JUMPIFNOT                        R7 ; [+124]
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
       61 LOADK                            R16 K20 [""]
       62 SETTABLEKS                       R16 R15 K18 ["Value"]
       64 SETTABLEKS                       R15 R14 K10 ["Edited"]
       66 DUPTABLE                         R15 K19 [{"Value"}]
       67 LOADK                            R16 K20 [""]
       68 SETTABLEKS                       R16 R15 K18 ["Value"]
       70 SETTABLEKS                       R15 R14 K11 ["Created"]
       72 DUPTABLE                         R15 K19 [{"Value"}]
       73 LOADK                            R16 K20 [""]
       74 SETTABLEKS                       R16 R15 K18 ["Value"]
       76 SETTABLEKS                       R15 R14 K12 ["Playability"]
       78 DUPTABLE                         R15 K19 [{"Value"}]
       79 LOADK                            R16 K20 [""]
       80 SETTABLEKS                       R16 R15 K18 ["Value"]
       82 SETTABLEKS                       R15 R14 K13 ["Type"]
       84 DUPTABLE                         R15 K19 [{"Value"}]
       85 GETTABLEKS                       R16 R11 K14 ["UniverseId"]
       87 SETTABLEKS                       R16 R15 K18 ["Value"]
       89 SETTABLEKS                       R15 R14 K14 ["UniverseId"]
       91 GETUPVAL                         R16 1
       92 JUMPIFNOT                        R16 ; [+10]
       93 DUPTABLE                         R15 K19 [{"Value"}]
       94 GETTABLEKS                       R17 R5 K23 ["IsTeamCreateEnabled"]
       96 JUMPIFNOT                        R17 ; [+2]
       97 LOADK                            R16 K24 ["Yes"]
       98 JUMP                             ; [+1]
       99 LOADK                            R16 K25 ["No"]
      100 SETTABLEKS                       R16 R15 K18 ["Value"]
      102 JUMP                             ; [+1]
      103 LOADNIL                          R15
      104 SETTABLEKS                       R15 R14 K15 ["TeamCreate"]
      106 GETUPVAL                         R16 2
      107 JUMPIFNOT                        R16 ; [+21]
      108 DUPTABLE                         R15 K28 [{"Value", "Schema", "Renderers"}]
      109 LOADK                            R16 K20 [""]
      110 SETTABLEKS                       R16 R15 K18 ["Value"]
      112 DUPTABLE                         R16 K29 [{"Type"}]
      113 LOADK                            R17 K16 ["KebabMenu"]
      114 SETTABLEKS                       R17 R16 K13 ["Type"]
      116 SETTABLEKS                       R16 R15 K26 ["Schema"]
      118 DUPTABLE                         R16 K30 [{"KebabMenu"}]
      119 NEWCLOSURE                       R17 P0
      120 CAPTURE                          VAL R11
      121 CAPTURE                          UPVAL U3
      122 CAPTURE                          UPVAL U4
      123 CAPTURE                          UPVAL U5
      124 SETTABLEKS                       R17 R16 K16 ["KebabMenu"]
      126 SETTABLEKS                       R16 R15 K27 ["Renderers"]
      128 JUMP                             ; [+1]
      129 LOADNIL                          R15
      130 SETTABLEKS                       R15 R14 K16 ["KebabMenu"]
      132 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      134 MOVE                             R13 R6
      135 GETIMPORT                        R12 K33 [table.insert]
      137 CALL                             R12 2 0
      138 FORGLOOP                         R7 2 ; [-118]
      140 GETTABLEKS                       R7 R5 K1 ["IsPlaceholder"]
      142 JUMPIFNOT                        R7 ; [+12]
      143 MOVE                             R8 R0
      144 GETUPVAL                         R9 6
      145 GETUPVAL                         R10 7
      146 DUPTABLE                         R11 K35 [{"children"}]
      147 SETTABLEKS                       R6 R11 K34 ["children"]
      149 CALL                             R9 2 -1
      150 FASTCALL                         TABLE_INSERT ; [+2]
      151 GETIMPORT                        R7 K33 [table.insert]
      153 CALL                             R7 -1 0
      154 JUMP                             ; [+244]
      155 DUPTABLE                         R9 K37 [{"Cell", "Icon", "Id", "Name", "Description", "Edited", "Created", "Playability", "Type", "UniverseId", "TeamCreate", "KebabMenu", "children"}]
      156 GETUPVAL                         R11 8
      157 JUMPIF                           R11 ; [+2]
      158 GETUPVAL                         R11 2
      159 JUMPIFNOT                        R11 ; [+2]
      160 MOVE                             R10 R5
      161 JUMP                             ; [+1]
      162 LOADNIL                          R10
      163 SETTABLEKS                       R10 R9 K36 ["Cell"]
      165 GETTABLEKS                       R11 R5 K38 ["ImageUrl"]
      167 JUMPIFNOT                        R11 ; [+21]
      168 DUPTABLE                         R10 K40 [{"Value", "LeftIcon"}]
      169 LOADK                            R11 K20 [""]
      170 SETTABLEKS                       R11 R10 K18 ["Value"]
      172 DUPTABLE                         R11 K43 [{"Image", "Size"}]
      173 GETTABLEKS                       R12 R5 K38 ["ImageUrl"]
      175 SETTABLEKS                       R12 R11 K41 ["Image"]
      177 GETIMPORT                        R12 K46 [UDim2.new]
      179 LOADN                            R13 0
      180 LOADN                            R14 32
      181 LOADN                            R15 0
      182 LOADN                            R16 32
      183 CALL                             R12 4 1
      184 SETTABLEKS                       R12 R11 K42 ["Size"]
      186 SETTABLEKS                       R11 R10 K39 ["LeftIcon"]
      188 JUMP                             ; [+39]
      189 GETTABLEKS                       R11 R5 K47 ["NoLoadableImage"]
      191 JUMPIFNOT                        R11 ; [+20]
      192 DUPTABLE                         R10 K40 [{"Value", "LeftIcon"}]
      193 LOADK                            R11 K20 [""]
      194 SETTABLEKS                       R11 R10 K18 ["Value"]
      196 DUPTABLE                         R11 K43 [{"Image", "Size"}]
      197 LOADK                            R12 K48 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/SI-Standard/Placeholder.png"]
      198 SETTABLEKS                       R12 R11 K41 ["Image"]
      200 GETIMPORT                        R12 K46 [UDim2.new]
      202 LOADN                            R13 0
      203 LOADN                            R14 32
      204 LOADN                            R15 0
      205 LOADN                            R16 32
      206 CALL                             R12 4 1
      207 SETTABLEKS                       R12 R11 K42 ["Size"]
      209 SETTABLEKS                       R11 R10 K39 ["LeftIcon"]
      211 JUMP                             ; [+16]
      212 DUPTABLE                         R10 K28 [{"Value", "Schema", "Renderers"}]
      213 LOADK                            R11 K20 [""]
      214 SETTABLEKS                       R11 R10 K18 ["Value"]
      216 DUPTABLE                         R11 K29 [{"Type"}]
      217 LOADK                            R12 K49 ["Placeholder"]
      218 SETTABLEKS                       R12 R11 K13 ["Type"]
      220 SETTABLEKS                       R11 R10 K26 ["Schema"]
      222 DUPTABLE                         R11 K50 [{"Placeholder"}]
      223 GETUPVAL                         R12 9
      224 SETTABLEKS                       R12 R11 K49 ["Placeholder"]
      226 SETTABLEKS                       R11 R10 K27 ["Renderers"]
      228 SETTABLEKS                       R10 R9 K7 ["Icon"]
      230 GETTABLEKS                       R11 R5 K51 ["RootPlaceId"]
      232 JUMPIFNOT                        R11 ; [+9]
      233 DUPTABLE                         R10 K22 [{"Type", "PlaceId"}]
      234 LOADK                            R11 K21 ["PlaceId"]
      235 SETTABLEKS                       R11 R10 K13 ["Type"]
      237 GETTABLEKS                       R11 R5 K51 ["RootPlaceId"]
      239 SETTABLEKS                       R11 R10 K21 ["PlaceId"]
      241 JUMP                             ; [+13]
      242 GETTABLEKS                       R11 R5 K52 ["FilePath"]
      244 JUMPIFNOT                        R11 ; [+9]
      245 DUPTABLE                         R10 K53 [{"Type", "FilePath"}]
      246 LOADK                            R11 K52 ["FilePath"]
      247 SETTABLEKS                       R11 R10 K13 ["Type"]
      249 GETTABLEKS                       R11 R5 K52 ["FilePath"]
      251 SETTABLEKS                       R11 R10 K52 ["FilePath"]
      253 JUMP                             ; [+1]
      254 LOADNIL                          R10
      255 SETTABLEKS                       R10 R9 K3 ["Id"]
      257 DUPTABLE                         R10 K19 [{"Value"}]
      258 GETTABLEKS                       R12 R5 K8 ["Name"]
      260 ORK                              R11 R12 K20 [""]
      261 SETTABLEKS                       R11 R10 K18 ["Value"]
      263 SETTABLEKS                       R10 R9 K8 ["Name"]
      265 DUPTABLE                         R10 K19 [{"Value"}]
      266 GETTABLEKS                       R12 R5 K9 ["Description"]
      268 JUMPIF                           R12 ; [+2]
      269 LOADK                            R11 K20 [""]
      270 JUMP                             ; [+2]
      271 GETTABLEKS                       R11 R5 K9 ["Description"]
      273 SETTABLEKS                       R11 R10 K18 ["Value"]
      275 SETTABLEKS                       R10 R9 K9 ["Description"]
      277 DUPTABLE                         R10 K19 [{"Value"}]
      278 GETTABLEKS                       R12 R5 K54 ["LastViewed"]
      280 JUMPIFNOT                        R12 ; [+6]
      281 GETUPVAL                         R11 10
      282 GETTABLEKS                       R12 R5 K54 ["LastViewed"]
      284 GETUPVAL                         R13 11
      285 CALL                             R11 2 1
      286 JUMP                             ; [+1]
      287 LOADK                            R11 K20 [""]
      288 SETTABLEKS                       R11 R10 K18 ["Value"]
      290 SETTABLEKS                       R10 R9 K10 ["Edited"]
      292 DUPTABLE                         R10 K19 [{"Value"}]
      293 GETUPVAL                         R11 10
      294 GETTABLEKS                       R12 R5 K11 ["Created"]
      296 GETUPVAL                         R13 11
      297 CALL                             R11 2 1
      298 SETTABLEKS                       R11 R10 K18 ["Value"]
      300 SETTABLEKS                       R10 R9 K11 ["Created"]
      302 DUPTABLE                         R10 K19 [{"Value"}]
      303 GETUPVAL                         R11 12
      304 MOVE                             R12 R5
      305 GETUPVAL                         R13 11
      306 CALL                             R11 2 1
      307 SETTABLEKS                       R11 R10 K18 ["Value"]
      309 SETTABLEKS                       R10 R9 K12 ["Playability"]
      311 DUPTABLE                         R10 K19 [{"Value"}]
      312 GETTABLEKS                       R12 R5 K55 ["IsGame"]
      314 JUMPIFNOT                        R12 ; [+2]
      315 LOADK                            R11 K56 ["Experience"]
      316 JUMP                             ; [+1]
      317 LOADK                            R11 K57 ["Place"]
      318 SETTABLEKS                       R11 R10 K18 ["Value"]
      320 SETTABLEKS                       R10 R9 K13 ["Type"]
      322 DUPTABLE                         R10 K19 [{"Value"}]
      323 GETTABLEKS                       R11 R5 K3 ["Id"]
      325 SETTABLEKS                       R11 R10 K18 ["Value"]
      327 SETTABLEKS                       R10 R9 K14 ["UniverseId"]
      329 GETUPVAL                         R11 13
      330 JUMPIFNOT                        R11 ; [+23]
      331 GETTABLEKS                       R11 R5 K58 ["IsAgeRestrictedCollaboration"]
      333 JUMPIFNOT                        R11 ; [+20]
      334 DUPTABLE                         R10 K28 [{"Value", "Schema", "Renderers"}]
      335 LOADK                            R11 K20 [""]
      336 SETTABLEKS                       R11 R10 K18 ["Value"]
      338 DUPTABLE                         R11 K29 [{"Type"}]
      339 LOADK                            R12 K59 ["CollaborationRestriction"]
      340 SETTABLEKS                       R12 R11 K13 ["Type"]
      342 SETTABLEKS                       R11 R10 K26 ["Schema"]
      344 DUPTABLE                         R11 K60 [{"CollaborationRestriction"}]
      345 NEWCLOSURE                       R12 P1
      346 CAPTURE                          UPVAL U3
      347 CAPTURE                          UPVAL U14
      348 CAPTURE                          VAL R5
      349 SETTABLEKS                       R12 R11 K59 ["CollaborationRestriction"]
      351 SETTABLEKS                       R11 R10 K27 ["Renderers"]
      353 JUMP                             ; [+9]
      354 DUPTABLE                         R10 K19 [{"Value"}]
      355 GETTABLEKS                       R12 R5 K23 ["IsTeamCreateEnabled"]
      357 JUMPIFNOT                        R12 ; [+2]
      358 LOADK                            R11 K24 ["Yes"]
      359 JUMP                             ; [+1]
      360 LOADK                            R11 K25 ["No"]
      361 SETTABLEKS                       R11 R10 K18 ["Value"]
      363 SETTABLEKS                       R10 R9 K15 ["TeamCreate"]
      365 GETUPVAL                         R11 2
      366 JUMPIFNOT                        R11 ; [+21]
      367 DUPTABLE                         R10 K28 [{"Value", "Schema", "Renderers"}]
      368 LOADK                            R11 K20 [""]
      369 SETTABLEKS                       R11 R10 K18 ["Value"]
      371 DUPTABLE                         R11 K29 [{"Type"}]
      372 LOADK                            R12 K16 ["KebabMenu"]
      373 SETTABLEKS                       R12 R11 K13 ["Type"]
      375 SETTABLEKS                       R11 R10 K26 ["Schema"]
      377 DUPTABLE                         R11 K30 [{"KebabMenu"}]
      378 NEWCLOSURE                       R12 P2
      379 CAPTURE                          UPVAL U3
      380 CAPTURE                          UPVAL U4
      381 CAPTURE                          UPVAL U5
      382 CAPTURE                          VAL R5
      383 SETTABLEKS                       R12 R11 K16 ["KebabMenu"]
      385 SETTABLEKS                       R11 R10 K27 ["Renderers"]
      387 JUMP                             ; [+1]
      388 LOADNIL                          R10
      389 SETTABLEKS                       R10 R9 K16 ["KebabMenu"]
      391 SETTABLEKS                       R6 R9 K34 ["children"]
      393 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
      395 MOVE                             R8 R0
      396 GETIMPORT                        R7 K33 [table.insert]
      398 CALL                             R7 2 0
      399 FORGLOOP                         R1 2 ; [-392]
      401 RETURN                           R0 1

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
       46 CAPTURE                          UPVAL U7
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          REF R8
       50 CAPTURE                          VAL R5
       51 CAPTURE                          UPVAL U8
       52 CAPTURE                          UPVAL U9
       53 CAPTURE                          UPVAL U3
       54 CAPTURE                          UPVAL U10
       55 CAPTURE                          UPVAL U11
       56 CAPTURE                          VAL R3
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
       87 GETUPVAL                         R15 7
       88 JUMPIFNOT                        R15 ; [+14]
       89 GETUPVAL                         R15 16
       90 GETUPVAL                         R16 17
       91 CALL                             R15 1 1
       92 MOVE                             R12 R15
       93 GETUPVAL                         R15 18
       94 GETTABLEKS                       R15 R15 K17 ["getDialogManager"]
       96 CALL                             R15 0 1
       97 MOVE                             R13 R15
       98 GETUPVAL                         R15 18
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
      118 GETUPVAL                         R20 19
      119 NEWTABLE                         R21 32 0
      121 GETUPVAL                         R22 20
      122 SETTABLEKS                       R22 R21 K26 ["Columns"]
      124 NEWCLOSURE                       R22 P2
      125 CAPTURE                          VAL R2
      126 CAPTURE                          UPVAL U8
      127 CAPTURE                          VAL R1
      128 SETTABLEKS                       R22 R21 K27 ["OnExpansionChange"]
      130 NEWTABLE                         R22 0 0
      132 SETTABLEKS                       R22 R21 K28 ["Selection"]
      134 NEWCLOSURE                       R22 P3
      135 CAPTURE                          UPVAL U15
      136 CAPTURE                          UPVAL U7
      137 CAPTURE                          UPVAL U21
      138 CAPTURE                          VAL R0
      139 CAPTURE                          UPVAL U22
      140 CAPTURE                          UPVAL U23
      141 CAPTURE                          REF R12
      142 CAPTURE                          REF R14
      143 CAPTURE                          REF R13
      144 CAPTURE                          VAL R3
      145 CAPTURE                          UPVAL U24
      146 CAPTURE                          VAL R10
      147 CAPTURE                          UPVAL U25
      148 CAPTURE                          UPVAL U26
      149 SETTABLEKS                       R22 R21 K29 ["OnSelectionChange"]
      151 SETTABLEKS                       R1 R21 K30 ["Expansion"]
      153 SETTABLEKS                       R10 R21 K31 ["RootItems"]
      155 SETTABLEKS                       R11 R21 K32 ["SortOrder"]
      157 GETTABLEKS                       R23 R0 K7 ["CanDisplayComponentAdjustQuery"]
      159 JUMPIFNOT                        R23 ; [+7]
      160 GETUPVAL                         R23 27
      161 GETTABLEKS                       R24 R0 K8 ["Query"]
      163 GETTABLEKS                       R24 R24 K33 ["sortParam"]
      165 GETTABLE                         R22 R23 R24
      166 JUMP                             ; [+1]
      167 LOADNIL                          R22
      168 SETTABLEKS                       R22 R21 K34 ["SortIndex"]
      170 NEWCLOSURE                       R22 P4
      171 CAPTURE                          UPVAL U20
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
      240 GETUPVAL                         R20 28
      241 JUMPIFEQKNIL                     R20 ; [+18]
      243 GETUPVAL                         R19 2
      244 GETTABLEKS                       R19 R19 K19 ["createElement"]
      246 GETUPVAL                         R20 29
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
      114 GETTABLEKS                       R18 R18 K27 ["Constants"]
      116 GETTABLEKS                       R18 R18 K28 ["Audience"]
      118 CALL                             R17 1 1
      119 GETIMPORT                        R18 K5 [require]
      121 GETTABLEKS                       R19 R0 K16 ["Src"]
      123 GETTABLEKS                       R19 R19 K17 ["Util"]
      125 GETTABLEKS                       R19 R19 K29 ["AudienceUtils"]
      127 CALL                             R18 1 1
      128 GETTABLEKS                       R19 R18 K30 ["audienceIsPrivate"]
      130 GETTABLEKS                       R20 R18 K31 ["audienceIncludes"]
      132 GETIMPORT                        R21 K5 [require]
      134 GETTABLEKS                       R22 R0 K16 ["Src"]
      136 GETTABLEKS                       R22 R22 K32 ["Contexts"]
      138 GETTABLEKS                       R22 R22 K33 ["ContextMenuActions"]
      140 CALL                             R21 1 1
      141 GETIMPORT                        R22 K5 [require]
      143 GETTABLEKS                       R23 R0 K16 ["Src"]
      145 GETTABLEKS                       R23 R23 K34 ["Hooks"]
      147 GETTABLEKS                       R23 R23 K35 ["useCellContextActions"]
      149 CALL                             R22 1 1
      150 GETTABLEKS                       R23 R9 K36 ["StudioService"]
      152 GETIMPORT                        R24 K5 [require]
      154 GETTABLEKS                       R25 R0 K16 ["Src"]
      156 GETTABLEKS                       R25 R25 K37 ["Network"]
      158 GETTABLEKS                       R25 R25 K38 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace"]
      160 CALL                             R24 1 1
      161 GETTABLEKS                       R25 R1 K39 ["useContext"]
      163 GETIMPORT                        R26 K5 [require]
      165 GETTABLEKS                       R27 R0 K16 ["Src"]
      167 GETTABLEKS                       R27 R27 K17 ["Util"]
      169 GETTABLEKS                       R27 R27 K40 ["Dialogs"]
      171 CALL                             R26 1 1
      172 GETIMPORT                        R27 K5 [require]
      174 GETTABLEKS                       R28 R0 K16 ["Src"]
      176 GETTABLEKS                       R28 R28 K21 ["SharedFlags"]
      178 GETTABLEKS                       R28 R28 K41 ["getFFlagLuaStartPageTCAgeGatingCheck"]
      180 CALL                             R27 1 1
      181 CALL                             R27 0 1
      182 GETIMPORT                        R28 K5 [require]
      184 GETTABLEKS                       R29 R0 K16 ["Src"]
      186 GETTABLEKS                       R29 R29 K21 ["SharedFlags"]
      188 GETTABLEKS                       R29 R29 K42 ["getFFlagLuaStartPagePlaceSequestrationCheck"]
      190 CALL                             R28 1 1
      191 CALL                             R28 0 1
      192 GETIMPORT                        R29 K5 [require]
      194 GETTABLEKS                       R30 R0 K16 ["Src"]
      196 GETTABLEKS                       R30 R30 K43 ["Types"]
      198 CALL                             R29 1 1
      199 GETTABLEKS                       R30 R5 K44 ["UI"]
      201 GETTABLEKS                       R31 R30 K45 ["TreeTable"]
      203 GETIMPORT                        R32 K5 [require]
      205 GETTABLEKS                       R33 R0 K16 ["Src"]
      207 GETTABLEKS                       R33 R33 K46 ["Components"]
      209 GETTABLEKS                       R33 R33 K47 ["Shimmer"]
      211 CALL                             R32 1 1
      212 JUMPIF                           R12 ; [+1]
      213 JUMPIFNOT                        R13 ; [+12]
      214 GETIMPORT                        R33 K5 [require]
      216 GETTABLEKS                       R34 R0 K16 ["Src"]
      218 GETTABLEKS                       R34 R34 K20 ["Foundation"]
      220 GETTABLEKS                       R34 R34 K46 ["Components"]
      222 GETTABLEKS                       R34 R34 K48 ["ContextMenu"]
      224 CALL                             R33 1 1
      225 JUMP                             ; [+1]
      226 LOADNIL                          R33
      227 JUMPIFNOT                        R15 ; [+10]
      228 GETIMPORT                        R34 K5 [require]
      230 GETTABLEKS                       R35 R0 K16 ["Src"]
      232 GETTABLEKS                       R35 R35 K46 ["Components"]
      234 GETTABLEKS                       R35 R35 K49 ["AgeRestrictedCollaborationBadge"]
      236 CALL                             R34 1 1
      237 JUMP                             ; [+1]
      238 LOADNIL                          R34
      239 GETTABLEKS                       R35 R11 K34 ["Hooks"]
      241 GETTABLEKS                       R35 R35 K50 ["useMeasurableRef"]
      243 GETIMPORT                        R36 K5 [require]
      245 GETTABLEKS                       R37 R0 K16 ["Src"]
      247 GETTABLEKS                       R37 R37 K17 ["Util"]
      249 GETTABLEKS                       R37 R37 K51 ["formatISOTimestamp"]
      251 CALL                             R36 1 1
      252 GETIMPORT                        R37 K5 [require]
      254 GETTABLEKS                       R38 R0 K16 ["Src"]
      256 GETTABLEKS                       R38 R38 K17 ["Util"]
      258 GETTABLEKS                       R38 R38 K52 ["CoreContentStatusConstants"]
      260 CALL                             R37 1 1
      261 GETTABLEKS                       R38 R37 K53 ["NEEDS_ATTENTION_AGE_THRESHOLD"]
      263 GETTABLEKS                       R39 R37 K54 ["AGE_BRACKET_9"]
      265 DUPCLOSURE                       R40 K55 [PROTO_0]
      266 CAPTURE                          VAL R14
      267 CAPTURE                          VAL R16
      268 CAPTURE                          VAL R19
      269 CAPTURE                          VAL R20
      270 CAPTURE                          VAL R17
      271 CAPTURE                          VAL R38
      272 CAPTURE                          VAL R39
      273 NEWTABLE                         R41 0 7
      275 DUPTABLE                         R42 K60 [{"Name", "Key", "Width", "ShouldSort"}]
      276 LOADK                            R43 K61 [""]
      277 SETTABLEKS                       R43 R42 K56 ["Name"]
      279 LOADK                            R43 K62 ["Icon"]
      280 SETTABLEKS                       R43 R42 K57 ["Key"]
      282 GETIMPORT                        R43 K65 [UDim.new]
      284 LOADN                            R44 0
      285 LOADN                            R45 64
      286 CALL                             R43 2 1
      287 SETTABLEKS                       R43 R42 K58 ["Width"]
      289 LOADB                            R43 0
      290 SETTABLEKS                       R43 R42 K59 ["ShouldSort"]
      292 DUPTABLE                         R43 K67 [{"Name", "Key", "Width", "ShouldSort", "SortParam"}]
      293 LOADK                            R44 K56 ["Name"]
      294 SETTABLEKS                       R44 R43 K56 ["Name"]
      296 LOADK                            R44 K56 ["Name"]
      297 SETTABLEKS                       R44 R43 K57 ["Key"]
      299 JUMPIFNOT                        R13 ; [+6]
      300 GETIMPORT                        R44 K65 [UDim.new]
      302 LOADK                            R45 K68 [0.25]
      303 LOADN                            R46 120
      304 CALL                             R44 2 1
      305 JUMP                             ; [+5]
      306 GETIMPORT                        R44 K65 [UDim.new]
      308 LOADK                            R45 K68 [0.25]
      309 LOADN                            R46 192
      310 CALL                             R44 2 1
      311 SETTABLEKS                       R44 R43 K58 ["Width"]
      313 LOADB                            R44 1
      314 SETTABLEKS                       R44 R43 K59 ["ShouldSort"]
      316 LOADK                            R44 K69 ["GameName"]
      317 SETTABLEKS                       R44 R43 K66 ["SortParam"]
      319 DUPTABLE                         R44 K60 [{"Name", "Key", "Width", "ShouldSort"}]
      320 LOADK                            R45 K70 ["Description"]
      321 SETTABLEKS                       R45 R44 K56 ["Name"]
      323 LOADK                            R45 K70 ["Description"]
      324 SETTABLEKS                       R45 R44 K57 ["Key"]
      326 GETIMPORT                        R45 K65 [UDim.new]
      328 LOADK                            R46 K68 [0.25]
      329 LOADN                            R47 0
      330 CALL                             R45 2 1
      331 SETTABLEKS                       R45 R44 K58 ["Width"]
      333 LOADB                            R45 0
      334 SETTABLEKS                       R45 R44 K59 ["ShouldSort"]
      336 DUPTABLE                         R45 K67 [{"Name", "Key", "Width", "ShouldSort", "SortParam"}]
      337 LOADK                            R46 K71 ["Last Edited"]
      338 SETTABLEKS                       R46 R45 K56 ["Name"]
      340 LOADK                            R46 K72 ["Edited"]
      341 SETTABLEKS                       R46 R45 K57 ["Key"]
      343 GETIMPORT                        R46 K65 [UDim.new]
      345 LOADK                            R47 K73 [0.15]
      346 LOADN                            R48 0
      347 CALL                             R46 2 1
      348 SETTABLEKS                       R46 R45 K58 ["Width"]
      350 LOADB                            R46 1
      351 SETTABLEKS                       R46 R45 K59 ["ShouldSort"]
      353 LOADK                            R46 K74 ["LastUpdated"]
      354 SETTABLEKS                       R46 R45 K66 ["SortParam"]
      356 DUPTABLE                         R46 K67 [{"Name", "Key", "Width", "ShouldSort", "SortParam"}]
      357 LOADK                            R47 K75 ["Date Created"]
      358 SETTABLEKS                       R47 R46 K56 ["Name"]
      360 LOADK                            R47 K76 ["Created"]
      361 SETTABLEKS                       R47 R46 K57 ["Key"]
      363 GETIMPORT                        R47 K65 [UDim.new]
      365 LOADK                            R48 K73 [0.15]
      366 LOADN                            R49 0
      367 CALL                             R47 2 1
      368 SETTABLEKS                       R47 R46 K58 ["Width"]
      370 LOADB                            R47 1
      371 SETTABLEKS                       R47 R46 K59 ["ShouldSort"]
      373 LOADK                            R47 K77 ["GameCreated"]
      374 SETTABLEKS                       R47 R46 K66 ["SortParam"]
      376 DUPTABLE                         R47 K60 [{"Name", "Key", "Width", "ShouldSort"}]
      377 LOADK                            R48 K78 ["Playability"]
      378 SETTABLEKS                       R48 R47 K56 ["Name"]
      380 LOADK                            R48 K78 ["Playability"]
      381 SETTABLEKS                       R48 R47 K57 ["Key"]
      383 GETIMPORT                        R48 K65 [UDim.new]
      385 LOADK                            R49 K79 [0.1]
      386 LOADN                            R50 0
      387 CALL                             R48 2 1
      388 SETTABLEKS                       R48 R47 K58 ["Width"]
      390 LOADB                            R48 0
      391 SETTABLEKS                       R48 R47 K59 ["ShouldSort"]
      393 DUPTABLE                         R48 K60 [{"Name", "Key", "Width", "ShouldSort"}]
      394 LOADK                            R49 K80 ["Team Create"]
      395 SETTABLEKS                       R49 R48 K56 ["Name"]
      397 LOADK                            R49 K81 ["TeamCreate"]
      398 SETTABLEKS                       R49 R48 K57 ["Key"]
      400 GETIMPORT                        R49 K65 [UDim.new]
      402 LOADK                            R50 K79 [0.1]
      403 LOADN                            R51 0
      404 CALL                             R49 2 1
      405 SETTABLEKS                       R49 R48 K58 ["Width"]
      407 LOADB                            R49 0
      408 SETTABLEKS                       R49 R48 K59 ["ShouldSort"]
      410 SETLIST                          R41 R42 7 [1]
      412 JUMPIFNOT                        R13 ; [+23]
      413 DUPTABLE                         R44 K60 [{"Name", "Key", "Width", "ShouldSort"}]
      414 LOADK                            R45 K61 [""]
      415 SETTABLEKS                       R45 R44 K56 ["Name"]
      417 LOADK                            R45 K82 ["KebabMenu"]
      418 SETTABLEKS                       R45 R44 K57 ["Key"]
      420 GETIMPORT                        R45 K65 [UDim.new]
      422 LOADN                            R46 0
      423 LOADN                            R47 72
      424 CALL                             R45 2 1
      425 SETTABLEKS                       R45 R44 K58 ["Width"]
      427 LOADB                            R45 0
      428 SETTABLEKS                       R45 R44 K59 ["ShouldSort"]
      430 FASTCALL2                        TABLE_INSERT R41 R44 ; [+4]
      432 MOVE                             R43 R41
      433 GETIMPORT                        R42 K85 [table.insert]
      435 CALL                             R42 2 0
      436 NEWTABLE                         R42 4 0
      438 LOADN                            R43 2
      439 SETTABLEKS                       R43 R42 K69 ["GameName"]
      441 LOADN                            R43 4
      442 SETTABLEKS                       R43 R42 K74 ["LastUpdated"]
      444 LOADN                            R43 5
      445 SETTABLEKS                       R43 R42 K77 ["GameCreated"]
      447 DUPCLOSURE                       R43 K86 [PROTO_1]
      448 CAPTURE                          VAL R1
      449 CAPTURE                          VAL R32
      450 DUPCLOSURE                       R44 K87 [PROTO_2]
      451 CAPTURE                          VAL R1
      452 CAPTURE                          VAL R32
      453 DUPTABLE                         R45 K89 [{"Icon", "Name", "Description", "Edited", "Created", "Playability", "Type", "TeamCreate", "KebabMenu"}]
      454 DUPTABLE                         R46 K93 [{"Value", "Schema", "Renderers"}]
      455 LOADK                            R47 K61 [""]
      456 SETTABLEKS                       R47 R46 K90 ["Value"]
      458 DUPTABLE                         R47 K94 [{"Type"}]
      459 LOADK                            R48 K95 ["Placeholder"]
      460 SETTABLEKS                       R48 R47 K88 ["Type"]
      462 SETTABLEKS                       R47 R46 K91 ["Schema"]
      464 DUPTABLE                         R47 K96 [{"Placeholder"}]
      465 SETTABLEKS                       R44 R47 K95 ["Placeholder"]
      467 SETTABLEKS                       R47 R46 K92 ["Renderers"]
      469 SETTABLEKS                       R46 R45 K62 ["Icon"]
      471 DUPTABLE                         R46 K93 [{"Value", "Schema", "Renderers"}]
      472 LOADK                            R47 K61 [""]
      473 SETTABLEKS                       R47 R46 K90 ["Value"]
      475 DUPTABLE                         R47 K94 [{"Type"}]
      476 LOADK                            R48 K95 ["Placeholder"]
      477 SETTABLEKS                       R48 R47 K88 ["Type"]
      479 SETTABLEKS                       R47 R46 K91 ["Schema"]
      481 DUPTABLE                         R47 K96 [{"Placeholder"}]
      482 SETTABLEKS                       R43 R47 K95 ["Placeholder"]
      484 SETTABLEKS                       R47 R46 K92 ["Renderers"]
      486 SETTABLEKS                       R46 R45 K56 ["Name"]
      488 DUPTABLE                         R46 K93 [{"Value", "Schema", "Renderers"}]
      489 LOADK                            R47 K61 [""]
      490 SETTABLEKS                       R47 R46 K90 ["Value"]
      492 DUPTABLE                         R47 K94 [{"Type"}]
      493 LOADK                            R48 K95 ["Placeholder"]
      494 SETTABLEKS                       R48 R47 K88 ["Type"]
      496 SETTABLEKS                       R47 R46 K91 ["Schema"]
      498 DUPTABLE                         R47 K96 [{"Placeholder"}]
      499 SETTABLEKS                       R43 R47 K95 ["Placeholder"]
      501 SETTABLEKS                       R47 R46 K92 ["Renderers"]
      503 SETTABLEKS                       R46 R45 K70 ["Description"]
      505 DUPTABLE                         R46 K93 [{"Value", "Schema", "Renderers"}]
      506 LOADK                            R47 K61 [""]
      507 SETTABLEKS                       R47 R46 K90 ["Value"]
      509 DUPTABLE                         R47 K94 [{"Type"}]
      510 LOADK                            R48 K95 ["Placeholder"]
      511 SETTABLEKS                       R48 R47 K88 ["Type"]
      513 SETTABLEKS                       R47 R46 K91 ["Schema"]
      515 DUPTABLE                         R47 K96 [{"Placeholder"}]
      516 SETTABLEKS                       R43 R47 K95 ["Placeholder"]
      518 SETTABLEKS                       R47 R46 K92 ["Renderers"]
      520 SETTABLEKS                       R46 R45 K72 ["Edited"]
      522 DUPTABLE                         R46 K93 [{"Value", "Schema", "Renderers"}]
      523 LOADK                            R47 K61 [""]
      524 SETTABLEKS                       R47 R46 K90 ["Value"]
      526 DUPTABLE                         R47 K94 [{"Type"}]
      527 LOADK                            R48 K95 ["Placeholder"]
      528 SETTABLEKS                       R48 R47 K88 ["Type"]
      530 SETTABLEKS                       R47 R46 K91 ["Schema"]
      532 DUPTABLE                         R47 K96 [{"Placeholder"}]
      533 SETTABLEKS                       R43 R47 K95 ["Placeholder"]
      535 SETTABLEKS                       R47 R46 K92 ["Renderers"]
      537 SETTABLEKS                       R46 R45 K76 ["Created"]
      539 DUPTABLE                         R46 K93 [{"Value", "Schema", "Renderers"}]
      540 LOADK                            R47 K61 [""]
      541 SETTABLEKS                       R47 R46 K90 ["Value"]
      543 DUPTABLE                         R47 K94 [{"Type"}]
      544 LOADK                            R48 K95 ["Placeholder"]
      545 SETTABLEKS                       R48 R47 K88 ["Type"]
      547 SETTABLEKS                       R47 R46 K91 ["Schema"]
      549 DUPTABLE                         R47 K96 [{"Placeholder"}]
      550 SETTABLEKS                       R43 R47 K95 ["Placeholder"]
      552 SETTABLEKS                       R47 R46 K92 ["Renderers"]
      554 SETTABLEKS                       R46 R45 K78 ["Playability"]
      556 DUPTABLE                         R46 K93 [{"Value", "Schema", "Renderers"}]
      557 LOADK                            R47 K61 [""]
      558 SETTABLEKS                       R47 R46 K90 ["Value"]
      560 DUPTABLE                         R47 K94 [{"Type"}]
      561 LOADK                            R48 K95 ["Placeholder"]
      562 SETTABLEKS                       R48 R47 K88 ["Type"]
      564 SETTABLEKS                       R47 R46 K91 ["Schema"]
      566 DUPTABLE                         R47 K96 [{"Placeholder"}]
      567 SETTABLEKS                       R43 R47 K95 ["Placeholder"]
      569 SETTABLEKS                       R47 R46 K92 ["Renderers"]
      571 SETTABLEKS                       R46 R45 K88 ["Type"]
      573 DUPTABLE                         R46 K93 [{"Value", "Schema", "Renderers"}]
      574 LOADK                            R47 K61 [""]
      575 SETTABLEKS                       R47 R46 K90 ["Value"]
      577 DUPTABLE                         R47 K94 [{"Type"}]
      578 LOADK                            R48 K95 ["Placeholder"]
      579 SETTABLEKS                       R48 R47 K88 ["Type"]
      581 SETTABLEKS                       R47 R46 K91 ["Schema"]
      583 DUPTABLE                         R47 K96 [{"Placeholder"}]
      584 SETTABLEKS                       R43 R47 K95 ["Placeholder"]
      586 SETTABLEKS                       R47 R46 K92 ["Renderers"]
      588 SETTABLEKS                       R46 R45 K81 ["TeamCreate"]
      590 JUMPIFNOT                        R13 ; [+5]
      591 DUPTABLE                         R46 K97 [{"Value"}]
      592 LOADK                            R47 K61 [""]
      593 SETTABLEKS                       R47 R46 K90 ["Value"]
      595 JUMP                             ; [+1]
      596 LOADNIL                          R46
      597 SETTABLEKS                       R46 R45 K82 ["KebabMenu"]
      599 DUPCLOSURE                       R46 K98 [PROTO_3]
      600 DUPCLOSURE                       R47 K99 [PROTO_4]
      601 CAPTURE                          VAL R27
      602 DUPCLOSURE                       R48 K100 [PROTO_5]
      603 CAPTURE                          VAL R28
      604 DUPCLOSURE                       R49 K101 [PROTO_7]
      605 CAPTURE                          VAL R21
      606 CAPTURE                          VAL R13
      607 CAPTURE                          VAL R22
      608 CAPTURE                          VAL R4
      609 CAPTURE                          VAL R1
      610 CAPTURE                          VAL R33
      611 DUPCLOSURE                       R50 K102 [PROTO_21]
      612 CAPTURE                          VAL R2
      613 CAPTURE                          VAL R6
      614 CAPTURE                          VAL R1
      615 CAPTURE                          VAL R12
      616 CAPTURE                          VAL R13
      617 CAPTURE                          VAL R35
      618 CAPTURE                          VAL R3
      619 CAPTURE                          VAL R27
      620 CAPTURE                          VAL R8
      621 CAPTURE                          VAL R45
      622 CAPTURE                          VAL R44
      623 CAPTURE                          VAL R36
      624 CAPTURE                          VAL R40
      625 CAPTURE                          VAL R15
      626 CAPTURE                          VAL R34
      627 CAPTURE                          VAL R28
      628 CAPTURE                          VAL R25
      629 CAPTURE                          VAL R26
      630 CAPTURE                          VAL R9
      631 CAPTURE                          VAL R31
      632 CAPTURE                          VAL R41
      633 CAPTURE                          VAL R48
      634 CAPTURE                          VAL R24
      635 CAPTURE                          VAL R23
      636 CAPTURE                          VAL R47
      637 CAPTURE                          VAL R46
      638 CAPTURE                          VAL R10
      639 CAPTURE                          VAL R42
      640 CAPTURE                          VAL R33
      641 CAPTURE                          VAL R49
      642 SETGLOBAL                        R50 K103 ["ExperiencesTable"]
      644 GETGLOBAL                        R50 K103 ["ExperiencesTable"]
      646 RETURN                           R50 1
