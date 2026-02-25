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
       13 GETTABLEKS                       R3 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R3 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["launch"]
       20 LOADK                            R3 K4 ["PlaceAnnotations"]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R1 K12 ["isCli"]
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K7 [require]
       31 GETTABLEKS                       R5 R0 K13 ["Bin"]
       33 GETTABLEKS                       R4 R5 K14 ["Common"]
       35 GETTABLEKS                       R3 R4 K15 ["defineLuaFlags"]
       37 CALL                             R2 1 1
       38 GETIMPORT                        R3 K17 [game]
       40 LOADK                            R5 K18 ["CollaboratorsService"]
       41 NAMECALL                         R3 R3 K19 ["GetService"]
       43 CALL                             R3 2 1
       44 GETIMPORT                        R4 K7 [require]
       46 GETTABLEKS                       R7 R0 K11 ["Src"]
       48 GETTABLEKS                       R6 R7 K20 ["Util"]
       50 GETTABLEKS                       R5 R6 K21 ["Constants"]
       52 CALL                             R4 1 1
       53 NAMECALL                         R6 R3 K22 ["GetCollaboratorsList"]
       55 CALL                             R6 1 1
       56 LENGTH                           R5 R6
       57 JUMPIFNOTEQKN                    R5 K23 [0] ; [+10]
       59 GETIMPORT                        R5 K1 [plugin]
       61 GETTABLEKS                       R7 R4 K24 ["TCEnabledKey"]
       63 LOADB                            R8 0
       64 NAMECALL                         R5 R5 K25 ["SetItem"]
       66 CALL                             R5 3 0
       67 RETURN                           R0 0
       68 GETIMPORT                        R5 K1 [plugin]
       70 GETTABLEKS                       R7 R4 K24 ["TCEnabledKey"]
       72 LOADB                            R8 1
       73 NAMECALL                         R5 R5 K25 ["SetItem"]
       75 CALL                             R5 3 0
       76 GETIMPORT                        R5 K17 [game]
       78 LOADK                            R7 K26 ["RunService"]
       79 NAMECALL                         R5 R5 K19 ["GetService"]
       81 CALL                             R5 2 1
       82 NAMECALL                         R6 R5 K27 ["IsEdit"]
       84 CALL                             R6 1 1
       85 JUMPIF                           R6 ; [+1]
       86 RETURN                           R0 0
       87 GETIMPORT                        R6 K7 [require]
       89 GETTABLEKS                       R8 R0 K8 ["Packages"]
       91 GETTABLEKS                       R7 R8 K28 ["ReactRoblox"]
       93 CALL                             R6 1 1
       94 GETIMPORT                        R7 K7 [require]
       96 GETTABLEKS                       R9 R0 K8 ["Packages"]
       98 GETTABLEKS                       R8 R9 K29 ["React"]
      100 CALL                             R7 1 1
      101 GETIMPORT                        R8 K7 [require]
      103 GETTABLEKS                       R10 R0 K11 ["Src"]
      105 GETTABLEKS                       R9 R10 K30 ["CoreGuiRoot"]
      107 CALL                             R8 1 1
      108 GETIMPORT                        R9 K33 [Instance.new]
      110 LOADK                            R10 K34 ["Folder"]
      111 CALL                             R9 1 1
      112 LOADK                            R10 K4 ["PlaceAnnotations"]
      113 SETTABLEKS                       R10 R9 K35 ["Name"]
      115 GETIMPORT                        R11 K17 [game]
      117 GETTABLEKS                       R10 R11 K36 ["CoreGui"]
      119 SETTABLEKS                       R10 R9 K37 ["Parent"]
      121 GETIMPORT                        R10 K33 [Instance.new]
      123 LOADK                            R11 K38 ["ScreenGui"]
      124 CALL                             R10 1 1
      125 LOADK                            R11 K39 ["PlaceAnnotationsGui"]
      126 SETTABLEKS                       R11 R10 K35 ["Name"]
      128 SETTABLEKS                       R9 R10 K37 ["Parent"]
      130 GETIMPORT                        R11 K43 [Enum.ZIndexBehavior.Sibling]
      132 SETTABLEKS                       R11 R10 K41 ["ZIndexBehavior"]
      134 GETTABLEKS                       R11 R6 K44 ["createRoot"]
      136 MOVE                             R12 R10
      137 CALL                             R11 1 1
      138 GETTABLEKS                       R14 R7 K45 ["createElement"]
      140 MOVE                             R15 R8
      141 DUPTABLE                         R16 K47 [{"Plugin"}]
      142 GETIMPORT                        R17 K1 [plugin]
      144 SETTABLEKS                       R17 R16 K46 ["Plugin"]
      146 CALL                             R14 2 -1
      147 NAMECALL                         R12 R11 K48 ["render"]
      149 CALL                             R12 -1 0
      150 GETIMPORT                        R13 K1 [plugin]
      152 GETTABLEKS                       R12 R13 K49 ["Unloading"]
      154 NEWCLOSURE                       R14 P0
      155 CAPTURE                          REF R11
      156 CAPTURE                          REF R9
      157 NAMECALL                         R12 R12 K50 ["Connect"]
      159 CALL                             R12 2 0
      160 GETIMPORT                        R12 K1 [plugin]
      162 GETTABLEKS                       R14 R4 K51 ["PlaceIdKey"]
      164 GETIMPORT                        R16 K17 [game]
      166 GETTABLEKS                       R15 R16 K52 ["PlaceId"]
      168 NAMECALL                         R12 R12 K25 ["SetItem"]
      170 CALL                             R12 3 0
      171 GETTABLEKS                       R12 R2 K53 ["fflagCOLLAB8949AnnotationsAddPluginTelemetry"]
      173 JUMPIFNOT                        R12 ; [+27]
      174 GETIMPORT                        R12 K1 [plugin]
      176 GETTABLEKS                       R14 R4 K54 ["UniverseIdKey"]
      178 GETIMPORT                        R16 K17 [game]
      180 GETTABLEKS                       R15 R16 K55 ["GameId"]
      182 NAMECALL                         R12 R12 K25 ["SetItem"]
      184 CALL                             R12 3 0
      185 GETIMPORT                        R12 K17 [game]
      187 LOADK                            R14 K56 ["StudioService"]
      188 NAMECALL                         R12 R12 K19 ["GetService"]
      190 CALL                             R12 2 1
      191 GETIMPORT                        R13 K1 [plugin]
      193 GETTABLEKS                       R15 R4 K57 ["UserIdKey"]
      195 NAMECALL                         R16 R12 K58 ["GetUserId"]
      197 CALL                             R16 1 -1
      198 NAMECALL                         R13 R13 K25 ["SetItem"]
      200 CALL                             R13 -1 0
      201 GETIMPORT                        R12 K7 [require]
      203 GETTABLEKS                       R15 R0 K13 ["Bin"]
      205 GETTABLEKS                       R14 R15 K14 ["Common"]
      207 GETTABLEKS                       R13 R14 K59 ["pluginType"]
      209 CALL                             R12 1 1
      210 GETTABLEKS                       R13 R12 K60 ["get"]
      212 CALL                             R13 0 1
      213 GETTABLEKS                       R14 R12 K61 ["Asset"]
      215 JUMPIFEQ                         R13 R14 ; [+3]
      217 CLOSEUPVALS                      R9
      218 RETURN                           R0 0
      219 GETIMPORT                        R13 K7 [require]
      221 GETTABLEKS                       R16 R0 K13 ["Bin"]
      223 GETTABLEKS                       R15 R16 K14 ["Common"]
      225 GETTABLEKS                       R14 R15 K62 ["setup"]
      227 CALL                             R13 1 1
      228 GETIMPORT                        R14 K7 [require]
      230 GETTABLEKS                       R17 R0 K13 ["Bin"]
      232 GETTABLEKS                       R16 R17 K14 ["Common"]
      234 GETTABLEKS                       R15 R16 K63 ["setupMain"]
      236 CALL                             R14 1 1
      237 MOVE                             R15 R13
      238 GETIMPORT                        R16 K1 [plugin]
      240 MOVE                             R17 R14
      241 CALL                             R15 2 0
      242 CLOSEUPVALS                      R9
      243 RETURN                           R0 0
