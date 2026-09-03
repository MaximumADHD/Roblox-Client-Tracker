PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["unmount"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R0 1
       11 NAMECALL                         R0 R0 K1 ["Destroy"]
       13 CALL                             R0 1 0
       14 LOADNIL                          R0
       15 SETUPVAL                         R0 1
       16 GETUPVAL                         R0 2
       17 GETTABLEKS                       R0 R0 K2 ["destroy"]
       19 CALL                             R0 0 0
       20 GETUPVAL                         R0 3
       21 JUMPIFNOT                        R0 ; [+4]
       22 GETUPVAL                         R0 3
       23 GETTABLEKS                       R0 R0 K2 ["destroy"]
       25 CALL                             R0 0 0
       26 GETUPVAL                         R0 4
       27 GETTABLEKS                       R0 R0 K2 ["destroy"]
       29 CALL                             R0 0 0
       30 GETUPVAL                         R0 5
       31 GETTABLEKS                       R0 R0 K2 ["destroy"]
       33 CALL                             R0 0 0
       34 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["Gen3d"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R2 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["launch"]
       20 LOADK                            R3 K4 ["Gen3d"]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R1 K12 ["isCli"]
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K7 [require]
       31 GETTABLEKS                       R3 R0 K13 ["Bin"]
       33 GETTABLEKS                       R3 R3 K14 ["Common"]
       35 GETTABLEKS                       R3 R3 K15 ["defineLuaFlags"]
       37 CALL                             R2 1 1
       38 GETTABLEKS                       R3 R2 K16 ["getFFlagEnableTextureGenStudio"]
       40 CALL                             R3 0 1
       41 JUMPIF                           R3 ; [+1]
       42 RETURN                           R0 0
       43 GETIMPORT                        R3 K18 [game]
       45 LOADK                            R5 K19 ["RunService"]
       46 NAMECALL                         R3 R3 K20 ["GetService"]
       48 CALL                             R3 2 1
       49 NAMECALL                         R4 R3 K21 ["IsEdit"]
       51 CALL                             R4 1 1
       52 JUMPIF                           R4 ; [+1]
       53 RETURN                           R0 0
       54 GETIMPORT                        R4 K7 [require]
       56 GETTABLEKS                       R5 R0 K13 ["Bin"]
       58 GETTABLEKS                       R5 R5 K14 ["Common"]
       60 GETTABLEKS                       R5 R5 K22 ["StudioNetworking"]
       62 CALL                             R4 1 1
       63 GETIMPORT                        R5 K7 [require]
       65 GETTABLEKS                       R6 R0 K11 ["Src"]
       67 GETTABLEKS                       R6 R6 K23 ["Host"]
       69 GETTABLEKS                       R6 R6 K24 ["createSelectionHost"]
       71 CALL                             R5 1 1
       72 GETIMPORT                        R6 K7 [require]
       74 GETTABLEKS                       R7 R0 K11 ["Src"]
       76 GETTABLEKS                       R7 R7 K23 ["Host"]
       78 GETTABLEKS                       R7 R7 K25 ["buildTextureGenServices"]
       80 CALL                             R6 1 1
       81 GETIMPORT                        R7 K7 [require]
       83 GETTABLEKS                       R8 R0 K11 ["Src"]
       85 GETTABLEKS                       R8 R8 K23 ["Host"]
       87 GETTABLEKS                       R8 R8 K26 ["createGenerationHost"]
       89 CALL                             R7 1 1
       90 GETIMPORT                        R8 K7 [require]
       92 GETTABLEKS                       R9 R0 K8 ["Packages"]
       94 GETTABLEKS                       R9 R9 K27 ["LoadingSkeleton3D"]
       96 CALL                             R8 1 1
       97 GETIMPORT                        R9 K7 [require]
       99 GETTABLEKS                       R10 R0 K8 ["Packages"]
      101 GETTABLEKS                       R10 R10 K28 ["React"]
      103 CALL                             R9 1 1
      104 GETIMPORT                        R10 K7 [require]
      106 GETTABLEKS                       R11 R0 K8 ["Packages"]
      108 GETTABLEKS                       R11 R11 K29 ["ReactRoblox"]
      110 CALL                             R10 1 1
      111 GETIMPORT                        R11 K7 [require]
      113 GETTABLEKS                       R12 R0 K11 ["Src"]
      115 GETTABLEKS                       R12 R12 K30 ["CoreGuiRoot"]
      117 CALL                             R11 1 1
      118 GETTABLEKS                       R12 R4 K31 ["create"]
      120 DUPTABLE                         R13 K37 [{[1], ["isGuest"] = False, ["isHost"] = True, ["useSuspendOverride"] = True}]
      121 GETIMPORT                        R14 K1 [plugin]
      123 SETTABLEKS                       R14 R13 K0 ["plugin"]
      125 CALL                             R12 1 1
      126 MOVE                             R13 R6
      127 GETIMPORT                        R14 K1 [plugin]
      129 CALL                             R13 1 2
      130 MOVE                             R15 R5
      131 MOVE                             R16 R12
      132 GETTABLEKS                       R17 R14 K38 ["registerInstance"]
      134 CALL                             R15 2 1
      135 GETTABLEKS                       R16 R8 K39 ["destroyAll"]
      137 CALL                             R16 0 0
      138 MOVE                             R16 R7
      139 MOVE                             R17 R12
      140 MOVE                             R18 R13
      141 MOVE                             R19 R14
      142 MOVE                             R20 R15
      143 GETIMPORT                        R21 K1 [plugin]
      145 CALL                             R16 5 1
      146 GETIMPORT                        R17 K42 [Instance.new]
      148 LOADK                            R18 K43 ["Folder"]
      149 CALL                             R17 1 1
      150 LOADK                            R18 K4 ["Gen3d"]
      151 SETTABLEKS                       R18 R17 K44 ["Name"]
      153 GETIMPORT                        R18 K18 [game]
      155 GETTABLEKS                       R18 R18 K45 ["CoreGui"]
      157 SETTABLEKS                       R18 R17 K46 ["Parent"]
      159 GETIMPORT                        R18 K42 [Instance.new]
      161 LOADK                            R19 K47 ["ScreenGui"]
      162 CALL                             R18 1 1
      163 LOADK                            R19 K48 ["Gen3dGui"]
      164 SETTABLEKS                       R19 R18 K44 ["Name"]
      166 GETIMPORT                        R19 K52 [Enum.ZIndexBehavior.Sibling]
      168 SETTABLEKS                       R19 R18 K50 ["ZIndexBehavior"]
      170 LOADN                            R19 1000
      171 SETTABLEKS                       R19 R18 K53 ["DisplayOrder"]
      173 SETTABLEKS                       R17 R18 K46 ["Parent"]
      175 GETTABLEKS                       R19 R10 K54 ["createRoot"]
      177 MOVE                             R20 R18
      178 CALL                             R19 1 1
      179 GETTABLEKS                       R22 R9 K55 ["createElement"]
      181 MOVE                             R23 R11
      182 DUPTABLE                         R24 K57 [{"Plugin"}]
      183 GETIMPORT                        R25 K1 [plugin]
      185 SETTABLEKS                       R25 R24 K56 ["Plugin"]
      187 CALL                             R22 2 -1
      188 NAMECALL                         R20 R19 K58 ["render"]
      190 CALL                             R20 -1 0
      191 GETIMPORT                        R20 K1 [plugin]
      193 GETTABLEKS                       R20 R20 K59 ["Unloading"]
      195 NEWCLOSURE                       R22 P0
      196 CAPTURE                          REF R19
      197 CAPTURE                          REF R17
      198 CAPTURE                          VAL R16
      199 CAPTURE                          VAL R14
      200 CAPTURE                          VAL R15
      201 CAPTURE                          VAL R4
      202 NAMECALL                         R20 R20 K60 ["Connect"]
      204 CALL                             R20 2 0
      205 CLOSEUPVALS                      R17
      206 RETURN                           R0 0
