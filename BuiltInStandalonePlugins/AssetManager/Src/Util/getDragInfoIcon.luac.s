PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["SourceZone"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["UiZone"]
        5 GETTABLEKS                       R4 R4 K2 ["Sidebar"]
        7 JUMPIFNOTEQ                      R3 R4 ; [+9]
        9 GETUPVAL                         R3 1
       10 LOADK                            R5 K3 ["Folder"]
       11 NAMECALL                         R3 R3 K4 ["GetClassIcon"]
       13 CALL                             R3 2 1
       14 GETTABLEKS                       R3 R3 K5 ["Image"]
       16 RETURN                           R3 1
       17 LOADNIL                          R3
       18 LOADB                            R4 0
       19 GETTABLEKS                       R5 R0 K6 ["DraggedItems"]
       21 MOVE                             R6 R5
       22 LOADNIL                          R7
       23 LOADNIL                          R8
       24 FORGPREP                         R6
       25 GETTABLEKS                       R13 R2 K7 ["Uid"]
       27 MOVE                             R14 R10
       28 GETUPVAL                         R15 0
       29 GETTABLEKS                       R15 R15 K8 ["AssetInfoField"]
       31 GETTABLEKS                       R15 R15 K9 ["AssetType"]
       33 NAMECALL                         R11 R1 K10 ["getItemField"]
       35 CALL                             R11 4 1
       36 JUMPIFNOT                        R3 ; [+4]
       37 JUMPIFEQ                         R11 R3 ; [+3]
       39 LOADB                            R4 1
       40 JUMP                             ; [+3]
       41 MOVE                             R3 R11
       42 FORGLOOP                         R6 2 ; [-18]
       44 LOADK                            R6 K11 ["Model"]
       45 JUMPIFNOT                        R3 ; [+102]
       46 JUMPIF                           R4 ; [+101]
       47 GETUPVAL                         R7 0
       48 GETTABLEKS                       R7 R7 K9 ["AssetType"]
       50 GETTABLEKS                       R7 R7 K12 ["Animation"]
       52 JUMPIFNOTEQ                      R3 R7 ; [+3]
       54 LOADK                            R6 K12 ["Animation"]
       55 JUMP                             ; [+92]
       56 GETUPVAL                         R7 0
       57 GETTABLEKS                       R7 R7 K9 ["AssetType"]
       59 GETTABLEKS                       R7 R7 K13 ["Audio"]
       61 JUMPIFNOTEQ                      R3 R7 ; [+3]
       63 LOADK                            R6 K14 ["Sound"]
       64 JUMP                             ; [+83]
       65 GETUPVAL                         R7 0
       66 GETTABLEKS                       R7 R7 K9 ["AssetType"]
       68 GETTABLEKS                       R7 R7 K15 ["Decal"]
       70 JUMPIFEQ                         R3 R7 ; [+8]
       72 GETUPVAL                         R7 0
       73 GETTABLEKS                       R7 R7 K9 ["AssetType"]
       75 GETTABLEKS                       R7 R7 K5 ["Image"]
       77 JUMPIFNOTEQ                      R3 R7 ; [+3]
       79 LOADK                            R6 K15 ["Decal"]
       80 JUMP                             ; [+67]
       81 GETUPVAL                         R7 0
       82 GETTABLEKS                       R7 R7 K9 ["AssetType"]
       84 GETTABLEKS                       R7 R7 K16 ["FontFamily"]
       86 JUMPIFNOTEQ                      R3 R7 ; [+3]
       88 LOADK                            R6 K17 ["UITextSizeConstraint"]
       89 JUMP                             ; [+58]
       90 GETUPVAL                         R7 0
       91 GETTABLEKS                       R7 R7 K9 ["AssetType"]
       93 GETTABLEKS                       R7 R7 K18 ["Mesh"]
       95 JUMPIFNOTEQ                      R3 R7 ; [+3]
       97 LOADK                            R6 K19 ["BlockMesh"]
       98 JUMP                             ; [+49]
       99 GETUPVAL                         R7 0
      100 GETTABLEKS                       R7 R7 K9 ["AssetType"]
      102 GETTABLEKS                       R7 R7 K20 ["MeshPart"]
      104 JUMPIFNOTEQ                      R3 R7 ; [+3]
      106 LOADK                            R6 K20 ["MeshPart"]
      107 JUMP                             ; [+40]
      108 GETUPVAL                         R7 0
      109 GETTABLEKS                       R7 R7 K9 ["AssetType"]
      111 GETTABLEKS                       R7 R7 K11 ["Model"]
      113 JUMPIFEQ                         R3 R7 ; [+15]
      115 GETUPVAL                         R7 0
      116 GETTABLEKS                       R7 R7 K9 ["AssetType"]
      118 GETTABLEKS                       R7 R7 K21 ["Place"]
      120 JUMPIFEQ                         R3 R7 ; [+8]
      122 GETUPVAL                         R7 0
      123 GETTABLEKS                       R7 R7 K9 ["AssetType"]
      125 GETTABLEKS                       R7 R7 K22 ["Plugin"]
      127 JUMPIFNOTEQ                      R3 R7 ; [+3]
      129 LOADK                            R6 K11 ["Model"]
      130 JUMP                             ; [+17]
      131 GETUPVAL                         R7 0
      132 GETTABLEKS                       R7 R7 K9 ["AssetType"]
      134 GETTABLEKS                       R7 R7 K23 ["Video"]
      136 JUMPIFNOTEQ                      R3 R7 ; [+3]
      138 LOADK                            R6 K24 ["VideoFrame"]
      139 JUMP                             ; [+8]
      140 GETUPVAL                         R7 0
      141 GETTABLEKS                       R7 R7 K9 ["AssetType"]
      143 GETTABLEKS                       R7 R7 K3 ["Folder"]
      145 JUMPIFNOTEQ                      R3 R7 ; [+2]
      147 LOADK                            R6 K3 ["Folder"]
      148 GETUPVAL                         R7 1
      149 MOVE                             R9 R6
      150 NAMECALL                         R7 R7 K4 ["GetClassIcon"]
      152 CALL                             R7 2 1
      153 GETTABLEKS                       R7 R7 K5 ["Image"]
      155 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["GetService"]
       18 LOADK                            R3 K10 ["StudioService"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R0 K6 ["Src"]
       24 GETTABLEKS                       R4 R4 K11 ["Types"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R0 K6 ["Src"]
       31 GETTABLEKS                       R5 R5 K12 ["Controllers"]
       33 GETTABLEKS                       R5 R5 K13 ["ItemsCache"]
       35 CALL                             R4 1 1
       36 DUPCLOSURE                       R5 K14 [PROTO_0]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 RETURN                           R5 1
