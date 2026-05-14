PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETIMPORT                        R3 K3 [Enum.CollisionFidelity.Default]
        4 GETIMPORT                        R4 K6 [Enum.RenderFidelity.Precise]
        6 NAMECALL                         R0 R0 K7 ["CreateMeshPartAsync"]
        8 CALL                             R0 4 1
        9 GETUPVAL                         R1 2
       10 SETTABLEKS                       R1 R0 K8 ["Name"]
       12 GETUPVAL                         R1 3
       13 SETTABLEKS                       R1 R0 K9 ["Parent"]
       15 GETUPVAL                         R2 4
       16 GETUPVAL                         R3 2
       17 GETTABLE                         R1 R2 R3
       18 SETTABLEKS                       R1 R0 K10 ["CFrame"]
       20 GETUPVAL                         R1 5
       21 CALL                             R1 0 1
       22 JUMPIFNOT                        R1 ; [+9]
       23 GETUPVAL                         R2 6
       24 GETUPVAL                         R3 2
       25 GETTABLE                         R1 R2 R3
       26 GETTABLEKS                       R3 R0 K11 ["MeshSize"]
       28 MUL                              R2 R3 R1
       29 SETTABLEKS                       R2 R0 K12 ["Size"]
       31 RETURN                           R0 0
       32 GETTABLEKS                       R1 R0 K11 ["MeshSize"]
       34 SETTABLEKS                       R1 R0 K12 ["Size"]
       36 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 JUMPIFNOT                        R0 ; [+10]
        3 GETUPVAL                         R2 0
        4 NAMECALL                         R2 R2 K0 ["Get"]
        6 CALL                             R2 1 1
        7 MOVE                             R1 R2
        8 LENGTH                           R2 R1
        9 JUMPIFNOTEQKN                    R2 K1 [0] ; [+11]
       11 RETURN                           R0 0
       12 JUMP                             ; [+8]
       13 GETIMPORT                        R2 K3 [game]
       15 GETTABLEKS                       R2 R2 K4 ["Workspace"]
       17 NAMECALL                         R2 R2 K5 ["GetChildren"]
       19 CALL                             R2 1 1
       20 MOVE                             R1 R2
       21 NEWTABLE                         R2 0 0
       23 NEWTABLE                         R3 0 0
       25 NEWTABLE                         R4 0 0
       27 MOVE                             R5 R1
       28 LOADNIL                          R6
       29 LOADNIL                          R7
       30 FORGPREP                         R5
       31 NAMECALL                         R10 R9 K6 ["GetDescendants"]
       33 CALL                             R10 1 3
       34 FORGPREP                         R10
       35 LOADK                            R17 K7 ["WrapLayer"]
       36 NAMECALL                         R15 R14 K8 ["IsA"]
       38 CALL                             R15 2 1
       39 JUMPIFNOT                        R15 ; [+86]
       40 NEWTABLE                         R15 0 2
       42 GETTABLEKS                       R16 R14 K9 ["ReferenceMeshId"]
       44 GETTABLEKS                       R17 R14 K10 ["CageMeshId"]
       46 SETLIST                          R15 R16 2 [1]
       48 MOVE                             R16 R15
       49 LOADNIL                          R17
       50 LOADNIL                          R18
       51 FORGPREP                         R16
       52 JUMPIFEQKS                       R20 K11 [""] ; [+71]
       54 JUMPIFEQKNIL                     R20 ; [+69]
       56 GETTABLEKS                       R21 R14 K12 ["Parent"]
       58 JUMPIFEQKNIL                     R21 ; [+65]
       60 GETTABLEKS                       R21 R14 K12 ["Parent"]
       62 LOADK                            R23 K13 ["MeshPart"]
       63 NAMECALL                         R21 R21 K8 ["IsA"]
       65 CALL                             R21 2 1
       66 JUMPIFNOT                        R21 ; [+57]
       67 LOADNIL                          R21
       68 LOADNIL                          R22
       69 JUMPIFNOTEQKN                    R19 K14 [1] ; [+10]
       71 GETTABLEKS                       R23 R14 K12 ["Parent"]
       73 GETTABLEKS                       R23 R23 K15 ["Name"]
       75 LOADK                            R24 K16 ["_InnerCage"]
       76 CONCAT                           R21 R23 R24
       77 GETTABLEKS                       R22 R14 K17 ["ReferenceOrigin"]
       79 JUMP                             ; [+8]
       80 GETTABLEKS                       R23 R14 K12 ["Parent"]
       82 GETTABLEKS                       R23 R23 K15 ["Name"]
       84 LOADK                            R24 K18 ["_OuterCage"]
       85 CONCAT                           R21 R23 R24
       86 GETTABLEKS                       R22 R14 K19 ["CageOrigin"]
       88 SETTABLE                         R20 R2 R21
       89 GETUPVAL                         R23 1
       90 CALL                             R23 0 1
       91 JUMPIFNOT                        R23 ; [+26]
       92 GETTABLEKS                       R24 R14 K12 ["Parent"]
       94 GETTABLEKS                       R24 R24 K20 ["Size"]
       96 GETTABLEKS                       R25 R14 K12 ["Parent"]
       98 GETTABLEKS                       R25 R25 K21 ["MeshSize"]
      100 DIV                              R23 R24 R25
      101 GETIMPORT                        R25 K24 [CFrame.new]
      103 GETTABLEKS                       R27 R22 K25 ["Position"]
      105 MUL                              R26 R27 R23
      106 CALL                             R25 1 1
      107 GETTABLEKS                       R26 R22 K26 ["Rotation"]
      109 MUL                              R24 R25 R26
      110 GETTABLEKS                       R26 R14 K12 ["Parent"]
      112 GETTABLEKS                       R26 R26 K22 ["CFrame"]
      114 MUL                              R25 R26 R24
      115 SETTABLE                         R25 R3 R21
      116 SETTABLE                         R23 R4 R21
      117 JUMP                             ; [+6]
      118 GETTABLEKS                       R24 R14 K12 ["Parent"]
      120 GETTABLEKS                       R24 R24 K22 ["CFrame"]
      122 MUL                              R23 R24 R22
      123 SETTABLE                         R23 R3 R21
      124 FORGLOOP                         R16 2 ; [-73]
      126 LOADK                            R17 K27 ["WrapTarget"]
      127 NAMECALL                         R15 R14 K8 ["IsA"]
      129 CALL                             R15 2 1
      130 JUMPIFNOT                        R15 ; [+72]
      131 GETTABLEKS                       R15 R14 K10 ["CageMeshId"]
      133 JUMPIFEQKS                       R15 K11 [""] ; [+69]
      135 JUMPIFEQKNIL                     R15 ; [+67]
      137 GETTABLEKS                       R16 R14 K12 ["Parent"]
      139 JUMPIFEQKNIL                     R16 ; [+63]
      141 GETTABLEKS                       R16 R14 K12 ["Parent"]
      143 LOADK                            R18 K13 ["MeshPart"]
      144 NAMECALL                         R16 R16 K8 ["IsA"]
      146 CALL                             R16 2 1
      147 JUMPIFNOT                        R16 ; [+55]
      148 GETTABLEKS                       R17 R14 K12 ["Parent"]
      150 GETTABLEKS                       R17 R17 K15 ["Name"]
      152 LOADK                            R18 K18 ["_OuterCage"]
      153 CONCAT                           R16 R17 R18
      154 SETTABLE                         R15 R2 R16
      155 GETUPVAL                         R17 1
      156 CALL                             R17 0 1
      157 JUMPIFNOT                        R17 ; [+37]
      158 GETTABLEKS                       R17 R14 K19 ["CageOrigin"]
      160 GETTABLEKS                       R19 R14 K12 ["Parent"]
      162 GETTABLEKS                       R19 R19 K20 ["Size"]
      164 GETTABLEKS                       R20 R14 K12 ["Parent"]
      166 GETTABLEKS                       R20 R20 K21 ["MeshSize"]
      168 DIV                              R18 R19 R20
      169 GETIMPORT                        R20 K24 [CFrame.new]
      171 GETTABLEKS                       R22 R17 K25 ["Position"]
      173 MUL                              R21 R22 R18
      174 CALL                             R20 1 1
      175 GETTABLEKS                       R21 R17 K26 ["Rotation"]
      177 MUL                              R19 R20 R21
      178 GETTABLEKS                       R21 R14 K12 ["Parent"]
      180 GETTABLEKS                       R21 R21 K22 ["CFrame"]
      182 MUL                              R20 R21 R19
      183 SETTABLE                         R20 R3 R16
      184 GETTABLEKS                       R21 R14 K12 ["Parent"]
      186 GETTABLEKS                       R21 R21 K20 ["Size"]
      188 GETTABLEKS                       R22 R14 K12 ["Parent"]
      190 GETTABLEKS                       R22 R22 K21 ["MeshSize"]
      192 DIV                              R20 R21 R22
      193 SETTABLE                         R20 R4 R16
      194 JUMP                             ; [+8]
      195 GETTABLEKS                       R18 R14 K12 ["Parent"]
      197 GETTABLEKS                       R18 R18 K22 ["CFrame"]
      199 GETTABLEKS                       R19 R14 K19 ["CageOrigin"]
      201 MUL                              R17 R18 R19
      202 SETTABLE                         R17 R3 R16
      203 FORGLOOP                         R10 2 ; [-169]
      205 GETIMPORT                        R11 K29 [next]
      207 MOVE                             R12 R2
      208 CALL                             R11 1 1
      209 JUMPIFNOTEQKNIL                  R11 ; [+2]
      211 LOADB                            R10 0 +1
      212 LOADB                            R10 1
      213 JUMPIFNOT                        R10 ; [+71]
      214 GETIMPORT                        R11 K31 [Instance.new]
      216 LOADK                            R12 K32 ["Folder"]
      217 CALL                             R11 1 1
      218 SETTABLEKS                       R9 R11 K12 ["Parent"]
      220 LOADK                            R12 K33 ["CagesForExport"]
      221 SETTABLEKS                       R12 R11 K15 ["Name"]
      223 MOVE                             R12 R2
      224 LOADNIL                          R13
      225 LOADNIL                          R14
      226 FORGPREP                         R12
      227 GETUPVAL                         R17 2
      228 CALL                             R17 0 1
      229 JUMPIFNOT                        R17 ; [+19]
      230 GETIMPORT                        R17 K35 [pcall]
      232 NEWCLOSURE                       R18 P0
      233 CAPTURE                          UPVAL U3
      234 CAPTURE                          VAL R16
      235 CAPTURE                          VAL R15
      236 CAPTURE                          VAL R11
      237 CAPTURE                          VAL R3
      238 CAPTURE                          UPVAL U1
      239 CAPTURE                          VAL R4
      240 CALL                             R17 1 1
      241 JUMPIF                           R17 ; [+41]
      242 GETIMPORT                        R18 K37 [warn]
      244 LOADK                            R20 K38 ["Failed to create cage for "]
      245 MOVE                             R21 R15
      246 CONCAT                           R19 R20 R21
      247 CALL                             R18 1 0
      248 JUMP                             ; [+34]
      249 GETUPVAL                         R17 3
      250 MOVE                             R19 R16
      251 GETIMPORT                        R20 K42 [Enum.CollisionFidelity.Default]
      253 GETIMPORT                        R21 K45 [Enum.RenderFidelity.Precise]
      255 NAMECALL                         R17 R17 K46 ["CreateMeshPartAsync"]
      257 CALL                             R17 4 1
      258 SETTABLEKS                       R15 R17 K15 ["Name"]
      260 SETTABLEKS                       R11 R17 K12 ["Parent"]
      262 GETTABLE                         R18 R3 R15
      263 SETTABLEKS                       R18 R17 K22 ["CFrame"]
      265 GETUPVAL                         R18 1
      266 CALL                             R18 0 1
      267 JUMPIFNOT                        R18 ; [+11]
      268 GETTABLE                         R19 R4 R15
      269 JUMPIFNOT                        R19 ; [+2]
      270 GETTABLE                         R18 R4 R15
      271 JUMP                             ; [+1]
      272 LOADK                            R18 K47 [{1, 1, 1}]
      273 GETTABLEKS                       R20 R17 K21 ["MeshSize"]
      275 MUL                              R19 R20 R18
      276 SETTABLEKS                       R19 R17 K20 ["Size"]
      278 JUMP                             ; [+4]
      279 GETTABLEKS                       R18 R17 K21 ["MeshSize"]
      281 SETTABLEKS                       R18 R17 K20 ["Size"]
      283 FORGLOOP                         R12 2 ; [-57]
      285 FORGLOOP                         R5 2 ; [-255]
      287 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetExport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagExportPartialCages"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Flags"]
       22 GETTABLEKS                       R3 R3 K9 ["getFFlagStudioExportScaleCages"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K11 [game]
       27 LOADK                            R5 K12 ["Selection"]
       28 NAMECALL                         R3 R3 K13 ["GetService"]
       30 CALL                             R3 2 1
       31 GETIMPORT                        R4 K11 [game]
       33 LOADK                            R6 K14 ["InsertService"]
       34 NAMECALL                         R4 R4 K13 ["GetService"]
       36 CALL                             R4 2 1
       37 DUPCLOSURE                       R5 K15 [PROTO_1]
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R4
       42 RETURN                           R5 1
