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
       54 GETIMPORT                        R4 K18 [game]
       56 LOADK                            R6 K22 ["HttpService"]
       57 NAMECALL                         R4 R4 K20 ["GetService"]
       59 CALL                             R4 2 1
       60 GETIMPORT                        R5 K7 [require]
       62 GETTABLEKS                       R6 R0 K13 ["Bin"]
       64 GETTABLEKS                       R6 R6 K14 ["Common"]
       66 GETTABLEKS                       R6 R6 K23 ["StudioNetworking"]
       68 CALL                             R5 1 1
       69 GETIMPORT                        R6 K7 [require]
       71 GETTABLEKS                       R7 R0 K11 ["Src"]
       73 GETTABLEKS                       R7 R7 K24 ["Host"]
       75 GETTABLEKS                       R7 R7 K25 ["createSelectionHost"]
       77 CALL                             R6 1 1
       78 GETIMPORT                        R7 K7 [require]
       80 GETTABLEKS                       R8 R0 K11 ["Src"]
       82 GETTABLEKS                       R8 R8 K24 ["Host"]
       84 GETTABLEKS                       R8 R8 K26 ["buildTextureGenServices"]
       86 CALL                             R7 1 1
       87 GETIMPORT                        R8 K7 [require]
       89 GETTABLEKS                       R9 R0 K11 ["Src"]
       91 GETTABLEKS                       R9 R9 K24 ["Host"]
       93 GETTABLEKS                       R9 R9 K27 ["createGenerationHost"]
       95 CALL                             R8 1 1
       96 GETIMPORT                        R9 K7 [require]
       98 GETTABLEKS                       R10 R0 K8 ["Packages"]
      100 GETTABLEKS                       R10 R10 K28 ["LoadingSkeleton3D"]
      102 CALL                             R9 1 1
      103 LOADB                            R12 0
      104 NAMECALL                         R10 R4 K29 ["GenerateGUID"]
      106 CALL                             R10 2 1
      107 GETIMPORT                        R11 K7 [require]
      109 GETTABLEKS                       R12 R0 K8 ["Packages"]
      111 GETTABLEKS                       R12 R12 K30 ["React"]
      113 CALL                             R11 1 1
      114 GETIMPORT                        R12 K7 [require]
      116 GETTABLEKS                       R13 R0 K8 ["Packages"]
      118 GETTABLEKS                       R13 R13 K31 ["ReactRoblox"]
      120 CALL                             R12 1 1
      121 GETIMPORT                        R13 K7 [require]
      123 GETTABLEKS                       R14 R0 K11 ["Src"]
      125 GETTABLEKS                       R14 R14 K32 ["CoreGuiRoot"]
      127 CALL                             R13 1 1
      128 GETTABLEKS                       R14 R5 K33 ["create"]
      130 DUPTABLE                         R15 K39 [{[1], ["isGuest"] = False, ["isHost"] = True, ["useSuspendOverride"] = True}]
      131 GETIMPORT                        R16 K1 [plugin]
      133 SETTABLEKS                       R16 R15 K0 ["plugin"]
      135 CALL                             R14 1 1
      136 MOVE                             R15 R7
      137 GETIMPORT                        R16 K1 [plugin]
      139 CALL                             R15 1 2
      140 MOVE                             R17 R6
      141 MOVE                             R18 R14
      142 GETTABLEKS                       R19 R16 K40 ["registerInstance"]
      144 MOVE                             R20 R10
      145 CALL                             R17 3 1
      146 GETTABLEKS                       R18 R9 K41 ["destroyAll"]
      148 CALL                             R18 0 0
      149 MOVE                             R18 R8
      150 MOVE                             R19 R14
      151 MOVE                             R20 R15
      152 MOVE                             R21 R16
      153 MOVE                             R22 R17
      154 GETIMPORT                        R23 K1 [plugin]
      156 CALL                             R18 5 1
      157 GETIMPORT                        R19 K44 [Instance.new]
      159 LOADK                            R20 K45 ["Folder"]
      160 CALL                             R19 1 1
      161 LOADK                            R20 K4 ["Gen3d"]
      162 SETTABLEKS                       R20 R19 K46 ["Name"]
      164 GETIMPORT                        R20 K18 [game]
      166 GETTABLEKS                       R20 R20 K47 ["CoreGui"]
      168 SETTABLEKS                       R20 R19 K48 ["Parent"]
      170 GETIMPORT                        R20 K44 [Instance.new]
      172 LOADK                            R21 K49 ["ScreenGui"]
      173 CALL                             R20 1 1
      174 LOADK                            R21 K50 ["Gen3dGui"]
      175 SETTABLEKS                       R21 R20 K46 ["Name"]
      177 GETIMPORT                        R21 K54 [Enum.ZIndexBehavior.Sibling]
      179 SETTABLEKS                       R21 R20 K52 ["ZIndexBehavior"]
      181 LOADN                            R21 1000
      182 SETTABLEKS                       R21 R20 K55 ["DisplayOrder"]
      184 SETTABLEKS                       R19 R20 K48 ["Parent"]
      186 GETTABLEKS                       R21 R12 K56 ["createRoot"]
      188 MOVE                             R22 R20
      189 CALL                             R21 1 1
      190 GETTABLEKS                       R24 R11 K57 ["createElement"]
      192 MOVE                             R25 R13
      193 DUPTABLE                         R26 K60 [{"Plugin", "EditSessionId"}]
      194 GETIMPORT                        R27 K1 [plugin]
      196 SETTABLEKS                       R27 R26 K58 ["Plugin"]
      198 SETTABLEKS                       R10 R26 K59 ["EditSessionId"]
      200 CALL                             R24 2 -1
      201 NAMECALL                         R22 R21 K61 ["render"]
      203 CALL                             R22 -1 0
      204 GETIMPORT                        R22 K1 [plugin]
      206 GETTABLEKS                       R22 R22 K62 ["Unloading"]
      208 NEWCLOSURE                       R24 P0
      209 CAPTURE                          REF R21
      210 CAPTURE                          REF R19
      211 CAPTURE                          VAL R18
      212 CAPTURE                          VAL R16
      213 CAPTURE                          VAL R17
      214 CAPTURE                          VAL R5
      215 NAMECALL                         R22 R22 K63 ["Connect"]
      217 CALL                             R22 2 0
      218 CLOSEUPVALS                      R19
      219 RETURN                           R0 0
