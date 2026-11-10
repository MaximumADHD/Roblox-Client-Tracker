PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["boxes"] ; [+12]
        2 GETTABLEKS                       R3 R1 K1 ["size"]
        4 FASTCALL1                        TYPEOF R3 ; [+2]
        5 GETIMPORT                        R2 K3 [typeof]
        7 CALL                             R2 1 1
        8 JUMPIFNOTEQKS                    R2 K4 ["Vector3"] ; [+4]
       10 GETTABLEKS                       R2 R1 K1 ["size"]
       12 RETURN                           R2 1
       13 JUMPIFNOTEQKS                    R0 K5 ["spheres"] ; [+15]
       15 GETTABLEKS                       R3 R1 K6 ["radius"]
       17 FASTCALL1                        TYPEOF R3 ; [+2]
       18 GETIMPORT                        R2 K3 [typeof]
       20 CALL                             R2 1 1
       21 JUMPIFNOTEQKS                    R2 K7 ["number"] ; [+7]
       23 LOADK                            R3 K8 [{1, 1, 1}]
       24 GETTABLEKS                       R5 R1 K6 ["radius"]
       26 MULK                             R4 R5 K9 [2]
       27 MUL                              R2 R3 R4
       28 RETURN                           R2 1
       29 JUMPIFNOTEQKS                    R0 K10 ["ellipsoids"] ; [+13]
       31 GETTABLEKS                       R3 R1 K11 ["radii"]
       33 FASTCALL1                        TYPEOF R3 ; [+2]
       34 GETIMPORT                        R2 K3 [typeof]
       36 CALL                             R2 1 1
       37 JUMPIFNOTEQKS                    R2 K4 ["Vector3"] ; [+5]
       39 GETTABLEKS                       R3 R1 K11 ["radii"]
       41 MULK                             R2 R3 K9 [2]
       42 RETURN                           R2 1
       43 LOADNIL                          R2
       44 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["adornee"]
        2 GETTABLEKS                       R3 R0 K2 ["scale"]
        4 ORK                              R2 R3 K1 [{1, 1, 1}]
        5 GETTABLEKS                       R3 R0 K3 ["values"]
        7 JUMPIF                           R3 ; [+1]
        8 RETURN                           R0 0
        9 LOADN                            R3 0
       10 GETTABLEKS                       R4 R0 K3 ["values"]
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 GETUPVAL                         R9 0
       16 GETTABLEKS                       R9 R9 K4 ["MAX_SHAPE_VOLUMES_PER_SET"]
       18 JUMPIFNOTLE                      R9 R3 ; [+17]
       20 GETIMPORT                        R9 K6 [warn]
       22 GETIMPORT                        R10 K9 [string.format]
       24 LOADK                            R11 K10 ["[AssetQualityValidation] drawing only the first %d of %d %s"]
       25 GETUPVAL                         R12 0
       26 GETTABLEKS                       R12 R12 K4 ["MAX_SHAPE_VOLUMES_PER_SET"]
       28 GETTABLEKS                       R14 R0 K3 ["values"]
       30 LENGTH                           R13 R14
       31 GETTABLEKS                       R14 R0 K11 ["shapeType"]
       33 CALL                             R10 4 -1
       34 CALL                             R9 -1 0
       35 RETURN                           R0 0
       36 FASTCALL1                        TYPEOF R8 ; [+3]
       37 MOVE                             R10 R8
       38 GETIMPORT                        R9 K13 [typeof]
       40 CALL                             R9 1 1
       41 JUMPIFNOTEQKS                    R9 K14 ["table"] ; [+133]
       43 GETTABLEKS                       R10 R8 K15 ["center"]
       45 FASTCALL1                        TYPEOF R10 ; [+2]
       46 GETIMPORT                        R9 K13 [typeof]
       48 CALL                             R9 1 1
       49 JUMPIFNOTEQKS                    R9 K16 ["Vector3"] ; [+125]
       51 GETTABLEKS                       R10 R0 K11 ["shapeType"]
       53 JUMPIFNOTEQKS                    R10 K17 ["boxes"] ; [+12]
       55 GETTABLEKS                       R12 R8 K18 ["size"]
       57 FASTCALL1                        TYPEOF R12 ; [+2]
       58 GETIMPORT                        R11 K13 [typeof]
       60 CALL                             R11 1 1
       61 JUMPIFNOTEQKS                    R11 K16 ["Vector3"] ; [+4]
       63 GETTABLEKS                       R9 R8 K18 ["size"]
       65 JUMP                             ; [+31]
       66 JUMPIFNOTEQKS                    R10 K19 ["spheres"] ; [+15]
       68 GETTABLEKS                       R12 R8 K20 ["radius"]
       70 FASTCALL1                        TYPEOF R12 ; [+2]
       71 GETIMPORT                        R11 K13 [typeof]
       73 CALL                             R11 1 1
       74 JUMPIFNOTEQKS                    R11 K21 ["number"] ; [+7]
       76 LOADK                            R11 K1 [{1, 1, 1}]
       77 GETTABLEKS                       R13 R8 K20 ["radius"]
       79 MULK                             R12 R13 K22 [2]
       80 MUL                              R9 R11 R12
       81 JUMP                             ; [+15]
       82 JUMPIFNOTEQKS                    R10 K23 ["ellipsoids"] ; [+13]
       84 GETTABLEKS                       R12 R8 K24 ["radii"]
       86 FASTCALL1                        TYPEOF R12 ; [+2]
       87 GETIMPORT                        R11 K13 [typeof]
       89 CALL                             R11 1 1
       90 JUMPIFNOTEQKS                    R11 K16 ["Vector3"] ; [+5]
       92 GETTABLEKS                       R11 R8 K24 ["radii"]
       94 MULK                             R9 R11 K22 [2]
       95 JUMP                             ; [+1]
       96 LOADNIL                          R9
       97 JUMPIFNOT                        R9 ; [+77]
       98 GETIMPORT                        R10 K27 [Instance.new]
      100 LOADK                            R11 K28 ["Part"]
      101 CALL                             R10 1 1
      102 GETTABLEKS                       R11 R0 K11 ["shapeType"]
      104 SETTABLEKS                       R11 R10 K29 ["Name"]
      106 LOADB                            R11 1
      107 SETTABLEKS                       R11 R10 K30 ["Anchored"]
      109 LOADB                            R11 0
      110 SETTABLEKS                       R11 R10 K31 ["CanCollide"]
      112 LOADB                            R11 0
      113 SETTABLEKS                       R11 R10 K32 ["CanQuery"]
      115 LOADB                            R11 0
      116 SETTABLEKS                       R11 R10 K33 ["CanTouch"]
      118 LOADB                            R11 0
      119 SETTABLEKS                       R11 R10 K34 ["CastShadow"]
      121 LOADB                            R11 1
      122 SETTABLEKS                       R11 R10 K35 ["Locked"]
      124 LOADB                            R11 0
      125 SETTABLEKS                       R11 R10 K36 ["Archivable"]
      127 GETIMPORT                        R11 K40 [Enum.Material.SmoothPlastic]
      129 SETTABLEKS                       R11 R10 K38 ["Material"]
      131 GETTABLEKS                       R11 R0 K41 ["color"]
      133 JUMPIF                           R11 ; [+3]
      134 GETUPVAL                         R11 0
      135 GETTABLEKS                       R11 R11 K42 ["COLOR_BAD"]
      137 SETTABLEKS                       R11 R10 K43 ["Color"]
      139 GETUPVAL                         R11 0
      140 GETTABLEKS                       R11 R11 K44 ["SHAPE_TRANSPARENCY"]
      142 SETTABLEKS                       R11 R10 K45 ["Transparency"]
      144 MUL                              R11 R9 R2
      145 SETTABLEKS                       R11 R10 K46 ["Size"]
      147 GETTABLEKS                       R12 R1 K47 ["CFrame"]
      149 GETIMPORT                        R13 K48 [CFrame.new]
      151 GETTABLEKS                       R15 R8 K15 ["center"]
      153 MUL                              R14 R15 R2
      154 CALL                             R13 1 1
      155 MUL                              R11 R12 R13
      156 SETTABLEKS                       R11 R10 K47 ["CFrame"]
      158 GETTABLEKS                       R11 R0 K11 ["shapeType"]
      160 JUMPIFEQKS                       R11 K17 ["boxes"] ; [+11]
      162 GETIMPORT                        R11 K27 [Instance.new]
      164 LOADK                            R12 K49 ["SpecialMesh"]
      165 CALL                             R11 1 1
      166 GETIMPORT                        R12 K52 [Enum.MeshType.Sphere]
      168 SETTABLEKS                       R12 R11 K50 ["MeshType"]
      170 SETTABLEKS                       R10 R11 K53 ["Parent"]
      172 SETTABLEKS                       R1 R10 K53 ["Parent"]
      174 ADDK                             R3 R3 K54 [1]
      175 FORGLOOP                         R4 2 ; [-161]
      177 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Visualization"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 2 0
       14 DUPTABLE                         R3 K11 [{["boxes"] = True, ["spheres"] = True, ["ellipsoids"] = True}]
       15 SETTABLEKS                       R3 R2 K12 ["SHAPE_TYPES"]
       17 DUPCLOSURE                       R3 K13 [PROTO_0]
       18 DUPCLOSURE                       R4 K14 [PROTO_1]
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R4 R2 K15 ["build"]
       22 RETURN                           R2 1
