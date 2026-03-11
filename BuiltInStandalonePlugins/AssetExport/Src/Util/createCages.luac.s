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
       20 GETTABLEKS                       R1 R0 K11 ["MeshSize"]
       22 SETTABLEKS                       R1 R0 K12 ["Size"]
       24 RETURN                           R0 0

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
       13 GETIMPORT                        R3 K3 [game]
       15 GETTABLEKS                       R2 R3 K4 ["Workspace"]
       17 NAMECALL                         R2 R2 K5 ["GetChildren"]
       19 CALL                             R2 1 1
       20 MOVE                             R1 R2
       21 NEWTABLE                         R2 0 0
       23 NEWTABLE                         R3 0 0
       25 MOVE                             R4 R1
       26 LOADNIL                          R5
       27 LOADNIL                          R6
       28 FORGPREP                         R4
       29 NAMECALL                         R9 R8 K6 ["GetDescendants"]
       31 CALL                             R9 1 3
       32 FORGPREP                         R9
       33 LOADK                            R16 K7 ["WrapLayer"]
       34 NAMECALL                         R14 R13 K8 ["IsA"]
       36 CALL                             R14 2 1
       37 JUMPIFNOT                        R14 ; [+57]
       38 NEWTABLE                         R14 0 2
       40 GETTABLEKS                       R15 R13 K9 ["ReferenceMeshId"]
       42 GETTABLEKS                       R16 R13 K10 ["CageMeshId"]
       44 SETLIST                          R14 R15 2 [1]
       46 MOVE                             R15 R14
       47 LOADNIL                          R16
       48 LOADNIL                          R17
       49 FORGPREP                         R15
       50 JUMPIFEQKS                       R19 K11 [""] ; [+42]
       52 JUMPIFEQKNIL                     R19 ; [+40]
       54 GETTABLEKS                       R20 R13 K12 ["Parent"]
       56 JUMPIFEQKNIL                     R20 ; [+36]
       58 GETTABLEKS                       R20 R13 K12 ["Parent"]
       60 LOADK                            R22 K13 ["MeshPart"]
       61 NAMECALL                         R20 R20 K8 ["IsA"]
       63 CALL                             R20 2 1
       64 JUMPIFNOT                        R20 ; [+28]
       65 LOADNIL                          R20
       66 LOADNIL                          R21
       67 JUMPIFNOTEQKN                    R18 K14 [1] ; [+10]
       69 GETTABLEKS                       R24 R13 K12 ["Parent"]
       71 GETTABLEKS                       R22 R24 K15 ["Name"]
       73 LOADK                            R23 K16 ["_InnerCage"]
       74 CONCAT                           R20 R22 R23
       75 GETTABLEKS                       R21 R13 K17 ["ReferenceOrigin"]
       77 JUMP                             ; [+8]
       78 GETTABLEKS                       R24 R13 K12 ["Parent"]
       80 GETTABLEKS                       R22 R24 K15 ["Name"]
       82 LOADK                            R23 K18 ["_OuterCage"]
       83 CONCAT                           R20 R22 R23
       84 GETTABLEKS                       R21 R13 K19 ["CageOrigin"]
       86 SETTABLE                         R19 R2 R20
       87 GETTABLEKS                       R24 R13 K12 ["Parent"]
       89 GETTABLEKS                       R23 R24 K20 ["CFrame"]
       91 MUL                              R22 R23 R21
       92 SETTABLE                         R22 R3 R20
       93 FORGLOOP                         R15 2 ; [-44]
       95 LOADK                            R16 K21 ["WrapTarget"]
       96 NAMECALL                         R14 R13 K8 ["IsA"]
       98 CALL                             R14 2 1
       99 JUMPIFNOT                        R14 ; [+32]
      100 GETTABLEKS                       R14 R13 K10 ["CageMeshId"]
      102 JUMPIFEQKS                       R14 K11 [""] ; [+29]
      104 JUMPIFEQKNIL                     R14 ; [+27]
      106 GETTABLEKS                       R15 R13 K12 ["Parent"]
      108 JUMPIFEQKNIL                     R15 ; [+23]
      110 GETTABLEKS                       R15 R13 K12 ["Parent"]
      112 LOADK                            R17 K13 ["MeshPart"]
      113 NAMECALL                         R15 R15 K8 ["IsA"]
      115 CALL                             R15 2 1
      116 JUMPIFNOT                        R15 ; [+15]
      117 GETTABLEKS                       R18 R13 K12 ["Parent"]
      119 GETTABLEKS                       R16 R18 K15 ["Name"]
      121 LOADK                            R17 K18 ["_OuterCage"]
      122 CONCAT                           R15 R16 R17
      123 SETTABLE                         R14 R2 R15
      124 GETTABLEKS                       R18 R13 K12 ["Parent"]
      126 GETTABLEKS                       R17 R18 K20 ["CFrame"]
      128 GETTABLEKS                       R18 R13 K19 ["CageOrigin"]
      130 MUL                              R16 R17 R18
      131 SETTABLE                         R16 R3 R15
      132 FORGLOOP                         R9 2 ; [-100]
      134 GETIMPORT                        R10 K23 [next]
      136 MOVE                             R11 R2
      137 CALL                             R10 1 1
      138 JUMPIFNOTEQKNIL                  R10 ; [+2]
      140 LOADB                            R9 0 +1
      141 LOADB                            R9 1
      142 JUMPIFNOT                        R9 ; [+55]
      143 GETIMPORT                        R10 K26 [Instance.new]
      145 LOADK                            R11 K27 ["Folder"]
      146 CALL                             R10 1 1
      147 SETTABLEKS                       R8 R10 K12 ["Parent"]
      149 LOADK                            R11 K28 ["CagesForExport"]
      150 SETTABLEKS                       R11 R10 K15 ["Name"]
      152 MOVE                             R11 R2
      153 LOADNIL                          R12
      154 LOADNIL                          R13
      155 FORGPREP                         R11
      156 GETUPVAL                         R16 1
      157 CALL                             R16 0 1
      158 JUMPIFNOT                        R16 ; [+17]
      159 GETIMPORT                        R16 K30 [pcall]
      161 NEWCLOSURE                       R17 P0
      162 CAPTURE                          UPVAL U2
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R14
      165 CAPTURE                          VAL R10
      166 CAPTURE                          VAL R3
      167 CALL                             R16 1 1
      168 JUMPIF                           R16 ; [+27]
      169 GETIMPORT                        R17 K32 [warn]
      171 LOADK                            R19 K33 ["Failed to create cage for "]
      172 MOVE                             R20 R14
      173 CONCAT                           R18 R19 R20
      174 CALL                             R17 1 0
      175 JUMP                             ; [+20]
      176 GETUPVAL                         R16 2
      177 MOVE                             R18 R15
      178 GETIMPORT                        R19 K37 [Enum.CollisionFidelity.Default]
      180 GETIMPORT                        R20 K40 [Enum.RenderFidelity.Precise]
      182 NAMECALL                         R16 R16 K41 ["CreateMeshPartAsync"]
      184 CALL                             R16 4 1
      185 SETTABLEKS                       R14 R16 K15 ["Name"]
      187 SETTABLEKS                       R10 R16 K12 ["Parent"]
      189 GETTABLE                         R17 R3 R14
      190 SETTABLEKS                       R17 R16 K20 ["CFrame"]
      192 GETTABLEKS                       R17 R16 K42 ["MeshSize"]
      194 SETTABLEKS                       R17 R16 K43 ["Size"]
      196 FORGLOOP                         R11 2 ; [-41]
      198 FORGLOOP                         R4 2 ; [-170]
      200 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetExport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Flags"]
       13 GETTABLEKS                       R2 R3 K8 ["getFFlagExportPartialCages"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K10 [game]
       18 LOADK                            R4 K11 ["Selection"]
       19 NAMECALL                         R2 R2 K12 ["GetService"]
       21 CALL                             R2 2 1
       22 GETIMPORT                        R3 K10 [game]
       24 LOADK                            R5 K13 ["InsertService"]
       25 NAMECALL                         R3 R3 K12 ["GetService"]
       27 CALL                             R3 2 1
       28 DUPCLOSURE                       R4 K14 [PROTO_1]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R3
       32 RETURN                           R4 1
