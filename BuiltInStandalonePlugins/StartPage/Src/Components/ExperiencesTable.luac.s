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
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["onClose"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R1 R4 K0 ["Cells"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 NEWTABLE                         R6 0 0
       10 GETTABLEKS                       R7 R5 K1 ["IsPlaceholder"]
       12 JUMPIF                           R7 ; [+86]
       13 GETTABLEKS                       R7 R5 K2 ["Children"]
       15 JUMPIFNOT                        R7 ; [+83]
       16 GETTABLEKS                       R7 R5 K2 ["Children"]
       18 LOADNIL                          R8
       19 LOADNIL                          R9
       20 FORGPREP                         R7
       21 GETTABLEKS                       R13 R11 K3 ["Id"]
       23 FASTCALL2K                       ASSERT R13 K4 ; [+4]
       25 LOADK                            R14 K4 ["Child place must have a place ID"]
       26 GETIMPORT                        R12 K6 [assert]
       28 CALL                             R12 2 0
       29 DUPTABLE                         R14 K15 [{"Icon", "Id", "Name", "Description", "Edited", "Created", "Playability", "Type", "UniverseId"}]
       30 DUPTABLE                         R15 K17 [{"Value"}]
       31 LOADK                            R16 K18 [""]
       32 SETTABLEKS                       R16 R15 K16 ["Value"]
       34 SETTABLEKS                       R15 R14 K7 ["Icon"]
       36 DUPTABLE                         R15 K20 [{"Type", "PlaceId"}]
       37 LOADK                            R16 K19 ["PlaceId"]
       38 SETTABLEKS                       R16 R15 K13 ["Type"]
       40 GETTABLEKS                       R16 R11 K3 ["Id"]
       42 SETTABLEKS                       R16 R15 K19 ["PlaceId"]
       44 SETTABLEKS                       R15 R14 K3 ["Id"]
       46 DUPTABLE                         R15 K17 [{"Value"}]
       47 GETTABLEKS                       R16 R11 K8 ["Name"]
       49 SETTABLEKS                       R16 R15 K16 ["Value"]
       51 SETTABLEKS                       R15 R14 K8 ["Name"]
       53 DUPTABLE                         R15 K17 [{"Value"}]
       54 GETTABLEKS                       R16 R11 K9 ["Description"]
       56 SETTABLEKS                       R16 R15 K16 ["Value"]
       58 SETTABLEKS                       R15 R14 K9 ["Description"]
       60 DUPTABLE                         R15 K17 [{"Value"}]
       61 LOADK                            R16 K18 [""]
       62 SETTABLEKS                       R16 R15 K16 ["Value"]
       64 SETTABLEKS                       R15 R14 K10 ["Edited"]
       66 DUPTABLE                         R15 K17 [{"Value"}]
       67 LOADK                            R16 K18 [""]
       68 SETTABLEKS                       R16 R15 K16 ["Value"]
       70 SETTABLEKS                       R15 R14 K11 ["Created"]
       72 DUPTABLE                         R15 K17 [{"Value"}]
       73 LOADK                            R16 K18 [""]
       74 SETTABLEKS                       R16 R15 K16 ["Value"]
       76 SETTABLEKS                       R15 R14 K12 ["Playability"]
       78 DUPTABLE                         R15 K17 [{"Value"}]
       79 LOADK                            R16 K18 [""]
       80 SETTABLEKS                       R16 R15 K16 ["Value"]
       82 SETTABLEKS                       R15 R14 K13 ["Type"]
       84 DUPTABLE                         R15 K17 [{"Value"}]
       85 GETTABLEKS                       R16 R11 K14 ["UniverseId"]
       87 SETTABLEKS                       R16 R15 K16 ["Value"]
       89 SETTABLEKS                       R15 R14 K14 ["UniverseId"]
       91 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
       93 MOVE                             R13 R6
       94 GETIMPORT                        R12 K23 [table.insert]
       96 CALL                             R12 2 0
       97 FORGLOOP                         R7 2 ; [-77]
       99 GETTABLEKS                       R7 R5 K1 ["IsPlaceholder"]
      101 JUMPIFNOT                        R7 ; [+12]
      102 MOVE                             R8 R0
      103 GETUPVAL                         R9 1
      104 GETUPVAL                         R10 2
      105 DUPTABLE                         R11 K25 [{"children"}]
      106 SETTABLEKS                       R6 R11 K24 ["children"]
      108 CALL                             R9 2 -1
      109 FASTCALL                         TABLE_INSERT ; [+2]
      110 GETIMPORT                        R7 K23 [table.insert]
      112 CALL                             R7 -1 0
      113 JUMP                             ; [+190]
      114 DUPTABLE                         R9 K28 [{"Cell", "Icon", "Id", "Name", "Description", "Edited", "Created", "Playability", "Type", "UniverseId", "TeamCreate", "children"}]
      115 GETUPVAL                         R11 3
      116 JUMPIFNOT                        R11 ; [+2]
      117 MOVE                             R10 R5
      118 JUMP                             ; [+1]
      119 LOADNIL                          R10
      120 SETTABLEKS                       R10 R9 K26 ["Cell"]
      122 GETTABLEKS                       R11 R5 K29 ["ImageUrl"]
      124 JUMPIFNOT                        R11 ; [+21]
      125 DUPTABLE                         R10 K31 [{"Value", "LeftIcon"}]
      126 LOADK                            R11 K18 [""]
      127 SETTABLEKS                       R11 R10 K16 ["Value"]
      129 DUPTABLE                         R11 K34 [{"Image", "Size"}]
      130 GETTABLEKS                       R12 R5 K29 ["ImageUrl"]
      132 SETTABLEKS                       R12 R11 K32 ["Image"]
      134 GETIMPORT                        R12 K37 [UDim2.new]
      136 LOADN                            R13 0
      137 LOADN                            R14 32
      138 LOADN                            R15 0
      139 LOADN                            R16 32
      140 CALL                             R12 4 1
      141 SETTABLEKS                       R12 R11 K33 ["Size"]
      143 SETTABLEKS                       R11 R10 K30 ["LeftIcon"]
      145 JUMP                             ; [+39]
      146 GETTABLEKS                       R11 R5 K38 ["NoLoadableImage"]
      148 JUMPIFNOT                        R11 ; [+20]
      149 DUPTABLE                         R10 K31 [{"Value", "LeftIcon"}]
      150 LOADK                            R11 K18 [""]
      151 SETTABLEKS                       R11 R10 K16 ["Value"]
      153 DUPTABLE                         R11 K34 [{"Image", "Size"}]
      154 LOADK                            R12 K39 ["rbxasset://studio_svg_textures/Lua/StartPage/Light/SI-Standard/Placeholder.png"]
      155 SETTABLEKS                       R12 R11 K32 ["Image"]
      157 GETIMPORT                        R12 K37 [UDim2.new]
      159 LOADN                            R13 0
      160 LOADN                            R14 32
      161 LOADN                            R15 0
      162 LOADN                            R16 32
      163 CALL                             R12 4 1
      164 SETTABLEKS                       R12 R11 K33 ["Size"]
      166 SETTABLEKS                       R11 R10 K30 ["LeftIcon"]
      168 JUMP                             ; [+16]
      169 DUPTABLE                         R10 K42 [{"Value", "Schema", "Renderers"}]
      170 LOADK                            R11 K18 [""]
      171 SETTABLEKS                       R11 R10 K16 ["Value"]
      173 DUPTABLE                         R11 K43 [{"Type"}]
      174 LOADK                            R12 K44 ["Placeholder"]
      175 SETTABLEKS                       R12 R11 K13 ["Type"]
      177 SETTABLEKS                       R11 R10 K40 ["Schema"]
      179 DUPTABLE                         R11 K45 [{"Placeholder"}]
      180 GETUPVAL                         R12 4
      181 SETTABLEKS                       R12 R11 K44 ["Placeholder"]
      183 SETTABLEKS                       R11 R10 K41 ["Renderers"]
      185 SETTABLEKS                       R10 R9 K7 ["Icon"]
      187 GETTABLEKS                       R11 R5 K46 ["RootPlaceId"]
      189 JUMPIFNOT                        R11 ; [+9]
      190 DUPTABLE                         R10 K20 [{"Type", "PlaceId"}]
      191 LOADK                            R11 K19 ["PlaceId"]
      192 SETTABLEKS                       R11 R10 K13 ["Type"]
      194 GETTABLEKS                       R11 R5 K46 ["RootPlaceId"]
      196 SETTABLEKS                       R11 R10 K19 ["PlaceId"]
      198 JUMP                             ; [+13]
      199 GETTABLEKS                       R11 R5 K47 ["FilePath"]
      201 JUMPIFNOT                        R11 ; [+9]
      202 DUPTABLE                         R10 K48 [{"Type", "FilePath"}]
      203 LOADK                            R11 K47 ["FilePath"]
      204 SETTABLEKS                       R11 R10 K13 ["Type"]
      206 GETTABLEKS                       R11 R5 K47 ["FilePath"]
      208 SETTABLEKS                       R11 R10 K47 ["FilePath"]
      210 JUMP                             ; [+1]
      211 LOADNIL                          R10
      212 SETTABLEKS                       R10 R9 K3 ["Id"]
      214 DUPTABLE                         R10 K17 [{"Value"}]
      215 GETTABLEKS                       R12 R5 K8 ["Name"]
      217 ORK                              R11 R12 K18 [""]
      218 SETTABLEKS                       R11 R10 K16 ["Value"]
      220 SETTABLEKS                       R10 R9 K8 ["Name"]
      222 DUPTABLE                         R10 K17 [{"Value"}]
      223 GETTABLEKS                       R12 R5 K9 ["Description"]
      225 JUMPIF                           R12 ; [+2]
      226 LOADK                            R11 K18 [""]
      227 JUMP                             ; [+2]
      228 GETTABLEKS                       R11 R5 K9 ["Description"]
      230 SETTABLEKS                       R11 R10 K16 ["Value"]
      232 SETTABLEKS                       R10 R9 K9 ["Description"]
      234 DUPTABLE                         R10 K17 [{"Value"}]
      235 GETTABLEKS                       R12 R5 K49 ["LastViewed"]
      237 JUMPIFNOT                        R12 ; [+6]
      238 GETUPVAL                         R11 5
      239 GETTABLEKS                       R12 R5 K49 ["LastViewed"]
      241 GETUPVAL                         R13 6
      242 CALL                             R11 2 1
      243 JUMP                             ; [+1]
      244 LOADK                            R11 K18 [""]
      245 SETTABLEKS                       R11 R10 K16 ["Value"]
      247 SETTABLEKS                       R10 R9 K10 ["Edited"]
      249 DUPTABLE                         R10 K17 [{"Value"}]
      250 GETUPVAL                         R11 5
      251 GETTABLEKS                       R12 R5 K11 ["Created"]
      253 GETUPVAL                         R13 6
      254 CALL                             R11 2 1
      255 SETTABLEKS                       R11 R10 K16 ["Value"]
      257 SETTABLEKS                       R10 R9 K11 ["Created"]
      259 DUPTABLE                         R10 K17 [{"Value"}]
      260 GETTABLEKS                       R12 R5 K50 ["PrivacyType"]
      262 ORK                              R11 R12 K18 [""]
      263 SETTABLEKS                       R11 R10 K16 ["Value"]
      265 SETTABLEKS                       R10 R9 K12 ["Playability"]
      267 DUPTABLE                         R10 K17 [{"Value"}]
      268 GETTABLEKS                       R12 R5 K51 ["IsGame"]
      270 JUMPIFNOT                        R12 ; [+2]
      271 LOADK                            R11 K52 ["Experience"]
      272 JUMP                             ; [+1]
      273 LOADK                            R11 K53 ["Place"]
      274 SETTABLEKS                       R11 R10 K16 ["Value"]
      276 SETTABLEKS                       R10 R9 K13 ["Type"]
      278 DUPTABLE                         R10 K17 [{"Value"}]
      279 GETTABLEKS                       R11 R5 K3 ["Id"]
      281 SETTABLEKS                       R11 R10 K16 ["Value"]
      283 SETTABLEKS                       R10 R9 K14 ["UniverseId"]
      285 DUPTABLE                         R10 K17 [{"Value"}]
      286 GETTABLEKS                       R12 R5 K54 ["IsTeamCreateEnabled"]
      288 JUMPIFNOT                        R12 ; [+2]
      289 LOADK                            R11 K55 ["Yes"]
      290 JUMP                             ; [+1]
      291 LOADK                            R11 K56 ["No"]
      292 SETTABLEKS                       R11 R10 K16 ["Value"]
      294 SETTABLEKS                       R10 R9 K27 ["TeamCreate"]
      296 SETTABLEKS                       R6 R9 K24 ["children"]
      298 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
      300 MOVE                             R8 R0
      301 GETIMPORT                        R7 K23 [table.insert]
      303 CALL                             R7 2 0
      304 FORGLOOP                         R1 2 ; [-297]
      306 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K1 [next]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 FASTCALL1                        TYPE R1 ; [+3]
        5 MOVE                             R3 R1
        6 GETIMPORT                        R2 K3 [type]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K4 ["number"] ; [+13]
       11 GETUPVAL                         R2 0
       12 GETUPVAL                         R3 1
       13 MOVE                             R4 R1
       14 CALL                             R2 2 1
       15 GETUPVAL                         R3 2
       16 MOVE                             R5 R1
       17 MOVE                             R6 R2
       18 LOADB                            R7 0
       19 NAMECALL                         R3 R3 K5 ["openPlace"]
       21 CALL                             R3 4 0
       22 RETURN                           R0 0
       23 FASTCALL1                        TYPE R1 ; [+3]
       24 MOVE                             R3 R1
       25 GETIMPORT                        R2 K3 [type]
       27 CALL                             R2 1 1
       28 JUMPIFNOTEQKS                    R2 K6 ["string"] ; [+7]
       30 GETUPVAL                         R2 2
       31 MOVE                             R4 R1
       32 LOADB                            R5 0
       33 NAMECALL                         R2 R2 K7 ["openLocalFile"]
       35 CALL                             R2 3 0
       36 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          UPVAL U8
       48 CAPTURE                          UPVAL U9
       49 CAPTURE                          VAL R3
       50 NEWTABLE                         R12 0 1
       52 GETTABLEKS                       R13 R0 K6 ["Cells"]
       54 SETLIST                          R12 R13 1 [1]
       56 CALL                             R10 2 1
       57 LOADNIL                          R11
       58 GETTABLEKS                       R12 R0 K7 ["CanDisplayComponentAdjustQuery"]
       60 JUMPIFNOT                        R12 ; [+11]
       61 GETTABLEKS                       R13 R0 K8 ["Query"]
       63 GETTABLEKS                       R12 R13 K9 ["sortOrder"]
       65 JUMPIFNOTEQKS                    R12 K10 ["Asc"] ; [+4]
       67 GETIMPORT                        R11 K14 [Enum.SortDirection.Descending]
       69 JUMP                             ; [+2]
       70 GETIMPORT                        R11 K16 [Enum.SortDirection.Ascending]
       72 GETUPVAL                         R13 2
       73 GETTABLEKS                       R12 R13 K17 ["createElement"]
       75 LOADK                            R13 K18 ["Frame"]
       76 NEWTABLE                         R14 1 0
       78 GETUPVAL                         R16 2
       79 GETTABLEKS                       R15 R16 K19 ["Tag"]
       81 LOADK                            R16 K20 ["X-Transparent StartPage-TablePadding X-Fill data-testid=--start-page-ExperiencesTable"]
       82 SETTABLE                         R16 R14 R15
       83 DUPTABLE                         R15 K23 [{"Table", "Menu"}]
       84 GETUPVAL                         R17 2
       85 GETTABLEKS                       R16 R17 K17 ["createElement"]
       87 GETUPVAL                         R17 10
       88 NEWTABLE                         R18 32 0
       90 GETUPVAL                         R19 11
       91 SETTABLEKS                       R19 R18 K24 ["Columns"]
       93 NEWCLOSURE                       R19 P2
       94 CAPTURE                          VAL R2
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          VAL R1
       97 SETTABLEKS                       R19 R18 K25 ["OnExpansionChange"]
       99 NEWTABLE                         R19 0 0
      101 SETTABLEKS                       R19 R18 K26 ["Selection"]
      103 NEWCLOSURE                       R19 P3
      104 CAPTURE                          UPVAL U12
      105 CAPTURE                          VAL R10
      106 CAPTURE                          UPVAL U13
      107 SETTABLEKS                       R19 R18 K27 ["OnSelectionChange"]
      109 SETTABLEKS                       R1 R18 K28 ["Expansion"]
      111 SETTABLEKS                       R10 R18 K29 ["RootItems"]
      113 SETTABLEKS                       R11 R18 K30 ["SortOrder"]
      115 GETTABLEKS                       R20 R0 K7 ["CanDisplayComponentAdjustQuery"]
      117 JUMPIFNOT                        R20 ; [+7]
      118 GETUPVAL                         R20 14
      119 GETTABLEKS                       R22 R0 K8 ["Query"]
      121 GETTABLEKS                       R21 R22 K31 ["sortParam"]
      123 GETTABLE                         R19 R20 R21
      124 JUMP                             ; [+1]
      125 LOADNIL                          R19
      126 SETTABLEKS                       R19 R18 K32 ["SortIndex"]
      128 NEWCLOSURE                       R19 P4
      129 CAPTURE                          UPVAL U11
      130 CAPTURE                          VAL R0
      131 SETTABLEKS                       R19 R18 K33 ["OnSortChange"]
      133 LOADN                            R19 53
      134 SETTABLEKS                       R19 R18 K34 ["RowHeight"]
      136 LOADB                            R19 1
      137 SETTABLEKS                       R19 R18 K35 ["UseDeficit"]
      139 DUPCLOSURE                       R19 K36 [PROTO_10]
      140 SETTABLEKS                       R19 R18 K37 ["GetChildren"]
      142 DUPCLOSURE                       R19 K38 [PROTO_11]
      143 SETTABLEKS                       R19 R18 K39 ["GetItemId"]
      145 GETTABLEKS                       R19 R0 K40 ["OnLoadRange"]
      147 SETTABLEKS                       R19 R18 K40 ["OnLoadRange"]
      149 LOADB                            R19 1
      150 SETTABLEKS                       R19 R18 K41 ["Scroll"]
      152 DUPTABLE                         R19 K43 [{"CanvasSize"}]
      153 GETTABLEKS                       R20 R0 K42 ["CanvasSize"]
      155 SETTABLEKS                       R20 R19 K42 ["CanvasSize"]
      157 SETTABLEKS                       R19 R18 K44 ["ScrollProps"]
      159 GETUPVAL                         R20 3
      160 JUMPIFNOT                        R20 ; [+4]
      161 NEWCLOSURE                       R19 P7
      162 CAPTURE                          REF R8
      163 CAPTURE                          VAL R5
      164 JUMP                             ; [+1]
      165 LOADNIL                          R19
      166 SETTABLEKS                       R19 R18 K45 ["RightClick"]
      168 LOADK                            R19 K46 ["modern"]
      169 SETTABLEKS                       R19 R18 K47 ["Variant"]
      171 GETUPVAL                         R20 2
      172 GETTABLEKS                       R19 R20 K19 ["Tag"]
      174 LOADK                            R20 K48 ["X-Fill"]
      175 SETTABLE                         R20 R18 R19
      176 GETUPVAL                         R20 3
      177 JUMPIFNOT                        R20 ; [+2]
      178 MOVE                             R19 R7
      179 JUMP                             ; [+1]
      180 LOADNIL                          R19
      181 SETTABLEKS                       R19 R18 K49 ["ref"]
      183 GETUPVAL                         R20 3
      184 JUMPIFNOT                        R20 ; [+2]
      185 MOVE                             R19 R6
      186 JUMP                             ; [+1]
      187 LOADNIL                          R19
      188 SETTABLEKS                       R19 R18 K50 ["DisableHover"]
      190 CALL                             R16 2 1
      191 SETTABLEKS                       R16 R15 K21 ["Table"]
      193 JUMPIFNOT                        R6 ; [+20]
      194 GETUPVAL                         R17 15
      195 JUMPIFEQKNIL                     R17 ; [+18]
      197 GETUPVAL                         R17 2
      198 GETTABLEKS                       R16 R17 K17 ["createElement"]
      200 GETUPVAL                         R17 16
      201 DUPTABLE                         R18 K56 [{"anchorRef", "isOpen", "cell", "onItemActivated", "onClose"}]
      202 SETTABLEKS                       R8 R18 K51 ["anchorRef"]
      204 SETTABLEKS                       R6 R18 K52 ["isOpen"]
      206 SETTABLEKS                       R4 R18 K53 ["cell"]
      208 SETTABLEKS                       R9 R18 K54 ["onItemActivated"]
      210 SETTABLEKS                       R9 R18 K55 ["onClose"]
      212 CALL                             R16 2 1
      213 JUMP                             ; [+1]
      214 LOADNIL                          R16
      215 SETTABLEKS                       R16 R15 K22 ["Menu"]
      217 CALL                             R12 3 -1
      218 CLOSEUPVALS                      R8
      219 RETURN                           R12 -1

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
       88 GETIMPORT                        R15 K5 [require]
       90 GETTABLEKS                       R17 R0 K16 ["Src"]
       92 GETTABLEKS                       R16 R17 K27 ["Types"]
       94 CALL                             R15 1 1
       95 GETTABLEKS                       R16 R5 K28 ["UI"]
       97 GETTABLEKS                       R17 R16 K29 ["TreeTable"]
       99 GETIMPORT                        R18 K5 [require]
      101 GETTABLEKS                       R21 R0 K16 ["Src"]
      103 GETTABLEKS                       R20 R21 K30 ["Components"]
      105 GETTABLEKS                       R19 R20 K31 ["Shimmer"]
      107 CALL                             R18 1 1
      108 JUMPIFNOT                        R12 ; [+12]
      109 GETIMPORT                        R19 K5 [require]
      111 GETTABLEKS                       R23 R0 K16 ["Src"]
      113 GETTABLEKS                       R22 R23 K20 ["Foundation"]
      115 GETTABLEKS                       R21 R22 K30 ["Components"]
      117 GETTABLEKS                       R20 R21 K32 ["ContextMenu"]
      119 CALL                             R19 1 1
      120 JUMP                             ; [+1]
      121 LOADNIL                          R19
      122 GETTABLEKS                       R21 R11 K25 ["Hooks"]
      124 GETTABLEKS                       R20 R21 K33 ["useMeasurableRef"]
      126 GETIMPORT                        R21 K5 [require]
      128 GETTABLEKS                       R24 R0 K16 ["Src"]
      130 GETTABLEKS                       R23 R24 K17 ["Util"]
      132 GETTABLEKS                       R22 R23 K34 ["formatISOTimestamp"]
      134 CALL                             R21 1 1
      135 NEWTABLE                         R22 0 7
      137 DUPTABLE                         R23 K39 [{"Name", "Key", "Width", "ShouldSort"}]
      138 LOADK                            R24 K40 [""]
      139 SETTABLEKS                       R24 R23 K35 ["Name"]
      141 LOADK                            R24 K41 ["Icon"]
      142 SETTABLEKS                       R24 R23 K36 ["Key"]
      144 GETIMPORT                        R24 K44 [UDim.new]
      146 LOADN                            R25 0
      147 LOADN                            R26 64
      148 CALL                             R24 2 1
      149 SETTABLEKS                       R24 R23 K37 ["Width"]
      151 LOADB                            R24 0
      152 SETTABLEKS                       R24 R23 K38 ["ShouldSort"]
      154 DUPTABLE                         R24 K46 [{"Name", "Key", "Width", "ShouldSort", "SortParam"}]
      155 LOADK                            R25 K35 ["Name"]
      156 SETTABLEKS                       R25 R24 K35 ["Name"]
      158 LOADK                            R25 K35 ["Name"]
      159 SETTABLEKS                       R25 R24 K36 ["Key"]
      161 GETIMPORT                        R25 K44 [UDim.new]
      163 LOADK                            R26 K47 [0.25]
      164 LOADN                            R27 192
      165 CALL                             R25 2 1
      166 SETTABLEKS                       R25 R24 K37 ["Width"]
      168 LOADB                            R25 1
      169 SETTABLEKS                       R25 R24 K38 ["ShouldSort"]
      171 LOADK                            R25 K48 ["GameName"]
      172 SETTABLEKS                       R25 R24 K45 ["SortParam"]
      174 DUPTABLE                         R25 K39 [{"Name", "Key", "Width", "ShouldSort"}]
      175 LOADK                            R26 K49 ["Description"]
      176 SETTABLEKS                       R26 R25 K35 ["Name"]
      178 LOADK                            R26 K49 ["Description"]
      179 SETTABLEKS                       R26 R25 K36 ["Key"]
      181 GETIMPORT                        R26 K44 [UDim.new]
      183 LOADK                            R27 K47 [0.25]
      184 LOADN                            R28 0
      185 CALL                             R26 2 1
      186 SETTABLEKS                       R26 R25 K37 ["Width"]
      188 LOADB                            R26 0
      189 SETTABLEKS                       R26 R25 K38 ["ShouldSort"]
      191 DUPTABLE                         R26 K46 [{"Name", "Key", "Width", "ShouldSort", "SortParam"}]
      192 LOADK                            R27 K50 ["Last Edited"]
      193 SETTABLEKS                       R27 R26 K35 ["Name"]
      195 LOADK                            R27 K51 ["Edited"]
      196 SETTABLEKS                       R27 R26 K36 ["Key"]
      198 GETIMPORT                        R27 K44 [UDim.new]
      200 LOADK                            R28 K52 [0.15]
      201 LOADN                            R29 0
      202 CALL                             R27 2 1
      203 SETTABLEKS                       R27 R26 K37 ["Width"]
      205 LOADB                            R27 1
      206 SETTABLEKS                       R27 R26 K38 ["ShouldSort"]
      208 LOADK                            R27 K53 ["LastUpdated"]
      209 SETTABLEKS                       R27 R26 K45 ["SortParam"]
      211 DUPTABLE                         R27 K46 [{"Name", "Key", "Width", "ShouldSort", "SortParam"}]
      212 LOADK                            R28 K54 ["Date Created"]
      213 SETTABLEKS                       R28 R27 K35 ["Name"]
      215 LOADK                            R28 K55 ["Created"]
      216 SETTABLEKS                       R28 R27 K36 ["Key"]
      218 GETIMPORT                        R28 K44 [UDim.new]
      220 LOADK                            R29 K52 [0.15]
      221 LOADN                            R30 0
      222 CALL                             R28 2 1
      223 SETTABLEKS                       R28 R27 K37 ["Width"]
      225 LOADB                            R28 1
      226 SETTABLEKS                       R28 R27 K38 ["ShouldSort"]
      228 LOADK                            R28 K56 ["GameCreated"]
      229 SETTABLEKS                       R28 R27 K45 ["SortParam"]
      231 DUPTABLE                         R28 K39 [{"Name", "Key", "Width", "ShouldSort"}]
      232 LOADK                            R29 K57 ["Playability"]
      233 SETTABLEKS                       R29 R28 K35 ["Name"]
      235 LOADK                            R29 K57 ["Playability"]
      236 SETTABLEKS                       R29 R28 K36 ["Key"]
      238 GETIMPORT                        R29 K44 [UDim.new]
      240 LOADK                            R30 K58 [0.1]
      241 LOADN                            R31 0
      242 CALL                             R29 2 1
      243 SETTABLEKS                       R29 R28 K37 ["Width"]
      245 LOADB                            R29 0
      246 SETTABLEKS                       R29 R28 K38 ["ShouldSort"]
      248 DUPTABLE                         R29 K39 [{"Name", "Key", "Width", "ShouldSort"}]
      249 LOADK                            R30 K59 ["Team Create"]
      250 SETTABLEKS                       R30 R29 K35 ["Name"]
      252 LOADK                            R30 K60 ["TeamCreate"]
      253 SETTABLEKS                       R30 R29 K36 ["Key"]
      255 GETIMPORT                        R30 K44 [UDim.new]
      257 LOADK                            R31 K58 [0.1]
      258 LOADN                            R32 0
      259 CALL                             R30 2 1
      260 SETTABLEKS                       R30 R29 K37 ["Width"]
      262 LOADB                            R30 0
      263 SETTABLEKS                       R30 R29 K38 ["ShouldSort"]
      265 SETLIST                          R22 R23 7 [1]
      267 NEWTABLE                         R23 4 0
      269 LOADN                            R24 2
      270 SETTABLEKS                       R24 R23 K48 ["GameName"]
      272 LOADN                            R24 4
      273 SETTABLEKS                       R24 R23 K53 ["LastUpdated"]
      275 LOADN                            R24 5
      276 SETTABLEKS                       R24 R23 K56 ["GameCreated"]
      278 DUPCLOSURE                       R24 K61 [PROTO_0]
      279 CAPTURE                          VAL R1
      280 CAPTURE                          VAL R18
      281 DUPCLOSURE                       R25 K62 [PROTO_1]
      282 CAPTURE                          VAL R1
      283 CAPTURE                          VAL R18
      284 DUPTABLE                         R26 K64 [{"Icon", "Name", "Description", "Edited", "Created", "Playability", "Type", "TeamCreate"}]
      285 DUPTABLE                         R27 K68 [{"Value", "Schema", "Renderers"}]
      286 LOADK                            R28 K40 [""]
      287 SETTABLEKS                       R28 R27 K65 ["Value"]
      289 DUPTABLE                         R28 K69 [{"Type"}]
      290 LOADK                            R29 K70 ["Placeholder"]
      291 SETTABLEKS                       R29 R28 K63 ["Type"]
      293 SETTABLEKS                       R28 R27 K66 ["Schema"]
      295 DUPTABLE                         R28 K71 [{"Placeholder"}]
      296 SETTABLEKS                       R25 R28 K70 ["Placeholder"]
      298 SETTABLEKS                       R28 R27 K67 ["Renderers"]
      300 SETTABLEKS                       R27 R26 K41 ["Icon"]
      302 DUPTABLE                         R27 K68 [{"Value", "Schema", "Renderers"}]
      303 LOADK                            R28 K40 [""]
      304 SETTABLEKS                       R28 R27 K65 ["Value"]
      306 DUPTABLE                         R28 K69 [{"Type"}]
      307 LOADK                            R29 K70 ["Placeholder"]
      308 SETTABLEKS                       R29 R28 K63 ["Type"]
      310 SETTABLEKS                       R28 R27 K66 ["Schema"]
      312 DUPTABLE                         R28 K71 [{"Placeholder"}]
      313 SETTABLEKS                       R24 R28 K70 ["Placeholder"]
      315 SETTABLEKS                       R28 R27 K67 ["Renderers"]
      317 SETTABLEKS                       R27 R26 K35 ["Name"]
      319 DUPTABLE                         R27 K68 [{"Value", "Schema", "Renderers"}]
      320 LOADK                            R28 K40 [""]
      321 SETTABLEKS                       R28 R27 K65 ["Value"]
      323 DUPTABLE                         R28 K69 [{"Type"}]
      324 LOADK                            R29 K70 ["Placeholder"]
      325 SETTABLEKS                       R29 R28 K63 ["Type"]
      327 SETTABLEKS                       R28 R27 K66 ["Schema"]
      329 DUPTABLE                         R28 K71 [{"Placeholder"}]
      330 SETTABLEKS                       R24 R28 K70 ["Placeholder"]
      332 SETTABLEKS                       R28 R27 K67 ["Renderers"]
      334 SETTABLEKS                       R27 R26 K49 ["Description"]
      336 DUPTABLE                         R27 K68 [{"Value", "Schema", "Renderers"}]
      337 LOADK                            R28 K40 [""]
      338 SETTABLEKS                       R28 R27 K65 ["Value"]
      340 DUPTABLE                         R28 K69 [{"Type"}]
      341 LOADK                            R29 K70 ["Placeholder"]
      342 SETTABLEKS                       R29 R28 K63 ["Type"]
      344 SETTABLEKS                       R28 R27 K66 ["Schema"]
      346 DUPTABLE                         R28 K71 [{"Placeholder"}]
      347 SETTABLEKS                       R24 R28 K70 ["Placeholder"]
      349 SETTABLEKS                       R28 R27 K67 ["Renderers"]
      351 SETTABLEKS                       R27 R26 K51 ["Edited"]
      353 DUPTABLE                         R27 K68 [{"Value", "Schema", "Renderers"}]
      354 LOADK                            R28 K40 [""]
      355 SETTABLEKS                       R28 R27 K65 ["Value"]
      357 DUPTABLE                         R28 K69 [{"Type"}]
      358 LOADK                            R29 K70 ["Placeholder"]
      359 SETTABLEKS                       R29 R28 K63 ["Type"]
      361 SETTABLEKS                       R28 R27 K66 ["Schema"]
      363 DUPTABLE                         R28 K71 [{"Placeholder"}]
      364 SETTABLEKS                       R24 R28 K70 ["Placeholder"]
      366 SETTABLEKS                       R28 R27 K67 ["Renderers"]
      368 SETTABLEKS                       R27 R26 K55 ["Created"]
      370 DUPTABLE                         R27 K68 [{"Value", "Schema", "Renderers"}]
      371 LOADK                            R28 K40 [""]
      372 SETTABLEKS                       R28 R27 K65 ["Value"]
      374 DUPTABLE                         R28 K69 [{"Type"}]
      375 LOADK                            R29 K70 ["Placeholder"]
      376 SETTABLEKS                       R29 R28 K63 ["Type"]
      378 SETTABLEKS                       R28 R27 K66 ["Schema"]
      380 DUPTABLE                         R28 K71 [{"Placeholder"}]
      381 SETTABLEKS                       R24 R28 K70 ["Placeholder"]
      383 SETTABLEKS                       R28 R27 K67 ["Renderers"]
      385 SETTABLEKS                       R27 R26 K57 ["Playability"]
      387 DUPTABLE                         R27 K68 [{"Value", "Schema", "Renderers"}]
      388 LOADK                            R28 K40 [""]
      389 SETTABLEKS                       R28 R27 K65 ["Value"]
      391 DUPTABLE                         R28 K69 [{"Type"}]
      392 LOADK                            R29 K70 ["Placeholder"]
      393 SETTABLEKS                       R29 R28 K63 ["Type"]
      395 SETTABLEKS                       R28 R27 K66 ["Schema"]
      397 DUPTABLE                         R28 K71 [{"Placeholder"}]
      398 SETTABLEKS                       R24 R28 K70 ["Placeholder"]
      400 SETTABLEKS                       R28 R27 K67 ["Renderers"]
      402 SETTABLEKS                       R27 R26 K63 ["Type"]
      404 DUPTABLE                         R27 K68 [{"Value", "Schema", "Renderers"}]
      405 LOADK                            R28 K40 [""]
      406 SETTABLEKS                       R28 R27 K65 ["Value"]
      408 DUPTABLE                         R28 K69 [{"Type"}]
      409 LOADK                            R29 K70 ["Placeholder"]
      410 SETTABLEKS                       R29 R28 K63 ["Type"]
      412 SETTABLEKS                       R28 R27 K66 ["Schema"]
      414 DUPTABLE                         R28 K71 [{"Placeholder"}]
      415 SETTABLEKS                       R24 R28 K70 ["Placeholder"]
      417 SETTABLEKS                       R28 R27 K67 ["Renderers"]
      419 SETTABLEKS                       R27 R26 K60 ["TeamCreate"]
      421 DUPCLOSURE                       R27 K72 [PROTO_2]
      422 DUPCLOSURE                       R28 K73 [PROTO_4]
      423 CAPTURE                          VAL R13
      424 CAPTURE                          VAL R14
      425 CAPTURE                          VAL R4
      426 CAPTURE                          VAL R1
      427 CAPTURE                          VAL R19
      428 DUPCLOSURE                       R29 K74 [PROTO_13]
      429 CAPTURE                          VAL R2
      430 CAPTURE                          VAL R6
      431 CAPTURE                          VAL R1
      432 CAPTURE                          VAL R12
      433 CAPTURE                          VAL R20
      434 CAPTURE                          VAL R3
      435 CAPTURE                          VAL R8
      436 CAPTURE                          VAL R26
      437 CAPTURE                          VAL R25
      438 CAPTURE                          VAL R21
      439 CAPTURE                          VAL R17
      440 CAPTURE                          VAL R22
      441 CAPTURE                          VAL R27
      442 CAPTURE                          VAL R10
      443 CAPTURE                          VAL R23
      444 CAPTURE                          VAL R19
      445 CAPTURE                          VAL R28
      446 SETGLOBAL                        R29 K75 ["ExperiencesTable"]
      448 GETGLOBAL                        R29 K75 ["ExperiencesTable"]
      450 RETURN                           R29 1
