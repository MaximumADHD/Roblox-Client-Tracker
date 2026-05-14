PROTO_0:
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
       69 GETTABLEKS                       R22 R13 K12 ["Parent"]
       71 GETTABLEKS                       R22 R22 K15 ["Name"]
       73 LOADK                            R23 K16 ["_InnerCage"]
       74 CONCAT                           R20 R22 R23
       75 GETTABLEKS                       R21 R13 K17 ["ReferenceOrigin"]
       77 JUMP                             ; [+8]
       78 GETTABLEKS                       R22 R13 K12 ["Parent"]
       80 GETTABLEKS                       R22 R22 K15 ["Name"]
       82 LOADK                            R23 K18 ["_OuterCage"]
       83 CONCAT                           R20 R22 R23
       84 GETTABLEKS                       R21 R13 K19 ["CageOrigin"]
       86 SETTABLE                         R19 R2 R20
       87 GETTABLEKS                       R23 R13 K12 ["Parent"]
       89 GETTABLEKS                       R23 R23 K20 ["CFrame"]
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
      117 GETTABLEKS                       R16 R13 K12 ["Parent"]
      119 GETTABLEKS                       R16 R16 K15 ["Name"]
      121 LOADK                            R17 K18 ["_OuterCage"]
      122 CONCAT                           R15 R16 R17
      123 SETTABLE                         R14 R2 R15
      124 GETTABLEKS                       R17 R13 K12 ["Parent"]
      126 GETTABLEKS                       R17 R17 K20 ["CFrame"]
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
      142 JUMPIFNOT                        R9 ; [+35]
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
      157 MOVE                             R18 R15
      158 GETIMPORT                        R19 K32 [Enum.CollisionFidelity.Default]
      160 GETIMPORT                        R20 K35 [Enum.RenderFidelity.Precise]
      162 NAMECALL                         R16 R16 K36 ["CreateMeshPartAsync"]
      164 CALL                             R16 4 1
      165 SETTABLEKS                       R14 R16 K15 ["Name"]
      167 SETTABLEKS                       R10 R16 K12 ["Parent"]
      169 GETTABLE                         R17 R3 R14
      170 SETTABLEKS                       R17 R16 K20 ["CFrame"]
      172 GETTABLEKS                       R17 R16 K37 ["MeshSize"]
      174 SETTABLEKS                       R17 R16 K38 ["Size"]
      176 FORGLOOP                         R11 2 ; [-21]
      178 FORGLOOP                         R4 2 ; [-150]
      180 RETURN                           R0 0

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
       21 MOVE                             R2 R1
       22 LOADNIL                          R3
       23 LOADNIL                          R4
       24 FORGPREP                         R2
       25 NAMECALL                         R7 R6 K5 ["GetChildren"]
       27 CALL                             R7 1 3
       28 FORGPREP                         R7
       29 LOADK                            R14 K6 ["Folder"]
       30 NAMECALL                         R12 R11 K7 ["IsA"]
       32 CALL                             R12 2 1
       33 JUMPIFNOT                        R12 ; [+7]
       34 GETTABLEKS                       R12 R11 K8 ["Name"]
       36 JUMPIFNOTEQKS                    R12 K9 ["CagesForExport"] ; [+4]
       38 NAMECALL                         R12 R11 K10 ["Destroy"]
       40 CALL                             R12 1 0
       41 FORGLOOP                         R7 2 ; [-13]
       43 FORGLOOP                         R2 2 ; [-19]
       45 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R2 1
        7 LOADK                            R4 K2 ["OnCreateCagesSucceeded"]
        8 NAMECALL                         R2 R2 K3 ["Invoke"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0
       12 GETIMPORT                        R2 K5 [warn]
       14 LOADK                            R3 K6 ["Failed to create cages"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R2 1
        7 LOADK                            R4 K2 ["OnDestroyCagesSucceeded"]
        8 NAMECALL                         R2 R2 K3 ["Invoke"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0
       12 GETIMPORT                        R2 K5 [warn]
       14 LOADK                            R3 K6 ["Failed to destroy cages"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 2 0
        2 LOADK                            R4 K0 ["OnCreateCageParts"]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 NAMECALL                         R2 R0 K1 ["OnInvoke"]
        8 CALL                             R2 3 1
        9 SETTABLEKS                       R2 R1 K0 ["OnCreateCageParts"]
       11 LOADK                            R4 K2 ["OnDestroyCageParts"]
       12 NEWCLOSURE                       R5 P1
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          VAL R0
       15 NAMECALL                         R2 R0 K1 ["OnInvoke"]
       17 CALL                             R2 3 1
       18 SETTABLEKS                       R2 R1 K2 ["OnDestroyCageParts"]
       20 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["InsertService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 DUPCLOSURE                       R2 K5 [PROTO_0]
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 DUPCLOSURE                       R3 K6 [PROTO_1]
       17 CAPTURE                          VAL R0
       18 DUPCLOSURE                       R4 K7 [PROTO_4]
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R3
       21 RETURN                           R4 1
