PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 GETTABLEKS                       R3 R0 K0 ["ExternalProps"]
        6 GETTABLEKS                       R3 R3 K1 ["ControlPointPositions"]
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 NEWTABLE                         R8 0 0
       13 NEWTABLE                         R9 0 0
       15 GETTABLEKS                       R10 R0 K2 ["MeshEditingContext"]
       17 MOVE                             R12 R6
       18 NAMECALL                         R10 R10 K3 ["getMeshOrigin"]
       20 CALL                             R10 2 1
       21 JUMPIFEQKNIL                     R10 ; [+93]
       23 GETTABLEKS                       R11 R0 K2 ["MeshEditingContext"]
       25 MOVE                             R13 R6
       26 NAMECALL                         R11 R11 K4 ["getMeshPart"]
       28 CALL                             R11 2 1
       29 JUMPIFEQKNIL                     R11 ; [+85]
       31 GETTABLEKS                       R13 R0 K0 ["ExternalProps"]
       33 GETTABLEKS                       R13 R13 K5 ["ControlPointFacingCamera"]
       35 GETTABLE                         R12 R13 R6
       36 GETTABLEKS                       R14 R0 K0 ["ExternalProps"]
       38 GETTABLEKS                       R14 R14 K6 ["SelectedControlPointWeights"]
       40 GETTABLE                         R13 R14 R6
       41 MOVE                             R14 R7
       42 LOADNIL                          R15
       43 LOADNIL                          R16
       44 FORGPREP                         R14
       45 JUMPIFNOT                        R13 ; [+2]
       46 GETTABLE                         R19 R13 R17
       47 JUMP                             ; [+1]
       48 LOADNIL                          R19
       49 JUMPIFNOT                        R12 ; [+2]
       50 GETTABLE                         R20 R12 R17
       51 JUMP                             ; [+1]
       52 LOADB                            R20 0
       53 FASTCALL1                        TOSTRING R17 ; [+3]
       54 MOVE                             R22 R17
       55 GETIMPORT                        R21 K8 [tostring]
       57 CALL                             R21 1 1
       58 GETUPVAL                         R22 0
       59 GETTABLEKS                       R22 R22 K9 ["createElement"]
       61 GETUPVAL                         R23 1
       62 DUPTABLE                         R24 K18 [{"Position", "MeshOrigin", "Transparency", "IsFacingCamera", "Adornee", "Shape", "PointRadius", "SelectedWeight"}]
       63 SETTABLEKS                       R18 R24 K10 ["Position"]
       65 SETTABLEKS                       R10 R24 K11 ["MeshOrigin"]
       67 GETTABLEKS                       R25 R0 K0 ["ExternalProps"]
       69 GETTABLEKS                       R25 R25 K12 ["Transparency"]
       71 SETTABLEKS                       R25 R24 K12 ["Transparency"]
       73 SETTABLEKS                       R20 R24 K13 ["IsFacingCamera"]
       75 SETTABLEKS                       R11 R24 K14 ["Adornee"]
       77 LOADK                            R25 K19 ["Sphere"]
       78 SETTABLEKS                       R25 R24 K15 ["Shape"]
       80 GETUPVAL                         R25 2
       81 GETTABLEKS                       R25 R25 K20 ["ControlPoint"]
       83 GETTABLEKS                       R25 R25 K16 ["PointRadius"]
       85 SETTABLEKS                       R25 R24 K16 ["PointRadius"]
       87 SETTABLEKS                       R19 R24 K17 ["SelectedWeight"]
       89 CALL                             R22 2 1
       90 SETTABLE                         R22 R8 R21
       91 FORGLOOP                         R14 2 ; [-47]
       93 GETUPVAL                         R14 0
       94 GETTABLEKS                       R14 R14 K9 ["createElement"]
       96 LOADK                            R15 K21 ["Folder"]
       97 DUPTABLE                         R16 K23 [{"Archivable"}]
       98 LOADB                            R17 0
       99 SETTABLEKS                       R17 R16 K22 ["Archivable"]
      101 MOVE                             R17 R9
      102 CALL                             R14 3 1
      103 SETTABLE                         R14 R1 R6
      104 GETUPVAL                         R14 0
      105 GETTABLEKS                       R14 R14 K9 ["createElement"]
      107 LOADK                            R15 K21 ["Folder"]
      108 DUPTABLE                         R16 K23 [{"Archivable"}]
      109 LOADB                            R17 0
      110 SETTABLEKS                       R17 R16 K22 ["Archivable"]
      112 MOVE                             R17 R8
      113 CALL                             R14 3 1
      114 SETTABLE                         R14 R2 R6
      115 FORGLOOP                         R3 2 ; [-105]
      117 GETUPVAL                         R3 0
      118 GETTABLEKS                       R3 R3 K9 ["createElement"]
      120 GETUPVAL                         R4 0
      121 GETTABLEKS                       R4 R4 K24 ["Fragment"]
      123 NEWTABLE                         R5 0 0
      125 NEWTABLE                         R6 1 0
      127 GETUPVAL                         R7 2
      128 GETTABLEKS                       R7 R7 K25 ["ControlPointsAdornmentsFolderName"]
      130 GETUPVAL                         R8 3
      131 GETTABLEKS                       R8 R8 K26 ["createPortal"]
      133 GETUPVAL                         R9 0
      134 GETTABLEKS                       R9 R9 K9 ["createElement"]
      136 LOADK                            R10 K21 ["Folder"]
      137 DUPTABLE                         R11 K28 [{"key", "Archivable"}]
      138 GETUPVAL                         R12 2
      139 GETTABLEKS                       R12 R12 K25 ["ControlPointsAdornmentsFolderName"]
      141 SETTABLEKS                       R12 R11 K27 ["key"]
      143 LOADB                            R12 0
      144 SETTABLEKS                       R12 R11 K22 ["Archivable"]
      146 MOVE                             R12 R2
      147 CALL                             R9 3 1
      148 GETTABLEKS                       R10 R0 K0 ["ExternalProps"]
      150 GETTABLEKS                       R10 R10 K29 ["OverrideCoreGuiParent"]
      152 JUMPIF                           R10 ; [+1]
      153 GETUPVAL                         R10 4
      154 CALL                             R8 2 1
      155 SETTABLE                         R8 R6 R7
      156 CALL                             R3 3 -1
      157 RETURN                           R3 -1

