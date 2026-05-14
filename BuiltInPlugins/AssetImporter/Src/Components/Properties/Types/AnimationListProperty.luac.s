PROTO_0:
        0 MOVE                             R3 R2
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 FASTCALL1                        TOSTRING R0 ; [+3]
        5 MOVE                             R9 R0
        6 GETIMPORT                        R8 K1 [tostring]
        8 CALL                             R8 1 1
        9 JUMPIFNOTEQ                      R8 R7 ; [+7]
       11 GETIMPORT                        R8 K4 [table.find]
       13 MOVE                             R9 R1
       14 MOVE                             R10 R6
       15 CALL                             R8 2 -1
       16 RETURN                           R8 -1
       17 FORGLOOP                         R3 2 ; [-14]
       19 LOADN                            R3 1
       20 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnSetItem"]
        3 GETUPVAL                         R4 1
        4 GETUPVAL                         R6 2
        5 GETTABLE                         R5 R6 R1
        6 GETTABLE                         R3 R4 R5
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Instance"]
        3 CALL                             R1 1 1
        4 NEWTABLE                         R2 0 0
        6 NEWTABLE                         R3 0 0
        8 GETIMPORT                        R4 K2 [pairs]
       10 MOVE                             R5 R1
       11 CALL                             R4 1 3
       12 FORGPREP_NEXT                    R4
       13 GETTABLEKS                       R9 R8 K3 ["ImportName"]
       15 GETTABLEKS                       R10 R8 K4 ["Id"]
       17 SETTABLE                         R10 R2 R9
       18 GETTABLEKS                       R11 R8 K3 ["ImportName"]
       20 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       22 MOVE                             R10 R3
       23 GETIMPORT                        R9 K7 [table.insert]
       25 CALL                             R9 2 0
       26 FORGLOOP                         R4 2 ; [-14]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R4 R4 K8 ["createElement"]
       31 GETUPVAL                         R5 2
       32 DUPTABLE                         R6 K11 [{"LayoutOrder", "Size"}]
       33 GETTABLEKS                       R7 R0 K9 ["LayoutOrder"]
       35 SETTABLEKS                       R7 R6 K9 ["LayoutOrder"]
       37 GETTABLEKS                       R7 R0 K10 ["Size"]
       39 SETTABLEKS                       R7 R6 K10 ["Size"]
       41 DUPTABLE                         R7 K13 [{"WrapperContents"}]
       42 GETUPVAL                         R8 1
       43 GETTABLEKS                       R8 R8 K8 ["createElement"]
       45 GETUPVAL                         R9 3
       46 DUPTABLE                         R10 K19 [{"OnItemActivated", "Items", "SelectedIndex", "Focus", "TextWrapped", "Size"}]
       47 NEWCLOSURE                       R11 P0
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R3
       51 SETTABLEKS                       R11 R10 K14 ["OnItemActivated"]
       53 SETTABLEKS                       R3 R10 K15 ["Items"]
       55 GETUPVAL                         R11 4
       56 GETTABLEKS                       R12 R0 K20 ["Value"]
       58 MOVE                             R13 R3
       59 MOVE                             R14 R2
       60 CALL                             R11 3 1
       61 SETTABLEKS                       R11 R10 K16 ["SelectedIndex"]
       63 GETTABLEKS                       R11 R0 K20 ["Value"]
       65 SETTABLEKS                       R11 R10 K17 ["Focus"]
       67 LOADB                            R11 1
       68 SETTABLEKS                       R11 R10 K18 ["TextWrapped"]
       70 GETIMPORT                        R11 K23 [UDim2.fromScale]
       72 LOADN                            R12 1
       73 LOADN                            R13 1
       74 CALL                             R11 2 1
       75 SETTABLEKS                       R11 R10 K10 ["Size"]
       77 CALL                             R8 2 1
       78 SETTABLEKS                       R8 R7 K12 ["WrapperContents"]
       80 CALL                             R4 3 -1
       81 RETURN                           R4 -1

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
       21 GETTABLEKS                       R3 R1 K9 ["UI"]
       23 GETTABLEKS                       R4 R3 K10 ["Pane"]
       25 GETTABLEKS                       R5 R3 K11 ["SelectInput"]
       27 GETIMPORT                        R6 K5 [require]
       29 GETTABLEKS                       R7 R0 K12 ["Src"]
       31 GETTABLEKS                       R7 R7 K13 ["Utility"]
       33 GETTABLEKS                       R7 R7 K14 ["getAnimations"]
       35 CALL                             R6 1 1
       36 DUPCLOSURE                       R7 K15 [PROTO_0]
       37 DUPCLOSURE                       R8 K16 [PROTO_2]
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R7
       43 RETURN                           R8 1
