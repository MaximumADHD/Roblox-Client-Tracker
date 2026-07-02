PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 LOADK                            R2 K0 [{∞, ∞, ∞}]
        3 LOADK                            R3 K1 [{-∞, -∞, -∞}]
        4 GETIMPORT                        R4 K3 [ipairs]
        6 GETTABLEKS                       R5 R0 K4 ["SnapPoints"]
        8 CALL                             R4 1 3
        9 FORGPREP_INEXT                   R4
       10 GETTABLEKS                       R11 R8 K5 ["Position"]
       12 NAMECALL                         R9 R2 K6 ["Min"]
       14 CALL                             R9 2 1
       15 MOVE                             R2 R9
       16 GETTABLEKS                       R11 R8 K5 ["Position"]
       18 NAMECALL                         R9 R3 K7 ["Max"]
       20 CALL                             R9 2 1
       21 MOVE                             R3 R9
       22 FORGLOOP                         R4 2 [inext] ; [-13]
       24 SUB                              R4 R3 R2
       25 GETTABLEKS                       R4 R4 K8 ["Magnitude"]
       27 GETIMPORT                        R5 K3 [ipairs]
       29 GETTABLEKS                       R6 R0 K4 ["SnapPoints"]
       31 CALL                             R5 1 3
       32 FORGPREP_INEXT                   R5
       33 GETTABLEKS                       R10 R9 K5 ["Position"]
       35 GETTABLEKS                       R11 R0 K9 ["DraggerContext"]
       37 MOVE                             R13 R10
       38 NAMECALL                         R11 R11 K10 ["getHandleScale"]
       40 CALL                             R11 2 1
       41 GETTABLEKS                       R13 R0 K11 ["Focus"]
       43 SUB                              R12 R10 R13
       44 GETTABLEKS                       R12 R12 K8 ["Magnitude"]
       46 JUMPIFLT                         R4 R12 ; [+55]
       48 LOADK                            R13 K12 [0.001]
       49 JUMPIFLT                         R12 R13 ; [+52]
       51 LOADK                            R15 K14 [1.6]
       52 DIV                              R17 R12 R4
       53 POWK                             R16 R17 K15 [0.5]
       54 MUL                              R14 R15 R16
       55 SUBRK                            R13 K13 [1.8] R14
       56 MUL                              R11 R11 R13
       57 MULK                             R15 R8 K17 [2]
       58 SUBK                             R14 R15 K16 [1]
       59 GETUPVAL                         R15 0
       60 GETTABLEKS                       R15 R15 K18 ["createElement"]
       62 LOADK                            R16 K19 ["BoxHandleAdornment"]
       63 DUPTABLE                         R17 K26 [{["ZIndex"] = 0, ["Adornee"], ["CFrame"], ["Color3"], ["Size"]}]
       64 GETUPVAL                         R18 1
       65 GETTABLEKS                       R18 R18 K27 ["Terrain"]
       67 SETTABLEKS                       R18 R17 K22 ["Adornee"]
       69 SETTABLEKS                       R9 R17 K23 ["CFrame"]
       71 GETUPVAL                         R18 2
       72 SETTABLEKS                       R18 R17 K24 ["Color3"]
       74 LOADK                            R19 K28 [{0.2, 0.2, 0.2}]
       75 MUL                              R18 R19 R11
       76 SETTABLEKS                       R18 R17 K25 ["Size"]
       78 CALL                             R15 2 1
       79 SETTABLE                         R15 R1 R14
       80 MULK                             R14 R8 K17 [2]
       81 GETUPVAL                         R15 0
       82 GETTABLEKS                       R15 R15 K18 ["createElement"]
       84 LOADK                            R16 K19 ["BoxHandleAdornment"]
       85 DUPTABLE                         R17 K33 [{["ZIndex"] = 0, ["Adornee"], ["CFrame"], ["Color3"], ["AlwaysOnTop"] = True, ["Transparency"] = 0.7, ["Size"]}]
       86 GETUPVAL                         R18 1
       87 GETTABLEKS                       R18 R18 K27 ["Terrain"]
       89 SETTABLEKS                       R18 R17 K22 ["Adornee"]
       91 SETTABLEKS                       R9 R17 K23 ["CFrame"]
       93 GETUPVAL                         R18 2
       94 SETTABLEKS                       R18 R17 K24 ["Color3"]
       96 LOADK                            R19 K28 [{0.2, 0.2, 0.2}]
       97 MUL                              R18 R19 R11
       98 SETTABLEKS                       R18 R17 K25 ["Size"]
      100 CALL                             R15 2 1
      101 SETTABLE                         R15 R1 R14
      102 FORGLOOP                         R5 2 [inext] ; [-70]
      104 GETUPVAL                         R5 0
      105 GETTABLEKS                       R5 R5 K18 ["createElement"]
      107 LOADK                            R6 K34 ["Folder"]
      108 NEWTABLE                         R7 0 0
      110 MOVE                             R8 R1
      111 CALL                             R5 3 -1
      112 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K13 [Color3.new]
       24 LOADN                            R4 1
       25 LOADN                            R5 0
       26 LOADN                            R6 1
       27 CALL                             R3 3 1
       28 DUPCLOSURE                       R4 K14 [PROTO_0]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R3
       32 RETURN                           R4 1
