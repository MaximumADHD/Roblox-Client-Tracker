PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R0 0
        3 LOADNIL                          R2
        4 NAMECALL                         R0 R0 K0 ["render"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 NAMECALL                         R0 R0 K1 ["unmount"]
       10 CALL                             R0 1 0
       11 LOADNIL                          R0
       12 SETUPVAL                         R0 0
       13 GETUPVAL                         R0 1
       14 JUMPIFNOT                        R0 ; [+6]
       15 GETUPVAL                         R0 1
       16 NAMECALL                         R0 R0 K2 ["Destroy"]
       18 CALL                             R0 1 0
       19 LOADNIL                          R0
       20 SETUPVAL                         R0 1
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["PlaceAnnotations"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R2 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["launch"]
       20 LOADK                            R3 K4 ["PlaceAnnotations"]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R1 K12 ["isCli"]
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K14 [game]
       31 LOADK                            R4 K15 ["CollaboratorsService"]
       32 NAMECALL                         R2 R2 K16 ["GetService"]
       34 CALL                             R2 2 1
       35 GETIMPORT                        R3 K7 [require]
       37 GETTABLEKS                       R4 R0 K11 ["Src"]
       39 GETTABLEKS                       R4 R4 K17 ["Util"]
       41 GETTABLEKS                       R4 R4 K18 ["Constants"]
       43 CALL                             R3 1 1
       44 NAMECALL                         R5 R2 K19 ["GetCollaboratorsList"]
       46 CALL                             R5 1 1
       47 LENGTH                           R4 R5
       48 JUMPIFNOTEQKN                    R4 K20 [0] ; [+10]
       50 GETIMPORT                        R4 K1 [plugin]
       52 GETTABLEKS                       R6 R3 K21 ["TCEnabledKey"]
       54 LOADB                            R7 0
       55 NAMECALL                         R4 R4 K22 ["SetItem"]
       57 CALL                             R4 3 0
       58 RETURN                           R0 0
       59 GETIMPORT                        R4 K1 [plugin]
       61 GETTABLEKS                       R6 R3 K21 ["TCEnabledKey"]
       63 LOADB                            R7 1
       64 NAMECALL                         R4 R4 K22 ["SetItem"]
       66 CALL                             R4 3 0
       67 GETIMPORT                        R4 K14 [game]
       69 LOADK                            R6 K23 ["RunService"]
       70 NAMECALL                         R4 R4 K16 ["GetService"]
       72 CALL                             R4 2 1
       73 NAMECALL                         R5 R4 K24 ["IsEdit"]
       75 CALL                             R5 1 1
       76 JUMPIF                           R5 ; [+1]
       77 RETURN                           R0 0
       78 GETIMPORT                        R5 K7 [require]
       80 GETTABLEKS                       R6 R0 K8 ["Packages"]
       82 GETTABLEKS                       R6 R6 K25 ["ReactRoblox"]
       84 CALL                             R5 1 1
       85 GETIMPORT                        R6 K7 [require]
       87 GETTABLEKS                       R7 R0 K8 ["Packages"]
       89 GETTABLEKS                       R7 R7 K26 ["React"]
       91 CALL                             R6 1 1
       92 GETIMPORT                        R7 K7 [require]
       94 GETTABLEKS                       R8 R0 K11 ["Src"]
       96 GETTABLEKS                       R8 R8 K27 ["CoreGuiRoot"]
       98 CALL                             R7 1 1
       99 GETIMPORT                        R8 K30 [Instance.new]
      101 LOADK                            R9 K31 ["Folder"]
      102 CALL                             R8 1 1
      103 LOADK                            R9 K4 ["PlaceAnnotations"]
      104 SETTABLEKS                       R9 R8 K32 ["Name"]
      106 GETIMPORT                        R9 K14 [game]
      108 GETTABLEKS                       R9 R9 K33 ["CoreGui"]
      110 SETTABLEKS                       R9 R8 K34 ["Parent"]
      112 GETIMPORT                        R9 K30 [Instance.new]
      114 LOADK                            R10 K35 ["ScreenGui"]
      115 CALL                             R9 1 1
      116 LOADK                            R10 K36 ["PlaceAnnotationsGui"]
      117 SETTABLEKS                       R10 R9 K32 ["Name"]
      119 SETTABLEKS                       R8 R9 K34 ["Parent"]
      121 GETIMPORT                        R10 K40 [Enum.ZIndexBehavior.Sibling]
      123 SETTABLEKS                       R10 R9 K38 ["ZIndexBehavior"]
      125 GETTABLEKS                       R10 R5 K41 ["createRoot"]
      127 MOVE                             R11 R9
      128 CALL                             R10 1 1
      129 GETTABLEKS                       R13 R6 K42 ["createElement"]
      131 MOVE                             R14 R7
      132 DUPTABLE                         R15 K44 [{"Plugin"}]
      133 GETIMPORT                        R16 K1 [plugin]
      135 SETTABLEKS                       R16 R15 K43 ["Plugin"]
      137 CALL                             R13 2 -1
      138 NAMECALL                         R11 R10 K45 ["render"]
      140 CALL                             R11 -1 0
      141 GETIMPORT                        R11 K1 [plugin]
      143 GETTABLEKS                       R11 R11 K46 ["Unloading"]
      145 NEWCLOSURE                       R13 P0
      146 CAPTURE                          REF R10
      147 CAPTURE                          REF R8
      148 NAMECALL                         R11 R11 K47 ["Connect"]
      150 CALL                             R11 2 0
      151 GETIMPORT                        R11 K1 [plugin]
      153 GETTABLEKS                       R13 R3 K48 ["PlaceIdKey"]
      155 GETIMPORT                        R14 K14 [game]
      157 GETTABLEKS                       R14 R14 K49 ["PlaceId"]
      159 NAMECALL                         R11 R11 K22 ["SetItem"]
      161 CALL                             R11 3 0
      162 GETIMPORT                        R11 K1 [plugin]
      164 GETTABLEKS                       R13 R3 K50 ["UniverseIdKey"]
      166 GETIMPORT                        R14 K14 [game]
      168 GETTABLEKS                       R14 R14 K51 ["GameId"]
      170 NAMECALL                         R11 R11 K22 ["SetItem"]
      172 CALL                             R11 3 0
      173 GETIMPORT                        R11 K14 [game]
      175 LOADK                            R13 K52 ["StudioService"]
      176 NAMECALL                         R11 R11 K16 ["GetService"]
      178 CALL                             R11 2 1
      179 GETIMPORT                        R12 K1 [plugin]
      181 GETTABLEKS                       R14 R3 K53 ["UserIdKey"]
      183 NAMECALL                         R15 R11 K54 ["GetUserId"]
      185 CALL                             R15 1 -1
      186 NAMECALL                         R12 R12 K22 ["SetItem"]
      188 CALL                             R12 -1 0
      189 GETIMPORT                        R12 K7 [require]
      191 GETTABLEKS                       R13 R0 K55 ["Bin"]
      193 GETTABLEKS                       R13 R13 K56 ["Common"]
      195 GETTABLEKS                       R13 R13 K57 ["pluginType"]
      197 CALL                             R12 1 1
      198 GETTABLEKS                       R13 R12 K58 ["get"]
      200 CALL                             R13 0 1
      201 GETTABLEKS                       R14 R12 K59 ["Asset"]
      203 JUMPIFEQ                         R13 R14 ; [+3]
      205 CLOSEUPVALS                      R8
      206 RETURN                           R0 0
      207 GETIMPORT                        R13 K7 [require]
      209 GETTABLEKS                       R14 R0 K55 ["Bin"]
      211 GETTABLEKS                       R14 R14 K56 ["Common"]
      213 GETTABLEKS                       R14 R14 K60 ["setup"]
      215 CALL                             R13 1 1
      216 GETIMPORT                        R14 K7 [require]
      218 GETTABLEKS                       R15 R0 K55 ["Bin"]
      220 GETTABLEKS                       R15 R15 K56 ["Common"]
      222 GETTABLEKS                       R15 R15 K61 ["setupMain"]
      224 CALL                             R14 1 1
      225 MOVE                             R15 R13
      226 GETIMPORT                        R16 K1 [plugin]
      228 MOVE                             R17 R14
      229 CALL                             R15 2 0
      230 CLOSEUPVALS                      R8
      231 RETURN                           R0 0
