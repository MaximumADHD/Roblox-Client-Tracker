PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["EnumType"]
        2 NAMECALL                         R1 R1 K1 ["GetEnumItems"]
        4 CALL                             R1 1 1
        5 GETIMPORT                        R2 K3 [ipairs]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 3
        9 FORGPREP_INEXT                   R2
       10 GETTABLEKS                       R7 R6 K4 ["Name"]
       12 SETTABLE                         R7 R1 R5
       13 FORGLOOP                         R2 2 [inext] ; [-4]
       15 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R2 K1 [ipairs]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 3
        4 FORGPREP_INEXT                   R2
        5 GETTABLEKS                       R7 R0 K2 ["Name"]
        7 JUMPIFNOTEQ                      R6 R7 ; [+2]
        9 RETURN                           R5 1
       10 FORGLOOP                         R2 2 [inext] ; [-6]
       12 LOADNIL                          R2
       13 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+5]
        2 GETUPVAL                         R2 0
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnSelectItem"]
        3 GETUPVAL                         R4 1
        4 GETTABLE                         R3 R4 R1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["Value"]
        2 GETTABLEKS                       R3 R2 K1 ["EnumType"]
        4 NAMECALL                         R3 R3 K2 ["GetEnumItems"]
        6 CALL                             R3 1 1
        7 GETIMPORT                        R4 K4 [ipairs]
        9 MOVE                             R5 R3
       10 CALL                             R4 1 3
       11 FORGPREP_INEXT                   R4
       12 GETTABLEKS                       R9 R8 K5 ["Name"]
       14 SETTABLE                         R9 R3 R7
       15 FORGLOOP                         R4 2 [inext] ; [-4]
       17 MOVE                             R1 R3
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R3 R0 K5 ["Name"]
       21 GETTABLEKS                       R4 R0 K6 ["DependentValues"]
       23 GETTABLEKS                       R5 R0 K7 ["AssetImportSession"]
       25 CALL                             R2 3 1
       26 GETUPVAL                         R3 1
       27 MOVE                             R4 R1
       28 NEWCLOSURE                       R5 P0
       29 CAPTURE                          VAL R2
       30 CALL                             R3 2 1
       31 MOVE                             R1 R3
       32 NEWTABLE                         R3 0 0
       34 GETIMPORT                        R4 K4 [ipairs]
       36 MOVE                             R5 R1
       37 CALL                             R4 1 3
       38 FORGPREP_INEXT                   R4
       39 GETTABLEKS                       R9 R0 K8 ["Localization"]
       41 LOADK                            R11 K9 ["EnumItem"]
       42 MOVE                             R12 R8
       43 NAMECALL                         R9 R9 K10 ["getText"]
       45 CALL                             R9 3 1
       46 SETTABLE                         R9 R3 R7
       47 FORGLOOP                         R4 2 [inext] ; [-9]
       49 GETUPVAL                         R4 2
       50 GETTABLEKS                       R4 R4 K11 ["createElement"]
       52 GETUPVAL                         R5 3
       53 DUPTABLE                         R6 K15 [{"LayoutOrder", "AutomaticSize", "Size"}]
       54 GETTABLEKS                       R7 R0 K12 ["LayoutOrder"]
       56 SETTABLEKS                       R7 R6 K12 ["LayoutOrder"]
       58 GETIMPORT                        R7 K18 [Enum.AutomaticSize.Y]
       60 SETTABLEKS                       R7 R6 K13 ["AutomaticSize"]
       62 GETTABLEKS                       R7 R0 K14 ["Size"]
       64 SETTABLEKS                       R7 R6 K14 ["Size"]
       66 DUPTABLE                         R7 K20 [{"WrapperContents"}]
       67 GETUPVAL                         R8 2
       68 GETTABLEKS                       R8 R8 K11 ["createElement"]
       70 GETUPVAL                         R9 4
       71 DUPTABLE                         R10 K27 [{["OnItemActivated"], ["Items"], ["SelectedIndex"], ["Focus"], ["Size"], ["TextWrapped"] = True}]
       72 NEWCLOSURE                       R11 P1
       73 CAPTURE                          VAL R0
       74 CAPTURE                          REF R1
       75 SETTABLEKS                       R11 R10 K21 ["OnItemActivated"]
       77 SETTABLEKS                       R3 R10 K22 ["Items"]
       79 GETTABLEKS                       R12 R0 K0 ["Value"]
       81 MOVE                             R13 R1
       82 GETIMPORT                        R14 K4 [ipairs]
       84 MOVE                             R15 R13
       85 CALL                             R14 1 3
       86 FORGPREP_INEXT                   R14
       87 GETTABLEKS                       R19 R12 K5 ["Name"]
       89 JUMPIFNOTEQ                      R18 R19 ; [+3]
       91 MOVE                             R11 R17
       92 JUMP                             ; [+3]
       93 FORGLOOP                         R14 2 [inext] ; [-7]
       95 LOADNIL                          R11
       96 SETTABLEKS                       R11 R10 K23 ["SelectedIndex"]
       98 GETTABLEKS                       R11 R0 K0 ["Value"]
      100 GETTABLEKS                       R11 R11 K5 ["Name"]
      102 SETTABLEKS                       R11 R10 K24 ["Focus"]
      104 GETIMPORT                        R11 K30 [UDim2.fromScale]
      106 LOADN                            R12 1
      107 LOADN                            R13 1
      108 CALL                             R11 2 1
      109 SETTABLEKS                       R11 R10 K14 ["Size"]
      111 CALL                             R8 2 1
      112 SETTABLEKS                       R8 R7 K19 ["WrapperContents"]
      114 CALL                             R4 3 -1
      115 CLOSEUPVALS                      R1
      116 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["RoactCompat"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Dash"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["UI"]
       30 GETTABLEKS                       R5 R4 K11 ["Pane"]
       32 GETTABLEKS                       R6 R4 K12 ["SelectInput"]
       34 GETTABLEKS                       R7 R3 K13 ["filter"]
       36 GETIMPORT                        R8 K5 [require]
       38 GETTABLEKS                       R9 R0 K14 ["Src"]
       40 GETTABLEKS                       R9 R9 K15 ["Utility"]
       42 GETTABLEKS                       R9 R9 K16 ["DependencyHandler"]
       44 CALL                             R8 1 1
       45 DUPCLOSURE                       R9 K17 [PROTO_0]
       46 DUPCLOSURE                       R10 K18 [PROTO_1]
       47 DUPCLOSURE                       R11 K19 [PROTO_4]
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R6
       53 RETURN                           R11 1
