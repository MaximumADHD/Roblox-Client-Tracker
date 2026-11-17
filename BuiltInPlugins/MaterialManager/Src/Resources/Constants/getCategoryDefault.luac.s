PROTO_0:
        0 LOADNIL                          R1
        1 GETUPVAL                         R1 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLE                         R1 R1 R6
        7 JUMPIF                           R1 ; [+1]
        8 RETURN                           R1 1
        9 FORGLOOP                         R2 2 ; [-4]
       11 FASTCALL1                        TYPE R1 ; [+3]
       12 MOVE                             R3 R1
       13 GETIMPORT                        R2 K1 [type]
       15 CALL                             R2 1 1
       16 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+3]
       18 LOADNIL                          R2
       19 RETURN                           R2 1
       20 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Types"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K7 ["Flags"]
       24 CALL                             R2 1 1
       25 DUPTABLE                         R3 K9 [{"Materials"}]
       26 DUPTABLE                         R4 K22 [{"Ceramic", "Concrete", "Fabric", "Ground", "Metal", "Organic", "Paper", "Plastic", "Rock", "Stone", "Synthetic", "Wood"}]
       27 GETIMPORT                        R5 K26 [Enum.Material.CeramicTiles]
       29 SETTABLEKS                       R5 R4 K10 ["Ceramic"]
       31 GETIMPORT                        R5 K27 [Enum.Material.Concrete]
       33 SETTABLEKS                       R5 R4 K11 ["Concrete"]
       35 GETIMPORT                        R5 K28 [Enum.Material.Fabric]
       37 SETTABLEKS                       R5 R4 K12 ["Fabric"]
       39 GETIMPORT                        R5 K29 [Enum.Material.Ground]
       41 SETTABLEKS                       R5 R4 K13 ["Ground"]
       43 GETIMPORT                        R5 K30 [Enum.Material.Metal]
       45 SETTABLEKS                       R5 R4 K14 ["Metal"]
       47 GETIMPORT                        R5 K32 [Enum.Material.Ice]
       49 SETTABLEKS                       R5 R4 K15 ["Organic"]
       51 GETIMPORT                        R5 K34 [Enum.Material.Cardboard]
       53 SETTABLEKS                       R5 R4 K16 ["Paper"]
       55 GETIMPORT                        R5 K35 [Enum.Material.Plastic]
       57 SETTABLEKS                       R5 R4 K17 ["Plastic"]
       59 GETIMPORT                        R5 K36 [Enum.Material.Rock]
       61 SETTABLEKS                       R5 R4 K18 ["Rock"]
       63 GETIMPORT                        R5 K38 [Enum.Material.Slate]
       65 SETTABLEKS                       R5 R4 K19 ["Stone"]
       67 GETIMPORT                        R5 K40 [Enum.Material.Rubber]
       69 SETTABLEKS                       R5 R4 K20 ["Synthetic"]
       71 GETIMPORT                        R5 K41 [Enum.Material.Wood]
       73 SETTABLEKS                       R5 R4 K21 ["Wood"]
       75 SETTABLEKS                       R4 R3 K8 ["Materials"]
       77 DUPCLOSURE                       R4 K42 [PROTO_0]
       78 CAPTURE                          VAL R3
       79 RETURN                           R4 1
