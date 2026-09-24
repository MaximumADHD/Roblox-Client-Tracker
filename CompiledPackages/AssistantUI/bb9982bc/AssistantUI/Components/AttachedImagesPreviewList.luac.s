PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onRemoveImage"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["attachedImages"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 LOADK                            R7 K1 ["ImagePreview_%*"]
        8 MOVE                             R9 R5
        9 NAMECALL                         R7 R7 K2 ["format"]
       11 CALL                             R7 2 1
       12 GETUPVAL                         R8 0
       13 GETUPVAL                         R9 1
       14 DUPTABLE                         R10 K6 [{"imageData", "onRemove", "LayoutOrder"}]
       15 GETTABLEKS                       R11 R6 K7 ["data"]
       17 SETTABLEKS                       R11 R10 K3 ["imageData"]
       19 NEWCLOSURE                       R11 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R5
       22 SETTABLEKS                       R11 R10 K4 ["onRemove"]
       24 SETTABLEKS                       R5 R10 K5 ["LayoutOrder"]
       26 CALL                             R8 2 1
       27 SETTABLE                         R8 R1 R7
       28 FORGLOOP                         R2 2 ; [-22]
       30 GETUPVAL                         R2 0
       31 LOADK                            R3 K8 ["UIListLayout"]
       32 DUPTABLE                         R4 K12 [{"FillDirection", "SortOrder", "Padding"}]
       33 GETIMPORT                        R5 K15 [Enum.FillDirection.Horizontal]
       35 SETTABLEKS                       R5 R4 K9 ["FillDirection"]
       37 GETIMPORT                        R5 K16 [Enum.SortOrder.LayoutOrder]
       39 SETTABLEKS                       R5 R4 K10 ["SortOrder"]
       41 GETIMPORT                        R5 K19 [UDim.new]
       43 LOADN                            R6 0
       44 LOADN                            R7 8
       45 CALL                             R5 2 1
       46 SETTABLEKS                       R5 R4 K11 ["Padding"]
       48 CALL                             R2 2 1
       49 SETTABLEKS                       R2 R1 K8 ["UIListLayout"]
       51 GETUPVAL                         R2 0
       52 GETUPVAL                         R3 2
       53 GETTABLEKS                       R3 R3 K20 ["Fragment"]
       55 LOADNIL                          R4
       56 MOVE                             R5 R1
       57 CALL                             R2 3 -1
       58 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["AttachedImagePreview"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Types"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R2 K11 ["createElement"]
       28 DUPCLOSURE                       R5 K12 [PROTO_1]
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R2
       32 RETURN                           R5 1
