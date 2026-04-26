PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K7 [{"tag", "Text", "TextXAlignment", "Font", "TextSize", "LayoutOrder", "TextWrapped"}]
        3 LOADK                            R4 K8 ["size-full-0 auto-y content-default"]
        4 SETTABLEKS                       R4 R3 K0 ["tag"]
        6 GETTABLEKS                       R4 R0 K9 ["Markdown"]
        8 SETTABLEKS                       R4 R3 K1 ["Text"]
       10 GETIMPORT                        R4 K12 [Enum.TextXAlignment.Left]
       12 SETTABLEKS                       R4 R3 K2 ["TextXAlignment"]
       14 GETIMPORT                        R4 K14 [Enum.Font.SourceSans]
       16 SETTABLEKS                       R4 R3 K3 ["Font"]
       18 LOADN                            R4 18
       19 SETTABLEKS                       R4 R3 K4 ["TextSize"]
       21 GETTABLEKS                       R5 R0 K15 ["WrapperProps"]
       23 JUMPIFNOT                        R5 ; [+5]
       24 GETTABLEKS                       R5 R0 K15 ["WrapperProps"]
       26 GETTABLEKS                       R4 R5 K5 ["LayoutOrder"]
       28 JUMPIF                           R4 ; [+1]
       29 LOADN                            R4 0
       30 SETTABLEKS                       R4 R3 K5 ["LayoutOrder"]
       32 LOADB                            R4 1
       33 SETTABLEKS                       R4 R3 K6 ["TextWrapped"]
       35 CALL                             R1 2 -1
       36 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["Text"]
       23 GETTABLEKS                       R4 R2 K10 ["createElement"]
       25 DUPCLOSURE                       R5 K11 [PROTO_0]
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R3
       28 RETURN                           R5 1
