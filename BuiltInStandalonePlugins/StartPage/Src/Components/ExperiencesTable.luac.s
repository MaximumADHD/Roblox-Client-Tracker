PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+4]
        2 GETTABLEKS                       R3 R0 K1 ["PrivacyType"]
        4 ORK                              R2 R3 K0 [""]
        5 RETURN                           R2 1
        6 NEWTABLE                         R2 0 0
        8 GETTABLEKS                       R3 R0 K1 ["PrivacyType"]
       10 JUMPIFNOTEQKS                    R3 K2 ["Public"] ; [+30]
       12 GETTABLEKS                       R3 R0 K3 ["IsFriendsOnly"]
       14 JUMPIFNOT                        R3 ; [+26]
       15 GETTABLEKS                       R3 R0 K4 ["CreatorType"]
       17 JUMPIFNOTEQKS                    R3 K5 ["Group"] ; [+12]
       19 MOVE                             R4 R2
       20 LOADK                            R7 K6 ["Plugin"]
       21 LOADK                            R8 K7 ["PrivacyType.Community"]
       22 NAMECALL                         R5 R1 K8 ["getText"]
       24 CALL                             R5 3 -1
       25 FASTCALL                         TABLE_INSERT ; [+2]
       26 GETIMPORT                        R3 K11 [table.insert]
       28 CALL                             R3 -1 0
       29 JUMP                             ; [+20]
       30 MOVE                             R4 R2
       31 LOADK                            R7 K6 ["Plugin"]
       32 LOADK                            R8 K12 ["PrivacyType.FriendsShort"]
       33 NAMECALL                         R5 R1 K8 ["getText"]
       35 CALL                             R5 3 -1
       36 FASTCALL                         TABLE_INSERT ; [+2]
       37 GETIMPORT                        R3 K11 [table.insert]
       39 CALL                             R3 -1 0
       40 JUMP                             ; [+9]
       41 GETTABLEKS                       R6 R0 K1 ["PrivacyType"]
       43 ORK                              R5 R6 K0 [""]
       44 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       46 MOVE                             R4 R2
       47 GETIMPORT                        R3 K11 [table.insert]
       49 CALL                             R3 2 0
       50 GETTABLEKS                       R3 R0 K1 ["PrivacyType"]
       52 JUMPIFNOTEQKS                    R3 K2 ["Public"] ; [+15]
       54 GETTABLEKS                       R3 R0 K13 ["ContentMaturity"]
       56 JUMPIFNOTEQKS                    R3 K14 ["unrated"] ; [+11]
       58 MOVE                             R4 R2
       59 LOADK                            R7 K6 ["Plugin"]
       60 LOADK                            R8 K15 ["ExperienceStatus.Unrated"]
       61 NAMECALL                         R5 R1 K8 ["getText"]
       63 CALL                             R5 3 -1
       64 FASTCALL                         TABLE_INSERT ; [+2]
       65 GETIMPORT                        R3 K11 [table.insert]
       67 CALL                             R3 -1 0
       68 GETTABLEKS                       R3 R0 K16 ["CoreContentSelectStatus"]
       70 JUMPIFNOTEQKS                    R3 K17 ["Eligible"] ; [+12]
       72 MOVE                             R4 R2
       73 LOADK                            R7 K6 ["Plugin"]
       74 LOADK                            R8 K18 ["Label.Select"]
       75 NAMECALL                         R5 R1 K8 ["getText"]
       77 CALL                             R5 3 -1
       78 FASTCALL                         TABLE_INSERT ; [+2]
       79 GETIMPORT                        R3 K11 [table.insert]
       81 CALL                             R3 -1 0
       82 JUMP                             ; [+13]
       83 GETTABLEKS                       R3 R0 K19 ["IsBeta"]
       85 JUMPIFNOT                        R3 ; [+10]
       86 MOVE                             R4 R2
       87 LOADK                            R7 K6 ["Plugin"]
       88 LOADK                            R8 K20 ["Label.Beta"]
       89 NAMECALL                         R5 R1 K8 ["getText"]
       91 CALL                             R5 3 -1
       92 FASTCALL                         TABLE_INSERT ; [+2]
       93 GETIMPORT                        R3 K11 [table.insert]
       95 CALL                             R3 -1 0
       96 GETIMPORT                        R3 K22 [table.concat]
       98 MOVE                             R4 R2
       99 LOADK                            R5 K23 [" · "]
      100 CALL                             R3 2 -1
      101 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Component"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Component"]
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
        8 GETTABLEKS                       R8 R6 K2 ["Id"]
       10 GETTABLEKS                       R7 R8 K3 ["Type"]
       12 JUMPIFNOTEQKS                    R7 K4 ["PlaceId"] ; [+20]
       14 GETTABLEKS                       R8 R6 K2 ["Id"]
       16 GETTABLEKS                       R7 R8 K4 ["PlaceId"]
       18 JUMPIFNOTEQ                      R7 R1 ; [+14]
       20 GETTABLEKS                       R7 R6 K5 ["UniverseId"]
       22 JUMPIFNOT                        R7 ; [+10]
       23 GETTABLEKS                       R8 R6 K5 ["UniverseId"]
       25 GETTABLEKS                       R7 R8 K6 ["Value"]
       27 JUMPIFNOT                        R7 ; [+5]
       28 GETTABLEKS                       R8 R6 K5 ["UniverseId"]
       30 GETTABLEKS                       R7 R8 K6 ["Value"]
       32 RETURN                           R7 1
       33 GETTABLEKS                       R7 R6 K7 ["children"]
       35 JUMPIFNOT                        R7 ; [+36]
       36 GETIMPORT                        R7 K1 [ipairs]
       38 GETTABLEKS                       R8 R6 K7 ["children"]
       40 CALL                             R7 1 3
       41 FORGPREP_INEXT                   R7
       42 GETTABLEKS                       R12 R11 K2 ["Id"]
       44 JUMPIFNOT                        R12 ; [+25]
       45 GETTABLEKS                       R13 R11 K2 ["Id"]
       47 GETTABLEKS                       R12 R13 K3 ["Type"]
       49 JUMPIFNOTEQKS                    R12 K4 ["PlaceId"] ; [+20]
       51 GETTABLEKS                       R13 R11 K2 ["Id"]
       53 GETTABLEKS                       R12 R13 K4 ["PlaceId"]
       55 JUMPIFNOTEQ                      R12 R1 ; [+14]
       57 GETTABLEKS                       R12 R11 K5 ["UniverseId"]
       59 JUMPIFNOT                        R12 ; [+10]
       60 GETTABLEKS                       R13 R11 K5 ["UniverseId"]
       62 GETTABLEKS                       R12 R13 K6 ["Value"]
       64 JUMPIFNOT                        R12 ; [+5]
       65 GETTABLEKS                       R13 R11 K5 ["UniverseId"]
       67 GETTABLEKS                       R12 R13 K6 ["Value"]
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
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["onClose"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContextMenuActions"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R3 R0 K1 ["cell"]
        7 MOVE                             R4 R1
        8 JUMPIF                           R4 ; [+2]
        9 NEWTABLE                         R4 0 0
       11 CALL                             R2 2 1
       12 LENGTH                           R4 R2
       13 LOADN                            R5 0
       14 JUMPIFLT                         R5 R4 ; [+2]
       16 LOADB                            R3 0 +1
       17 LOADB                            R3 1
       18 GETUPVAL                         R4 2
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R0
       22 NEWTABLE                         R6 0 2
       24 MOVE                             R7 R3
       25 GETTABLEKS                       R8 R0 K2 ["onClose"]
       27 SETLIST                          R6 R7 2 [1]
       29 CALL                             R4 2 0
       30 JUMPIF                           R3 ; [+2]
       31 LOADNIL                          R4
       32 RETURN                           R4 1
       33 GETUPVAL                         R5 3
       34 GETTABLEKS                       R4 R5 K3 ["createElement"]
       36 GETUPVAL                         R5 4
       37 DUPTABLE                         R6 K8 [{"anchorRef", "isOpen", "actions", "onItemActivated", "onClose"}]
       38 GETTABLEKS                       R7 R0 K4 ["anchorRef"]
       40 SETTABLEKS                       R7 R6 K4 ["anchorRef"]
       42 GETTABLEKS                       R7 R0 K5 ["isOpen"]
       44 SETTABLEKS                       R7 R6 K5 ["isOpen"]
       46 SETTABLEKS                       R2 R6 K6 ["actions"]
       48 GETTABLEKS                       R7 R0 K7 ["onItemActivated"]
       50 SETTABLEKS                       R7 R6 K7 ["onItemActivated"]
       52 GETTABLEKS                       R7 R0 K2 ["onClose"]
       54 SETTABLEKS                       R7 R6 K2 ["onClose"]
       56 CALL                             R4 2 -1
       57 RETURN                           R4 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R1 R4 K0 ["Cells"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 NEWTABLE                         R6 0 0
       10 GETTABLEKS                       R7 R5 K1 ["IsPlaceholder"]
       12 JUMPIF                           R7 ; [+101]
       13 GETTABLEKS                       R7 R5 K2 ["Children"]
       15 JUMPIFNOT                        R7 ; [+98]
       16 GETTABLEKS                       R7 R5 K2 ["Children"]
       18 LOADNIL                          R8
       19 LOADNIL                          R9
       20 FORGPREP                         R7
       21 GETTABLEKS                       R13 R11 K3 ["Id"]
       23 FASTCALL2K                       ASSERT R13 K4 ; [+4]
       25 LOADK                            R14 K4 ["Child place must have a place ID"]
       26 GETIMPORT                        R12 K6 [assert]
       28 CALL                             R12 2 0
       29 DUPTABLE                         R14 K16 [{"Icon", "Id", "Name", "Description", "Edited", "Created", "Playability", "Type", "UniverseId", "TeamCreate"}]
       30 DUPTABLE                         R15 K18 [{"Value"}]
       31 LOADK                            R16 K19 [""]
       32 SETTABLEKS                       R16 R15 K17 ["Value"]
       34 SETTABLEKS                       R15 R14 K7 ["Icon"]
       36 DUPTABLE                         R15 K21 [{"Type", "PlaceId"}]
       37 LOADK                            R16 K20 ["PlaceId"]
       38 SETTABLEKS                       R16 R15 K13 ["Type"]
       40 GETTABLEKS                       R16 R11 K3 ["Id"]
       42 SETTABLEKS                       R16 R15 K20 ["PlaceId"]
       44 SETTABLEKS                       R15 R14 K3 ["Id"]
       46 DUPTABLE                         R15 K18 [{"Value"}]
       47 GETTABLEKS                       R16 R11 K8 ["Name"]
       49 SETTABLEKS                       R16 R15 K17 ["Value"]
       51 SETTABLEKS                       R15 R14 K8 ["Name"]
       53 DUPTABLE                         R15 K18 [{"Value"}]
       54 GETTABLEKS                       R16 R11 K9 ["Description"]
       56 SETTABLEKS                       R16 R15 K17 ["Value"]
       58 SETTABLEKS                       R15 R14 K9 ["Description"]
       60 DUPTABLE                         R15 K18 [{"Value"}]
       61 LOADK                            R16 K19 [""]
       62 SETTABLEKS                       R16 R15 K17 ["Value"]
       64 SETTABLEKS                       R15 R14 K10 ["Edited"]
       66 DUPTABLE                         R15 K18 [{"Value"}]
       67 LOADK                            R16 K19 [""]
       68 SETTABLEKS                       R16 R15 K17 ["Value"]
       70 SETTABLEKS                       R15 R14 K11 ["Created"]
       72 DUPTABLE                         R15 K18 [{"Value"}]
       73 LOADK                            R16 K19 [""]
       74 SETTABLEKS                       R16 R15 K17 ["Value"]
       76 SETTABLEKS                       R15 R14 K12 ["Playability"]
       78 DUPTABLE                         R15 K18 [{"Value"}]
       79 LOADK                            R16 K19 [""]
       80 SETTABLEKS                       R16 R15 K17 ["Value"]
       82 SETTABLEKS                       R15 R14 K13 ["Type"]
       84 DUPTABLE                         R15 K18 [{"Value"}]
       85 GETTABLEKS                       R16 R11 K14 ["UniverseId"]
       87 SETTABLEKS                       R16 R15 K17 ["Value"]
       89 SETTABLEKS                       R15 R14 K14 ["UniverseId"]
       91 GETUPVAL                         R16 1
       92 JUMPIFNOT                        R16 ; [+10]
       93 DUPTABLE                         R15 K18 [{"Value"}]
       94 GETTABLEKS                       R17 R5 K22 ["IsTeamCreateEnabled"]
       96 JUMPIFNOT                        R17 ; [+2]
       97 LOADK                            R16 K23 ["Yes"]
       98 JUMP                             ; [+1]
       99 LOADK                            R16 K24 ["No"]
      100 SETTABLEKS                       R16 R15 K17 ["Value"]
      102 JUMP                             ; [+1]
      103 LOADNIL                          R15
      104 SETTABLEKS                       R15 R14 K15 ["TeamCreate"]
      106 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
      108 MOVE                             R13 R6
      109 GETIMPORT                        R12 K27 [table.insert]
      111 CALL                             R12 2 0
      112 FORGLOOP                         R7 2 ; [-92]
      114 GETTABLEKS                       R7 R5 K1 ["IsPlaceholder"]
      116 JUMPIFNOT                        R7 ; [+12]
      117 MOVE                             R8 R0
      118 GETUPVAL                         R9 2
      119 GETUPVAL                         R10 3
      120 DUPTABLE                         R11 K29 [{"children"}]
      121 SETTABLEKS                       R6 R11 K28 ["children"]
      123 CALL                             R9 2 -1
      124 FASTCALL                         TABLE_INSERT ; [+2]
      125 GETIMPORT                        R7 K27 [table.insert]
      127 CALL                             R7 -1 0
      128 JUMP                             ; [+191]
      129 DUPTABLE                         R9 K31 [{"Cell", "Icon", "Id", "Name", "Description", "Edited", "Created", "Playability", "Type", "UniverseId", "TeamCreate", "children"}]
      130 GETUPVAL                         R11 4
      131 JUMPIFNOT                        R11 ; [+2]
      132 MOVE                             R10 R5
      133 JUMP                             ; [+1]
      134 LOADNIL                          R10
      135 SETTABLEKS                       R10 R9 K30 ["Cell"]
      137 GETTABLEKS                       R11 R5 K32 ["ImageUrl"]
      139 JUMPIFNOT                        R11 ; [+21]
      140 DUPTABLE                         R10 K34 [{"Value", "LeftIcon"}]
      141 LOADK                            R11 K19 [""]
      142 SETTABLEKS                       R11 R10 K17 ["Value"]
      144 DUPTABLE                         R11 K37 [{"Image", "Size"}]
      145 GETTABLEKS                       R12 R5 K32 ["ImageUrl"]
      147 SETTABLEKS                       R12 R11 K35 ["Image"]
      149 GETIMPORT                        R12 K40 [UDim2.new]
      151 LOADN                            R13 0
      152 LOADN                            R14 32
      153 LOADN                            R15 0
      154 LOADN                            R16 32
      155 CALL                             R12 4 1
      156 SETTABLEKS                       R12 R11 K36 ["Size"]
      158 SETTABLEKS                       R11 R10 K33 ["LeftIcon"]
      160 JUMP                             ; [+39]
      161 GETTABLEKS                       R11 R5 K41 ["NoLoadableImage"]
      163 JUMPIFNOT                        R11 ; [+20]
      164 DUPTABLE                         R10 K34 [{"Value", "LeftIcon"}]
      165 LOADK                            R11 K19 [""]
      166 SETTABLEKS                       R11 R10 K17 ["Value"]
      168 DUPTABLE                         R11 K37 [{"Image", "Size"}]
      169 LOADK                            R12 K42 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/SI-Standard/Placeholder.png"]
      170 SETTABLEKS                       R12 R11 K35 ["Image"]
      172 GETIMPORT                        R12 K40 [UDim2.new]
      174 LOADN                            R13 0
      175 LOADN                            R14 32
      176 LOADN                            R15 0
      177 LOADN                            R16 32
      178 CALL                             R12 4 1
      179 SETTABLEKS                       R12 R11 K36 ["Size"]
      181 SETTABLEKS                       R11 R10 K33 ["LeftIcon"]
      183 JUMP                             ; [+16]
      184 DUPTABLE                         R10 K45 [{"Value", "Schema", "Renderers"}]
      185 LOADK                            R11 K19 [""]
      186 SETTABLEKS                       R11 R10 K17 ["Value"]
      188 DUPTABLE                         R11 K46 [{"Type"}]
      189 LOADK                            R12 K47 ["Placeholder"]
      190 SETTABLEKS                       R12 R11 K13 ["Type"]
      192 SETTABLEKS                       R11 R10 K43 ["Schema"]
      194 DUPTABLE                         R11 K48 [{"Placeholder"}]
      195 GETUPVAL                         R12 5
      196 SETTABLEKS                       R12 R11 K47 ["Placeholder"]
      198 SETTABLEKS                       R11 R10 K44 ["Renderers"]
      200 SETTABLEKS                       R10 R9 K7 ["Icon"]
      202 GETTABLEKS                       R11 R5 K49 ["RootPlaceId"]
      204 JUMPIFNOT                        R11 ; [+9]
      205 DUPTABLE                         R10 K21 [{"Type", "PlaceId"}]
      206 LOADK                            R11 K20 ["PlaceId"]
      207 SETTABLEKS                       R11 R10 K13 ["Type"]
      209 GETTABLEKS                       R11 R5 K49 ["RootPlaceId"]
      211 SETTABLEKS                       R11 R10 K20 ["PlaceId"]
      213 JUMP                             ; [+13]
      214 GETTABLEKS                       R11 R5 K50 ["FilePath"]
      216 JUMPIFNOT                        R11 ; [+9]
      217 DUPTABLE                         R10 K51 [{"Type", "FilePath"}]
      218 LOADK                            R11 K50 ["FilePath"]
      219 SETTABLEKS                       R11 R10 K13 ["Type"]
      221 GETTABLEKS                       R11 R5 K50 ["FilePath"]
      223 SETTABLEKS                       R11 R10 K50 ["FilePath"]
      225 JUMP                             ; [+1]
      226 LOADNIL                          R10
      227 SETTABLEKS                       R10 R9 K3 ["Id"]
      229 DUPTABLE                         R10 K18 [{"Value"}]
      230 GETTABLEKS                       R12 R5 K8 ["Name"]
      232 ORK                              R11 R12 K19 [""]
      233 SETTABLEKS                       R11 R10 K17 ["Value"]
      235 SETTABLEKS                       R10 R9 K8 ["Name"]
      237 DUPTABLE                         R10 K18 [{"Value"}]
      238 GETTABLEKS                       R12 R5 K9 ["Description"]
      240 JUMPIF                           R12 ; [+2]
      241 LOADK                            R11 K19 [""]
      242 JUMP                             ; [+2]
      243 GETTABLEKS                       R11 R5 K9 ["Description"]
      245 SETTABLEKS                       R11 R10 K17 ["Value"]
      247 SETTABLEKS                       R10 R9 K9 ["Description"]
      249 DUPTABLE                         R10 K18 [{"Value"}]
      250 GETTABLEKS                       R12 R5 K52 ["LastViewed"]
      252 JUMPIFNOT                        R12 ; [+6]
      253 GETUPVAL                         R11 6
      254 GETTABLEKS                       R12 R5 K52 ["LastViewed"]
      256 GETUPVAL                         R13 7
      257 CALL                             R11 2 1
      258 JUMP                             ; [+1]
      259 LOADK                            R11 K19 [""]
      260 SETTABLEKS                       R11 R10 K17 ["Value"]
      262 SETTABLEKS                       R10 R9 K10 ["Edited"]
      264 DUPTABLE                         R10 K18 [{"Value"}]
      265 GETUPVAL                         R11 6
      266 GETTABLEKS                       R12 R5 K11 ["Created"]
      268 GETUPVAL                         R13 7
      269 CALL                             R11 2 1
      270 SETTABLEKS                       R11 R10 K17 ["Value"]
      272 SETTABLEKS                       R10 R9 K11 ["Created"]
      274 DUPTABLE                         R10 K18 [{"Value"}]
      275 GETUPVAL                         R11 8
      276 MOVE                             R12 R5
      277 GETUPVAL                         R13 7
      278 CALL                             R11 2 1
      279 SETTABLEKS                       R11 R10 K17 ["Value"]
      281 SETTABLEKS                       R10 R9 K12 ["Playability"]
      283 DUPTABLE                         R10 K18 [{"Value"}]
      284 GETTABLEKS                       R12 R5 K53 ["IsGame"]
      286 JUMPIFNOT                        R12 ; [+2]
      287 LOADK                            R11 K54 ["Experience"]
      288 JUMP                             ; [+1]
      289 LOADK                            R11 K55 ["Place"]
      290 SETTABLEKS                       R11 R10 K17 ["Value"]
      292 SETTABLEKS                       R10 R9 K13 ["Type"]
      294 DUPTABLE                         R10 K18 [{"Value"}]
      295 GETTABLEKS                       R11 R5 K3 ["Id"]
      297 SETTABLEKS                       R11 R10 K17 ["Value"]
      299 SETTABLEKS                       R10 R9 K14 ["UniverseId"]
      301 DUPTABLE                         R10 K18 [{"Value"}]
      302 GETTABLEKS                       R12 R5 K22 ["IsTeamCreateEnabled"]
      304 JUMPIFNOT                        R12 ; [+2]
      305 LOADK                            R11 K23 ["Yes"]
      306 JUMP                             ; [+1]
      307 LOADK                            R11 K24 ["No"]
      308 SETTABLEKS                       R11 R10 K17 ["Value"]
      310 SETTABLEKS                       R10 R9 K15 ["TeamCreate"]
      312 SETTABLEKS                       R6 R9 K28 ["children"]
      314 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
      316 MOVE                             R8 R0
      317 GETIMPORT                        R7 K27 [table.insert]
      319 CALL                             R7 2 0
      320 FORGLOOP                         R1 2 ; [-313]
      322 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_11:
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
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R3 R4 K5 ["Cells"]
       21 MOVE                             R4 R1
       22 CALL                             R2 2 1
       23 GETUPVAL                         R3 4
       24 GETUPVAL                         R4 5
       25 NAMECALL                         R4 R4 K6 ["GetUserId"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R2 K7 ["universeId"]
       30 MOVE                             R6 R1
       31 GETTABLEKS                       R7 R2 K8 ["rootPlaceId"]
       33 GETUPVAL                         R9 6
       34 GETTABLEKS                       R8 R9 K9 ["showVerifyAge"]
       36 GETUPVAL                         R10 6
       37 GETTABLEKS                       R9 R10 K10 ["showAgeRestricted"]
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
       59 GETUPVAL                         R10 6
       60 GETTABLEKS                       R9 R10 K9 ["showVerifyAge"]
       62 GETUPVAL                         R11 6
       63 GETTABLEKS                       R10 R11 K10 ["showAgeRestricted"]
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

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 FASTCALL2K                       ASSERT R2 K0 ; [+5]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K0 ["There must be a column at the index when you are attempting to sort"]
        6 GETIMPORT                        R3 K2 [assert]
        8 CALL                             R3 2 0
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K3 ["CanDisplayComponentAdjustQuery"]
       12 JUMPIF                           R3 ; [+1]
       13 RETURN                           R0 0
       14 GETTABLEKS                       R3 R2 K4 ["ShouldSort"]
       16 JUMPIF                           R3 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R3 R4 K5 ["DisplayComponentHasAdjustedQuery"]
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

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["Id"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADN                            R1 1
        4 RETURN                           R1 1
        5 GETTABLEKS                       R2 R0 K0 ["Id"]
        7 GETTABLEKS                       R1 R2 K1 ["Type"]
        9 JUMPIFNOTEQKS                    R1 K2 ["PlaceId"] ; [+6]
       11 GETTABLEKS                       R2 R0 K0 ["Id"]
       13 GETTABLEKS                       R1 R2 K2 ["PlaceId"]
       15 RETURN                           R1 1
       16 GETTABLEKS                       R2 R0 K0 ["Id"]
       18 GETTABLEKS                       R1 R2 K3 ["FilePath"]
       20 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 MOVE                             R4 R1
        4 NAMECALL                         R2 R2 K1 ["SetPosition"]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R4 R0 K2 ["item"]
       10 GETTABLEKS                       R3 R4 K3 ["Cell"]
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_16:
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
       15 GETUPVAL                         R8 2
       16 GETTABLEKS                       R7 R8 K1 ["useRef"]
       18 LOADNIL                          R8
       19 CALL                             R7 1 1
       20 LOADNIL                          R8
       21 LOADNIL                          R9
       22 GETUPVAL                         R10 3
       23 JUMPIFNOT                        R10 ; [+17]
       24 GETUPVAL                         R10 4
       25 GETIMPORT                        R11 K4 [Vector2.zero]
       27 CALL                             R10 1 1
       28 MOVE                             R8 R10
       29 GETUPVAL                         R11 2
       30 GETTABLEKS                       R10 R11 K5 ["useCallback"]
       32 NEWCLOSURE                       R11 P0
       33 CAPTURE                          VAL R5
       34 NEWTABLE                         R12 0 1
       36 MOVE                             R13 R5
       37 SETLIST                          R12 R13 1 [1]
       39 CALL                             R10 2 1
       40 MOVE                             R9 R10
       41 GETUPVAL                         R10 5
       42 NEWCLOSURE                       R11 P1
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U6
       45 CAPTURE                          UPVAL U7
       46 CAPTURE                          UPVAL U8
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          UPVAL U9
       49 CAPTURE                          UPVAL U10
       50 CAPTURE                          VAL R3
       51 CAPTURE                          UPVAL U11
       52 NEWTABLE                         R12 0 1
       54 GETTABLEKS                       R13 R0 K6 ["Cells"]
       56 SETLIST                          R12 R13 1 [1]
       58 CALL                             R10 2 1
       59 LOADNIL                          R11
       60 GETTABLEKS                       R12 R0 K7 ["CanDisplayComponentAdjustQuery"]
       62 JUMPIFNOT                        R12 ; [+11]
       63 GETTABLEKS                       R13 R0 K8 ["Query"]
       65 GETTABLEKS                       R12 R13 K9 ["sortOrder"]
       67 JUMPIFNOTEQKS                    R12 K10 ["Asc"] ; [+4]
       69 GETIMPORT                        R11 K14 [Enum.SortDirection.Descending]
       71 JUMP                             ; [+2]
       72 GETIMPORT                        R11 K16 [Enum.SortDirection.Ascending]
       74 LOADNIL                          R12
       75 LOADNIL                          R13
       76 LOADNIL                          R14
       77 GETUPVAL                         R15 12
       78 JUMPIF                           R15 ; [+2]
       79 GETUPVAL                         R15 6
       80 JUMPIFNOT                        R15 ; [+14]
       81 GETUPVAL                         R15 13
       82 GETUPVAL                         R16 14
       83 CALL                             R15 1 1
       84 MOVE                             R12 R15
       85 GETUPVAL                         R16 15
       86 GETTABLEKS                       R15 R16 K17 ["getDialogManager"]
       88 CALL                             R15 0 1
       89 MOVE                             R13 R15
       90 GETUPVAL                         R16 15
       91 GETTABLEKS                       R15 R16 K18 ["getActionsBridge"]
       93 CALL                             R15 0 1
       94 MOVE                             R14 R15
       95 GETUPVAL                         R16 2
       96 GETTABLEKS                       R15 R16 K19 ["createElement"]
       98 LOADK                            R16 K20 ["Frame"]
       99 NEWTABLE                         R17 1 0
      101 GETUPVAL                         R19 2
      102 GETTABLEKS                       R18 R19 K21 ["Tag"]
      104 LOADK                            R19 K22 ["X-Transparent StartPage-TablePadding X-Fill data-testid=--start-page-ExperiencesTable"]
      105 SETTABLE                         R19 R17 R18
      106 DUPTABLE                         R18 K25 [{"Table", "Menu"}]
      107 GETUPVAL                         R20 2
      108 GETTABLEKS                       R19 R20 K19 ["createElement"]
      110 GETUPVAL                         R20 16
      111 NEWTABLE                         R21 32 0
      113 GETUPVAL                         R22 17
      114 SETTABLEKS                       R22 R21 K26 ["Columns"]
      116 NEWCLOSURE                       R22 P2
      117 CAPTURE                          VAL R2
      118 CAPTURE                          UPVAL U7
      119 CAPTURE                          VAL R1
      120 SETTABLEKS                       R22 R21 K27 ["OnExpansionChange"]
      122 NEWTABLE                         R22 0 0
      124 SETTABLEKS                       R22 R21 K28 ["Selection"]
      126 NEWCLOSURE                       R22 P3
      127 CAPTURE                          UPVAL U12
      128 CAPTURE                          UPVAL U6
      129 CAPTURE                          UPVAL U18
      130 CAPTURE                          VAL R0
      131 CAPTURE                          UPVAL U19
      132 CAPTURE                          UPVAL U20
      133 CAPTURE                          REF R12
      134 CAPTURE                          REF R14
      135 CAPTURE                          REF R13
      136 CAPTURE                          VAL R3
      137 CAPTURE                          UPVAL U21
      138 CAPTURE                          VAL R10
      139 CAPTURE                          UPVAL U22
      140 CAPTURE                          UPVAL U23
      141 SETTABLEKS                       R22 R21 K29 ["OnSelectionChange"]
      143 SETTABLEKS                       R1 R21 K30 ["Expansion"]
      145 SETTABLEKS                       R10 R21 K31 ["RootItems"]
      147 SETTABLEKS                       R11 R21 K32 ["SortOrder"]
      149 GETTABLEKS                       R23 R0 K7 ["CanDisplayComponentAdjustQuery"]
      151 JUMPIFNOT                        R23 ; [+7]
      152 GETUPVAL                         R23 24
      153 GETTABLEKS                       R25 R0 K8 ["Query"]
      155 GETTABLEKS                       R24 R25 K33 ["sortParam"]
      157 GETTABLE                         R22 R23 R24
      158 JUMP                             ; [+1]
      159 LOADNIL                          R22
      160 SETTABLEKS                       R22 R21 K34 ["SortIndex"]
      162 NEWCLOSURE                       R22 P4
      163 CAPTURE                          UPVAL U17
      164 CAPTURE                          VAL R0
      165 SETTABLEKS                       R22 R21 K35 ["OnSortChange"]
      167 LOADN                            R22 53
      168 SETTABLEKS                       R22 R21 K36 ["RowHeight"]
      170 LOADB                            R22 1
      171 SETTABLEKS                       R22 R21 K37 ["UseDeficit"]
      173 DUPCLOSURE                       R22 K38 [PROTO_13]
      174 SETTABLEKS                       R22 R21 K39 ["GetChildren"]
      176 DUPCLOSURE                       R22 K40 [PROTO_14]
      177 SETTABLEKS                       R22 R21 K41 ["GetItemId"]
      179 GETTABLEKS                       R22 R0 K42 ["OnLoadRange"]
      181 SETTABLEKS                       R22 R21 K42 ["OnLoadRange"]
      183 LOADB                            R22 1
      184 SETTABLEKS                       R22 R21 K43 ["Scroll"]
      186 DUPTABLE                         R22 K45 [{"CanvasSize"}]
      187 GETTABLEKS                       R23 R0 K44 ["CanvasSize"]
      189 SETTABLEKS                       R23 R22 K44 ["CanvasSize"]
      191 SETTABLEKS                       R22 R21 K46 ["ScrollProps"]
      193 GETUPVAL                         R23 3
      194 JUMPIFNOT                        R23 ; [+4]
      195 NEWCLOSURE                       R22 P7
      196 CAPTURE                          REF R8
      197 CAPTURE                          VAL R5
      198 JUMP                             ; [+1]
      199 LOADNIL                          R22
      200 SETTABLEKS                       R22 R21 K47 ["RightClick"]
      202 LOADK                            R22 K48 ["modern"]
      203 SETTABLEKS                       R22 R21 K49 ["Variant"]
      205 GETUPVAL                         R23 2
      206 GETTABLEKS                       R22 R23 K21 ["Tag"]
      208 LOADK                            R23 K50 ["X-Fill"]
      209 SETTABLE                         R23 R21 R22
      210 GETUPVAL                         R23 3
      211 JUMPIFNOT                        R23 ; [+2]
      212 MOVE                             R22 R7
      213 JUMP                             ; [+1]
      214 LOADNIL                          R22
      215 SETTABLEKS                       R22 R21 K51 ["ref"]
      217 GETUPVAL                         R23 3
      218 JUMPIFNOT                        R23 ; [+2]
      219 MOVE                             R22 R6
      220 JUMP                             ; [+1]
      221 LOADNIL                          R22
      222 SETTABLEKS                       R22 R21 K52 ["DisableHover"]
      224 CALL                             R19 2 1
      225 SETTABLEKS                       R19 R18 K23 ["Table"]
      227 JUMPIFNOT                        R6 ; [+20]
      228 GETUPVAL                         R20 25
      229 JUMPIFEQKNIL                     R20 ; [+18]
      231 GETUPVAL                         R20 2
      232 GETTABLEKS                       R19 R20 K19 ["createElement"]
      234 GETUPVAL                         R20 26
      235 DUPTABLE                         R21 K58 [{"anchorRef", "isOpen", "cell", "onItemActivated", "onClose"}]
      236 SETTABLEKS                       R8 R21 K53 ["anchorRef"]
      238 SETTABLEKS                       R6 R21 K54 ["isOpen"]
      240 SETTABLEKS                       R4 R21 K55 ["cell"]
      242 SETTABLEKS                       R9 R21 K56 ["onItemActivated"]
      244 SETTABLEKS                       R9 R21 K57 ["onClose"]
      246 CALL                             R19 2 1
      247 JUMP                             ; [+1]
      248 LOADNIL                          R19
      249 SETTABLEKS                       R19 R18 K24 ["Menu"]
      251 CALL                             R15 3 -1
      252 CLOSEUPVALS                      R8
      253 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useState"]
       16 GETTABLEKS                       R3 R1 K9 ["useMemo"]
       18 GETTABLEKS                       R4 R1 K10 ["useEffect"]
       20 GETIMPORT                        R5 K5 [require]
       22 GETTABLEKS                       R7 R0 K6 ["Packages"]
       24 GETTABLEKS                       R6 R7 K11 ["Framework"]
       26 CALL                             R5 1 1
       27 GETTABLEKS                       R7 R5 K12 ["ContextServices"]
       29 GETTABLEKS                       R6 R7 K13 ["Localization"]
       31 GETIMPORT                        R7 K5 [require]
       33 GETTABLEKS                       R9 R0 K6 ["Packages"]
       35 GETTABLEKS                       R8 R9 K14 ["Dash"]
       37 CALL                             R7 1 1
       38 GETTABLEKS                       R8 R7 K15 ["join"]
       40 GETIMPORT                        R9 K5 [require]
       42 GETTABLEKS                       R12 R0 K16 ["Src"]
       44 GETTABLEKS                       R11 R12 K17 ["Util"]
       46 GETTABLEKS                       R10 R11 K18 ["Services"]
       48 CALL                             R9 1 1
       49 GETTABLEKS                       R10 R9 K19 ["StartPageManager"]
       51 GETIMPORT                        R11 K5 [require]
       53 GETTABLEKS                       R14 R0 K16 ["Src"]
       55 GETTABLEKS                       R13 R14 K17 ["Util"]
       57 GETTABLEKS                       R12 R13 K20 ["Foundation"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K5 [require]
       62 GETTABLEKS                       R15 R0 K16 ["Src"]
       64 GETTABLEKS                       R14 R15 K21 ["SharedFlags"]
       66 GETTABLEKS                       R13 R14 K22 ["getFFlagLuaStartPageTableContextMenu"]
       68 CALL                             R12 1 1
       69 CALL                             R12 0 1
       70 GETIMPORT                        R13 K5 [require]
       72 GETTABLEKS                       R16 R0 K16 ["Src"]
       74 GETTABLEKS                       R15 R16 K21 ["SharedFlags"]
       76 GETTABLEKS                       R14 R15 K23 ["getFFlagLuaStartPageCoreContentStatus"]
       78 CALL                             R13 1 1
       79 CALL                             R13 0 1
       80 GETIMPORT                        R14 K5 [require]
       82 GETTABLEKS                       R17 R0 K16 ["Src"]
       84 GETTABLEKS                       R16 R17 K24 ["Contexts"]
       86 GETTABLEKS                       R15 R16 K25 ["ContextMenuActions"]
       88 CALL                             R14 1 1
       89 GETIMPORT                        R15 K5 [require]
       91 GETTABLEKS                       R18 R0 K16 ["Src"]
       93 GETTABLEKS                       R17 R18 K26 ["Hooks"]
       95 GETTABLEKS                       R16 R17 K27 ["useCellContextActions"]
       97 CALL                             R15 1 1
       98 GETTABLEKS                       R16 R9 K28 ["StudioService"]
      100 GETIMPORT                        R17 K5 [require]
      102 GETTABLEKS                       R20 R0 K16 ["Src"]
      104 GETTABLEKS                       R19 R20 K29 ["Network"]
      106 GETTABLEKS                       R18 R19 K30 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace"]
      108 CALL                             R17 1 1
      109 GETTABLEKS                       R18 R1 K31 ["useContext"]
      111 GETIMPORT                        R19 K5 [require]
      113 GETTABLEKS                       R22 R0 K16 ["Src"]
      115 GETTABLEKS                       R21 R22 K17 ["Util"]
      117 GETTABLEKS                       R20 R21 K32 ["Dialogs"]
      119 CALL                             R19 1 1
      120 GETIMPORT                        R20 K5 [require]
      122 GETTABLEKS                       R23 R0 K16 ["Src"]
      124 GETTABLEKS                       R22 R23 K21 ["SharedFlags"]
      126 GETTABLEKS                       R21 R22 K33 ["getFFlagLuaStartPageTCAgeGatingCheck"]
      128 CALL                             R20 1 1
      129 CALL                             R20 0 1
      130 GETIMPORT                        R21 K5 [require]
      132 GETTABLEKS                       R24 R0 K16 ["Src"]
      134 GETTABLEKS                       R23 R24 K21 ["SharedFlags"]
      136 GETTABLEKS                       R22 R23 K34 ["getFFlagLuaStartPagePlaceSequestrationCheck"]
      138 CALL                             R21 1 1
      139 CALL                             R21 0 1
      140 GETIMPORT                        R22 K5 [require]
      142 GETTABLEKS                       R24 R0 K16 ["Src"]
      144 GETTABLEKS                       R23 R24 K35 ["Types"]
      146 CALL                             R22 1 1
      147 GETTABLEKS                       R23 R5 K36 ["UI"]
      149 GETTABLEKS                       R24 R23 K37 ["TreeTable"]
      151 GETIMPORT                        R25 K5 [require]
      153 GETTABLEKS                       R28 R0 K16 ["Src"]
      155 GETTABLEKS                       R27 R28 K38 ["Components"]
      157 GETTABLEKS                       R26 R27 K39 ["Shimmer"]
      159 CALL                             R25 1 1
      160 JUMPIFNOT                        R12 ; [+12]
      161 GETIMPORT                        R26 K5 [require]
      163 GETTABLEKS                       R30 R0 K16 ["Src"]
      165 GETTABLEKS                       R29 R30 K20 ["Foundation"]
      167 GETTABLEKS                       R28 R29 K38 ["Components"]
      169 GETTABLEKS                       R27 R28 K40 ["ContextMenu"]
      171 CALL                             R26 1 1
      172 JUMP                             ; [+1]
      173 LOADNIL                          R26
      174 GETTABLEKS                       R28 R11 K26 ["Hooks"]
      176 GETTABLEKS                       R27 R28 K41 ["useMeasurableRef"]
      178 GETIMPORT                        R28 K5 [require]
      180 GETTABLEKS                       R31 R0 K16 ["Src"]
      182 GETTABLEKS                       R30 R31 K17 ["Util"]
      184 GETTABLEKS                       R29 R30 K42 ["formatISOTimestamp"]
      186 CALL                             R28 1 1
      187 DUPCLOSURE                       R29 K43 [PROTO_0]
      188 CAPTURE                          VAL R13
      189 NEWTABLE                         R30 0 7
      191 DUPTABLE                         R31 K48 [{"Name", "Key", "Width", "ShouldSort"}]
      192 LOADK                            R32 K49 [""]
      193 SETTABLEKS                       R32 R31 K44 ["Name"]
      195 LOADK                            R32 K50 ["Icon"]
      196 SETTABLEKS                       R32 R31 K45 ["Key"]
      198 GETIMPORT                        R32 K53 [UDim.new]
      200 LOADN                            R33 0
      201 LOADN                            R34 64
      202 CALL                             R32 2 1
      203 SETTABLEKS                       R32 R31 K46 ["Width"]
      205 LOADB                            R32 0
      206 SETTABLEKS                       R32 R31 K47 ["ShouldSort"]
      208 DUPTABLE                         R32 K55 [{"Name", "Key", "Width", "ShouldSort", "SortParam"}]
      209 LOADK                            R33 K44 ["Name"]
      210 SETTABLEKS                       R33 R32 K44 ["Name"]
      212 LOADK                            R33 K44 ["Name"]
      213 SETTABLEKS                       R33 R32 K45 ["Key"]
      215 GETIMPORT                        R33 K53 [UDim.new]
      217 LOADK                            R34 K56 [0.25]
      218 LOADN                            R35 192
      219 CALL                             R33 2 1
      220 SETTABLEKS                       R33 R32 K46 ["Width"]
      222 LOADB                            R33 1
      223 SETTABLEKS                       R33 R32 K47 ["ShouldSort"]
      225 LOADK                            R33 K57 ["GameName"]
      226 SETTABLEKS                       R33 R32 K54 ["SortParam"]
      228 DUPTABLE                         R33 K48 [{"Name", "Key", "Width", "ShouldSort"}]
      229 LOADK                            R34 K58 ["Description"]
      230 SETTABLEKS                       R34 R33 K44 ["Name"]
      232 LOADK                            R34 K58 ["Description"]
      233 SETTABLEKS                       R34 R33 K45 ["Key"]
      235 GETIMPORT                        R34 K53 [UDim.new]
      237 LOADK                            R35 K56 [0.25]
      238 LOADN                            R36 0
      239 CALL                             R34 2 1
      240 SETTABLEKS                       R34 R33 K46 ["Width"]
      242 LOADB                            R34 0
      243 SETTABLEKS                       R34 R33 K47 ["ShouldSort"]
      245 DUPTABLE                         R34 K55 [{"Name", "Key", "Width", "ShouldSort", "SortParam"}]
      246 LOADK                            R35 K59 ["Last Edited"]
      247 SETTABLEKS                       R35 R34 K44 ["Name"]
      249 LOADK                            R35 K60 ["Edited"]
      250 SETTABLEKS                       R35 R34 K45 ["Key"]
      252 GETIMPORT                        R35 K53 [UDim.new]
      254 LOADK                            R36 K61 [0.15]
      255 LOADN                            R37 0
      256 CALL                             R35 2 1
      257 SETTABLEKS                       R35 R34 K46 ["Width"]
      259 LOADB                            R35 1
      260 SETTABLEKS                       R35 R34 K47 ["ShouldSort"]
      262 LOADK                            R35 K62 ["LastUpdated"]
      263 SETTABLEKS                       R35 R34 K54 ["SortParam"]
      265 DUPTABLE                         R35 K55 [{"Name", "Key", "Width", "ShouldSort", "SortParam"}]
      266 LOADK                            R36 K63 ["Date Created"]
      267 SETTABLEKS                       R36 R35 K44 ["Name"]
      269 LOADK                            R36 K64 ["Created"]
      270 SETTABLEKS                       R36 R35 K45 ["Key"]
      272 GETIMPORT                        R36 K53 [UDim.new]
      274 LOADK                            R37 K61 [0.15]
      275 LOADN                            R38 0
      276 CALL                             R36 2 1
      277 SETTABLEKS                       R36 R35 K46 ["Width"]
      279 LOADB                            R36 1
      280 SETTABLEKS                       R36 R35 K47 ["ShouldSort"]
      282 LOADK                            R36 K65 ["GameCreated"]
      283 SETTABLEKS                       R36 R35 K54 ["SortParam"]
      285 DUPTABLE                         R36 K48 [{"Name", "Key", "Width", "ShouldSort"}]
      286 LOADK                            R37 K66 ["Playability"]
      287 SETTABLEKS                       R37 R36 K44 ["Name"]
      289 LOADK                            R37 K66 ["Playability"]
      290 SETTABLEKS                       R37 R36 K45 ["Key"]
      292 GETIMPORT                        R37 K53 [UDim.new]
      294 LOADK                            R38 K67 [0.1]
      295 LOADN                            R39 0
      296 CALL                             R37 2 1
      297 SETTABLEKS                       R37 R36 K46 ["Width"]
      299 LOADB                            R37 0
      300 SETTABLEKS                       R37 R36 K47 ["ShouldSort"]
      302 DUPTABLE                         R37 K48 [{"Name", "Key", "Width", "ShouldSort"}]
      303 LOADK                            R38 K68 ["Team Create"]
      304 SETTABLEKS                       R38 R37 K44 ["Name"]
      306 LOADK                            R38 K69 ["TeamCreate"]
      307 SETTABLEKS                       R38 R37 K45 ["Key"]
      309 GETIMPORT                        R38 K53 [UDim.new]
      311 LOADK                            R39 K67 [0.1]
      312 LOADN                            R40 0
      313 CALL                             R38 2 1
      314 SETTABLEKS                       R38 R37 K46 ["Width"]
      316 LOADB                            R38 0
      317 SETTABLEKS                       R38 R37 K47 ["ShouldSort"]
      319 SETLIST                          R30 R31 7 [1]
      321 NEWTABLE                         R31 4 0
      323 LOADN                            R32 2
      324 SETTABLEKS                       R32 R31 K57 ["GameName"]
      326 LOADN                            R32 4
      327 SETTABLEKS                       R32 R31 K62 ["LastUpdated"]
      329 LOADN                            R32 5
      330 SETTABLEKS                       R32 R31 K65 ["GameCreated"]
      332 DUPCLOSURE                       R32 K70 [PROTO_1]
      333 CAPTURE                          VAL R1
      334 CAPTURE                          VAL R25
      335 DUPCLOSURE                       R33 K71 [PROTO_2]
      336 CAPTURE                          VAL R1
      337 CAPTURE                          VAL R25
      338 DUPTABLE                         R34 K73 [{"Icon", "Name", "Description", "Edited", "Created", "Playability", "Type", "TeamCreate"}]
      339 DUPTABLE                         R35 K77 [{"Value", "Schema", "Renderers"}]
      340 LOADK                            R36 K49 [""]
      341 SETTABLEKS                       R36 R35 K74 ["Value"]
      343 DUPTABLE                         R36 K78 [{"Type"}]
      344 LOADK                            R37 K79 ["Placeholder"]
      345 SETTABLEKS                       R37 R36 K72 ["Type"]
      347 SETTABLEKS                       R36 R35 K75 ["Schema"]
      349 DUPTABLE                         R36 K80 [{"Placeholder"}]
      350 SETTABLEKS                       R33 R36 K79 ["Placeholder"]
      352 SETTABLEKS                       R36 R35 K76 ["Renderers"]
      354 SETTABLEKS                       R35 R34 K50 ["Icon"]
      356 DUPTABLE                         R35 K77 [{"Value", "Schema", "Renderers"}]
      357 LOADK                            R36 K49 [""]
      358 SETTABLEKS                       R36 R35 K74 ["Value"]
      360 DUPTABLE                         R36 K78 [{"Type"}]
      361 LOADK                            R37 K79 ["Placeholder"]
      362 SETTABLEKS                       R37 R36 K72 ["Type"]
      364 SETTABLEKS                       R36 R35 K75 ["Schema"]
      366 DUPTABLE                         R36 K80 [{"Placeholder"}]
      367 SETTABLEKS                       R32 R36 K79 ["Placeholder"]
      369 SETTABLEKS                       R36 R35 K76 ["Renderers"]
      371 SETTABLEKS                       R35 R34 K44 ["Name"]
      373 DUPTABLE                         R35 K77 [{"Value", "Schema", "Renderers"}]
      374 LOADK                            R36 K49 [""]
      375 SETTABLEKS                       R36 R35 K74 ["Value"]
      377 DUPTABLE                         R36 K78 [{"Type"}]
      378 LOADK                            R37 K79 ["Placeholder"]
      379 SETTABLEKS                       R37 R36 K72 ["Type"]
      381 SETTABLEKS                       R36 R35 K75 ["Schema"]
      383 DUPTABLE                         R36 K80 [{"Placeholder"}]
      384 SETTABLEKS                       R32 R36 K79 ["Placeholder"]
      386 SETTABLEKS                       R36 R35 K76 ["Renderers"]
      388 SETTABLEKS                       R35 R34 K58 ["Description"]
      390 DUPTABLE                         R35 K77 [{"Value", "Schema", "Renderers"}]
      391 LOADK                            R36 K49 [""]
      392 SETTABLEKS                       R36 R35 K74 ["Value"]
      394 DUPTABLE                         R36 K78 [{"Type"}]
      395 LOADK                            R37 K79 ["Placeholder"]
      396 SETTABLEKS                       R37 R36 K72 ["Type"]
      398 SETTABLEKS                       R36 R35 K75 ["Schema"]
      400 DUPTABLE                         R36 K80 [{"Placeholder"}]
      401 SETTABLEKS                       R32 R36 K79 ["Placeholder"]
      403 SETTABLEKS                       R36 R35 K76 ["Renderers"]
      405 SETTABLEKS                       R35 R34 K60 ["Edited"]
      407 DUPTABLE                         R35 K77 [{"Value", "Schema", "Renderers"}]
      408 LOADK                            R36 K49 [""]
      409 SETTABLEKS                       R36 R35 K74 ["Value"]
      411 DUPTABLE                         R36 K78 [{"Type"}]
      412 LOADK                            R37 K79 ["Placeholder"]
      413 SETTABLEKS                       R37 R36 K72 ["Type"]
      415 SETTABLEKS                       R36 R35 K75 ["Schema"]
      417 DUPTABLE                         R36 K80 [{"Placeholder"}]
      418 SETTABLEKS                       R32 R36 K79 ["Placeholder"]
      420 SETTABLEKS                       R36 R35 K76 ["Renderers"]
      422 SETTABLEKS                       R35 R34 K64 ["Created"]
      424 DUPTABLE                         R35 K77 [{"Value", "Schema", "Renderers"}]
      425 LOADK                            R36 K49 [""]
      426 SETTABLEKS                       R36 R35 K74 ["Value"]
      428 DUPTABLE                         R36 K78 [{"Type"}]
      429 LOADK                            R37 K79 ["Placeholder"]
      430 SETTABLEKS                       R37 R36 K72 ["Type"]
      432 SETTABLEKS                       R36 R35 K75 ["Schema"]
      434 DUPTABLE                         R36 K80 [{"Placeholder"}]
      435 SETTABLEKS                       R32 R36 K79 ["Placeholder"]
      437 SETTABLEKS                       R36 R35 K76 ["Renderers"]
      439 SETTABLEKS                       R35 R34 K66 ["Playability"]
      441 DUPTABLE                         R35 K77 [{"Value", "Schema", "Renderers"}]
      442 LOADK                            R36 K49 [""]
      443 SETTABLEKS                       R36 R35 K74 ["Value"]
      445 DUPTABLE                         R36 K78 [{"Type"}]
      446 LOADK                            R37 K79 ["Placeholder"]
      447 SETTABLEKS                       R37 R36 K72 ["Type"]
      449 SETTABLEKS                       R36 R35 K75 ["Schema"]
      451 DUPTABLE                         R36 K80 [{"Placeholder"}]
      452 SETTABLEKS                       R32 R36 K79 ["Placeholder"]
      454 SETTABLEKS                       R36 R35 K76 ["Renderers"]
      456 SETTABLEKS                       R35 R34 K72 ["Type"]
      458 DUPTABLE                         R35 K77 [{"Value", "Schema", "Renderers"}]
      459 LOADK                            R36 K49 [""]
      460 SETTABLEKS                       R36 R35 K74 ["Value"]
      462 DUPTABLE                         R36 K78 [{"Type"}]
      463 LOADK                            R37 K79 ["Placeholder"]
      464 SETTABLEKS                       R37 R36 K72 ["Type"]
      466 SETTABLEKS                       R36 R35 K75 ["Schema"]
      468 DUPTABLE                         R36 K80 [{"Placeholder"}]
      469 SETTABLEKS                       R32 R36 K79 ["Placeholder"]
      471 SETTABLEKS                       R36 R35 K76 ["Renderers"]
      473 SETTABLEKS                       R35 R34 K69 ["TeamCreate"]
      475 DUPCLOSURE                       R35 K81 [PROTO_3]
      476 DUPCLOSURE                       R36 K82 [PROTO_4]
      477 CAPTURE                          VAL R20
      478 DUPCLOSURE                       R37 K83 [PROTO_5]
      479 CAPTURE                          VAL R21
      480 DUPCLOSURE                       R38 K84 [PROTO_7]
      481 CAPTURE                          VAL R14
      482 CAPTURE                          VAL R15
      483 CAPTURE                          VAL R4
      484 CAPTURE                          VAL R1
      485 CAPTURE                          VAL R26
      486 DUPCLOSURE                       R39 K85 [PROTO_16]
      487 CAPTURE                          VAL R2
      488 CAPTURE                          VAL R6
      489 CAPTURE                          VAL R1
      490 CAPTURE                          VAL R12
      491 CAPTURE                          VAL R27
      492 CAPTURE                          VAL R3
      493 CAPTURE                          VAL R20
      494 CAPTURE                          VAL R8
      495 CAPTURE                          VAL R34
      496 CAPTURE                          VAL R33
      497 CAPTURE                          VAL R28
      498 CAPTURE                          VAL R29
      499 CAPTURE                          VAL R21
      500 CAPTURE                          VAL R18
      501 CAPTURE                          VAL R19
      502 CAPTURE                          VAL R9
      503 CAPTURE                          VAL R24
      504 CAPTURE                          VAL R30
      505 CAPTURE                          VAL R37
      506 CAPTURE                          VAL R17
      507 CAPTURE                          VAL R16
      508 CAPTURE                          VAL R36
      509 CAPTURE                          VAL R35
      510 CAPTURE                          VAL R10
      511 CAPTURE                          VAL R31
      512 CAPTURE                          VAL R26
      513 CAPTURE                          VAL R38
      514 SETGLOBAL                        R39 K86 ["ExperiencesTable"]
      516 GETGLOBAL                        R39 K86 ["ExperiencesTable"]
      518 RETURN                           R39 1