PROTO_1:
        0 NEWTABLE                         R2 4 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R0 R1 K2 ["_meshEditingContext"]
       10 LOADNIL                          R2
       11 SETTABLEKS                       R2 R1 K3 ["_setExternalProps"]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K4 ["new"]
       16 GETTABLEKS                       R3 R1 K2 ["_meshEditingContext"]
       18 GETUPVAL                         R4 2
       19 CALL                             R2 2 1
       20 SETTABLEKS                       R2 R1 K5 ["_reactView"]
       22 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["_reactView"]
        2 NAMECALL                         R1 R1 K1 ["cleanup"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["_reactView"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["render"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R5 R1 K0 ["ControlPointPositions"]
        2 GETTABLE                         R4 R5 R2
        3 JUMPIF                           R4 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R5 R0 K1 ["_meshEditingContext"]
        7 MOVE                             R7 R2
        8 NAMECALL                         R5 R5 K2 ["getMeshOriginWorld"]
       10 CALL                             R5 2 1
       11 MOVE                             R6 R4
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 DUPTABLE                         R13 K5 [{"Center", "Selectable"}]
       16 MUL                              R14 R5 R10
       17 SETTABLEKS                       R14 R13 K3 ["Center"]
       19 GETUPVAL                         R14 0
       20 GETTABLEKS                       R14 R14 K6 ["new"]
       22 MOVE                             R15 R2
       23 MOVE                             R16 R9
       24 CALL                             R14 2 1
       25 SETTABLEKS                       R14 R13 K4 ["Selectable"]
       27 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
       29 MOVE                             R12 R3
       30 GETIMPORT                        R11 K9 [table.insert]
       32 CALL                             R11 2 0
       33 FORGLOOP                         R6 2 ; [-19]
       35 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["_lastExternalProps"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+4]
        4 NEWTABLE                         R3 0 0
        6 RETURN                           R3 1
        7 NEWTABLE                         R3 0 0
        9 MOVE                             R6 R2
       10 MOVE                             R7 R1
       11 MOVE                             R8 R3
       12 NAMECALL                         R4 R0 K1 ["_computeSelectables"]
       14 CALL                             R4 4 0
       15 RETURN                           R3 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_lastExternalProps"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+4]
        4 NEWTABLE                         R2 0 0
        6 RETURN                           R2 1
        7 NEWTABLE                         R2 0 0
        9 GETTABLEKS                       R3 R1 K1 ["ControlPointPositions"]
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 MOVE                             R10 R1
       15 MOVE                             R11 R6
       16 MOVE                             R12 R2
       17 NAMECALL                         R8 R0 K2 ["_computeSelectables"]
       19 CALL                             R8 4 0
       20 FORGLOOP                         R3 1 ; [-7]
       22 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["CoreGui"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["MeshWrapperObjects"]
       17 GETTABLEKS                       R3 R3 K11 ["CageMeshWrapperObject"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Util"]
       24 GETTABLEKS                       R4 R4 K13 ["Constants"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K14 ["Views"]
       31 GETTABLEKS                       R5 R5 K15 ["ControlPointView"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K16 ["Parent"]
       38 GETTABLEKS                       R6 R6 K17 ["React"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K16 ["Parent"]
       45 GETTABLEKS                       R7 R7 K18 ["ReactRoblox"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R0 K14 ["Views"]
       52 GETTABLEKS                       R8 R8 K19 ["ReactView"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R0 K12 ["Util"]
       59 GETTABLEKS                       R9 R9 K20 ["Selectable"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K9 [require]
       64 GETTABLEKS                       R10 R0 K21 ["Types"]
       66 CALL                             R9 1 1
       67 NEWTABLE                         R10 8 0
       69 SETTABLEKS                       R10 R10 K22 ["__index"]
       71 DUPCLOSURE                       R11 K23 [PROTO_0]
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R1
       77 DUPCLOSURE                       R12 K24 [PROTO_1]
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R11
       81 SETTABLEKS                       R12 R10 K25 ["new"]
       83 DUPCLOSURE                       R12 K26 [PROTO_2]
       84 SETTABLEKS                       R12 R10 K27 ["cleanup"]
       86 DUPCLOSURE                       R12 K28 [PROTO_3]
       87 SETTABLEKS                       R12 R10 K29 ["render"]
       89 DUPCLOSURE                       R12 K30 [PROTO_4]
       90 CAPTURE                          VAL R8
       91 SETTABLEKS                       R12 R10 K31 ["_computeSelectables"]
       93 DUPCLOSURE                       R12 K32 [PROTO_5]
       94 SETTABLEKS                       R12 R10 K33 ["getSelectablesForMesh"]
       96 DUPCLOSURE                       R12 K34 [PROTO_6]
       97 SETTABLEKS                       R12 R10 K35 ["getSelectables"]
       99 RETURN                           R10 1
