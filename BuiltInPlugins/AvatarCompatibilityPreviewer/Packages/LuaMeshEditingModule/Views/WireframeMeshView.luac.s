PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADB                            R3 0
        3 RETURN                           R3 1
        4 FASTCALL2                        VECTOR R1 R2 ; [+5]
        6 MOVE                             R5 R1
        7 MOVE                             R6 R2
        8 GETIMPORT                        R4 K2 [Vector3.new]
       10 CALL                             R4 2 1
       11 GETTABLE                         R3 R0 R4
       12 JUMPIF                           R3 ; [+9]
       13 FASTCALL2                        VECTOR R2 R1 ; [+5]
       15 MOVE                             R5 R2
       16 MOVE                             R6 R1
       17 GETIMPORT                        R4 K2 [Vector3.new]
       19 CALL                             R4 2 1
       20 GETTABLE                         R3 R0 R4
       21 JUMPIFNOT                        R3 ; [+2]
       22 LOADB                            R3 1
       23 RETURN                           R3 1
       24 LOADB                            R3 0
       25 RETURN                           R3 1

PROTO_1:
        0 DUPTABLE                         R0 K2 [{"Normal", "OnTop"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["useRef"]
        4 LOADNIL                          R2
        5 CALL                             R1 1 1
        6 SETTABLEKS                       R1 R0 K0 ["Normal"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K3 ["useRef"]
       11 LOADNIL                          R2
       12 CALL                             R1 1 1
       13 SETTABLEKS                       R1 R0 K1 ["OnTop"]
       15 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETTABLEKS                       R5 R4 K0 ["Normal"]
        6 GETTABLEKS                       R5 R5 K1 ["current"]
        8 JUMPIFEQKNIL                     R5 ; [+7]
       10 GETTABLEKS                       R5 R4 K2 ["OnTop"]
       12 GETTABLEKS                       R5 R5 K1 ["current"]
       14 JUMPIFNOTEQKNIL                  R5 ; [+2]
       16 RETURN                           R0 0
       17 GETTABLEKS                       R5 R4 K0 ["Normal"]
       19 GETTABLEKS                       R5 R5 K1 ["current"]
       21 NAMECALL                         R5 R5 K3 ["Clear"]
       23 CALL                             R5 1 0
       24 GETTABLEKS                       R5 R4 K2 ["OnTop"]
       26 GETTABLEKS                       R5 R5 K1 ["current"]
       28 NAMECALL                         R5 R5 K3 ["Clear"]
       30 CALL                             R5 1 0
       31 FORGLOOP                         R0 2 ; [-28]
       33 GETUPVAL                         R0 1
       34 GETTABLEKS                       R0 R0 K4 ["TrianglesPerMesh"]
       36 LOADNIL                          R1
       37 LOADNIL                          R2
       38 FORGPREP                         R0
       39 GETUPVAL                         R6 1
       40 GETTABLEKS                       R6 R6 K5 ["TrianglesFacingCamera"]
       42 GETTABLE                         R5 R6 R3
       43 GETUPVAL                         R6 2
       44 LOADNIL                          R7
       45 LOADNIL                          R8
       46 FORGPREP                         R6
       47 GETTABLE                         R12 R4 R9
       48 GETTABLE                         R13 R4 R10
       49 JUMPIFNOTLT                      R12 R13 ; [+3]
       51 GETTABLE                         R11 R4 R9
       52 JUMP                             ; [+1]
       53 GETTABLE                         R11 R4 R10
       54 GETTABLE                         R13 R4 R9
       55 GETTABLE                         R14 R4 R10
       56 JUMPIFNOTLT                      R13 R14 ; [+3]
       58 GETTABLE                         R12 R4 R10
       59 JUMP                             ; [+1]
       60 GETTABLE                         R12 R4 R9
       61 GETUPVAL                         R13 0
       62 GETTABLEKS                       R13 R13 K6 ["Main"]
       64 GETUPVAL                         R15 1
       65 GETTABLEKS                       R15 R15 K7 ["MeshSegmentationMap"]
       67 JUMPIFNOTEQKNIL                  R15 ; [+3]
       69 LOADB                            R14 0
       70 JUMP                             ; [+21]
       71 FASTCALL2                        VECTOR R11 R12 ; [+5]
       73 MOVE                             R18 R11
       74 MOVE                             R19 R12
       75 GETIMPORT                        R17 K10 [Vector3.new]
       77 CALL                             R17 2 1
       78 GETTABLE                         R16 R15 R17
       79 JUMPIF                           R16 ; [+9]
       80 FASTCALL2                        VECTOR R12 R11 ; [+5]
       82 MOVE                             R18 R12
       83 MOVE                             R19 R11
       84 GETIMPORT                        R17 K10 [Vector3.new]
       86 CALL                             R17 2 1
       87 GETTABLE                         R16 R15 R17
       88 JUMPIFNOT                        R16 ; [+2]
       89 LOADB                            R14 1
       90 JUMP                             ; [+1]
       91 LOADB                            R14 0
       92 JUMPIFNOT                        R14 ; [+3]
       93 GETUPVAL                         R14 0
       94 GETTABLEKS                       R13 R14 K11 ["Segment"]
       96 GETUPVAL                         R14 1
       97 GETTABLEKS                       R14 R14 K12 ["SelectedControlPointWeights"]
       99 JUMPIFNOT                        R14 ; [+59]
      100 GETUPVAL                         R15 1
      101 GETTABLEKS                       R15 R15 K12 ["SelectedControlPointWeights"]
      103 GETTABLE                         R14 R15 R11
      104 JUMPIFNOT                        R14 ; [+54]
      105 GETUPVAL                         R15 1
      106 GETTABLEKS                       R15 R15 K12 ["SelectedControlPointWeights"]
      108 GETTABLE                         R14 R15 R12
      109 JUMPIFNOT                        R14 ; [+49]
      110 GETUPVAL                         R16 1
      111 GETTABLEKS                       R16 R16 K12 ["SelectedControlPointWeights"]
      113 GETTABLE                         R15 R16 R11
      114 FASTCALL1                        MATH_ABS R15 ; [+2]
      115 GETIMPORT                        R14 K15 [math.abs]
      117 CALL                             R14 1 1
      118 JUMPIFNOTEQKN                    R14 K16 [1] ; [+15]
      120 GETUPVAL                         R16 1
      121 GETTABLEKS                       R16 R16 K12 ["SelectedControlPointWeights"]
      123 GETTABLE                         R15 R16 R12
      124 FASTCALL1                        MATH_ABS R15 ; [+2]
      125 GETIMPORT                        R14 K15 [math.abs]
      127 CALL                             R14 1 1
      128 JUMPIFNOTEQKN                    R14 K16 [1] ; [+5]
      130 GETUPVAL                         R14 0
      131 GETTABLEKS                       R13 R14 K17 ["Selected"]
      133 JUMP                             ; [+25]
      134 GETUPVAL                         R16 1
      135 GETTABLEKS                       R16 R16 K12 ["SelectedControlPointWeights"]
      137 GETTABLE                         R15 R16 R11
      138 FASTCALL1                        MATH_ABS R15 ; [+2]
      139 GETIMPORT                        R14 K15 [math.abs]
      141 CALL                             R14 1 1
      142 LOADN                            R15 0
      143 JUMPIFNOTLT                      R15 R14 ; [+15]
      145 GETUPVAL                         R16 1
      146 GETTABLEKS                       R16 R16 K12 ["SelectedControlPointWeights"]
      148 GETTABLE                         R15 R16 R12
      149 FASTCALL1                        MATH_ABS R15 ; [+2]
      150 GETIMPORT                        R14 K15 [math.abs]
      152 CALL                             R14 1 1
      153 LOADN                            R15 0
      154 JUMPIFNOTLT                      R15 R14 ; [+4]
      156 GETUPVAL                         R14 0
      157 GETTABLEKS                       R13 R14 K18 ["SelectedNoWeight"]
      159 GETUPVAL                         R15 1
      160 GETTABLEKS                       R15 R15 K19 ["MeshVertexData"]
      162 GETTABLE                         R14 R15 R11
      163 JUMPIFEQKNIL                     R14 ; [+59]
      165 GETUPVAL                         R16 1
      166 GETTABLEKS                       R16 R16 K19 ["MeshVertexData"]
      168 GETTABLE                         R15 R16 R12
      169 JUMPIFEQKNIL                     R15 ; [+53]
      171 SUB                              R16 R14 R15
      172 GETTABLEKS                       R17 R16 K20 ["Magnitude"]
      174 GETUPVAL                         R19 1
      175 GETTABLEKS                       R19 R19 K22 ["ExternalProps"]
      177 GETTABLEKS                       R19 R19 K23 ["PointRadius"]
      179 MULK                             R18 R19 K21 [2]
      180 JUMPIFLE                         R17 R18 ; [+42]
      182 GETTABLEKS                       R17 R16 K24 ["Unit"]
      184 JUMPIFNOT                        R5 ; [+3]
      185 GETTABLEKS                       R18 R13 K2 ["OnTop"]
      187 JUMP                             ; [+2]
      188 GETTABLEKS                       R18 R13 K0 ["Normal"]
      190 GETTABLEKS                       R21 R18 K1 ["current"]
      192 JUMPIFNOTEQKNIL                  R21 ; [+2]
      194 LOADB                            R20 0 +1
      195 LOADB                            R20 1
      196 FASTCALL2K                       ASSERT R20 K25 ; [+4]
      198 LOADK                            R21 K25 ["wireframe ref was nil"]
      199 GETIMPORT                        R19 K27 [assert]
      201 CALL                             R19 2 0
      202 GETUPVAL                         R21 1
      203 GETTABLEKS                       R21 R21 K22 ["ExternalProps"]
      205 GETTABLEKS                       R21 R21 K23 ["PointRadius"]
      207 MUL                              R20 R17 R21
      208 SUB                              R19 R14 R20
      209 GETUPVAL                         R22 1
      210 GETTABLEKS                       R22 R22 K22 ["ExternalProps"]
      212 GETTABLEKS                       R22 R22 K23 ["PointRadius"]
      214 MUL                              R21 R17 R22
      215 ADD                              R20 R15 R21
      216 GETTABLEKS                       R21 R18 K1 ["current"]
      218 MOVE                             R23 R19
      219 MOVE                             R24 R20
      220 NAMECALL                         R21 R21 K28 ["AddLine"]
      222 CALL                             R21 3 0
      223 FORGLOOP                         R6 2 ; [-177]
      225 FORGLOOP                         R0 2 ; [-187]
      227 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["Fragment"]
        6 NEWTABLE                         R5 0 0
        8 NEWTABLE                         R6 2 0
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K0 ["createElement"]
       13 LOADK                            R8 K2 ["WireframeHandleAdornment"]
       14 DUPTABLE                         R9 K10 [{"Adornee", "CFrame", "Color3", "Transparency", "AlwaysOnTop", "ZIndex", "ref"}]
       15 GETUPVAL                         R10 1
       16 GETTABLEKS                       R10 R10 K3 ["Adornee"]
       18 SETTABLEKS                       R10 R9 K3 ["Adornee"]
       20 GETUPVAL                         R10 1
       21 GETTABLEKS                       R10 R10 K11 ["MeshOrigin"]
       23 SETTABLEKS                       R10 R9 K4 ["CFrame"]
       25 SETTABLEKS                       R1 R9 K5 ["Color3"]
       27 GETUPVAL                         R10 1
       28 GETTABLEKS                       R10 R10 K12 ["ExternalProps"]
       30 GETTABLEKS                       R10 R10 K6 ["Transparency"]
       32 SETTABLEKS                       R10 R9 K6 ["Transparency"]
       34 LOADB                            R10 0
       35 SETTABLEKS                       R10 R9 K7 ["AlwaysOnTop"]
       37 LOADN                            R10 1
       38 SETTABLEKS                       R10 R9 K8 ["ZIndex"]
       40 GETTABLEKS                       R10 R2 K13 ["Normal"]
       42 SETTABLEKS                       R10 R9 K9 ["ref"]
       44 CALL                             R7 2 1
       45 SETTABLE                         R7 R6 R0
       46 MOVE                             R8 R0
       47 LOADK                            R9 K14 ["OnTop"]
       48 CONCAT                           R7 R8 R9
       49 GETUPVAL                         R8 0
       50 GETTABLEKS                       R8 R8 K0 ["createElement"]
       52 LOADK                            R9 K2 ["WireframeHandleAdornment"]
       53 DUPTABLE                         R10 K10 [{"Adornee", "CFrame", "Color3", "Transparency", "AlwaysOnTop", "ZIndex", "ref"}]
       54 GETUPVAL                         R11 1
       55 GETTABLEKS                       R11 R11 K3 ["Adornee"]
       57 SETTABLEKS                       R11 R10 K3 ["Adornee"]
       59 GETUPVAL                         R11 1
       60 GETTABLEKS                       R11 R11 K11 ["MeshOrigin"]
       62 SETTABLEKS                       R11 R10 K4 ["CFrame"]
       64 SETTABLEKS                       R1 R10 K5 ["Color3"]
       66 GETUPVAL                         R11 1
       67 GETTABLEKS                       R11 R11 K12 ["ExternalProps"]
       69 GETTABLEKS                       R11 R11 K6 ["Transparency"]
       71 SETTABLEKS                       R11 R10 K6 ["Transparency"]
       73 LOADB                            R11 1
       74 SETTABLEKS                       R11 R10 K7 ["AlwaysOnTop"]
       76 LOADN                            R11 1
       77 SETTABLEKS                       R11 R10 K8 ["ZIndex"]
       79 GETTABLEKS                       R11 R2 K14 ["OnTop"]
       81 SETTABLEKS                       R11 R10 K9 ["ref"]
       83 CALL                             R8 2 1
       84 SETTABLE                         R8 R6 R7
       85 CALL                             R3 3 -1
       86 RETURN                           R3 -1

PROTO_5:
        0 DUPCLOSURE                       R1 K0 [PROTO_1]
        1 CAPTURE                          UPVAL U0
        2 DUPTABLE                         R2 K5 [{"Main", "Segment", "Selected", "SelectedNoWeight"}]
        3 DUPTABLE                         R3 K8 [{"Normal", "OnTop"}]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K9 ["useRef"]
        7 LOADNIL                          R5
        8 CALL                             R4 1 1
        9 SETTABLEKS                       R4 R3 K6 ["Normal"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K9 ["useRef"]
       14 LOADNIL                          R5
       15 CALL                             R4 1 1
       16 SETTABLEKS                       R4 R3 K7 ["OnTop"]
       18 SETTABLEKS                       R3 R2 K1 ["Main"]
       20 DUPTABLE                         R3 K8 [{"Normal", "OnTop"}]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K9 ["useRef"]
       24 LOADNIL                          R5
       25 CALL                             R4 1 1
       26 SETTABLEKS                       R4 R3 K6 ["Normal"]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K9 ["useRef"]
       31 LOADNIL                          R5
       32 CALL                             R4 1 1
       33 SETTABLEKS                       R4 R3 K7 ["OnTop"]
       35 SETTABLEKS                       R3 R2 K2 ["Segment"]
       37 DUPTABLE                         R3 K8 [{"Normal", "OnTop"}]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K9 ["useRef"]
       41 LOADNIL                          R5
       42 CALL                             R4 1 1
       43 SETTABLEKS                       R4 R3 K6 ["Normal"]
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K9 ["useRef"]
       48 LOADNIL                          R5
       49 CALL                             R4 1 1
       50 SETTABLEKS                       R4 R3 K7 ["OnTop"]
       52 SETTABLEKS                       R3 R2 K3 ["Selected"]
       54 DUPTABLE                         R3 K8 [{"Normal", "OnTop"}]
       55 GETUPVAL                         R4 0
       56 GETTABLEKS                       R4 R4 K9 ["useRef"]
       58 LOADNIL                          R5
       59 CALL                             R4 1 1
       60 SETTABLEKS                       R4 R3 K6 ["Normal"]
       62 GETUPVAL                         R4 0
       63 GETTABLEKS                       R4 R4 K9 ["useRef"]
       65 LOADNIL                          R5
       66 CALL                             R4 1 1
       67 SETTABLEKS                       R4 R3 K7 ["OnTop"]
       69 SETTABLEKS                       R3 R2 K4 ["SelectedNoWeight"]
       71 NEWTABLE                         R3 0 0
       73 MOVE                             R4 R2
       74 LOADNIL                          R5
       75 LOADNIL                          R6
       76 FORGPREP                         R4
       77 GETTABLEKS                       R11 R8 K6 ["Normal"]
       79 GETTABLEKS                       R11 R11 K10 ["current"]
       81 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       83 MOVE                             R10 R3
       84 GETIMPORT                        R9 K13 [table.insert]
       86 CALL                             R9 2 0
       87 GETTABLEKS                       R11 R8 K7 ["OnTop"]
       89 GETTABLEKS                       R11 R11 K10 ["current"]
       91 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       93 MOVE                             R10 R3
       94 GETIMPORT                        R9 K13 [table.insert]
       96 CALL                             R9 2 0
       97 FORGLOOP                         R4 2 ; [-21]
       99 GETUPVAL                         R4 0
      100 GETTABLEKS                       R4 R4 K14 ["useCallback"]
      102 NEWCLOSURE                       R5 P1
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U1
      106 NEWTABLE                         R6 0 7
      108 GETTABLEKS                       R7 R0 K15 ["TrianglesPerMesh"]
      110 GETTABLEKS                       R8 R0 K16 ["MeshSegmentationMap"]
      112 GETTABLEKS                       R9 R0 K17 ["MeshVertexData"]
      114 GETTABLEKS                       R10 R0 K18 ["TrianglesFacingCamera"]
      116 GETTABLEKS                       R11 R0 K19 ["SelectedControlPointWeights"]
      118 GETTABLEKS                       R12 R0 K20 ["ExternalProps"]
      120 GETTABLEKS                       R12 R12 K21 ["PointRadius"]
      122 FASTCALL1                        TABLE_UNPACK R3 ; [+3]
      123 MOVE                             R14 R3
      124 GETIMPORT                        R13 K23 [unpack]
      126 CALL                             R13 1 -1
      127 SETLIST                          R6 R7 -1 [1]
      129 CALL                             R4 2 1
      130 GETUPVAL                         R5 0
      131 GETTABLEKS                       R5 R5 K24 ["useEffect"]
      133 NEWCLOSURE                       R6 P2
      134 CAPTURE                          VAL R4
      135 NEWTABLE                         R7 0 1
      137 MOVE                             R8 R4
      138 SETLIST                          R7 R8 1 [1]
      140 CALL                             R5 2 0
      141 NEWCLOSURE                       R5 P3
      142 CAPTURE                          UPVAL U0
      143 CAPTURE                          VAL R0
      144 GETUPVAL                         R6 0
      145 GETTABLEKS                       R6 R6 K25 ["createElement"]
      147 GETUPVAL                         R7 0
      148 GETTABLEKS                       R7 R7 K26 ["Fragment"]
      150 NEWTABLE                         R8 0 0
      152 DUPTABLE                         R9 K5 [{"Main", "Segment", "Selected", "SelectedNoWeight"}]
      153 MOVE                             R10 R5
      154 LOADK                            R11 K1 ["Main"]
      155 GETTABLEKS                       R12 R0 K20 ["ExternalProps"]
      157 GETTABLEKS                       R12 R12 K27 ["WireColor"]
      159 GETTABLEKS                       R13 R2 K1 ["Main"]
      161 CALL                             R10 3 1
      162 SETTABLEKS                       R10 R9 K1 ["Main"]
      164 MOVE                             R10 R5
      165 LOADK                            R11 K2 ["Segment"]
      166 GETTABLEKS                       R12 R0 K20 ["ExternalProps"]
      168 GETTABLEKS                       R12 R12 K28 ["SegmentColor"]
      170 JUMPIF                           R12 ; [+4]
      171 GETTABLEKS                       R12 R0 K20 ["ExternalProps"]
      173 GETTABLEKS                       R12 R12 K27 ["WireColor"]
      175 GETTABLEKS                       R13 R2 K2 ["Segment"]
      177 CALL                             R10 3 1
      178 SETTABLEKS                       R10 R9 K2 ["Segment"]
      180 MOVE                             R10 R5
      181 LOADK                            R11 K3 ["Selected"]
      182 GETTABLEKS                       R12 R0 K20 ["ExternalProps"]
      184 GETTABLEKS                       R12 R12 K29 ["SelectedColor"]
      186 GETTABLEKS                       R13 R2 K3 ["Selected"]
      188 CALL                             R10 3 1
      189 SETTABLEKS                       R10 R9 K3 ["Selected"]
      191 MOVE                             R10 R5
      192 LOADK                            R11 K4 ["SelectedNoWeight"]
      193 GETTABLEKS                       R12 R0 K20 ["ExternalProps"]
      195 GETTABLEKS                       R12 R12 K30 ["SelectedNoWeightColor"]
      197 JUMPIF                           R12 ; [+4]
      198 GETTABLEKS                       R12 R0 K20 ["ExternalProps"]
      200 GETTABLEKS                       R12 R12 K29 ["SelectedColor"]
      202 GETTABLEKS                       R13 R2 K4 ["SelectedNoWeight"]
      204 CALL                             R10 3 1
      205 SETTABLEKS                       R10 R9 K4 ["SelectedNoWeight"]
      207 CALL                             R6 3 -1
      208 RETURN                           R6 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["MeshEditingContext"]
        2 NAMECALL                         R1 R1 K1 ["getSegmentationMap"]
        4 CALL                             R1 1 1
        5 NEWTABLE                         R2 0 0
        7 GETTABLEKS                       R3 R0 K2 ["ExternalProps"]
        9 GETTABLEKS                       R3 R3 K3 ["TriangleIndexData"]
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 GETTABLEKS                       R8 R0 K0 ["MeshEditingContext"]
       16 MOVE                             R10 R6
       17 NAMECALL                         R8 R8 K4 ["getMeshPart"]
       19 CALL                             R8 2 1
       20 JUMPIFEQKNIL                     R8 ; [+65]
       22 GETTABLEKS                       R10 R0 K2 ["ExternalProps"]
       24 GETTABLEKS                       R10 R10 K5 ["VertexData"]
       26 GETTABLE                         R9 R10 R6
       27 JUMPIFEQKNIL                     R9 ; [+58]
       29 GETTABLEKS                       R10 R0 K0 ["MeshEditingContext"]
       31 MOVE                             R12 R6
       32 NAMECALL                         R10 R10 K6 ["getMeshOrigin"]
       34 CALL                             R10 2 1
       35 JUMPIFEQKNIL                     R10 ; [+50]
       37 GETTABLEKS                       R12 R0 K2 ["ExternalProps"]
       39 GETTABLEKS                       R12 R12 K7 ["TrianglesFacingCamera"]
       41 GETTABLE                         R11 R12 R6
       42 GETUPVAL                         R12 0
       43 GETTABLEKS                       R12 R12 K8 ["createElement"]
       45 GETUPVAL                         R13 1
       46 DUPTABLE                         R14 K15 [{"ExternalProps", "MeshOrigin", "MeshSegmentationMap", "Adornee", "TrianglesFacingCamera", "TrianglesPerMesh", "MeshVertexData", "SelectedControlPointWeights"}]
       47 GETTABLEKS                       R15 R0 K2 ["ExternalProps"]
       49 SETTABLEKS                       R15 R14 K2 ["ExternalProps"]
       51 SETTABLEKS                       R10 R14 K9 ["MeshOrigin"]
       53 JUMPIFEQKNIL                     R1 ; [+3]
       55 GETTABLE                         R15 R1 R6
       56 JUMP                             ; [+1]
       57 LOADNIL                          R15
       58 SETTABLEKS                       R15 R14 K10 ["MeshSegmentationMap"]
       60 SETTABLEKS                       R8 R14 K11 ["Adornee"]
       62 MOVE                             R15 R11
       63 JUMPIF                           R15 ; [+2]
       64 NEWTABLE                         R15 0 0
       66 SETTABLEKS                       R15 R14 K7 ["TrianglesFacingCamera"]
       68 SETTABLEKS                       R7 R14 K12 ["TrianglesPerMesh"]
       70 SETTABLEKS                       R9 R14 K13 ["MeshVertexData"]
       72 GETTABLEKS                       R15 R0 K2 ["ExternalProps"]
       74 GETTABLEKS                       R15 R15 K14 ["SelectedControlPointWeights"]
       76 JUMPIFNOT                        R15 ; [+5]
       77 GETTABLEKS                       R16 R0 K2 ["ExternalProps"]
       79 GETTABLEKS                       R16 R16 K14 ["SelectedControlPointWeights"]
       81 GETTABLE                         R15 R16 R6
       82 SETTABLEKS                       R15 R14 K14 ["SelectedControlPointWeights"]
       84 CALL                             R12 2 1
       85 SETTABLE                         R12 R2 R6
       86 FORGLOOP                         R3 2 ; [-73]
       88 GETUPVAL                         R3 2
       89 GETTABLEKS                       R3 R3 K16 ["createPortal"]
       91 GETUPVAL                         R4 0
       92 GETTABLEKS                       R4 R4 K8 ["createElement"]
       94 LOADK                            R5 K17 ["Folder"]
       95 DUPTABLE                         R6 K19 [{"key"}]
       96 LOADK                            R7 K20 ["WireframeMeshView"]
       97 SETTABLEKS                       R7 R6 K18 ["key"]
       99 MOVE                             R7 R2
      100 CALL                             R4 3 1
      101 GETTABLEKS                       R5 R0 K2 ["ExternalProps"]
      103 GETTABLEKS                       R5 R5 K21 ["OverrideWireframeMeshViewParent"]
      105 JUMPIF                           R5 ; [+1]
      106 GETUPVAL                         R5 3
      107 CALL                             R3 2 -1
      108 RETURN                           R3 -1

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
       15 GETTABLEKS                       R3 R0 K10 ["MeshEditingContexts"]
       17 GETTABLEKS                       R3 R3 K11 ["MeshEditingContextBase"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Parent"]
       24 GETTABLEKS                       R4 R4 K13 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K12 ["Parent"]
       31 GETTABLEKS                       R5 R5 K14 ["ReactRoblox"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K15 ["Views"]
       38 GETTABLEKS                       R6 R6 K16 ["ReactView"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K17 ["Types"]
       45 CALL                             R6 1 1
       46 NEWTABLE                         R7 0 3
       48 LOADN                            R8 2
       49 LOADN                            R9 3
       50 LOADN                            R10 1
       51 SETLIST                          R7 R8 3 [1]
       53 DUPCLOSURE                       R8 K18 [PROTO_0]
       54 DUPCLOSURE                       R9 K19 [PROTO_5]
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R7
       57 DUPCLOSURE                       R10 K20 [PROTO_6]
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R1
       62 RETURN                           R10 1
