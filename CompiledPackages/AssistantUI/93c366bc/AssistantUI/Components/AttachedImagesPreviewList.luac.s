PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onRemoveImage"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["attachedImages"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 LOADK                            R8 K1 ["ImagePreview_%*"]
        8 MOVE                             R10 R5
        9 NAMECALL                         R8 R8 K2 ["format"]
       11 CALL                             R8 2 1
       12 MOVE                             R7 R8
       13 GETUPVAL                         R8 0
       14 GETUPVAL                         R9 1
       15 DUPTABLE                         R10 K6 [{"imageData", "onRemove", "LayoutOrder"}]
       16 GETTABLEKS                       R11 R6 K7 ["data"]
       18 SETTABLEKS                       R11 R10 K3 ["imageData"]
       20 NEWCLOSURE                       R11 P0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R5
       23 SETTABLEKS                       R11 R10 K4 ["onRemove"]
       25 SETTABLEKS                       R5 R10 K5 ["LayoutOrder"]
       27 CALL                             R8 2 1
       28 SETTABLE                         R8 R1 R7
       29 FORGLOOP                         R2 2 ; [-23]
       31 GETUPVAL                         R2 0
       32 LOADK                            R3 K8 ["UIListLayout"]
       33 DUPTABLE                         R4 K12 [{"FillDirection", "SortOrder", "Padding"}]
       34 GETIMPORT                        R5 K15 [Enum.FillDirection.Horizontal]
       36 SETTABLEKS                       R5 R4 K9 ["FillDirection"]
       38 GETIMPORT                        R5 K16 [Enum.SortOrder.LayoutOrder]
       40 SETTABLEKS                       R5 R4 K10 ["SortOrder"]
       42 GETIMPORT                        R5 K19 [UDim.new]
       44 LOADN                            R6 0
       45 LOADN                            R7 8
       46 CALL                             R5 2 1
       47 SETTABLEKS                       R5 R4 K11 ["Padding"]
       49 CALL                             R2 2 1
       50 SETTABLEKS                       R2 R1 K8 ["UIListLayout"]
       52 GETUPVAL                         R2 0
       53 GETUPVAL                         R4 2
       54 GETTABLEKS                       R3 R4 K20 ["Fragment"]
       56 LOADNIL                          R4
       57 MOVE                             R5 R1
       58 CALL                             R2 3 -1
       59 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["AttachedImagePreview"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["React"]
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
