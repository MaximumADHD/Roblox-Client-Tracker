PROTO_0:
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

PROTO_1:
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

PROTO_2:
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

PROTO_3:
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

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["onClose"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
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
      128 JUMP                             ; [+190]
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
      275 GETTABLEKS                       R12 R5 K53 ["PrivacyType"]
      277 ORK                              R11 R12 K19 [""]
      278 SETTABLEKS                       R11 R10 K17 ["Value"]
      280 SETTABLEKS                       R10 R9 K12 ["Playability"]
      282 DUPTABLE                         R10 K18 [{"Value"}]
      283 GETTABLEKS                       R12 R5 K54 ["IsGame"]
      285 JUMPIFNOT                        R12 ; [+2]
      286 LOADK                            R11 K55 ["Experience"]
      287 JUMP                             ; [+1]
      288 LOADK                            R11 K56 ["Place"]
      289 SETTABLEKS                       R11 R10 K17 ["Value"]
      291 SETTABLEKS                       R10 R9 K13 ["Type"]
      293 DUPTABLE                         R10 K18 [{"Value"}]
      294 GETTABLEKS                       R11 R5 K3 ["Id"]
      296 SETTABLEKS                       R11 R10 K17 ["Value"]
      298 SETTABLEKS                       R10 R9 K14 ["UniverseId"]
      300 DUPTABLE                         R10 K18 [{"Value"}]
      301 GETTABLEKS                       R12 R5 K22 ["IsTeamCreateEnabled"]
      303 JUMPIFNOT                        R12 ; [+2]
      304 LOADK                            R11 K23 ["Yes"]
      305 JUMP                             ; [+1]
      306 LOADK                            R11 K24 ["No"]
      307 SETTABLEKS                       R11 R10 K17 ["Value"]
      309 SETTABLEKS                       R10 R9 K15 ["TeamCreate"]
      311 SETTABLEKS                       R6 R9 K28 ["children"]
      313 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
      315 MOVE                             R8 R0
      316 GETIMPORT                        R7 K27 [table.insert]
      318 CALL                             R7 2 0
      319 FORGLOOP                         R1 2 ; [-312]
      321 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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
       51 NEWTABLE                         R12 0 1
       53 GETTABLEKS                       R13 R0 K6 ["Cells"]
       55 SETLIST                          R12 R13 1 [1]
       57 CALL                             R10 2 1
       58 LOADNIL                          R11
       59 GETTABLEKS                       R12 R0 K7 ["CanDisplayComponentAdjustQuery"]
       61 JUMPIFNOT                        R12 ; [+11]
       62 GETTABLEKS                       R13 R0 K8 ["Query"]
       64 GETTABLEKS                       R12 R13 K9 ["sortOrder"]
       66 JUMPIFNOTEQKS                    R12 K10 ["Asc"] ; [+4]
       68 GETIMPORT                        R11 K14 [Enum.SortDirection.Descending]
       70 JUMP                             ; [+2]
       71 GETIMPORT                        R11 K16 [Enum.SortDirection.Ascending]
       73 LOADNIL                          R12
       74 LOADNIL                          R13
       75 LOADNIL                          R14
       76 GETUPVAL                         R15 11
       77 JUMPIF                           R15 ; [+2]
       78 GETUPVAL                         R15 6
       79 JUMPIFNOT                        R15 ; [+14]
       80 GETUPVAL                         R15 12
       81 GETUPVAL                         R16 13
       82 CALL                             R15 1 1
       83 MOVE                             R12 R15
       84 GETUPVAL                         R16 14
       85 GETTABLEKS                       R15 R16 K17 ["getDialogManager"]
       87 CALL                             R15 0 1
       88 MOVE                             R13 R15
       89 GETUPVAL                         R16 14
       90 GETTABLEKS                       R15 R16 K18 ["getActionsBridge"]
       92 CALL                             R15 0 1
       93 MOVE                             R14 R15
       94 GETUPVAL                         R16 2
       95 GETTABLEKS                       R15 R16 K19 ["createElement"]
       97 LOADK                            R16 K20 ["Frame"]
       98 NEWTABLE                         R17 1 0
      100 GETUPVAL                         R19 2
      101 GETTABLEKS                       R18 R19 K21 ["Tag"]
      103 LOADK                            R19 K22 ["X-Transparent StartPage-TablePadding X-Fill data-testid=--start-page-ExperiencesTable"]
      104 SETTABLE                         R19 R17 R18
      105 DUPTABLE                         R18 K25 [{"Table", "Menu"}]
      106 GETUPVAL                         R20 2
      107 GETTABLEKS                       R19 R20 K19 ["createElement"]
      109 GETUPVAL                         R20 15
      110 NEWTABLE                         R21 32 0
      112 GETUPVAL                         R22 16
      113 SETTABLEKS                       R22 R21 K26 ["Columns"]
      115 NEWCLOSURE                       R22 P2
      116 CAPTURE                          VAL R2
      117 CAPTURE                          UPVAL U7
      118 CAPTURE                          VAL R1
      119 SETTABLEKS                       R22 R21 K27 ["OnExpansionChange"]
      121 NEWTABLE                         R22 0 0
      123 SETTABLEKS                       R22 R21 K28 ["Selection"]
      125 NEWCLOSURE                       R22 P3
      126 CAPTURE                          UPVAL U11
      127 CAPTURE                          UPVAL U6
      128 CAPTURE                          UPVAL U17
      129 CAPTURE                          VAL R0
      130 CAPTURE                          UPVAL U18
      131 CAPTURE                          UPVAL U19
      132 CAPTURE                          REF R12
      133 CAPTURE                          REF R14
      134 CAPTURE                          REF R13
      135 CAPTURE                          VAL R3
      136 CAPTURE                          UPVAL U20
      137 CAPTURE                          VAL R10
      138 CAPTURE                          UPVAL U21
      139 CAPTURE                          UPVAL U22
      140 SETTABLEKS                       R22 R21 K29 ["OnSelectionChange"]
      142 SETTABLEKS                       R1 R21 K30 ["Expansion"]
      144 SETTABLEKS                       R10 R21 K31 ["RootItems"]
      146 SETTABLEKS                       R11 R21 K32 ["SortOrder"]
      148 GETTABLEKS                       R23 R0 K7 ["CanDisplayComponentAdjustQuery"]
      150 JUMPIFNOT                        R23 ; [+7]
      151 GETUPVAL                         R23 23
      152 GETTABLEKS                       R25 R0 K8 ["Query"]
      154 GETTABLEKS                       R24 R25 K33 ["sortParam"]
      156 GETTABLE                         R22 R23 R24
      157 JUMP                             ; [+1]
      158 LOADNIL                          R22
      159 SETTABLEKS                       R22 R21 K34 ["SortIndex"]
      161 NEWCLOSURE                       R22 P4
      162 CAPTURE                          UPVAL U16
      163 CAPTURE                          VAL R0
      164 SETTABLEKS                       R22 R21 K35 ["OnSortChange"]
      166 LOADN                            R22 53
      167 SETTABLEKS                       R22 R21 K36 ["RowHeight"]
      169 LOADB                            R22 1
      170 SETTABLEKS                       R22 R21 K37 ["UseDeficit"]
      172 DUPCLOSURE                       R22 K38 [PROTO_12]
      173 SETTABLEKS                       R22 R21 K39 ["GetChildren"]
      175 DUPCLOSURE                       R22 K40 [PROTO_13]
      176 SETTABLEKS                       R22 R21 K41 ["GetItemId"]
      178 GETTABLEKS                       R22 R0 K42 ["OnLoadRange"]
      180 SETTABLEKS                       R22 R21 K42 ["OnLoadRange"]
      182 LOADB                            R22 1
      183 SETTABLEKS                       R22 R21 K43 ["Scroll"]
      185 DUPTABLE                         R22 K45 [{"CanvasSize"}]
      186 GETTABLEKS                       R23 R0 K44 ["CanvasSize"]
      188 SETTABLEKS                       R23 R22 K44 ["CanvasSize"]
      190 SETTABLEKS                       R22 R21 K46 ["ScrollProps"]
      192 GETUPVAL                         R23 3
      193 JUMPIFNOT                        R23 ; [+4]
      194 NEWCLOSURE                       R22 P7
      195 CAPTURE                          REF R8
      196 CAPTURE                          VAL R5
      197 JUMP                             ; [+1]
      198 LOADNIL                          R22
      199 SETTABLEKS                       R22 R21 K47 ["RightClick"]
      201 LOADK                            R22 K48 ["modern"]
      202 SETTABLEKS                       R22 R21 K49 ["Variant"]
      204 GETUPVAL                         R23 2
      205 GETTABLEKS                       R22 R23 K21 ["Tag"]
      207 LOADK                            R23 K50 ["X-Fill"]
      208 SETTABLE                         R23 R21 R22
      209 GETUPVAL                         R23 3
      210 JUMPIFNOT                        R23 ; [+2]
      211 MOVE                             R22 R7
      212 JUMP                             ; [+1]
      213 LOADNIL                          R22
      214 SETTABLEKS                       R22 R21 K51 ["ref"]
      216 GETUPVAL                         R23 3
      217 JUMPIFNOT                        R23 ; [+2]
      218 MOVE                             R22 R6
      219 JUMP                             ; [+1]
      220 LOADNIL                          R22
      221 SETTABLEKS                       R22 R21 K52 ["DisableHover"]
      223 CALL                             R19 2 1
      224 SETTABLEKS                       R19 R18 K23 ["Table"]
      226 JUMPIFNOT                        R6 ; [+20]
      227 GETUPVAL                         R20 24
      228 JUMPIFEQKNIL                     R20 ; [+18]
      230 GETUPVAL                         R20 2
      231 GETTABLEKS                       R19 R20 K19 ["createElement"]
      233 GETUPVAL                         R20 25
      234 DUPTABLE                         R21 K58 [{"anchorRef", "isOpen", "cell", "onItemActivated", "onClose"}]
      235 SETTABLEKS                       R8 R21 K53 ["anchorRef"]
      237 SETTABLEKS                       R6 R21 K54 ["isOpen"]
      239 SETTABLEKS                       R4 R21 K55 ["cell"]
      241 SETTABLEKS                       R9 R21 K56 ["onItemActivated"]
      243 SETTABLEKS                       R9 R21 K57 ["onClose"]
      245 CALL                             R19 2 1
      246 JUMP                             ; [+1]
      247 LOADNIL                          R19
      248 SETTABLEKS                       R19 R18 K24 ["Menu"]
      250 CALL                             R15 3 -1
      251 CLOSEUPVALS                      R8
      252 RETURN                           R15 -1

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
       74 GETTABLEKS                       R15 R16 K23 ["Contexts"]
       76 GETTABLEKS                       R14 R15 K24 ["ContextMenuActions"]
       78 CALL                             R13 1 1
       79 GETIMPORT                        R14 K5 [require]
       81 GETTABLEKS                       R17 R0 K16 ["Src"]
       83 GETTABLEKS                       R16 R17 K25 ["Hooks"]
       85 GETTABLEKS                       R15 R16 K26 ["useCellContextActions"]
       87 CALL                             R14 1 1
       88 GETTABLEKS                       R15 R9 K27 ["StudioService"]
       90 GETIMPORT                        R16 K5 [require]
       92 GETTABLEKS                       R19 R0 K16 ["Src"]
       94 GETTABLEKS                       R18 R19 K28 ["Network"]
       96 GETTABLEKS                       R17 R18 K29 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace"]
       98 CALL                             R16 1 1
       99 GETTABLEKS                       R17 R1 K30 ["useContext"]
      101 GETIMPORT                        R18 K5 [require]
      103 GETTABLEKS                       R21 R0 K16 ["Src"]
      105 GETTABLEKS                       R20 R21 K17 ["Util"]
      107 GETTABLEKS                       R19 R20 K31 ["Dialogs"]
      109 CALL                             R18 1 1
      110 GETIMPORT                        R19 K5 [require]
      112 GETTABLEKS                       R22 R0 K16 ["Src"]
      114 GETTABLEKS                       R21 R22 K21 ["SharedFlags"]
      116 GETTABLEKS                       R20 R21 K32 ["getFFlagLuaStartPageTCAgeGatingCheck"]
      118 CALL                             R19 1 1
      119 CALL                             R19 0 1
      120 GETIMPORT                        R20 K5 [require]
      122 GETTABLEKS                       R23 R0 K16 ["Src"]
      124 GETTABLEKS                       R22 R23 K21 ["SharedFlags"]
      126 GETTABLEKS                       R21 R22 K33 ["getFFlagLuaStartPagePlaceSequestrationCheck"]
      128 CALL                             R20 1 1
      129 CALL                             R20 0 1
      130 GETIMPORT                        R21 K5 [require]
      132 GETTABLEKS                       R23 R0 K16 ["Src"]
      134 GETTABLEKS                       R22 R23 K34 ["Types"]
      136 CALL                             R21 1 1
      137 GETTABLEKS                       R22 R5 K35 ["UI"]
      139 GETTABLEKS                       R23 R22 K36 ["TreeTable"]
      141 GETIMPORT                        R24 K5 [require]
      143 GETTABLEKS                       R27 R0 K16 ["Src"]
      145 GETTABLEKS                       R26 R27 K37 ["Components"]
      147 GETTABLEKS                       R25 R26 K38 ["Shimmer"]
      149 CALL                             R24 1 1
      150 JUMPIFNOT                        R12 ; [+12]
      151 GETIMPORT                        R25 K5 [require]
      153 GETTABLEKS                       R29 R0 K16 ["Src"]
      155 GETTABLEKS                       R28 R29 K20 ["Foundation"]
      157 GETTABLEKS                       R27 R28 K37 ["Components"]
      159 GETTABLEKS                       R26 R27 K39 ["ContextMenu"]
      161 CALL                             R25 1 1
      162 JUMP                             ; [+1]
      163 LOADNIL                          R25
      164 GETTABLEKS                       R27 R11 K25 ["Hooks"]
      166 GETTABLEKS                       R26 R27 K40 ["useMeasurableRef"]
      168 GETIMPORT                        R27 K5 [require]
      170 GETTABLEKS                       R30 R0 K16 ["Src"]
      172 GETTABLEKS                       R29 R30 K17 ["Util"]
      174 GETTABLEKS                       R28 R29 K41 ["formatISOTimestamp"]
      176 CALL                             R27 1 1
      177 NEWTABLE                         R28 0 7
      179 DUPTABLE                         R29 K46 [{"Name", "Key", "Width", "ShouldSort"}]
      180 LOADK                            R30 K47 [""]
      181 SETTABLEKS                       R30 R29 K42 ["Name"]
      183 LOADK                            R30 K48 ["Icon"]
      184 SETTABLEKS                       R30 R29 K43 ["Key"]
      186 GETIMPORT                        R30 K51 [UDim.new]
      188 LOADN                            R31 0
      189 LOADN                            R32 64
      190 CALL                             R30 2 1
      191 SETTABLEKS                       R30 R29 K44 ["Width"]
      193 LOADB                            R30 0
      194 SETTABLEKS                       R30 R29 K45 ["ShouldSort"]
      196 DUPTABLE                         R30 K53 [{"Name", "Key", "Width", "ShouldSort", "SortParam"}]
      197 LOADK                            R31 K42 ["Name"]
      198 SETTABLEKS                       R31 R30 K42 ["Name"]
      200 LOADK                            R31 K42 ["Name"]
      201 SETTABLEKS                       R31 R30 K43 ["Key"]
      203 GETIMPORT                        R31 K51 [UDim.new]
      205 LOADK                            R32 K54 [0.25]
      206 LOADN                            R33 192
      207 CALL                             R31 2 1
      208 SETTABLEKS                       R31 R30 K44 ["Width"]
      210 LOADB                            R31 1
      211 SETTABLEKS                       R31 R30 K45 ["ShouldSort"]
      213 LOADK                            R31 K55 ["GameName"]
      214 SETTABLEKS                       R31 R30 K52 ["SortParam"]
      216 DUPTABLE                         R31 K46 [{"Name", "Key", "Width", "ShouldSort"}]
      217 LOADK                            R32 K56 ["Description"]
      218 SETTABLEKS                       R32 R31 K42 ["Name"]
      220 LOADK                            R32 K56 ["Description"]
      221 SETTABLEKS                       R32 R31 K43 ["Key"]
      223 GETIMPORT                        R32 K51 [UDim.new]
      225 LOADK                            R33 K54 [0.25]
      226 LOADN                            R34 0
      227 CALL                             R32 2 1
      228 SETTABLEKS                       R32 R31 K44 ["Width"]
      230 LOADB                            R32 0
      231 SETTABLEKS                       R32 R31 K45 ["ShouldSort"]
      233 DUPTABLE                         R32 K53 [{"Name", "Key", "Width", "ShouldSort", "SortParam"}]
      234 LOADK                            R33 K57 ["Last Edited"]
      235 SETTABLEKS                       R33 R32 K42 ["Name"]
      237 LOADK                            R33 K58 ["Edited"]
      238 SETTABLEKS                       R33 R32 K43 ["Key"]
      240 GETIMPORT                        R33 K51 [UDim.new]
      242 LOADK                            R34 K59 [0.15]
      243 LOADN                            R35 0
      244 CALL                             R33 2 1
      245 SETTABLEKS                       R33 R32 K44 ["Width"]
      247 LOADB                            R33 1
      248 SETTABLEKS                       R33 R32 K45 ["ShouldSort"]
      250 LOADK                            R33 K60 ["LastUpdated"]
      251 SETTABLEKS                       R33 R32 K52 ["SortParam"]
      253 DUPTABLE                         R33 K53 [{"Name", "Key", "Width", "ShouldSort", "SortParam"}]
      254 LOADK                            R34 K61 ["Date Created"]
      255 SETTABLEKS                       R34 R33 K42 ["Name"]
      257 LOADK                            R34 K62 ["Created"]
      258 SETTABLEKS                       R34 R33 K43 ["Key"]
      260 GETIMPORT                        R34 K51 [UDim.new]
      262 LOADK                            R35 K59 [0.15]
      263 LOADN                            R36 0
      264 CALL                             R34 2 1
      265 SETTABLEKS                       R34 R33 K44 ["Width"]
      267 LOADB                            R34 1
      268 SETTABLEKS                       R34 R33 K45 ["ShouldSort"]
      270 LOADK                            R34 K63 ["GameCreated"]
      271 SETTABLEKS                       R34 R33 K52 ["SortParam"]
      273 DUPTABLE                         R34 K46 [{"Name", "Key", "Width", "ShouldSort"}]
      274 LOADK                            R35 K64 ["Playability"]
      275 SETTABLEKS                       R35 R34 K42 ["Name"]
      277 LOADK                            R35 K64 ["Playability"]
      278 SETTABLEKS                       R35 R34 K43 ["Key"]
      280 GETIMPORT                        R35 K51 [UDim.new]
      282 LOADK                            R36 K65 [0.1]
      283 LOADN                            R37 0
      284 CALL                             R35 2 1
      285 SETTABLEKS                       R35 R34 K44 ["Width"]
      287 LOADB                            R35 0
      288 SETTABLEKS                       R35 R34 K45 ["ShouldSort"]
      290 DUPTABLE                         R35 K46 [{"Name", "Key", "Width", "ShouldSort"}]
      291 LOADK                            R36 K66 ["Team Create"]
      292 SETTABLEKS                       R36 R35 K42 ["Name"]
      294 LOADK                            R36 K67 ["TeamCreate"]
      295 SETTABLEKS                       R36 R35 K43 ["Key"]
      297 GETIMPORT                        R36 K51 [UDim.new]
      299 LOADK                            R37 K65 [0.1]
      300 LOADN                            R38 0
      301 CALL                             R36 2 1
      302 SETTABLEKS                       R36 R35 K44 ["Width"]
      304 LOADB                            R36 0
      305 SETTABLEKS                       R36 R35 K45 ["ShouldSort"]
      307 SETLIST                          R28 R29 7 [1]
      309 NEWTABLE                         R29 4 0
      311 LOADN                            R30 2
      312 SETTABLEKS                       R30 R29 K55 ["GameName"]
      314 LOADN                            R30 4
      315 SETTABLEKS                       R30 R29 K60 ["LastUpdated"]
      317 LOADN                            R30 5
      318 SETTABLEKS                       R30 R29 K63 ["GameCreated"]
      320 DUPCLOSURE                       R30 K68 [PROTO_0]
      321 CAPTURE                          VAL R1
      322 CAPTURE                          VAL R24
      323 DUPCLOSURE                       R31 K69 [PROTO_1]
      324 CAPTURE                          VAL R1
      325 CAPTURE                          VAL R24
      326 DUPTABLE                         R32 K71 [{"Icon", "Name", "Description", "Edited", "Created", "Playability", "Type", "TeamCreate"}]
      327 DUPTABLE                         R33 K75 [{"Value", "Schema", "Renderers"}]
      328 LOADK                            R34 K47 [""]
      329 SETTABLEKS                       R34 R33 K72 ["Value"]
      331 DUPTABLE                         R34 K76 [{"Type"}]
      332 LOADK                            R35 K77 ["Placeholder"]
      333 SETTABLEKS                       R35 R34 K70 ["Type"]
      335 SETTABLEKS                       R34 R33 K73 ["Schema"]
      337 DUPTABLE                         R34 K78 [{"Placeholder"}]
      338 SETTABLEKS                       R31 R34 K77 ["Placeholder"]
      340 SETTABLEKS                       R34 R33 K74 ["Renderers"]
      342 SETTABLEKS                       R33 R32 K48 ["Icon"]
      344 DUPTABLE                         R33 K75 [{"Value", "Schema", "Renderers"}]
      345 LOADK                            R34 K47 [""]
      346 SETTABLEKS                       R34 R33 K72 ["Value"]
      348 DUPTABLE                         R34 K76 [{"Type"}]
      349 LOADK                            R35 K77 ["Placeholder"]
      350 SETTABLEKS                       R35 R34 K70 ["Type"]
      352 SETTABLEKS                       R34 R33 K73 ["Schema"]
      354 DUPTABLE                         R34 K78 [{"Placeholder"}]
      355 SETTABLEKS                       R30 R34 K77 ["Placeholder"]
      357 SETTABLEKS                       R34 R33 K74 ["Renderers"]
      359 SETTABLEKS                       R33 R32 K42 ["Name"]
      361 DUPTABLE                         R33 K75 [{"Value", "Schema", "Renderers"}]
      362 LOADK                            R34 K47 [""]
      363 SETTABLEKS                       R34 R33 K72 ["Value"]
      365 DUPTABLE                         R34 K76 [{"Type"}]
      366 LOADK                            R35 K77 ["Placeholder"]
      367 SETTABLEKS                       R35 R34 K70 ["Type"]
      369 SETTABLEKS                       R34 R33 K73 ["Schema"]
      371 DUPTABLE                         R34 K78 [{"Placeholder"}]
      372 SETTABLEKS                       R30 R34 K77 ["Placeholder"]
      374 SETTABLEKS                       R34 R33 K74 ["Renderers"]
      376 SETTABLEKS                       R33 R32 K56 ["Description"]
      378 DUPTABLE                         R33 K75 [{"Value", "Schema", "Renderers"}]
      379 LOADK                            R34 K47 [""]
      380 SETTABLEKS                       R34 R33 K72 ["Value"]
      382 DUPTABLE                         R34 K76 [{"Type"}]
      383 LOADK                            R35 K77 ["Placeholder"]
      384 SETTABLEKS                       R35 R34 K70 ["Type"]
      386 SETTABLEKS                       R34 R33 K73 ["Schema"]
      388 DUPTABLE                         R34 K78 [{"Placeholder"}]
      389 SETTABLEKS                       R30 R34 K77 ["Placeholder"]
      391 SETTABLEKS                       R34 R33 K74 ["Renderers"]
      393 SETTABLEKS                       R33 R32 K58 ["Edited"]
      395 DUPTABLE                         R33 K75 [{"Value", "Schema", "Renderers"}]
      396 LOADK                            R34 K47 [""]
      397 SETTABLEKS                       R34 R33 K72 ["Value"]
      399 DUPTABLE                         R34 K76 [{"Type"}]
      400 LOADK                            R35 K77 ["Placeholder"]
      401 SETTABLEKS                       R35 R34 K70 ["Type"]
      403 SETTABLEKS                       R34 R33 K73 ["Schema"]
      405 DUPTABLE                         R34 K78 [{"Placeholder"}]
      406 SETTABLEKS                       R30 R34 K77 ["Placeholder"]
      408 SETTABLEKS                       R34 R33 K74 ["Renderers"]
      410 SETTABLEKS                       R33 R32 K62 ["Created"]
      412 DUPTABLE                         R33 K75 [{"Value", "Schema", "Renderers"}]
      413 LOADK                            R34 K47 [""]
      414 SETTABLEKS                       R34 R33 K72 ["Value"]
      416 DUPTABLE                         R34 K76 [{"Type"}]
      417 LOADK                            R35 K77 ["Placeholder"]
      418 SETTABLEKS                       R35 R34 K70 ["Type"]
      420 SETTABLEKS                       R34 R33 K73 ["Schema"]
      422 DUPTABLE                         R34 K78 [{"Placeholder"}]
      423 SETTABLEKS                       R30 R34 K77 ["Placeholder"]
      425 SETTABLEKS                       R34 R33 K74 ["Renderers"]
      427 SETTABLEKS                       R33 R32 K64 ["Playability"]
      429 DUPTABLE                         R33 K75 [{"Value", "Schema", "Renderers"}]
      430 LOADK                            R34 K47 [""]
      431 SETTABLEKS                       R34 R33 K72 ["Value"]
      433 DUPTABLE                         R34 K76 [{"Type"}]
      434 LOADK                            R35 K77 ["Placeholder"]
      435 SETTABLEKS                       R35 R34 K70 ["Type"]
      437 SETTABLEKS                       R34 R33 K73 ["Schema"]
      439 DUPTABLE                         R34 K78 [{"Placeholder"}]
      440 SETTABLEKS                       R30 R34 K77 ["Placeholder"]
      442 SETTABLEKS                       R34 R33 K74 ["Renderers"]
      444 SETTABLEKS                       R33 R32 K70 ["Type"]
      446 DUPTABLE                         R33 K75 [{"Value", "Schema", "Renderers"}]
      447 LOADK                            R34 K47 [""]
      448 SETTABLEKS                       R34 R33 K72 ["Value"]
      450 DUPTABLE                         R34 K76 [{"Type"}]
      451 LOADK                            R35 K77 ["Placeholder"]
      452 SETTABLEKS                       R35 R34 K70 ["Type"]
      454 SETTABLEKS                       R34 R33 K73 ["Schema"]
      456 DUPTABLE                         R34 K78 [{"Placeholder"}]
      457 SETTABLEKS                       R30 R34 K77 ["Placeholder"]
      459 SETTABLEKS                       R34 R33 K74 ["Renderers"]
      461 SETTABLEKS                       R33 R32 K67 ["TeamCreate"]
      463 DUPCLOSURE                       R33 K79 [PROTO_2]
      464 DUPCLOSURE                       R34 K80 [PROTO_3]
      465 CAPTURE                          VAL R19
      466 DUPCLOSURE                       R35 K81 [PROTO_4]
      467 CAPTURE                          VAL R20
      468 DUPCLOSURE                       R36 K82 [PROTO_6]
      469 CAPTURE                          VAL R13
      470 CAPTURE                          VAL R14
      471 CAPTURE                          VAL R4
      472 CAPTURE                          VAL R1
      473 CAPTURE                          VAL R25
      474 DUPCLOSURE                       R37 K83 [PROTO_15]
      475 CAPTURE                          VAL R2
      476 CAPTURE                          VAL R6
      477 CAPTURE                          VAL R1
      478 CAPTURE                          VAL R12
      479 CAPTURE                          VAL R26
      480 CAPTURE                          VAL R3
      481 CAPTURE                          VAL R19
      482 CAPTURE                          VAL R8
      483 CAPTURE                          VAL R32
      484 CAPTURE                          VAL R31
      485 CAPTURE                          VAL R27
      486 CAPTURE                          VAL R20
      487 CAPTURE                          VAL R17
      488 CAPTURE                          VAL R18
      489 CAPTURE                          VAL R9
      490 CAPTURE                          VAL R23
      491 CAPTURE                          VAL R28
      492 CAPTURE                          VAL R35
      493 CAPTURE                          VAL R16
      494 CAPTURE                          VAL R15
      495 CAPTURE                          VAL R34
      496 CAPTURE                          VAL R33
      497 CAPTURE                          VAL R10
      498 CAPTURE                          VAL R29
      499 CAPTURE                          VAL R25
      500 CAPTURE                          VAL R36
      501 SETGLOBAL                        R37 K84 ["ExperiencesTable"]
      503 GETGLOBAL                        R37 K84 ["ExperiencesTable"]
      505 RETURN                           R37 1
