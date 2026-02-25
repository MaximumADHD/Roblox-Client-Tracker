PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_onFolderChangedCallback"]
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K0 ["_onFolderChangedCallback"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Folder"]
        3 CALL                             R0 1 1
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K4 ["Archivable"]
        7 LOADK                            R1 K5 ["WireframeMeshView"]
        8 SETTABLEKS                       R1 R0 K6 ["Name"]
       10 GETUPVAL                         R1 0
       11 SETTABLEKS                       R1 R0 K7 ["Parent"]
       13 DUPTABLE                         R2 K11 [{"_folder", "_connections", "_wireframeHandleAdornments"}]
       14 SETTABLEKS                       R0 R2 K8 ["_folder"]
       16 NEWTABLE                         R3 0 0
       18 SETTABLEKS                       R3 R2 K9 ["_connections"]
       20 NEWTABLE                         R3 0 0
       22 SETTABLEKS                       R3 R2 K10 ["_wireframeHandleAdornments"]
       24 GETUPVAL                         R3 1
       25 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       27 GETIMPORT                        R1 K13 [setmetatable]
       29 CALL                             R1 2 1
       30 NEWCLOSURE                       R2 P0
       31 CAPTURE                          VAL R1
       32 GETTABLEKS                       R4 R1 K9 ["_connections"]
       34 GETTABLEKS                       R5 R0 K14 ["AncestryChanged"]
       36 MOVE                             R7 R2
       37 NAMECALL                         R5 R5 K15 ["Connect"]
       39 CALL                             R5 2 -1
       40 FASTCALL                         TABLE_INSERT ; [+2]
       41 GETIMPORT                        R3 K18 [table.insert]
       43 CALL                             R3 -1 0
       44 GETTABLEKS                       R4 R1 K9 ["_connections"]
       46 GETTABLEKS                       R5 R0 K19 ["ChildRemoved"]
       48 MOVE                             R7 R2
       49 NAMECALL                         R5 R5 K15 ["Connect"]
       51 CALL                             R5 2 -1
       52 FASTCALL                         TABLE_INSERT ; [+2]
       53 GETIMPORT                        R3 K18 [table.insert]
       55 CALL                             R3 -1 0
       56 RETURN                           R1 1

PROTO_2:
        0 LOADB                            R3 0
        1 GETUPVAL                         R4 0
        2 JUMPIFEQKNIL                     R4 ; [+31]
        4 LOADB                            R3 0
        5 GETUPVAL                         R5 0
        6 GETTABLE                         R4 R5 R0
        7 JUMPIFEQKNIL                     R4 ; [+26]
        9 GETUPVAL                         R6 0
       10 GETTABLE                         R5 R6 R0
       11 FASTCALL2                        VECTOR R1 R2 ; [+5]
       13 MOVE                             R7 R1
       14 MOVE                             R8 R2
       15 GETIMPORT                        R6 K2 [Vector3.new]
       17 CALL                             R6 2 1
       18 GETTABLE                         R4 R5 R6
       19 JUMPIF                           R4 ; [+10]
       20 GETUPVAL                         R6 0
       21 GETTABLE                         R5 R6 R0
       22 FASTCALL2                        VECTOR R2 R1 ; [+5]
       24 MOVE                             R7 R2
       25 MOVE                             R8 R1
       26 GETIMPORT                        R6 K2 [Vector3.new]
       28 CALL                             R6 2 1
       29 GETTABLE                         R4 R5 R6
       30 JUMPIFNOTEQKNIL                  R4 ; [+2]
       32 LOADB                            R3 0 +1
       33 LOADB                            R3 1
       34 RETURN                           R3 1

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["Context"]
        2 NAMECALL                         R2 R2 K1 ["getTriangleIndexData"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R1 K0 ["Context"]
        7 NAMECALL                         R3 R3 K2 ["getVertexData"]
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R4 R1 K0 ["Context"]
       12 NAMECALL                         R4 R4 K3 ["getSegmentationMap"]
       14 CALL                             R4 1 1
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R4
       17 GETTABLEKS                       R6 R1 K4 ["FolderChangedCallback"]
       19 SETTABLEKS                       R6 R0 K5 ["_onFolderChangedCallback"]
       21 JUMPIFEQKNIL                     R2 ; [+3]
       23 JUMPIFNOTEQKNIL                  R3 ; [+2]
       25 RETURN                           R0 0
       26 GETTABLEKS                       R6 R0 K6 ["_wireframeHandleAdornments"]
       28 LOADNIL                          R7
       29 LOADNIL                          R8
       30 FORGPREP                         R6
       31 GETTABLEKS                       R11 R10 K7 ["main"]
       33 NAMECALL                         R11 R11 K8 ["Clear"]
       35 CALL                             R11 1 0
       36 GETTABLEKS                       R11 R10 K9 ["segments"]
       38 NAMECALL                         R11 R11 K8 ["Clear"]
       40 CALL                             R11 1 0
       41 FORGLOOP                         R6 2 ; [-11]
       43 MOVE                             R6 R2
       44 LOADNIL                          R7
       45 LOADNIL                          R8
       46 FORGPREP                         R6
       47 GETTABLEKS                       R11 R1 K10 ["ToolAdornees"]
       49 MOVE                             R13 R9
       50 NAMECALL                         R11 R11 K11 ["getAdornee"]
       52 CALL                             R11 2 1
       53 GETTABLEKS                       R13 R0 K6 ["_wireframeHandleAdornments"]
       55 GETTABLE                         R12 R13 R11
       56 JUMPIFNOTEQKNIL                  R12 ; [+41]
       58 GETIMPORT                        R13 K14 [Instance.new]
       60 LOADK                            R14 K15 ["WireframeHandleAdornment"]
       61 CALL                             R13 1 1
       62 SETTABLEKS                       R11 R13 K16 ["Adornee"]
       64 GETTABLEKS                       R14 R1 K17 ["WireColor"]
       66 SETTABLEKS                       R14 R13 K18 ["Color3"]
       68 GETTABLEKS                       R14 R0 K19 ["_folder"]
       70 SETTABLEKS                       R14 R13 K20 ["Parent"]
       72 GETIMPORT                        R14 K14 [Instance.new]
       74 LOADK                            R15 K15 ["WireframeHandleAdornment"]
       75 CALL                             R14 1 1
       76 SETTABLEKS                       R11 R14 K16 ["Adornee"]
       78 GETTABLEKS                       R15 R1 K21 ["SegmentColor"]
       80 JUMPIF                           R15 ; [+2]
       81 GETTABLEKS                       R15 R1 K17 ["WireColor"]
       83 SETTABLEKS                       R15 R14 K18 ["Color3"]
       85 GETTABLEKS                       R15 R0 K19 ["_folder"]
       87 SETTABLEKS                       R15 R14 K20 ["Parent"]
       89 DUPTABLE                         R15 K22 [{"main", "segments"}]
       90 SETTABLEKS                       R13 R15 K7 ["main"]
       92 SETTABLEKS                       R14 R15 K9 ["segments"]
       94 MOVE                             R12 R15
       95 GETTABLEKS                       R15 R0 K6 ["_wireframeHandleAdornments"]
       97 SETTABLE                         R12 R15 R11
       98 MOVE                             R13 R10
       99 LOADNIL                          R14
      100 LOADNIL                          R15
      101 FORGPREP                         R13
      102 GETUPVAL                         R18 0
      103 LOADNIL                          R19
      104 LOADNIL                          R20
      105 FORGPREP                         R18
      106 GETTABLE                         R24 R17 R21
      107 GETTABLE                         R25 R17 R22
      108 JUMPIFNOTLT                      R24 R25 ; [+3]
      110 GETTABLE                         R23 R17 R21
      111 JUMP                             ; [+1]
      112 GETTABLE                         R23 R17 R22
      113 GETTABLE                         R25 R17 R21
      114 GETTABLE                         R26 R17 R22
      115 JUMPIFNOTLT                      R25 R26 ; [+3]
      117 GETTABLE                         R24 R17 R22
      118 JUMP                             ; [+1]
      119 GETTABLE                         R24 R17 R21
      120 LOADB                            R25 0
      121 JUMPIFEQKNIL                     R4 ; [+28]
      123 LOADB                            R25 0
      124 GETTABLE                         R26 R4 R9
      125 JUMPIFEQKNIL                     R26 ; [+24]
      127 GETTABLE                         R27 R4 R9
      128 FASTCALL2                        VECTOR R23 R24 ; [+5]
      130 MOVE                             R29 R23
      131 MOVE                             R30 R24
      132 GETIMPORT                        R28 K24 [Vector3.new]
      134 CALL                             R28 2 1
      135 GETTABLE                         R26 R27 R28
      136 JUMPIF                           R26 ; [+9]
      137 GETTABLE                         R27 R4 R9
      138 FASTCALL2                        VECTOR R24 R23 ; [+5]
      140 MOVE                             R29 R24
      141 MOVE                             R30 R23
      142 GETIMPORT                        R28 K24 [Vector3.new]
      144 CALL                             R28 2 1
      145 GETTABLE                         R26 R27 R28
      146 JUMPIFNOTEQKNIL                  R26 ; [+2]
      148 LOADB                            R25 0 +1
      149 LOADB                            R25 1
      150 JUMPIFNOT                        R25 ; [+10]
      151 GETTABLEKS                       R25 R12 K9 ["segments"]
      153 GETTABLE                         R28 R3 R9
      154 GETTABLE                         R27 R28 R23
      155 GETTABLE                         R29 R3 R9
      156 GETTABLE                         R28 R29 R24
      157 NAMECALL                         R25 R25 K25 ["AddLine"]
      159 CALL                             R25 3 0
      160 JUMP                             ; [+9]
      161 GETTABLEKS                       R25 R12 K7 ["main"]
      163 GETTABLE                         R28 R3 R9
      164 GETTABLE                         R27 R28 R23
      165 GETTABLE                         R29 R3 R9
      166 GETTABLE                         R28 R29 R24
      167 NAMECALL                         R25 R25 K25 ["AddLine"]
      169 CALL                             R25 3 0
      170 FORGLOOP                         R18 2 ; [-65]
      172 FORGLOOP                         R13 2 ; [-71]
      174 FORGLOOP                         R6 2 ; [-128]
      176 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_connections"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 NAMECALL                         R6 R5 K1 ["Disconnect"]
        7 CALL                             R6 1 0
        8 FORGLOOP                         R1 2 ; [-4]
       10 RETURN                           R0 0

PROTO_5:
        0 NAMECALL                         R1 R0 K0 ["disconnect"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K1 ["_wireframeHandleAdornments"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K2 ["main"]
       10 NAMECALL                         R6 R6 K3 ["Destroy"]
       12 CALL                             R6 1 0
       13 GETTABLEKS                       R6 R5 K4 ["segments"]
       15 NAMECALL                         R6 R6 K3 ["Destroy"]
       17 CALL                             R6 1 0
       18 FORGLOOP                         R1 2 ; [-11]
       20 GETTABLEKS                       R1 R0 K5 ["_folder"]
       22 NAMECALL                         R1 R1 K3 ["Destroy"]
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["LuaMeshEditingModule"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Views"]
       17 GETTABLEKS                       R3 R4 K11 ["DEPRECATED_WireframeMeshView"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K12 ["MeshWrapperObjects"]
       24 GETTABLEKS                       R4 R5 K13 ["CageMeshWrapperObject"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R1 K10 ["Views"]
       31 GETTABLEKS                       R5 R6 K14 ["ToolAdornees"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K15 ["Types"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K9 [require]
       41 GETTABLEKS                       R8 R1 K16 ["Flags"]
       43 GETTABLEKS                       R7 R8 K17 ["getFFlagAvatarPreviewerCageEditingTools"]
       45 CALL                             R6 1 1
       46 NEWTABLE                         R7 8 0
       48 SETTABLEKS                       R7 R7 K18 ["__index"]
       50 NEWTABLE                         R8 0 3
       52 LOADN                            R9 2
       53 LOADN                            R10 3
       54 LOADN                            R11 1
       55 SETLIST                          R8 R9 3 [1]
       57 DUPCLOSURE                       R9 K19 [PROTO_1]
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R7
       60 SETTABLEKS                       R9 R7 K20 ["new"]
       62 DUPCLOSURE                       R9 K21 [PROTO_3]
       63 CAPTURE                          VAL R8
       64 SETTABLEKS                       R9 R7 K22 ["render"]
       66 DUPCLOSURE                       R9 K23 [PROTO_4]
       67 SETTABLEKS                       R9 R7 K24 ["disconnect"]
       69 DUPCLOSURE                       R9 K25 [PROTO_5]
       70 SETTABLEKS                       R9 R7 K26 ["cleanup"]
       72 MOVE                             R10 R6
       73 CALL                             R10 0 1
       74 JUMPIFNOT                        R10 ; [+2]
       75 MOVE                             R9 R7
       76 RETURN                           R9 1
       77 MOVE                             R9 R2
       78 RETURN                           R9 1
