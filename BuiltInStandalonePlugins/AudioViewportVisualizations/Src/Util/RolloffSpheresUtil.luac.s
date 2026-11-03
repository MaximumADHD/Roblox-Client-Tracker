PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Terrain"]
        3 SETTABLEKS                       R1 R0 K1 ["Adornee"]
        5 LOADK                            R1 K2 [0.5]
        6 SETTABLEKS                       R1 R0 K3 ["Transparency"]
        8 GETUPVAL                         R1 1
        9 JUMPIFNOT                        R1 ; [+3]
       10 LOADB                            R1 1
       11 SETTABLEKS                       R1 R0 K4 ["DoubleSided"]
       13 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["SphereHandleAdornment"]
        3 CALL                             R3 1 1
        4 SETTABLEKS                       R2 R3 K4 ["Radius"]
        6 GETIMPORT                        R4 K6 [CFrame.new]
        8 MOVE                             R5 R0
        9 CALL                             R4 1 1
       10 SETTABLEKS                       R4 R3 K5 ["CFrame"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K7 ["Terrain"]
       15 SETTABLEKS                       R4 R3 K8 ["Adornee"]
       17 LOADK                            R4 K9 [0.5]
       18 SETTABLEKS                       R4 R3 K10 ["Transparency"]
       20 GETUPVAL                         R4 1
       21 JUMPIFNOT                        R4 ; [+3]
       22 LOADB                            R4 1
       23 SETTABLEKS                       R4 R3 K11 ["DoubleSided"]
       25 SETTABLEKS                       R1 R3 K12 ["Parent"]
       27 RETURN                           R3 1

PROTO_2:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["WireframeHandleAdornment"]
        3 CALL                             R0 1 1
        4 LOADN                            R1 15
        5 SETTABLEKS                       R1 R0 K4 ["Thickness"]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K5 ["Terrain"]
       10 SETTABLEKS                       R1 R0 K6 ["Adornee"]
       12 GETIMPORT                        R1 K9 [CFrame.identity]
       14 SETTABLEKS                       R1 R0 K7 ["CFrame"]
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K10 ["getSelectionColor"]
       19 CALL                             R1 0 1
       20 SETTABLEKS                       R1 R0 K11 ["Color3"]
       22 LOADB                            R1 0
       23 SETTABLEKS                       R1 R0 K12 ["AlwaysOnTop"]
       25 LOADN                            R1 0
       26 SETTABLEKS                       R1 R0 K13 ["ZIndex"]
       28 GETUPVAL                         R1 2
       29 SETTABLEKS                       R1 R0 K14 ["Parent"]
       31 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["newRaycastParams"]
        3 CALL                             R2 0 1
        4 NEWTABLE                         R3 0 0
        6 LOADN                            R6 0
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R7 R7 K2 ["RING_SEGMENTS"]
       10 SUBK                             R4 R7 K1 [1]
       11 LOADN                            R5 1
       12 FORNPREP                         R4
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K3 ["sampleRingVertex"]
       16 MOVE                             R8 R2
       17 MOVE                             R9 R0
       18 MOVE                             R10 R1
       19 MOVE                             R11 R6
       20 CALL                             R7 4 1
       21 SETTABLE                         R7 R3 R6
       22 FORNLOOP                         R4
       23 DUPTABLE                         R4 K10 [{["vertices"], ["nextIndex"] = 0, ["center"], ["radius"], ["params"]}]
       24 SETTABLEKS                       R3 R4 K4 ["vertices"]
       26 SETTABLEKS                       R0 R4 K7 ["center"]
       28 SETTABLEKS                       R1 R4 K8 ["radius"]
       30 SETTABLEKS                       R2 R4 K9 ["params"]
       32 RETURN                           R4 1

PROTO_4:
        0 JUMPIFNOT                        R0 ; [+8]
        1 GETTABLEKS                       R3 R0 K0 ["center"]
        3 JUMPIFNOTEQ                      R3 R1 ; [+5]
        5 GETTABLEKS                       R3 R0 K1 ["radius"]
        7 JUMPIFEQ                         R3 R2 ; [+7]
        9 GETUPVAL                         R3 0
       10 MOVE                             R4 R1
       11 MOVE                             R5 R2
       12 CALL                             R3 2 1
       13 LOADB                            R4 1
       14 RETURN                           R3 2
       15 LOADB                            R3 0
       16 LOADN                            R6 1
       17 LOADN                            R4 8
       18 LOADN                            R5 1
       19 FORNPREP                         R4
       20 GETTABLEKS                       R7 R0 K2 ["nextIndex"]
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R8 R8 K3 ["sampleRingVertex"]
       25 GETTABLEKS                       R9 R0 K4 ["params"]
       27 MOVE                             R10 R1
       28 MOVE                             R11 R2
       29 MOVE                             R12 R7
       30 CALL                             R8 4 1
       31 GETTABLEKS                       R10 R0 K5 ["vertices"]
       33 GETTABLE                         R9 R10 R7
       34 JUMPIFEQ                         R8 R9 ; [+5]
       36 GETTABLEKS                       R9 R0 K5 ["vertices"]
       38 SETTABLE                         R8 R9 R7
       39 LOADB                            R3 1
       40 ADDK                             R10 R7 K6 [1]
       41 GETUPVAL                         R11 1
       42 GETTABLEKS                       R11 R11 K7 ["RING_SEGMENTS"]
       44 MOD                              R9 R10 R11
       45 SETTABLEKS                       R9 R0 K2 ["nextIndex"]
       47 GETTABLEKS                       R9 R0 K2 ["nextIndex"]
       49 JUMPIFNOTEQKN                    R9 K8 [0] ; [+7]
       51 GETUPVAL                         R9 1
       52 GETTABLEKS                       R9 R9 K9 ["newRaycastParams"]
       54 CALL                             R9 0 1
       55 SETTABLEKS                       R9 R0 K4 ["params"]
       57 FORNLOOP                         R4
       58 MOVE                             R4 R0
       59 MOVE                             R5 R3
       60 RETURN                           R4 2

PROTO_5:
        0 GETIMPORT                        R2 K1 [next]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 JUMPIF                           R4 ; [+3]
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 RETURN                           R4 2
        5 GETUPVAL                         R4 1
        6 MOVE                             R5 R1
        7 MOVE                             R6 R2
        8 MOVE                             R7 R3
        9 CALL                             R4 3 2
       10 GETTABLEKS                       R6 R4 K0 ["vertices"]
       12 GETIMPORT                        R8 K2 [next]
       14 MOVE                             R9 R6
       15 CALL                             R8 1 1
       16 JUMPIFNOTEQKNIL                  R8 ; [+2]
       18 LOADB                            R7 0 +1
       19 LOADB                            R7 1
       20 JUMPIF                           R7 ; [+7]
       21 JUMPIFNOT                        R0 ; [+3]
       22 NAMECALL                         R7 R0 K3 ["Destroy"]
       24 CALL                             R7 1 0
       25 LOADNIL                          R7
       26 MOVE                             R8 R4
       27 RETURN                           R7 2
       28 JUMPIFNOT                        R0 ; [+4]
       29 JUMPIF                           R5 ; [+3]
       30 MOVE                             R7 R0
       31 MOVE                             R8 R4
       32 RETURN                           R7 2
       33 JUMPIFNOT                        R0 ; [+2]
       34 MOVE                             R7 R0
       35 JUMP                             ; [+32]
       36 GETIMPORT                        R8 K6 [Instance.new]
       38 LOADK                            R9 K7 ["WireframeHandleAdornment"]
       39 CALL                             R8 1 1
       40 LOADN                            R9 15
       41 SETTABLEKS                       R9 R8 K8 ["Thickness"]
       43 GETUPVAL                         R9 2
       44 GETTABLEKS                       R9 R9 K9 ["Terrain"]
       46 SETTABLEKS                       R9 R8 K10 ["Adornee"]
       48 GETIMPORT                        R9 K13 [CFrame.identity]
       50 SETTABLEKS                       R9 R8 K11 ["CFrame"]
       52 GETUPVAL                         R9 3
       53 GETTABLEKS                       R9 R9 K14 ["getSelectionColor"]
       55 CALL                             R9 0 1
       56 SETTABLEKS                       R9 R8 K15 ["Color3"]
       58 LOADB                            R9 0
       59 SETTABLEKS                       R9 R8 K16 ["AlwaysOnTop"]
       61 LOADN                            R9 0
       62 SETTABLEKS                       R9 R8 K17 ["ZIndex"]
       64 GETUPVAL                         R9 0
       65 SETTABLEKS                       R9 R8 K18 ["Parent"]
       67 MOVE                             R7 R8
       68 NAMECALL                         R8 R7 K19 ["Clear"]
       70 CALL                             R8 1 0
       71 GETUPVAL                         R8 4
       72 GETTABLEKS                       R8 R8 K20 ["buildPaths"]
       74 MOVE                             R9 R6
       75 MOVE                             R10 R3
       76 CALL                             R8 2 3
       77 FORGPREP                         R8
       78 GETTABLEKS                       R15 R12 K21 ["points"]
       80 GETTABLEKS                       R16 R12 K22 ["closed"]
       82 NAMECALL                         R13 R7 K23 ["AddPath"]
       84 CALL                             R13 3 0
       85 FORGLOOP                         R8 2 ; [-8]
       87 MOVE                             R8 R7
       88 MOVE                             R9 R4
       89 RETURN                           R8 2

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETIMPORT                        R1 K2 [debug.profilebegin]
        6 LOADK                            R2 K3 ["AVV ground rings"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 1
        9 JUMPIFNOT                        R1 ; [+10]
       10 GETUPVAL                         R1 4
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R3 3
       13 MOVE                             R4 R0
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K4 ["Radius"]
       17 CALL                             R1 4 2
       18 SETUPVAL                         R1 2
       19 SETUPVAL                         R2 3
       20 GETUPVAL                         R1 5
       21 JUMPIFNOT                        R1 ; [+10]
       22 GETUPVAL                         R1 4
       23 GETUPVAL                         R2 6
       24 GETUPVAL                         R3 7
       25 MOVE                             R4 R0
       26 GETUPVAL                         R5 5
       27 GETTABLEKS                       R5 R5 K4 ["Radius"]
       29 CALL                             R1 4 2
       30 SETUPVAL                         R1 6
       31 SETUPVAL                         R2 7
       32 GETIMPORT                        R1 K6 [debug.profileend]
       34 CALL                             R1 0 0
       35 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOT                        R0 ; [+3]
        1 NAMECALL                         R1 R0 K0 ["Destroy"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 JUMPIFNOT                        R0 ; [+3]
        1 NAMECALL                         R1 R0 K0 ["Destroy"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 NAMECALL                         R1 R0 K0 ["Destroy"]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R0 1
        6 JUMPIFNOT                        R0 ; [+3]
        7 NAMECALL                         R1 R0 K0 ["Destroy"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R0 2
       11 JUMPIFNOT                        R0 ; [+3]
       12 NAMECALL                         R1 R0 K0 ["Destroy"]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R0 3
       16 JUMPIFNOT                        R0 ; [+3]
       17 NAMECALL                         R1 R0 K0 ["Destroy"]
       19 CALL                             R1 1 0
       20 LOADNIL                          R0
       21 SETUPVAL                         R0 0
       22 LOADNIL                          R0
       23 SETUPVAL                         R0 1
       24 LOADNIL                          R0
       25 SETUPVAL                         R0 2
       26 LOADNIL                          R0
       27 SETUPVAL                         R0 3
       28 LOADNIL                          R0
       29 SETUPVAL                         R0 4
       30 LOADNIL                          R0
       31 SETUPVAL                         R0 5
       32 LOADNIL                          R0
       33 SETUPVAL                         R0 6
       34 LOADNIL                          R0
       35 SETUPVAL                         R0 7
       36 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R1 K2 [CFrame.new]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETUPVAL                         R2 0
        7 SETTABLEKS                       R1 R2 K0 ["CFrame"]
        9 GETUPVAL                         R2 1
       10 JUMPIFNOT                        R2 ; [+3]
       11 GETUPVAL                         R2 1
       12 SETTABLEKS                       R1 R2 K0 ["CFrame"]
       14 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getEmissionPosition"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 1
        5 LOADB                            R4 0
        6 GETUPVAL                         R5 1
        7 JUMPIFNOTEQ                      R5 R0 ; [+10]
        9 LOADB                            R4 1
       10 GETUPVAL                         R5 2
       11 JUMPIFNOTEQKNIL                  R5 ; [+6]
       13 GETUPVAL                         R5 3
       14 JUMPIFNOTEQKNIL                  R5 ; [+2]
       16 LOADB                            R4 0 +1
       17 LOADB                            R4 1
       18 JUMPIFNOT                        R4 ; [+24]
       19 JUMPIF                           R2 ; [+23]
       20 JUMPIFNOT                        R3 ; [+21]
       21 GETUPVAL                         R5 4
       22 JUMPIFEQ                         R3 R5 ; [+16]
       24 SETUPVAL                         R3 4
       25 GETIMPORT                        R5 K3 [CFrame.new]
       27 MOVE                             R6 R3
       28 CALL                             R5 1 1
       29 GETUPVAL                         R6 2
       30 JUMPIFNOT                        R6 ; [+3]
       31 GETUPVAL                         R6 2
       32 SETTABLEKS                       R5 R6 K1 ["CFrame"]
       34 GETUPVAL                         R6 3
       35 JUMPIFNOT                        R6 ; [+3]
       36 GETUPVAL                         R6 3
       37 SETTABLEKS                       R5 R6 K1 ["CFrame"]
       39 GETUPVAL                         R5 5
       40 MOVE                             R6 R3
       41 CALL                             R5 1 0
       42 RETURN                           R0 0
       43 GETUPVAL                         R5 2
       44 JUMPIFNOT                        R5 ; [+3]
       45 NAMECALL                         R6 R5 K4 ["Destroy"]
       47 CALL                             R6 1 0
       48 GETUPVAL                         R5 3
       49 JUMPIFNOT                        R5 ; [+3]
       50 NAMECALL                         R6 R5 K4 ["Destroy"]
       52 CALL                             R6 1 0
       53 GETUPVAL                         R5 6
       54 JUMPIFNOT                        R5 ; [+3]
       55 NAMECALL                         R6 R5 K4 ["Destroy"]
       57 CALL                             R6 1 0
       58 GETUPVAL                         R5 7
       59 JUMPIFNOT                        R5 ; [+3]
       60 NAMECALL                         R6 R5 K4 ["Destroy"]
       62 CALL                             R6 1 0
       63 LOADNIL                          R5
       64 SETUPVAL                         R5 2
       65 LOADNIL                          R5
       66 SETUPVAL                         R5 3
       67 LOADNIL                          R5
       68 SETUPVAL                         R5 6
       69 LOADNIL                          R5
       70 SETUPVAL                         R5 7
       71 LOADNIL                          R5
       72 SETUPVAL                         R5 8
       73 LOADNIL                          R5
       74 SETUPVAL                         R5 9
       75 LOADNIL                          R5
       76 SETUPVAL                         R5 1
       77 LOADNIL                          R5
       78 SETUPVAL                         R5 4
       79 JUMPIFNOT                        R3 ; [+102]
       80 GETUPVAL                         R5 10
       81 JUMPIFNOT                        R5 ; [+100]
       82 GETTABLEKS                       R5 R1 K5 ["MaxRadius"]
       84 LOADN                            R6 0
       85 JUMPIFNOTLT                      R6 R5 ; [+39]
       87 GETUPVAL                         R6 10
       88 GETTABLEKS                       R7 R1 K5 ["MaxRadius"]
       90 GETIMPORT                        R8 K7 [Instance.new]
       92 LOADK                            R9 K8 ["SphereHandleAdornment"]
       93 CALL                             R8 1 1
       94 SETTABLEKS                       R7 R8 K9 ["Radius"]
       96 GETIMPORT                        R9 K3 [CFrame.new]
       98 MOVE                             R10 R3
       99 CALL                             R9 1 1
      100 SETTABLEKS                       R9 R8 K1 ["CFrame"]
      102 GETUPVAL                         R9 11
      103 GETTABLEKS                       R9 R9 K10 ["Terrain"]
      105 SETTABLEKS                       R9 R8 K11 ["Adornee"]
      107 LOADK                            R9 K12 [0.5]
      108 SETTABLEKS                       R9 R8 K13 ["Transparency"]
      110 GETUPVAL                         R9 12
      111 JUMPIFNOT                        R9 ; [+3]
      112 LOADB                            R9 1
      113 SETTABLEKS                       R9 R8 K14 ["DoubleSided"]
      115 SETTABLEKS                       R6 R8 K15 ["Parent"]
      117 MOVE                             R5 R8
      118 GETUPVAL                         R6 13
      119 GETTABLEKS                       R6 R6 K16 ["getSelectionColor"]
      121 CALL                             R6 0 1
      122 SETTABLEKS                       R6 R5 K17 ["Color3"]
      124 SETUPVAL                         R5 2
      125 GETTABLEKS                       R5 R1 K18 ["MinRadius"]
      127 LOADN                            R6 0
      128 JUMPIFNOTLT                      R6 R5 ; [+39]
      130 GETUPVAL                         R6 10
      131 GETTABLEKS                       R7 R1 K18 ["MinRadius"]
      133 GETIMPORT                        R8 K7 [Instance.new]
      135 LOADK                            R9 K8 ["SphereHandleAdornment"]
      136 CALL                             R8 1 1
      137 SETTABLEKS                       R7 R8 K9 ["Radius"]
      139 GETIMPORT                        R9 K3 [CFrame.new]
      141 MOVE                             R10 R3
      142 CALL                             R9 1 1
      143 SETTABLEKS                       R9 R8 K1 ["CFrame"]
      145 GETUPVAL                         R9 11
      146 GETTABLEKS                       R9 R9 K10 ["Terrain"]
      148 SETTABLEKS                       R9 R8 K11 ["Adornee"]
      150 LOADK                            R9 K12 [0.5]
      151 SETTABLEKS                       R9 R8 K13 ["Transparency"]
      153 GETUPVAL                         R9 12
      154 JUMPIFNOT                        R9 ; [+3]
      155 LOADB                            R9 1
      156 SETTABLEKS                       R9 R8 K14 ["DoubleSided"]
      158 SETTABLEKS                       R6 R8 K15 ["Parent"]
      160 MOVE                             R5 R8
      161 GETUPVAL                         R6 13
      162 GETTABLEKS                       R6 R6 K16 ["getSelectionColor"]
      164 CALL                             R6 0 1
      165 SETTABLEKS                       R6 R5 K17 ["Color3"]
      167 SETUPVAL                         R5 3
      168 GETUPVAL                         R5 5
      169 MOVE                             R6 R3
      170 CALL                             R5 1 0
      171 GETUPVAL                         R5 2
      172 JUMPIF                           R5 ; [+2]
      173 GETUPVAL                         R5 3
      174 JUMPIFNOT                        R5 ; [+3]
      175 SETUPVAL                         R0 1
      176 SETUPVAL                         R3 4
      177 RETURN                           R0 0
      178 LOADNIL                          R5
      179 SETUPVAL                         R5 1
      180 LOADNIL                          R5
      181 SETUPVAL                         R5 4
      182 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R3 K2 [debug.profilebegin]
        2 LOADK                            R4 K3 ["AVV rolloff spheres"]
        3 CALL                             R3 1 0
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R0
        6 MOVE                             R5 R1
        7 MOVE                             R6 R2
        8 CALL                             R3 3 0
        9 GETIMPORT                        R3 K5 [debug.profileend]
       11 CALL                             R3 0 0
       12 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R1 R0 ; [+37]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 NAMECALL                         R2 R1 K0 ["Destroy"]
        7 CALL                             R2 1 0
        8 GETUPVAL                         R1 2
        9 JUMPIFNOT                        R1 ; [+3]
       10 NAMECALL                         R2 R1 K0 ["Destroy"]
       12 CALL                             R2 1 0
       13 GETUPVAL                         R1 3
       14 JUMPIFNOT                        R1 ; [+3]
       15 NAMECALL                         R2 R1 K0 ["Destroy"]
       17 CALL                             R2 1 0
       18 GETUPVAL                         R1 4
       19 JUMPIFNOT                        R1 ; [+3]
       20 NAMECALL                         R2 R1 K0 ["Destroy"]
       22 CALL                             R2 1 0
       23 LOADNIL                          R1
       24 SETUPVAL                         R1 1
       25 LOADNIL                          R1
       26 SETUPVAL                         R1 2
       27 LOADNIL                          R1
       28 SETUPVAL                         R1 3
       29 LOADNIL                          R1
       30 SETUPVAL                         R1 4
       31 LOADNIL                          R1
       32 SETUPVAL                         R1 5
       33 LOADNIL                          R1
       34 SETUPVAL                         R1 6
       35 LOADNIL                          R1
       36 SETUPVAL                         R1 0
       37 LOADNIL                          R1
       38 SETUPVAL                         R1 7
       39 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["destroy"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 NAMECALL                         R1 R0 K0 ["Destroy"]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R0 1
        6 JUMPIFNOT                        R0 ; [+3]
        7 NAMECALL                         R1 R0 K0 ["Destroy"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R0 2
       11 JUMPIFNOT                        R0 ; [+3]
       12 NAMECALL                         R1 R0 K0 ["Destroy"]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R0 3
       16 JUMPIFNOT                        R0 ; [+3]
       17 NAMECALL                         R1 R0 K0 ["Destroy"]
       19 CALL                             R1 1 0
       20 LOADNIL                          R0
       21 SETUPVAL                         R0 0
       22 LOADNIL                          R0
       23 SETUPVAL                         R0 1
       24 LOADNIL                          R0
       25 SETUPVAL                         R0 2
       26 LOADNIL                          R0
       27 SETUPVAL                         R0 3
       28 LOADNIL                          R0
       29 SETUPVAL                         R0 4
       30 LOADNIL                          R0
       31 SETUPVAL                         R0 5
       32 LOADNIL                          R0
       33 SETUPVAL                         R0 6
       34 LOADNIL                          R0
       35 SETUPVAL                         R0 7
       36 GETUPVAL                         R0 8
       37 JUMPIFNOT                        R0 ; [+7]
       38 GETUPVAL                         R0 9
       39 GETTABLEKS                       R0 R0 K1 ["destroy"]
       41 GETUPVAL                         R1 8
       42 CALL                             R0 1 0
       43 LOADNIL                          R0
       44 SETUPVAL                         R0 8
       45 GETUPVAL                         R0 9
       46 GETTABLEKS                       R0 R0 K2 ["create"]
       48 LOADK                            R1 K3 ["RolloffSpheres"]
       49 CALL                             R0 1 1
       50 SETUPVAL                         R0 8
       51 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 NAMECALL                         R1 R0 K0 ["Destroy"]
        4 CALL                             R1 1 0
        5 GETUPVAL                         R0 1
        6 JUMPIFNOT                        R0 ; [+3]
        7 NAMECALL                         R1 R0 K0 ["Destroy"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R0 2
       11 JUMPIFNOT                        R0 ; [+3]
       12 NAMECALL                         R1 R0 K0 ["Destroy"]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R0 3
       16 JUMPIFNOT                        R0 ; [+3]
       17 NAMECALL                         R1 R0 K0 ["Destroy"]
       19 CALL                             R1 1 0
       20 LOADNIL                          R0
       21 SETUPVAL                         R0 0
       22 LOADNIL                          R0
       23 SETUPVAL                         R0 1
       24 LOADNIL                          R0
       25 SETUPVAL                         R0 2
       26 LOADNIL                          R0
       27 SETUPVAL                         R0 3
       28 LOADNIL                          R0
       29 SETUPVAL                         R0 4
       30 LOADNIL                          R0
       31 SETUPVAL                         R0 5
       32 LOADNIL                          R0
       33 SETUPVAL                         R0 6
       34 LOADNIL                          R0
       35 SETUPVAL                         R0 7
       36 GETUPVAL                         R0 8
       37 JUMPIFNOT                        R0 ; [+7]
       38 GETUPVAL                         R0 9
       39 GETTABLEKS                       R0 R0 K1 ["destroy"]
       41 GETUPVAL                         R1 8
       42 CALL                             R0 1 0
       43 LOADNIL                          R0
       44 SETUPVAL                         R0 8
       45 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioViewportVisualizations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["SoundEmitterUtil"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K8 ["Util"]
       29 GETTABLEKS                       R4 R4 K10 ["ContainersUtil"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K8 ["Util"]
       38 GETTABLEKS                       R5 R5 K11 ["GroundRingUtil"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Src"]
       45 GETTABLEKS                       R6 R6 K8 ["Util"]
       47 GETTABLEKS                       R6 R6 K12 ["StudioColorsUtil"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K13 ["Bin"]
       54 GETTABLEKS                       R7 R7 K14 ["Common"]
       56 GETTABLEKS                       R7 R7 K15 ["defineLuaFlags"]
       58 CALL                             R6 1 1
       59 GETTABLEKS                       R6 R6 K16 ["getFFlagRenderGroundRings"]
       61 GETIMPORT                        R7 K18 [game]
       63 LOADK                            R9 K19 ["HandleAdornmentDoubleSided"]
       64 NAMECALL                         R7 R7 K20 ["GetFastFlag"]
       66 CALL                             R7 2 1
       67 GETIMPORT                        R8 K18 [game]
       69 LOADK                            R10 K21 ["Workspace"]
       70 NAMECALL                         R8 R8 K22 ["GetService"]
       72 CALL                             R8 2 1
       73 NEWTABLE                         R9 4 0
       75 LOADNIL                          R10
       76 LOADNIL                          R11
       77 LOADNIL                          R12
       78 LOADNIL                          R13
       79 LOADNIL                          R14
       80 LOADNIL                          R15
       81 LOADNIL                          R16
       82 LOADNIL                          R17
       83 LOADNIL                          R18
       84 DUPCLOSURE                       R19 K23 [PROTO_0]
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R7
       87 DUPCLOSURE                       R20 K24 [PROTO_1]
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R7
       90 NEWCLOSURE                       R21 P2
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R5
       93 CAPTURE                          REF R18
       94 DUPCLOSURE                       R22 K25 [PROTO_3]
       95 CAPTURE                          VAL R4
       96 DUPCLOSURE                       R23 K26 [PROTO_4]
       97 CAPTURE                          VAL R22
       98 CAPTURE                          VAL R4
       99 DUPCLOSURE                       R24 K27 [PROTO_5]
      100 NEWCLOSURE                       R25 P6
      101 CAPTURE                          REF R18
      102 CAPTURE                          VAL R23
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R4
      106 NEWCLOSURE                       R26 P7
      107 CAPTURE                          VAL R6
      108 CAPTURE                          REF R10
      109 CAPTURE                          REF R12
      110 CAPTURE                          REF R14
      111 CAPTURE                          VAL R25
      112 CAPTURE                          REF R11
      113 CAPTURE                          REF R13
      114 CAPTURE                          REF R15
      115 DUPCLOSURE                       R27 K28 [PROTO_8]
      116 DUPCLOSURE                       R28 K29 [PROTO_9]
      117 NEWCLOSURE                       R29 P10
      118 CAPTURE                          REF R10
      119 CAPTURE                          REF R11
      120 CAPTURE                          REF R12
      121 CAPTURE                          REF R13
      122 CAPTURE                          REF R14
      123 CAPTURE                          REF R15
      124 CAPTURE                          REF R16
      125 CAPTURE                          REF R17
      126 NEWCLOSURE                       R30 P11
      127 CAPTURE                          REF R10
      128 CAPTURE                          REF R11
      129 NEWCLOSURE                       R31 P12
      130 CAPTURE                          VAL R2
      131 CAPTURE                          REF R16
      132 CAPTURE                          REF R10
      133 CAPTURE                          REF R11
      134 CAPTURE                          REF R17
      135 CAPTURE                          VAL R26
      136 CAPTURE                          REF R12
      137 CAPTURE                          REF R13
      138 CAPTURE                          REF R14
      139 CAPTURE                          REF R15
      140 CAPTURE                          REF R18
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R7
      143 CAPTURE                          VAL R5
      144 DUPCLOSURE                       R32 K30 [PROTO_13]
      145 CAPTURE                          VAL R31
      146 SETTABLEKS                       R32 R9 K31 ["update"]
      148 NEWCLOSURE                       R32 P14
      149 CAPTURE                          REF R16
      150 CAPTURE                          REF R10
      151 CAPTURE                          REF R11
      152 CAPTURE                          REF R12
      153 CAPTURE                          REF R13
      154 CAPTURE                          REF R14
      155 CAPTURE                          REF R15
      156 CAPTURE                          REF R17
      157 SETTABLEKS                       R32 R9 K32 ["remove"]
      159 NEWCLOSURE                       R32 P15
      160 CAPTURE                          REF R18
      161 CAPTURE                          VAL R3
      162 NEWCLOSURE                       R33 P16
      163 CAPTURE                          REF R10
      164 CAPTURE                          REF R11
      165 CAPTURE                          REF R12
      166 CAPTURE                          REF R13
      167 CAPTURE                          REF R14
      168 CAPTURE                          REF R15
      169 CAPTURE                          REF R16
      170 CAPTURE                          REF R17
      171 CAPTURE                          REF R18
      172 CAPTURE                          VAL R3
      173 SETTABLEKS                       R33 R9 K33 ["onOpenView"]
      175 NEWCLOSURE                       R33 P17
      176 CAPTURE                          REF R10
      177 CAPTURE                          REF R11
      178 CAPTURE                          REF R12
      179 CAPTURE                          REF R13
      180 CAPTURE                          REF R14
      181 CAPTURE                          REF R15
      182 CAPTURE                          REF R16
      183 CAPTURE                          REF R17
      184 CAPTURE                          REF R18
      185 CAPTURE                          VAL R3
      186 SETTABLEKS                       R33 R9 K34 ["onCloseView"]
      188 CLOSEUPVALS                      R10
      189 RETURN                           R9 1
