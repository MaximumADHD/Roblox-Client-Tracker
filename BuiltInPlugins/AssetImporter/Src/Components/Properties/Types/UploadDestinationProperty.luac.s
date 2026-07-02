PROTO_0:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 JUMPIFNOTEQ                      R6 R0 ; [+2]
        6 RETURN                           R5 1
        7 FORGLOOP                         R2 2 ; [-4]
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnSetItem"]
        3 GETUPVAL                         R4 1
        4 GETTABLE                         R3 R4 R1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 NEWTABLE                         R2 0 1
        6 GETTABLEKS                       R3 R0 K1 ["Localization"]
        8 LOADK                            R5 K2 ["UploadDestination"]
        9 LOADK                            R6 K3 ["Me"]
       10 NAMECALL                         R3 R3 K4 ["getText"]
       12 CALL                             R3 3 -1
       13 SETLIST                          R2 R3 -1 [1]
       15 NEWTABLE                         R3 0 1
       17 LOADN                            R4 -1
       18 SETLIST                          R3 R4 1 [1]
       20 GETTABLEKS                       R4 R1 K5 ["managedGroups"]
       22 LOADNIL                          R5
       23 LOADNIL                          R6
       24 FORGPREP                         R4
       25 GETTABLEKS                       R11 R8 K6 ["name"]
       27 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       29 MOVE                             R10 R2
       30 GETIMPORT                        R9 K9 [table.insert]
       32 CALL                             R9 2 0
       33 GETTABLEKS                       R11 R8 K10 ["id"]
       35 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       37 MOVE                             R10 R3
       38 GETIMPORT                        R9 K9 [table.insert]
       40 CALL                             R9 2 0
       41 FORGLOOP                         R4 2 ; [-17]
       43 GETTABLEKS                       R5 R0 K11 ["Value"]
       45 MOVE                             R6 R3
       46 LOADNIL                          R7
       47 LOADNIL                          R8
       48 FORGPREP                         R6
       49 JUMPIFNOTEQ                      R10 R5 ; [+3]
       51 MOVE                             R4 R9
       52 JUMP                             ; [+3]
       53 FORGLOOP                         R6 2 ; [-5]
       55 LOADNIL                          R4
       56 GETUPVAL                         R5 1
       57 GETTABLEKS                       R5 R5 K12 ["createElement"]
       59 GETUPVAL                         R6 2
       60 DUPTABLE                         R7 K16 [{"LayoutOrder", "AutomaticSize", "Size"}]
       61 GETTABLEKS                       R8 R0 K13 ["LayoutOrder"]
       63 SETTABLEKS                       R8 R7 K13 ["LayoutOrder"]
       65 GETIMPORT                        R8 K19 [Enum.AutomaticSize.Y]
       67 SETTABLEKS                       R8 R7 K14 ["AutomaticSize"]
       69 GETTABLEKS                       R8 R0 K15 ["Size"]
       71 SETTABLEKS                       R8 R7 K15 ["Size"]
       73 DUPTABLE                         R8 K21 [{"WrapperContents"}]
       74 GETUPVAL                         R9 1
       75 GETTABLEKS                       R9 R9 K12 ["createElement"]
       77 GETUPVAL                         R10 3
       78 DUPTABLE                         R11 K28 [{"OnItemActivated", "Items", "SelectedIndex", "Focus", "Size", "TextTruncate", "Enabled"}]
       79 NEWCLOSURE                       R12 P0
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R3
       82 SETTABLEKS                       R12 R11 K22 ["OnItemActivated"]
       84 SETTABLEKS                       R2 R11 K23 ["Items"]
       86 SETTABLEKS                       R4 R11 K24 ["SelectedIndex"]
       88 GETTABLE                         R12 R2 R4
       89 SETTABLEKS                       R12 R11 K25 ["Focus"]
       91 GETIMPORT                        R12 K31 [UDim2.fromScale]
       93 LOADN                            R13 1
       94 LOADN                            R14 1
       95 CALL                             R12 2 1
       96 SETTABLEKS                       R12 R11 K15 ["Size"]
       98 GETIMPORT                        R12 K33 [Enum.TextTruncate.AtEnd]
      100 SETTABLEKS                       R12 R11 K26 ["TextTruncate"]
      102 GETTABLEKS                       R12 R0 K27 ["Enabled"]
      104 SETTABLEKS                       R12 R11 K27 ["Enabled"]
      106 CALL                             R9 2 1
      107 SETTABLEKS                       R9 R8 K20 ["WrapperContents"]
      109 CALL                             R5 3 -1
      110 RETURN                           R5 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["UI"]
       23 GETTABLEKS                       R4 R3 K10 ["Pane"]
       25 GETTABLEKS                       R5 R3 K11 ["SelectInput"]
       27 GETIMPORT                        R6 K5 [require]
       29 GETTABLEKS                       R7 R0 K12 ["Src"]
       31 GETTABLEKS                       R7 R7 K13 ["Controllers"]
       33 GETTABLEKS                       R7 R7 K14 ["FileController"]
       35 CALL                             R6 1 1
       36 DUPCLOSURE                       R7 K15 [PROTO_0]
       37 DUPCLOSURE                       R8 K16 [PROTO_2]
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R5
       42 RETURN                           R8 1
