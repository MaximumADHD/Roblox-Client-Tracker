PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Color"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["Color"]
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K1 ["SelectedWeight"]
       11 JUMPIFNOT                        R0 ; [+13]
       12 GETUPVAL                         R0 1
       13 GETUPVAL                         R2 2
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K1 ["SelectedWeight"]
       17 FASTCALL1                        MATH_ABS R4 ; [+2]
       18 GETIMPORT                        R3 K4 [math.abs]
       20 CALL                             R3 1 1
       21 NAMECALL                         R0 R0 K5 ["Lerp"]
       23 CALL                             R0 3 -1
       24 RETURN                           R0 -1
       25 GETUPVAL                         R0 3
       26 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["MeshOrigin"]
        3 GETIMPORT                        R2 K3 [CFrame.new]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K4 ["Position"]
        8 CALL                             R2 1 1
        9 MUL                              R0 R1 R2
       10 RETURN                           R0 1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 DUPCLOSURE                       R1 K1 [PROTO_2]
        7 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useMemo"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 NEWTABLE                         R4 0 2
       15 GETTABLEKS                       R5 R0 K2 ["Color"]
       17 GETTABLEKS                       R6 R0 K3 ["SelectedWeight"]
       19 SETLIST                          R4 R5 2 [1]
       21 CALL                             R2 2 1
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K1 ["useMemo"]
       25 NEWCLOSURE                       R4 P1
       26 CAPTURE                          VAL R0
       27 NEWTABLE                         R5 0 3
       29 GETTABLEKS                       R6 R0 K4 ["Position"]
       31 GETTABLEKS                       R7 R0 K5 ["MeshOrigin"]
       33 GETTABLEKS                       R8 R0 K6 ["Adornee"]
       35 SETLIST                          R5 R6 3 [1]
       37 CALL                             R3 2 1
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K7 ["useEffect"]
       41 NEWCLOSURE                       R5 P2
       42 CAPTURE                          VAL R1
       43 NEWTABLE                         R6 0 1
       45 GETTABLEKS                       R7 R1 K8 ["current"]
       47 SETLIST                          R6 R7 1 [1]
       49 CALL                             R4 2 0
       50 GETTABLEKS                       R4 R0 K9 ["Shape"]
       52 JUMPIFNOTEQKS                    R4 K10 ["Box"] ; [+41]
       54 GETUPVAL                         R4 0
       55 GETTABLEKS                       R4 R4 K11 ["createElement"]
       57 LOADK                            R5 K12 ["BoxHandleAdornment"]
       58 DUPTABLE                         R6 K23 [{["ref"], ["ZIndex"] = 2, ["AlwaysOnTop"], ["Archivable"] = False, ["Adornee"], ["CFrame"], ["Size"], ["Transparency"], ["Color3"]}]
       59 SETTABLEKS                       R1 R6 K13 ["ref"]
       61 GETTABLEKS                       R7 R0 K24 ["IsFacingCamera"]
       63 SETTABLEKS                       R7 R6 K16 ["AlwaysOnTop"]
       65 GETTABLEKS                       R7 R0 K6 ["Adornee"]
       67 SETTABLEKS                       R7 R6 K6 ["Adornee"]
       69 SETTABLEKS                       R3 R6 K19 ["CFrame"]
       71 GETTABLEKS                       R9 R0 K25 ["PointRadius"]
       73 MULK                             R8 R9 K15 [2]
       74 GETTABLEKS                       R10 R0 K25 ["PointRadius"]
       76 MULK                             R9 R10 K15 [2]
       77 GETTABLEKS                       R11 R0 K25 ["PointRadius"]
       79 MULK                             R10 R11 K15 [2]
       80 FASTCALL                         VECTOR ; [+2]
       81 GETIMPORT                        R7 K28 [Vector3.new]
       83 CALL                             R7 3 1
       84 SETTABLEKS                       R7 R6 K20 ["Size"]
       86 GETTABLEKS                       R7 R0 K21 ["Transparency"]
       88 SETTABLEKS                       R7 R6 K21 ["Transparency"]
       90 SETTABLEKS                       R2 R6 K22 ["Color3"]
       92 CALL                             R4 2 -1
       93 RETURN                           R4 -1
       94 GETTABLEKS                       R4 R0 K9 ["Shape"]
       96 JUMPIFNOTEQKS                    R4 K29 ["Sphere"] ; [+30]
       98 GETUPVAL                         R4 0
       99 GETTABLEKS                       R4 R4 K11 ["createElement"]
      101 LOADK                            R5 K30 ["SphereHandleAdornment"]
      102 DUPTABLE                         R6 K32 [{["ref"], ["AlwaysOnTop"], ["ZIndex"] = 2, ["Archivable"] = False, ["Adornee"], ["CFrame"], ["Radius"], ["Transparency"], ["Color3"]}]
      103 SETTABLEKS                       R1 R6 K13 ["ref"]
      105 GETTABLEKS                       R7 R0 K24 ["IsFacingCamera"]
      107 SETTABLEKS                       R7 R6 K16 ["AlwaysOnTop"]
      109 GETTABLEKS                       R7 R0 K6 ["Adornee"]
      111 SETTABLEKS                       R7 R6 K6 ["Adornee"]
      113 SETTABLEKS                       R3 R6 K19 ["CFrame"]
      115 GETTABLEKS                       R7 R0 K25 ["PointRadius"]
      117 SETTABLEKS                       R7 R6 K31 ["Radius"]
      119 GETTABLEKS                       R7 R0 K21 ["Transparency"]
      121 SETTABLEKS                       R7 R6 K21 ["Transparency"]
      123 SETTABLEKS                       R2 R6 K22 ["Color3"]
      125 CALL                             R4 2 -1
      126 RETURN                           R4 -1
      127 LOADNIL                          R4
      128 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LuaMeshEditingModule"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["Constants"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K10 ["ControlPoint"]
       23 GETTABLEKS                       R3 R3 K11 ["DefaultColor"]
       25 GETTABLEKS                       R4 R2 K10 ["ControlPoint"]
       27 GETTABLEKS                       R4 R4 K12 ["SelectedColor"]
       29 GETTABLEKS                       R5 R2 K10 ["ControlPoint"]
       31 GETTABLEKS                       R5 R5 K13 ["SelectedColorNoWeight"]
       33 DUPCLOSURE                       R6 K14 [PROTO_4]
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R3
       38 RETURN                           R6 1
