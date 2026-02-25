PROTO_0:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R2
        2 MOVE                             R6 R3
        3 CALL                             R4 2 1
        4 LOADN                            R5 0
        5 MOVE                             R6 R4
        6 LOADNIL                          R7
        7 LOADNIL                          R8
        8 FORGPREP                         R6
        9 GETUPVAL                         R11 1
       10 LOADK                            R15 K0 ["Materials"]
       11 GETTABLEKS                       R16 R10 K1 ["Name"]
       13 NAMECALL                         R13 R0 K2 ["getText"]
       15 CALL                             R13 3 1
       16 GETTABLEKS                       R14 R1 K3 ["FontSize"]
       18 GETTABLEKS                       R15 R1 K4 ["Font"]
       20 GETIMPORT                        R16 K7 [Vector2.new]
       22 LOADK                            R17 K8 [∞]
       23 LOADK                            R18 K8 [∞]
       24 CALL                             R16 2 -1
       25 NAMECALL                         R11 R11 K9 ["GetTextSize"]
       27 CALL                             R11 -1 1
       28 GETTABLEKS                       R12 R11 K10 ["X"]
       30 JUMPIFNOTLT                      R5 R12 ; [+3]
       32 GETTABLEKS                       R5 R11 K10 ["X"]
       34 FORGLOOP                         R6 2 ; [-26]
       36 GETTABLEKS                       R10 R1 K11 ["PreviewSize"]
       38 ADD                              R9 R5 R10
       39 GETTABLEKS                       R10 R1 K12 ["Spacing"]
       41 ADD                              R8 R9 R10
       42 GETTABLEKS                       R9 R1 K13 ["SelectInputArrowSize"]
       44 ADD                              R7 R8 R9
       45 GETTABLEKS                       R9 R1 K15 ["DropdownPadding"]
       47 MULK                             R8 R9 K14 [2]
       48 ADD                              R6 R7 R8
       49 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TextService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["TerrainEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R5 R1 K10 ["Src"]
       17 GETTABLEKS                       R4 R5 K11 ["Util"]
       19 GETTABLEKS                       R3 R4 K12 ["getMaterials"]
       21 CALL                             R2 1 1
       22 DUPCLOSURE                       R3 K13 [PROTO_0]
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R0
       25 RETURN                           R3 1
