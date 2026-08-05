PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["sticky"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+3]
        4 LOADB                            R1 1
        5 JUMP                             ; [+2]
        6 GETTABLEKS                       R1 R0 K0 ["sticky"]
        8 GETUPVAL                         R2 0
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K1 ["StructureContext"]
       12 GETTABLEKS                       R3 R3 K2 ["Provider"]
       14 DUPTABLE                         R4 K4 [{"value"}]
       15 DUPTABLE                         R5 K8 [{["structure"] = "header", ["isSticky"]}]
       16 SETTABLEKS                       R1 R5 K7 ["isSticky"]
       18 SETTABLEKS                       R5 R4 K3 ["value"]
       20 DUPTABLE                         R5 K10 [{"RegionHeader"}]
       21 GETUPVAL                         R6 0
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R7 R7 K11 ["View"]
       25 DUPTABLE                         R8 K18 [{["testId"] = "--appkit-region-header", ["LayoutOrder"], ["tag"] = "auto-y", ["Size"]}]
       26 GETTABLEKS                       R10 R0 K14 ["LayoutOrder"]
       28 ORK                              R9 R10 K19 [1]
       29 SETTABLEKS                       R9 R8 K14 ["LayoutOrder"]
       31 GETIMPORT                        R9 K22 [UDim2.new]
       33 LOADN                            R10 1
       34 LOADN                            R11 0
       35 LOADN                            R12 0
       36 LOADN                            R13 0
       37 CALL                             R9 4 1
       38 SETTABLEKS                       R9 R8 K17 ["Size"]
       40 GETTABLEKS                       R9 R0 K23 ["children"]
       42 CALL                             R6 3 1
       43 SETTABLEKS                       R6 R5 K9 ["RegionHeader"]
       45 CALL                             R2 3 -1
       46 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["StructureContext"]
        4 GETTABLEKS                       R2 R2 K1 ["Provider"]
        6 DUPTABLE                         R3 K3 [{"value"}]
        7 DUPTABLE                         R4 K8 [{["structure"] = "body", ["isSticky"] = False}]
        8 SETTABLEKS                       R4 R3 K2 ["value"]
       10 DUPTABLE                         R4 K10 [{"RegionBody"}]
       11 GETUPVAL                         R5 0
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R6 R6 K11 ["ScrollView"]
       15 DUPTABLE                         R7 K19 [{["testId"] = "--appkit-region-body", ["LayoutOrder"], ["tag"] = "size-full flex-fill", ["scroll"], ["layout"]}]
       16 GETTABLEKS                       R9 R0 K14 ["LayoutOrder"]
       18 ORK                              R8 R9 K20 [2]
       19 SETTABLEKS                       R8 R7 K14 ["LayoutOrder"]
       21 DUPTABLE                         R8 K25 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "VerticalScrollBarInset"}]
       22 GETIMPORT                        R9 K29 [Enum.AutomaticSize.Y]
       24 SETTABLEKS                       R9 R8 K21 ["AutomaticCanvasSize"]
       26 GETIMPORT                        R9 K32 [UDim2.fromOffset]
       28 LOADN                            R10 0
       29 LOADN                            R11 0
       30 CALL                             R9 2 1
       31 SETTABLEKS                       R9 R8 K22 ["CanvasSize"]
       33 GETIMPORT                        R9 K33 [Enum.ScrollingDirection.Y]
       35 SETTABLEKS                       R9 R8 K23 ["ScrollingDirection"]
       37 GETIMPORT                        R9 K36 [Enum.ScrollBarInset.Always]
       39 SETTABLEKS                       R9 R8 K24 ["VerticalScrollBarInset"]
       41 SETTABLEKS                       R8 R7 K17 ["scroll"]
       43 DUPTABLE                         R8 K39 [{"FillDirection", "SortOrder"}]
       44 GETIMPORT                        R9 K41 [Enum.FillDirection.Vertical]
       46 SETTABLEKS                       R9 R8 K37 ["FillDirection"]
       48 GETIMPORT                        R9 K42 [Enum.SortOrder.LayoutOrder]
       50 SETTABLEKS                       R9 R8 K38 ["SortOrder"]
       52 SETTABLEKS                       R8 R7 K18 ["layout"]
       54 GETTABLEKS                       R8 R0 K43 ["children"]
       56 CALL                             R5 3 1
       57 SETTABLEKS                       R5 R4 K9 ["RegionBody"]
       59 CALL                             R1 3 -1
       60 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["sticky"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+3]
        4 LOADB                            R1 1
        5 JUMP                             ; [+2]
        6 GETTABLEKS                       R1 R0 K0 ["sticky"]
        8 GETUPVAL                         R2 0
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K1 ["StructureContext"]
       12 GETTABLEKS                       R3 R3 K2 ["Provider"]
       14 DUPTABLE                         R4 K4 [{"value"}]
       15 DUPTABLE                         R5 K8 [{["structure"] = "footer", ["isSticky"]}]
       16 SETTABLEKS                       R1 R5 K7 ["isSticky"]
       18 SETTABLEKS                       R5 R4 K3 ["value"]
       20 DUPTABLE                         R5 K10 [{"RegionFooter"}]
       21 GETUPVAL                         R6 0
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R7 R7 K11 ["View"]
       25 DUPTABLE                         R8 K18 [{["testId"] = "--appkit-region-footer", ["LayoutOrder"], ["tag"] = "auto-y", ["Size"]}]
       26 GETTABLEKS                       R10 R0 K14 ["LayoutOrder"]
       28 ORK                              R9 R10 K19 [3]
       29 SETTABLEKS                       R9 R8 K14 ["LayoutOrder"]
       31 GETIMPORT                        R9 K22 [UDim2.new]
       33 LOADN                            R10 1
       34 LOADN                            R11 0
       35 LOADN                            R12 0
       36 LOADN                            R13 0
       37 CALL                             R9 4 1
       38 SETTABLEKS                       R9 R8 K17 ["Size"]
       40 GETTABLEKS                       R9 R0 K23 ["children"]
       42 CALL                             R6 3 1
       43 SETTABLEKS                       R6 R5 K9 ["RegionFooter"]
       45 CALL                             R2 3 -1
       46 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 FASTCALL2K                       ASSERT R0 K4 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K4 ["AppFramework.Structure must run inside the DesignAssist plugin tree"]
       11 GETIMPORT                        R1 K6 [assert]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K8 [require]
       16 GETTABLEKS                       R2 R0 K9 ["Packages"]
       18 GETTABLEKS                       R2 R2 K10 ["React"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K8 [require]
       23 GETTABLEKS                       R3 R0 K9 ["Packages"]
       25 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K8 [require]
       30 GETIMPORT                        R4 K1 [script]
       32 GETTABLEKS                       R4 R4 K12 ["Parent"]
       34 GETTABLEKS                       R4 R4 K13 ["Contexts"]
       36 CALL                             R3 1 1
       37 GETTABLEKS                       R4 R1 K14 ["createElement"]
       39 NEWTABLE                         R5 4 0
       41 DUPCLOSURE                       R6 K15 [PROTO_0]
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R2
       45 SETTABLEKS                       R6 R5 K16 ["RegionHeader"]
       47 DUPCLOSURE                       R6 K17 [PROTO_1]
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R2
       51 SETTABLEKS                       R6 R5 K18 ["RegionBody"]
       53 DUPCLOSURE                       R6 K19 [PROTO_2]
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R2
       57 SETTABLEKS                       R6 R5 K20 ["RegionFooter"]
       59 RETURN                           R5 1
