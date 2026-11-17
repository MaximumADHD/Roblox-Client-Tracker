PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+40]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["CurrentCamera"]
        6 GETTABLEKS                       R4 R0 K1 ["vertexEditingTool"]
        8 NAMECALL                         R4 R4 K2 ["getHoveredPoint"]
       10 CALL                             R4 1 1
       11 JUMPIFEQKNIL                     R4 ; [+31]
       13 GETTABLEKS                       R5 R4 K3 ["Parent"]
       15 JUMPIFEQKNIL                     R5 ; [+27]
       17 GETTABLEKS                       R7 R4 K4 ["CFrame"]
       19 GETTABLEKS                       R7 R7 K5 ["Position"]
       21 NAMECALL                         R5 R3 K6 ["WorldToScreenPoint"]
       23 CALL                             R5 2 2
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R7 R7 K7 ["new"]
       27 GETTABLEKS                       R8 R4 K3 ["Parent"]
       29 GETTABLEKS                       R8 R8 K8 ["Name"]
       31 GETTABLEKS                       R10 R4 K8 ["Name"]
       33 FASTCALL1                        TONUMBER R10 ; [+2]
       34 GETIMPORT                        R9 K10 [tonumber]
       36 CALL                             R9 1 1
       37 CALL                             R7 2 1
       38 MOVE                             R8 R7
       39 MOVE                             R9 R4
       40 GETTABLEKS                       R10 R5 K11 ["Z"]
       42 RETURN                           R8 3
       43 GETUPVAL                         R3 1
       44 GETUPVAL                         R5 3
       45 GETTABLEKS                       R5 R5 K12 ["ControlPointsFolderName"]
       47 NAMECALL                         R3 R3 K13 ["FindFirstChild"]
       49 CALL                             R3 2 1
       50 JUMPIF                           R3 ; [+2]
       51 LOADNIL                          R4
       52 RETURN                           R4 1
       53 NEWTABLE                         R4 0 0
       55 GETIMPORT                        R5 K15 [ipairs]
       57 NAMECALL                         R6 R3 K16 ["GetChildren"]
       59 CALL                             R6 1 -1
       60 CALL                             R5 -1 3
       61 FORGPREP_INEXT                   R5
       62 GETUPVAL                         R10 4
       63 MOVE                             R11 R4
       64 NAMECALL                         R12 R9 K16 ["GetChildren"]
       66 CALL                             R12 1 -1
       67 CALL                             R10 -1 1
       68 MOVE                             R4 R10
       69 FORGLOOP                         R5 2 [inext] ; [-8]
       71 GETUPVAL                         R5 5
       72 JUMPIFNOT                        R5 ; [+48]
       73 GETIMPORT                        R5 K18 [RaycastParams.new]
       75 CALL                             R5 0 1
       76 SETTABLEKS                       R4 R5 K19 ["FilterDescendantsInstances"]
       78 LOADB                            R6 1
       79 SETTABLEKS                       R6 R5 K20 ["BruteForceAllSlow"]
       81 GETIMPORT                        R6 K24 [Enum.RaycastFilterType.Whitelist]
       83 SETTABLEKS                       R6 R5 K25 ["FilterType"]
       85 GETUPVAL                         R6 1
       86 GETTABLEKS                       R8 R1 K26 ["Origin"]
       88 GETTABLEKS                       R9 R1 K27 ["Direction"]
       90 MOVE                             R10 R5
       91 NAMECALL                         R6 R6 K28 ["Raycast"]
       93 CALL                             R6 4 1
       94 JUMPIF                           R6 ; [+2]
       95 LOADNIL                          R7
       96 RETURN                           R7 1
       97 GETUPVAL                         R7 2
       98 GETTABLEKS                       R7 R7 K7 ["new"]
      100 GETTABLEKS                       R8 R6 K29 ["Instance"]
      102 GETTABLEKS                       R8 R8 K3 ["Parent"]
      104 GETTABLEKS                       R8 R8 K8 ["Name"]
      106 GETTABLEKS                       R10 R6 K29 ["Instance"]
      108 GETTABLEKS                       R10 R10 K8 ["Name"]
      110 FASTCALL1                        TONUMBER R10 ; [+2]
      111 GETIMPORT                        R9 K10 [tonumber]
      113 CALL                             R9 1 1
      114 CALL                             R7 2 1
      115 MOVE                             R8 R7
      116 GETTABLEKS                       R9 R6 K29 ["Instance"]
      118 GETTABLEKS                       R10 R6 K30 ["Distance"]
      120 RETURN                           R8 3
      121 GETUPVAL                         R5 1
      122 MOVE                             R7 R1
      123 MOVE                             R8 R4
      124 NAMECALL                         R5 R5 K31 ["FindPartOnRayWithWhitelist"]
      126 CALL                             R5 3 2
      127 GETTABLEKS                       R8 R1 K26 ["Origin"]
      129 SUB                              R7 R8 R6
      130 GETTABLEKS                       R7 R7 K32 ["Magnitude"]
      132 JUMPIFNOT                        R5 ; [+18]
      133 GETUPVAL                         R8 2
      134 GETTABLEKS                       R8 R8 K7 ["new"]
      136 GETTABLEKS                       R9 R5 K3 ["Parent"]
      138 GETTABLEKS                       R9 R9 K8 ["Name"]
      140 GETTABLEKS                       R11 R5 K8 ["Name"]
      142 FASTCALL1                        TONUMBER R11 ; [+2]
      143 GETIMPORT                        R10 K10 [tonumber]
      145 CALL                             R10 1 1
      146 CALL                             R8 2 1
      147 MOVE                             R9 R8
      148 MOVE                             R10 R5
      149 MOVE                             R11 R7
      150 RETURN                           R9 3
      151 LOADNIL                          R8
      152 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Dash"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["join"]
       16 GETTABLEKS                       R4 R0 K7 ["Util"]
       18 GETIMPORT                        R5 K4 [require]
       20 GETTABLEKS                       R6 R4 K8 ["Constants"]
       22 CALL                             R5 1 1
       23 GETIMPORT                        R6 K4 [require]
       25 GETTABLEKS                       R7 R4 K9 ["Selectable"]
       27 CALL                             R6 1 1
       28 GETIMPORT                        R7 K11 [game]
       30 LOADK                            R9 K12 ["Workspace"]
       31 NAMECALL                         R7 R7 K13 ["GetService"]
       33 CALL                             R7 2 1
       34 GETIMPORT                        R8 K11 [game]
       36 LOADK                            R10 K14 ["DraggerBruteForceAll"]
       37 NAMECALL                         R8 R8 K15 ["GetEngineFeature"]
       39 CALL                             R8 2 1
       40 GETIMPORT                        R9 K4 [require]
       42 GETTABLEKS                       R10 R0 K16 ["Flags"]
       44 GETTABLEKS                       R10 R10 K17 ["getFFlagAvatarPreviewerCageEditingTools"]
       46 CALL                             R9 1 1
       47 DUPCLOSURE                       R10 K18 [PROTO_0]
       48 CAPTURE                          VAL R9
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R8
       54 RETURN                           R10 1
