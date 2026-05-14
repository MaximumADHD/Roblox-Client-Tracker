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
       33 GETUPVAL                         R4 3
       34 GETTABLEKS                       R4 R4 K3 ["createElement"]
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

PROTO_10:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["Cells"]
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
      128 JUMP                             ; [+216]
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
      301 GETUPVAL                         R11 9
      302 JUMPIFNOT                        R11 ; [+23]
      303 GETTABLEKS                       R11 R5 K56 ["IsAgeRestrictedCollaboration"]
      305 JUMPIFNOT                        R11 ; [+20]
      306 DUPTABLE                         R10 K45 [{"Value", "Schema", "Renderers"}]
      307 LOADK                            R11 K19 [""]
      308 SETTABLEKS                       R11 R10 K17 ["Value"]
      310 DUPTABLE                         R11 K46 [{"Type"}]
      311 LOADK                            R12 K57 ["CollaborationRestriction"]
      312 SETTABLEKS                       R12 R11 K13 ["Type"]
      314 SETTABLEKS                       R11 R10 K43 ["Schema"]
      316 DUPTABLE                         R11 K58 [{"CollaborationRestriction"}]
      317 NEWCLOSURE                       R12 P0
      318 CAPTURE                          UPVAL U10
      319 CAPTURE                          UPVAL U11
      320 CAPTURE                          VAL R5
      321 SETTABLEKS                       R12 R11 K57 ["CollaborationRestriction"]
      323 SETTABLEKS                       R11 R10 K44 ["Renderers"]
      325 JUMP                             ; [+9]
      326 DUPTABLE                         R10 K18 [{"Value"}]
      327 GETTABLEKS                       R12 R5 K22 ["IsTeamCreateEnabled"]
      329 JUMPIFNOT                        R12 ; [+2]
      330 LOADK                            R11 K23 ["Yes"]
      331 JUMP                             ; [+1]
      332 LOADK                            R11 K24 ["No"]
      333 SETTABLEKS                       R11 R10 K17 ["Value"]
      335 SETTABLEKS                       R10 R9 K15 ["TeamCreate"]
      337 SETTABLEKS                       R6 R9 K28 ["children"]
      339 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
      341 MOVE                             R8 R0
      342 GETIMPORT                        R7 K27 [table.insert]
      344 CALL                             R7 2 0
      345 FORGLOOP                         R1 2 ; [-338]
      347 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
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

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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
       23 JUMPIFNOT                        R10 ; [+17]
       24 GETUPVAL                         R10 4
       25 GETIMPORT                        R11 K4 [Vector2.zero]
       27 CALL                             R10 1 1
       28 MOVE                             R8 R10
       29 GETUPVAL                         R10 2
       30 GETTABLEKS                       R10 R10 K5 ["useCallback"]
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
       52 CAPTURE                          UPVAL U12
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          UPVAL U13
       55 NEWTABLE                         R12 0 1
       57 GETTABLEKS                       R13 R0 K6 ["Cells"]
       59 SETLIST                          R12 R13 1 [1]
       61 CALL                             R10 2 1
       62 LOADNIL                          R11
       63 GETTABLEKS                       R12 R0 K7 ["CanDisplayComponentAdjustQuery"]
       65 JUMPIFNOT                        R12 ; [+11]
       66 GETTABLEKS                       R12 R0 K8 ["Query"]
       68 GETTABLEKS                       R12 R12 K9 ["sortOrder"]
       70 JUMPIFNOTEQKS                    R12 K10 ["Asc"] ; [+4]
       72 GETIMPORT                        R11 K14 [Enum.SortDirection.Descending]
       74 JUMP                             ; [+2]
       75 GETIMPORT                        R11 K16 [Enum.SortDirection.Ascending]
       77 LOADNIL                          R12
       78 LOADNIL                          R13
       79 LOADNIL                          R14
       80 GETUPVAL                         R15 14
       81 JUMPIF                           R15 ; [+2]
       82 GETUPVAL                         R15 6
       83 JUMPIFNOT                        R15 ; [+14]
       84 GETUPVAL                         R15 15
       85 GETUPVAL                         R16 16
       86 CALL                             R15 1 1
       87 MOVE                             R12 R15
       88 GETUPVAL                         R15 17
       89 GETTABLEKS                       R15 R15 K17 ["getDialogManager"]
       91 CALL                             R15 0 1
       92 MOVE                             R13 R15
       93 GETUPVAL                         R15 17
       94 GETTABLEKS                       R15 R15 K18 ["getActionsBridge"]
       96 CALL                             R15 0 1
       97 MOVE                             R14 R15
       98 GETUPVAL                         R15 2
       99 GETTABLEKS                       R15 R15 K19 ["createElement"]
      101 LOADK                            R16 K20 ["Frame"]
      102 NEWTABLE                         R17 1 0
      104 GETUPVAL                         R18 2
      105 GETTABLEKS                       R18 R18 K21 ["Tag"]
      107 LOADK                            R19 K22 ["X-Transparent StartPage-TablePadding X-Fill data-testid=--start-page-ExperiencesTable"]
      108 SETTABLE                         R19 R17 R18
      109 DUPTABLE                         R18 K25 [{"Table", "Menu"}]
      110 GETUPVAL                         R19 2
      111 GETTABLEKS                       R19 R19 K19 ["createElement"]
      113 GETUPVAL                         R20 18
      114 NEWTABLE                         R21 32 0
      116 GETUPVAL                         R22 19
      117 SETTABLEKS                       R22 R21 K26 ["Columns"]
      119 NEWCLOSURE                       R22 P2
      120 CAPTURE                          VAL R2
      121 CAPTURE                          UPVAL U7
      122 CAPTURE                          VAL R1
      123 SETTABLEKS                       R22 R21 K27 ["OnExpansionChange"]
      125 NEWTABLE                         R22 0 0
      127 SETTABLEKS                       R22 R21 K28 ["Selection"]
      129 NEWCLOSURE                       R22 P3
      130 CAPTURE                          UPVAL U14
      131 CAPTURE                          UPVAL U6
      132 CAPTURE                          UPVAL U20
      133 CAPTURE                          VAL R0
      134 CAPTURE                          UPVAL U21
      135 CAPTURE                          UPVAL U22
      136 CAPTURE                          REF R12
      137 CAPTURE                          REF R14
      138 CAPTURE                          REF R13
      139 CAPTURE                          VAL R3
      140 CAPTURE                          UPVAL U23
      141 CAPTURE                          VAL R10
      142 CAPTURE                          UPVAL U24
      143 CAPTURE                          UPVAL U25
      144 SETTABLEKS                       R22 R21 K29 ["OnSelectionChange"]
      146 SETTABLEKS                       R1 R21 K30 ["Expansion"]
      148 SETTABLEKS                       R10 R21 K31 ["RootItems"]
      150 SETTABLEKS                       R11 R21 K32 ["SortOrder"]
      152 GETTABLEKS                       R23 R0 K7 ["CanDisplayComponentAdjustQuery"]
      154 JUMPIFNOT                        R23 ; [+7]
      155 GETUPVAL                         R23 26
      156 GETTABLEKS                       R24 R0 K8 ["Query"]
      158 GETTABLEKS                       R24 R24 K33 ["sortParam"]
      160 GETTABLE                         R22 R23 R24
      161 JUMP                             ; [+1]
      162 LOADNIL                          R22
      163 SETTABLEKS                       R22 R21 K34 ["SortIndex"]
      165 NEWCLOSURE                       R22 P4
      166 CAPTURE                          UPVAL U19
      167 CAPTURE                          VAL R0
      168 SETTABLEKS                       R22 R21 K35 ["OnSortChange"]
      170 LOADN                            R22 53
      171 SETTABLEKS                       R22 R21 K36 ["RowHeight"]
      173 LOADB                            R22 1
      174 SETTABLEKS                       R22 R21 K37 ["UseDeficit"]
      176 DUPCLOSURE                       R22 K38 [PROTO_14]
      177 SETTABLEKS                       R22 R21 K39 ["GetChildren"]
      179 DUPCLOSURE                       R22 K40 [PROTO_15]
      180 SETTABLEKS                       R22 R21 K41 ["GetItemId"]
      182 GETTABLEKS                       R22 R0 K42 ["OnLoadRange"]
      184 SETTABLEKS                       R22 R21 K42 ["OnLoadRange"]
      186 LOADB                            R22 1
      187 SETTABLEKS                       R22 R21 K43 ["Scroll"]
      189 DUPTABLE                         R22 K45 [{"CanvasSize"}]
      190 GETTABLEKS                       R23 R0 K44 ["CanvasSize"]
      192 SETTABLEKS                       R23 R22 K44 ["CanvasSize"]
      194 SETTABLEKS                       R22 R21 K46 ["ScrollProps"]
      196 GETUPVAL                         R23 3
      197 JUMPIFNOT                        R23 ; [+4]
      198 NEWCLOSURE                       R22 P7
      199 CAPTURE                          REF R8
      200 CAPTURE                          VAL R5
      201 JUMP                             ; [+1]
      202 LOADNIL                          R22
      203 SETTABLEKS                       R22 R21 K47 ["RightClick"]
      205 LOADK                            R22 K48 ["modern"]
      206 SETTABLEKS                       R22 R21 K49 ["Variant"]
      208 GETUPVAL                         R22 2
      209 GETTABLEKS                       R22 R22 K21 ["Tag"]
      211 LOADK                            R23 K50 ["X-Fill"]
      212 SETTABLE                         R23 R21 R22
      213 GETUPVAL                         R23 3
      214 JUMPIFNOT                        R23 ; [+2]
      215 MOVE                             R22 R7
      216 JUMP                             ; [+1]
      217 LOADNIL                          R22
      218 SETTABLEKS                       R22 R21 K51 ["ref"]
      220 GETUPVAL                         R23 3
      221 JUMPIFNOT                        R23 ; [+2]
      222 MOVE                             R22 R6
      223 JUMP                             ; [+1]
      224 LOADNIL                          R22
      225 SETTABLEKS                       R22 R21 K52 ["DisableHover"]
      227 CALL                             R19 2 1
      228 SETTABLEKS                       R19 R18 K23 ["Table"]
      230 JUMPIFNOT                        R6 ; [+20]
      231 GETUPVAL                         R20 27
      232 JUMPIFEQKNIL                     R20 ; [+18]
      234 GETUPVAL                         R19 2
      235 GETTABLEKS                       R19 R19 K19 ["createElement"]
      237 GETUPVAL                         R20 28
      238 DUPTABLE                         R21 K58 [{"anchorRef", "isOpen", "cell", "onItemActivated", "onClose"}]
      239 SETTABLEKS                       R8 R21 K53 ["anchorRef"]
      241 SETTABLEKS                       R6 R21 K54 ["isOpen"]
      243 SETTABLEKS                       R4 R21 K55 ["cell"]
      245 SETTABLEKS                       R9 R21 K56 ["onItemActivated"]
      247 SETTABLEKS                       R9 R21 K57 ["onClose"]
      249 CALL                             R19 2 1
      250 JUMP                             ; [+1]
      251 LOADNIL                          R19
      252 SETTABLEKS                       R19 R18 K24 ["Menu"]
      254 CALL                             R15 3 -1
      255 CLOSEUPVALS                      R8
      256 RETURN                           R15 -1

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
       76 GETTABLEKS                       R14 R14 K23 ["getFFlagLuaStartPageCoreContentStatus"]
       78 CALL                             R13 1 1
       79 CALL                             R13 0 1
       80 GETIMPORT                        R14 K5 [require]
       82 GETTABLEKS                       R15 R0 K16 ["Src"]
       84 GETTABLEKS                       R15 R15 K21 ["SharedFlags"]
       86 GETTABLEKS                       R15 R15 K24 ["getFFlagLuaStartPageCollaborationRestriction"]
       88 CALL                             R14 1 1
       89 CALL                             R14 0 1
       90 GETIMPORT                        R15 K5 [require]
       92 GETTABLEKS                       R16 R0 K16 ["Src"]
       94 GETTABLEKS                       R16 R16 K25 ["Contexts"]
       96 GETTABLEKS                       R16 R16 K26 ["ContextMenuActions"]
       98 CALL                             R15 1 1
       99 GETIMPORT                        R16 K5 [require]
      101 GETTABLEKS                       R17 R0 K16 ["Src"]
      103 GETTABLEKS                       R17 R17 K27 ["Hooks"]
      105 GETTABLEKS                       R17 R17 K28 ["useCellContextActions"]
      107 CALL                             R16 1 1
      108 GETTABLEKS                       R17 R9 K29 ["StudioService"]
      110 GETIMPORT                        R18 K5 [require]
      112 GETTABLEKS                       R19 R0 K16 ["Src"]
      114 GETTABLEKS                       R19 R19 K30 ["Network"]
      116 GETTABLEKS                       R19 R19 K31 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace"]
      118 CALL                             R18 1 1
      119 GETTABLEKS                       R19 R1 K32 ["useContext"]
      121 GETIMPORT                        R20 K5 [require]
      123 GETTABLEKS                       R21 R0 K16 ["Src"]
      125 GETTABLEKS                       R21 R21 K17 ["Util"]
      127 GETTABLEKS                       R21 R21 K33 ["Dialogs"]
      129 CALL                             R20 1 1
      130 GETIMPORT                        R21 K5 [require]
      132 GETTABLEKS                       R22 R0 K16 ["Src"]
      134 GETTABLEKS                       R22 R22 K21 ["SharedFlags"]
      136 GETTABLEKS                       R22 R22 K34 ["getFFlagLuaStartPageTCAgeGatingCheck"]
      138 CALL                             R21 1 1
      139 CALL                             R21 0 1
      140 GETIMPORT                        R22 K5 [require]
      142 GETTABLEKS                       R23 R0 K16 ["Src"]
      144 GETTABLEKS                       R23 R23 K21 ["SharedFlags"]
      146 GETTABLEKS                       R23 R23 K35 ["getFFlagLuaStartPagePlaceSequestrationCheck"]
      148 CALL                             R22 1 1
      149 CALL                             R22 0 1
      150 GETIMPORT                        R23 K5 [require]
      152 GETTABLEKS                       R24 R0 K16 ["Src"]
      154 GETTABLEKS                       R24 R24 K36 ["Types"]
      156 CALL                             R23 1 1
      157 GETTABLEKS                       R24 R5 K37 ["UI"]
      159 GETTABLEKS                       R25 R24 K38 ["TreeTable"]
      161 GETIMPORT                        R26 K5 [require]
      163 GETTABLEKS                       R27 R0 K16 ["Src"]
      165 GETTABLEKS                       R27 R27 K39 ["Components"]
      167 GETTABLEKS                       R27 R27 K40 ["Shimmer"]
      169 CALL                             R26 1 1
      170 JUMPIFNOT                        R12 ; [+12]
      171 GETIMPORT                        R27 K5 [require]
      173 GETTABLEKS                       R28 R0 K16 ["Src"]
      175 GETTABLEKS                       R28 R28 K20 ["Foundation"]
      177 GETTABLEKS                       R28 R28 K39 ["Components"]
      179 GETTABLEKS                       R28 R28 K41 ["ContextMenu"]
      181 CALL                             R27 1 1
      182 JUMP                             ; [+1]
      183 LOADNIL                          R27
      184 JUMPIFNOT                        R14 ; [+10]
      185 GETIMPORT                        R28 K5 [require]
      187 GETTABLEKS                       R29 R0 K16 ["Src"]
      189 GETTABLEKS                       R29 R29 K39 ["Components"]
      191 GETTABLEKS                       R29 R29 K42 ["AgeRestrictedCollaborationBadge"]
      193 CALL                             R28 1 1
      194 JUMP                             ; [+1]
      195 LOADNIL                          R28
      196 GETTABLEKS                       R29 R11 K27 ["Hooks"]
      198 GETTABLEKS                       R29 R29 K43 ["useMeasurableRef"]
      200 GETIMPORT                        R30 K5 [require]
      202 GETTABLEKS                       R31 R0 K16 ["Src"]
      204 GETTABLEKS                       R31 R31 K17 ["Util"]
      206 GETTABLEKS                       R31 R31 K44 ["formatISOTimestamp"]
      208 CALL                             R30 1 1
      209 DUPCLOSURE                       R31 K45 [PROTO_0]
      210 CAPTURE                          VAL R13
      211 NEWTABLE                         R32 0 7
      213 DUPTABLE                         R33 K50 [{"Name", "Key", "Width", "ShouldSort"}]
      214 LOADK                            R34 K51 [""]
      215 SETTABLEKS                       R34 R33 K46 ["Name"]
      217 LOADK                            R34 K52 ["Icon"]
      218 SETTABLEKS                       R34 R33 K47 ["Key"]
      220 GETIMPORT                        R34 K55 [UDim.new]
      222 LOADN                            R35 0
      223 LOADN                            R36 64
      224 CALL                             R34 2 1
      225 SETTABLEKS                       R34 R33 K48 ["Width"]
      227 LOADB                            R34 0
      228 SETTABLEKS                       R34 R33 K49 ["ShouldSort"]
      230 DUPTABLE                         R34 K57 [{"Name", "Key", "Width", "ShouldSort", "SortParam"}]
      231 LOADK                            R35 K46 ["Name"]
      232 SETTABLEKS                       R35 R34 K46 ["Name"]
      234 LOADK                            R35 K46 ["Name"]
      235 SETTABLEKS                       R35 R34 K47 ["Key"]
      237 GETIMPORT                        R35 K55 [UDim.new]
      239 LOADK                            R36 K58 [0.25]
      240 LOADN                            R37 192
      241 CALL                             R35 2 1
      242 SETTABLEKS                       R35 R34 K48 ["Width"]
      244 LOADB                            R35 1
      245 SETTABLEKS                       R35 R34 K49 ["ShouldSort"]
      247 LOADK                            R35 K59 ["GameName"]
      248 SETTABLEKS                       R35 R34 K56 ["SortParam"]
      250 DUPTABLE                         R35 K50 [{"Name", "Key", "Width", "ShouldSort"}]
      251 LOADK                            R36 K60 ["Description"]
      252 SETTABLEKS                       R36 R35 K46 ["Name"]
      254 LOADK                            R36 K60 ["Description"]
      255 SETTABLEKS                       R36 R35 K47 ["Key"]
      257 GETIMPORT                        R36 K55 [UDim.new]
      259 LOADK                            R37 K58 [0.25]
      260 LOADN                            R38 0
      261 CALL                             R36 2 1
      262 SETTABLEKS                       R36 R35 K48 ["Width"]
      264 LOADB                            R36 0
      265 SETTABLEKS                       R36 R35 K49 ["ShouldSort"]
      267 DUPTABLE                         R36 K57 [{"Name", "Key", "Width", "ShouldSort", "SortParam"}]
      268 LOADK                            R37 K61 ["Last Edited"]
      269 SETTABLEKS                       R37 R36 K46 ["Name"]
      271 LOADK                            R37 K62 ["Edited"]
      272 SETTABLEKS                       R37 R36 K47 ["Key"]
      274 GETIMPORT                        R37 K55 [UDim.new]
      276 LOADK                            R38 K63 [0.15]
      277 LOADN                            R39 0
      278 CALL                             R37 2 1
      279 SETTABLEKS                       R37 R36 K48 ["Width"]
      281 LOADB                            R37 1
      282 SETTABLEKS                       R37 R36 K49 ["ShouldSort"]
      284 LOADK                            R37 K64 ["LastUpdated"]
      285 SETTABLEKS                       R37 R36 K56 ["SortParam"]
      287 DUPTABLE                         R37 K57 [{"Name", "Key", "Width", "ShouldSort", "SortParam"}]
      288 LOADK                            R38 K65 ["Date Created"]
      289 SETTABLEKS                       R38 R37 K46 ["Name"]
      291 LOADK                            R38 K66 ["Created"]
      292 SETTABLEKS                       R38 R37 K47 ["Key"]
      294 GETIMPORT                        R38 K55 [UDim.new]
      296 LOADK                            R39 K63 [0.15]
      297 LOADN                            R40 0
      298 CALL                             R38 2 1
      299 SETTABLEKS                       R38 R37 K48 ["Width"]
      301 LOADB                            R38 1
      302 SETTABLEKS                       R38 R37 K49 ["ShouldSort"]
      304 LOADK                            R38 K67 ["GameCreated"]
      305 SETTABLEKS                       R38 R37 K56 ["SortParam"]
      307 DUPTABLE                         R38 K50 [{"Name", "Key", "Width", "ShouldSort"}]
      308 LOADK                            R39 K68 ["Playability"]
      309 SETTABLEKS                       R39 R38 K46 ["Name"]
      311 LOADK                            R39 K68 ["Playability"]
      312 SETTABLEKS                       R39 R38 K47 ["Key"]
      314 GETIMPORT                        R39 K55 [UDim.new]
      316 LOADK                            R40 K69 [0.1]
      317 LOADN                            R41 0
      318 CALL                             R39 2 1
      319 SETTABLEKS                       R39 R38 K48 ["Width"]
      321 LOADB                            R39 0
      322 SETTABLEKS                       R39 R38 K49 ["ShouldSort"]
      324 DUPTABLE                         R39 K50 [{"Name", "Key", "Width", "ShouldSort"}]
      325 LOADK                            R40 K70 ["Team Create"]
      326 SETTABLEKS                       R40 R39 K46 ["Name"]
      328 LOADK                            R40 K71 ["TeamCreate"]
      329 SETTABLEKS                       R40 R39 K47 ["Key"]
      331 GETIMPORT                        R40 K55 [UDim.new]
      333 LOADK                            R41 K69 [0.1]
      334 LOADN                            R42 0
      335 CALL                             R40 2 1
      336 SETTABLEKS                       R40 R39 K48 ["Width"]
      338 LOADB                            R40 0
      339 SETTABLEKS                       R40 R39 K49 ["ShouldSort"]
      341 SETLIST                          R32 R33 7 [1]
      343 NEWTABLE                         R33 4 0
      345 LOADN                            R34 2
      346 SETTABLEKS                       R34 R33 K59 ["GameName"]
      348 LOADN                            R34 4
      349 SETTABLEKS                       R34 R33 K64 ["LastUpdated"]
      351 LOADN                            R34 5
      352 SETTABLEKS                       R34 R33 K67 ["GameCreated"]
      354 DUPCLOSURE                       R34 K72 [PROTO_1]
      355 CAPTURE                          VAL R1
      356 CAPTURE                          VAL R26
      357 DUPCLOSURE                       R35 K73 [PROTO_2]
      358 CAPTURE                          VAL R1
      359 CAPTURE                          VAL R26
      360 DUPTABLE                         R36 K75 [{"Icon", "Name", "Description", "Edited", "Created", "Playability", "Type", "TeamCreate"}]
      361 DUPTABLE                         R37 K79 [{"Value", "Schema", "Renderers"}]
      362 LOADK                            R38 K51 [""]
      363 SETTABLEKS                       R38 R37 K76 ["Value"]
      365 DUPTABLE                         R38 K80 [{"Type"}]
      366 LOADK                            R39 K81 ["Placeholder"]
      367 SETTABLEKS                       R39 R38 K74 ["Type"]
      369 SETTABLEKS                       R38 R37 K77 ["Schema"]
      371 DUPTABLE                         R38 K82 [{"Placeholder"}]
      372 SETTABLEKS                       R35 R38 K81 ["Placeholder"]
      374 SETTABLEKS                       R38 R37 K78 ["Renderers"]
      376 SETTABLEKS                       R37 R36 K52 ["Icon"]
      378 DUPTABLE                         R37 K79 [{"Value", "Schema", "Renderers"}]
      379 LOADK                            R38 K51 [""]
      380 SETTABLEKS                       R38 R37 K76 ["Value"]
      382 DUPTABLE                         R38 K80 [{"Type"}]
      383 LOADK                            R39 K81 ["Placeholder"]
      384 SETTABLEKS                       R39 R38 K74 ["Type"]
      386 SETTABLEKS                       R38 R37 K77 ["Schema"]
      388 DUPTABLE                         R38 K82 [{"Placeholder"}]
      389 SETTABLEKS                       R34 R38 K81 ["Placeholder"]
      391 SETTABLEKS                       R38 R37 K78 ["Renderers"]
      393 SETTABLEKS                       R37 R36 K46 ["Name"]
      395 DUPTABLE                         R37 K79 [{"Value", "Schema", "Renderers"}]
      396 LOADK                            R38 K51 [""]
      397 SETTABLEKS                       R38 R37 K76 ["Value"]
      399 DUPTABLE                         R38 K80 [{"Type"}]
      400 LOADK                            R39 K81 ["Placeholder"]
      401 SETTABLEKS                       R39 R38 K74 ["Type"]
      403 SETTABLEKS                       R38 R37 K77 ["Schema"]
      405 DUPTABLE                         R38 K82 [{"Placeholder"}]
      406 SETTABLEKS                       R34 R38 K81 ["Placeholder"]
      408 SETTABLEKS                       R38 R37 K78 ["Renderers"]
      410 SETTABLEKS                       R37 R36 K60 ["Description"]
      412 DUPTABLE                         R37 K79 [{"Value", "Schema", "Renderers"}]
      413 LOADK                            R38 K51 [""]
      414 SETTABLEKS                       R38 R37 K76 ["Value"]
      416 DUPTABLE                         R38 K80 [{"Type"}]
      417 LOADK                            R39 K81 ["Placeholder"]
      418 SETTABLEKS                       R39 R38 K74 ["Type"]
      420 SETTABLEKS                       R38 R37 K77 ["Schema"]
      422 DUPTABLE                         R38 K82 [{"Placeholder"}]
      423 SETTABLEKS                       R34 R38 K81 ["Placeholder"]
      425 SETTABLEKS                       R38 R37 K78 ["Renderers"]
      427 SETTABLEKS                       R37 R36 K62 ["Edited"]
      429 DUPTABLE                         R37 K79 [{"Value", "Schema", "Renderers"}]
      430 LOADK                            R38 K51 [""]
      431 SETTABLEKS                       R38 R37 K76 ["Value"]
      433 DUPTABLE                         R38 K80 [{"Type"}]
      434 LOADK                            R39 K81 ["Placeholder"]
      435 SETTABLEKS                       R39 R38 K74 ["Type"]
      437 SETTABLEKS                       R38 R37 K77 ["Schema"]
      439 DUPTABLE                         R38 K82 [{"Placeholder"}]
      440 SETTABLEKS                       R34 R38 K81 ["Placeholder"]
      442 SETTABLEKS                       R38 R37 K78 ["Renderers"]
      444 SETTABLEKS                       R37 R36 K66 ["Created"]
      446 DUPTABLE                         R37 K79 [{"Value", "Schema", "Renderers"}]
      447 LOADK                            R38 K51 [""]
      448 SETTABLEKS                       R38 R37 K76 ["Value"]
      450 DUPTABLE                         R38 K80 [{"Type"}]
      451 LOADK                            R39 K81 ["Placeholder"]
      452 SETTABLEKS                       R39 R38 K74 ["Type"]
      454 SETTABLEKS                       R38 R37 K77 ["Schema"]
      456 DUPTABLE                         R38 K82 [{"Placeholder"}]
      457 SETTABLEKS                       R34 R38 K81 ["Placeholder"]
      459 SETTABLEKS                       R38 R37 K78 ["Renderers"]
      461 SETTABLEKS                       R37 R36 K68 ["Playability"]
      463 DUPTABLE                         R37 K79 [{"Value", "Schema", "Renderers"}]
      464 LOADK                            R38 K51 [""]
      465 SETTABLEKS                       R38 R37 K76 ["Value"]
      467 DUPTABLE                         R38 K80 [{"Type"}]
      468 LOADK                            R39 K81 ["Placeholder"]
      469 SETTABLEKS                       R39 R38 K74 ["Type"]
      471 SETTABLEKS                       R38 R37 K77 ["Schema"]
      473 DUPTABLE                         R38 K82 [{"Placeholder"}]
      474 SETTABLEKS                       R34 R38 K81 ["Placeholder"]
      476 SETTABLEKS                       R38 R37 K78 ["Renderers"]
      478 SETTABLEKS                       R37 R36 K74 ["Type"]
      480 DUPTABLE                         R37 K79 [{"Value", "Schema", "Renderers"}]
      481 LOADK                            R38 K51 [""]
      482 SETTABLEKS                       R38 R37 K76 ["Value"]
      484 DUPTABLE                         R38 K80 [{"Type"}]
      485 LOADK                            R39 K81 ["Placeholder"]
      486 SETTABLEKS                       R39 R38 K74 ["Type"]
      488 SETTABLEKS                       R38 R37 K77 ["Schema"]
      490 DUPTABLE                         R38 K82 [{"Placeholder"}]
      491 SETTABLEKS                       R34 R38 K81 ["Placeholder"]
      493 SETTABLEKS                       R38 R37 K78 ["Renderers"]
      495 SETTABLEKS                       R37 R36 K71 ["TeamCreate"]
      497 DUPCLOSURE                       R37 K83 [PROTO_3]
      498 DUPCLOSURE                       R38 K84 [PROTO_4]
      499 CAPTURE                          VAL R21
      500 DUPCLOSURE                       R39 K85 [PROTO_5]
      501 CAPTURE                          VAL R22
      502 DUPCLOSURE                       R40 K86 [PROTO_7]
      503 CAPTURE                          VAL R15
      504 CAPTURE                          VAL R16
      505 CAPTURE                          VAL R4
      506 CAPTURE                          VAL R1
      507 CAPTURE                          VAL R27
      508 DUPCLOSURE                       R41 K87 [PROTO_17]
      509 CAPTURE                          VAL R2
      510 CAPTURE                          VAL R6
      511 CAPTURE                          VAL R1
      512 CAPTURE                          VAL R12
      513 CAPTURE                          VAL R29
      514 CAPTURE                          VAL R3
      515 CAPTURE                          VAL R21
      516 CAPTURE                          VAL R8
      517 CAPTURE                          VAL R36
      518 CAPTURE                          VAL R35
      519 CAPTURE                          VAL R30
      520 CAPTURE                          VAL R31
      521 CAPTURE                          VAL R14
      522 CAPTURE                          VAL R28
      523 CAPTURE                          VAL R22
      524 CAPTURE                          VAL R19
      525 CAPTURE                          VAL R20
      526 CAPTURE                          VAL R9
      527 CAPTURE                          VAL R25
      528 CAPTURE                          VAL R32
      529 CAPTURE                          VAL R39
      530 CAPTURE                          VAL R18
      531 CAPTURE                          VAL R17
      532 CAPTURE                          VAL R38
      533 CAPTURE                          VAL R37
      534 CAPTURE                          VAL R10
      535 CAPTURE                          VAL R33
      536 CAPTURE                          VAL R27
      537 CAPTURE                          VAL R40
      538 SETGLOBAL                        R41 K88 ["ExperiencesTable"]
      540 GETGLOBAL                        R41 K88 ["ExperiencesTable"]
      542 RETURN                           R41 1
