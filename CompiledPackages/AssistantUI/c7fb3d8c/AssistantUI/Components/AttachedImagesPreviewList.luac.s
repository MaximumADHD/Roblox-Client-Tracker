PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onRemoveImage"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 GETTABLEKS                       R3 R0 K2 ["attachedImages"]
        6 CALL                             R2 1 3
        7 FORGPREP_INEXT                   R2
        8 LOADK                            R8 K3 ["Image"]
        9 MOVE                             R9 R5
       10 CONCAT                           R7 R8 R9
       11 GETUPVAL                         R8 0
       12 GETUPVAL                         R9 1
       13 DUPTABLE                         R10 K7 [{"imageData", "onRemove", "LayoutOrder"}]
       14 GETTABLEKS                       R11 R6 K8 ["data"]
       16 SETTABLEKS                       R11 R10 K4 ["imageData"]
       18 NEWCLOSURE                       R11 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R5
       21 SETTABLEKS                       R11 R10 K5 ["onRemove"]
       23 SETTABLEKS                       R5 R10 K6 ["LayoutOrder"]
       25 CALL                             R8 2 1
       26 SETTABLE                         R8 R1 R7
       27 FORGLOOP                         R2 2 [inext] ; [-20]
       29 GETUPVAL                         R2 0
       30 LOADK                            R3 K9 ["UIListLayout"]
       31 DUPTABLE                         R4 K13 [{"FillDirection", "SortOrder", "Padding"}]
       32 GETIMPORT                        R5 K16 [Enum.FillDirection.Horizontal]
       34 SETTABLEKS                       R5 R4 K10 ["FillDirection"]
       36 GETIMPORT                        R5 K17 [Enum.SortOrder.LayoutOrder]
       38 SETTABLEKS                       R5 R4 K11 ["SortOrder"]
       40 GETIMPORT                        R5 K20 [UDim.new]
       42 LOADN                            R6 0
       43 LOADN                            R7 8
       44 CALL                             R5 2 1
       45 SETTABLEKS                       R5 R4 K12 ["Padding"]
       47 CALL                             R2 2 1
       48 SETTABLEKS                       R2 R1 K9 ["UIListLayout"]
       50 GETUPVAL                         R2 0
       51 GETUPVAL                         R4 2
       52 GETTABLEKS                       R3 R4 K21 ["Fragment"]
       54 LOADNIL                          R4
       55 MOVE                             R5 R1
       56 CALL                             R2 3 -1
       57 RETURN                           R2 -1

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
