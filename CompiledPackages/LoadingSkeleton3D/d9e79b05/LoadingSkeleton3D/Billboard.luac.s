PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["createElement"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K2 ["Fragment"]
       11 LOADNIL                          R5
       12 DUPTABLE                         R6 K5 [{"Provider", "Overlay"}]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K1 ["createElement"]
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R8 R8 K6 ["FoundationProvider"]
       19 DUPTABLE                         R9 K10 [{"colorMode", "device", "overlayGui"}]
       20 GETUPVAL                         R10 1
       21 GETTABLEKS                       R10 R10 K11 ["Enums"]
       23 GETTABLEKS                       R10 R10 K12 ["ColorMode"]
       25 GETTABLEKS                       R10 R10 K13 ["Light"]
       27 SETTABLEKS                       R10 R9 K7 ["colorMode"]
       29 GETUPVAL                         R10 1
       30 GETTABLEKS                       R10 R10 K11 ["Enums"]
       32 GETTABLEKS                       R10 R10 K14 ["Device"]
       34 GETTABLEKS                       R10 R10 K15 ["Desktop"]
       36 SETTABLEKS                       R10 R9 K8 ["device"]
       38 SETTABLEKS                       R1 R9 K9 ["overlayGui"]
       40 DUPTABLE                         R10 K17 [{"Mount"}]
       41 GETUPVAL                         R11 0
       42 GETTABLEKS                       R11 R11 K1 ["createElement"]
       44 GETUPVAL                         R12 1
       45 GETTABLEKS                       R12 R12 K18 ["View"]
       47 DUPTABLE                         R13 K23 [{["tag"] = "size-0 auto-xy", ["AnchorPoint"], ["Position"]}]
       48 GETIMPORT                        R14 K26 [Vector2.new]
       50 LOADN                            R15 0
       51 LOADN                            R16 1
       52 CALL                             R14 2 1
       53 SETTABLEKS                       R14 R13 K21 ["AnchorPoint"]
       55 GETIMPORT                        R14 K29 [UDim2.fromScale]
       57 LOADN                            R15 0
       58 LOADN                            R16 1
       59 CALL                             R14 2 1
       60 SETTABLEKS                       R14 R13 K22 ["Position"]
       62 GETTABLEKS                       R14 R0 K30 ["children"]
       64 CALL                             R11 3 1
       65 SETTABLEKS                       R11 R10 K16 ["Mount"]
       67 CALL                             R7 3 1
       68 SETTABLEKS                       R7 R6 K3 ["Provider"]
       70 GETUPVAL                         R7 0
       71 GETTABLEKS                       R7 R7 K1 ["createElement"]
       73 LOADK                            R8 K31 ["Frame"]
       74 DUPTABLE                         R9 K38 [{["BackgroundTransparency"] = 1, ["Size"], ["ZIndex"] = 2, ["ref"]}]
       75 GETIMPORT                        R10 K29 [UDim2.fromScale]
       77 LOADN                            R11 1
       78 LOADN                            R12 1
       79 CALL                             R10 2 1
       80 SETTABLEKS                       R10 R9 K34 ["Size"]
       82 SETTABLEKS                       R2 R9 K37 ["ref"]
       84 CALL                             R7 2 1
       85 SETTABLEKS                       R7 R6 K4 ["Overlay"]
       87 CALL                             R3 3 -1
       88 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+1]
        2 RETURN                           R0 0
        3 DUPTABLE                         R3 K1 [{"Label"}]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K2 ["createElement"]
        7 GETUPVAL                         R5 2
        8 DUPTABLE                         R6 K14 [{"status", "message", "shimmer", "onActivated", "emphasized", "onClose", "onRevert", "revertTooltip", "closeTooltip", "actions", "details"}]
        9 SETTABLEKS                       R0 R6 K3 ["status"]
       11 SETTABLEKS                       R1 R6 K4 ["message"]
       13 GETTABLEKS                       R7 R2 K5 ["shimmer"]
       15 SETTABLEKS                       R7 R6 K5 ["shimmer"]
       17 GETTABLEKS                       R7 R2 K6 ["onActivated"]
       19 SETTABLEKS                       R7 R6 K6 ["onActivated"]
       21 GETTABLEKS                       R7 R2 K7 ["emphasized"]
       23 SETTABLEKS                       R7 R6 K7 ["emphasized"]
       25 GETUPVAL                         R7 3
       26 SETTABLEKS                       R7 R6 K8 ["onClose"]
       28 GETTABLEKS                       R7 R2 K9 ["onRevert"]
       30 SETTABLEKS                       R7 R6 K9 ["onRevert"]
       32 GETTABLEKS                       R7 R2 K10 ["revertTooltip"]
       34 SETTABLEKS                       R7 R6 K10 ["revertTooltip"]
       36 GETTABLEKS                       R7 R2 K11 ["closeTooltip"]
       38 SETTABLEKS                       R7 R6 K11 ["closeTooltip"]
       40 GETTABLEKS                       R7 R2 K12 ["actions"]
       42 SETTABLEKS                       R7 R6 K12 ["actions"]
       44 GETTABLEKS                       R7 R2 K13 ["details"]
       46 SETTABLEKS                       R7 R6 K13 ["details"]
       48 CALL                             R4 2 1
       49 SETTABLEKS                       R4 R3 K0 ["Label"]
       51 GETUPVAL                         R4 4
       52 CALL                             R4 0 1
       53 JUMPIFNOT                        R4 ; [+12]
       54 GETUPVAL                         R4 5
       55 GETUPVAL                         R6 1
       56 GETTABLEKS                       R6 R6 K2 ["createElement"]
       58 GETUPVAL                         R7 6
       59 LOADNIL                          R8
       60 MOVE                             R9 R3
       61 CALL                             R6 3 -1
       62 NAMECALL                         R4 R4 K15 ["render"]
       64 CALL                             R4 -1 0
       65 RETURN                           R0 0
       66 GETUPVAL                         R4 5
       67 GETUPVAL                         R6 1
       68 GETTABLEKS                       R6 R6 K2 ["createElement"]
       70 GETUPVAL                         R7 7
       71 GETTABLEKS                       R7 R7 K16 ["FoundationProvider"]
       73 DUPTABLE                         R8 K19 [{"colorMode", "device"}]
       74 GETUPVAL                         R9 7
       75 GETTABLEKS                       R9 R9 K20 ["Enums"]
       77 GETTABLEKS                       R9 R9 K21 ["ColorMode"]
       79 GETTABLEKS                       R9 R9 K22 ["Light"]
       81 SETTABLEKS                       R9 R8 K17 ["colorMode"]
       83 GETUPVAL                         R9 7
       84 GETTABLEKS                       R9 R9 K20 ["Enums"]
       86 GETTABLEKS                       R9 R9 K23 ["Device"]
       88 GETTABLEKS                       R9 R9 K24 ["Desktop"]
       90 SETTABLEKS                       R9 R8 K18 ["device"]
       92 MOVE                             R9 R3
       93 CALL                             R6 3 -1
       94 NAMECALL                         R4 R4 K15 ["render"]
       96 CALL                             R4 -1 0
       97 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 NAMECALL                         R0 R0 K0 ["unmount"]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 2
       10 NAMECALL                         R0 R0 K1 ["Destroy"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["Enabled"]
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["Active"]
        3 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["BillboardGui"]
        3 CALL                             R3 1 1
        4 LOADK                            R4 K4 ["Billboard"]
        5 SETTABLEKS                       R4 R3 K5 ["Name"]
        7 SETTABLEKS                       R1 R3 K6 ["Adornee"]
        9 GETUPVAL                         R4 0
       10 SETTABLEKS                       R4 R3 K7 ["Size"]
       12 GETUPVAL                         R4 1
       13 SETTABLEKS                       R4 R3 K8 ["SizeOffset"]
       15 LOADB                            R4 1
       16 SETTABLEKS                       R4 R3 K9 ["AlwaysOnTop"]
       18 LOADB                            R4 0
       19 SETTABLEKS                       R4 R3 K10 ["Enabled"]
       21 LOADB                            R4 0
       22 SETTABLEKS                       R4 R3 K11 ["Active"]
       24 SETTABLEKS                       R0 R3 K12 ["Parent"]
       26 MOVE                             R4 R3
       27 GETUPVAL                         R5 2
       28 CALL                             R5 0 1
       29 JUMPIFNOT                        R5 ; [+5]
       30 GETIMPORT                        R5 K16 [Enum.ZIndexBehavior.Sibling]
       32 SETTABLEKS                       R5 R3 K14 ["ZIndexBehavior"]
       34 JUMP                             ; [+38]
       35 GETIMPORT                        R5 K2 [Instance.new]
       37 LOADK                            R6 K17 ["Frame"]
       38 CALL                             R5 1 1
       39 LOADK                            R6 K18 ["Mount"]
       40 SETTABLEKS                       R6 R5 K5 ["Name"]
       42 LOADN                            R6 1
       43 SETTABLEKS                       R6 R5 K19 ["BackgroundTransparency"]
       45 GETIMPORT                        R6 K22 [Enum.AutomaticSize.XY]
       47 SETTABLEKS                       R6 R5 K20 ["AutomaticSize"]
       49 GETIMPORT                        R6 K25 [UDim2.fromOffset]
       51 LOADN                            R7 0
       52 LOADN                            R8 0
       53 CALL                             R6 2 1
       54 SETTABLEKS                       R6 R5 K7 ["Size"]
       56 GETIMPORT                        R6 K27 [Vector2.new]
       58 LOADN                            R7 0
       59 LOADN                            R8 1
       60 CALL                             R6 2 1
       61 SETTABLEKS                       R6 R5 K28 ["AnchorPoint"]
       63 GETIMPORT                        R6 K30 [UDim2.fromScale]
       65 LOADN                            R7 0
       66 LOADN                            R8 1
       67 CALL                             R6 2 1
       68 SETTABLEKS                       R6 R5 K31 ["Position"]
       70 SETTABLEKS                       R3 R5 K12 ["Parent"]
       72 MOVE                             R4 R5
       73 GETUPVAL                         R5 3
       74 GETTABLEKS                       R5 R5 K32 ["createRoot"]
       76 MOVE                             R6 R4
       77 CALL                             R5 1 1
       78 LOADB                            R6 0
       79 NEWCLOSURE                       R7 P0
       80 CAPTURE                          REF R6
       81 CAPTURE                          UPVAL U4
       82 CAPTURE                          UPVAL U5
       83 CAPTURE                          VAL R2
       84 CAPTURE                          UPVAL U2
       85 CAPTURE                          VAL R5
       86 CAPTURE                          UPVAL U6
       87 CAPTURE                          UPVAL U7
       88 NEWCLOSURE                       R8 P1
       89 CAPTURE                          REF R6
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R3
       92 DUPTABLE                         R9 K38 [{"billboardGui", "setEnabled", "setActive", "render", "destroy"}]
       93 SETTABLEKS                       R3 R9 K33 ["billboardGui"]
       95 NEWCLOSURE                       R10 P2
       96 CAPTURE                          VAL R3
       97 SETTABLEKS                       R10 R9 K34 ["setEnabled"]
       99 NEWCLOSURE                       R10 P3
      100 CAPTURE                          VAL R3
      101 SETTABLEKS                       R10 R9 K35 ["setActive"]
      103 SETTABLEKS                       R7 R9 K36 ["render"]
      105 SETTABLEKS                       R8 R9 K37 ["destroy"]
      107 CLOSEUPVALS                      R6
      108 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LoadingSkeleton3D"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactRoblox"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["StatusLabel"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Types"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R0 K12 ["Flags"]
       42 GETTABLEKS                       R7 R7 K13 ["getFFlagLoadingSkeleton3DActionTooltips"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K16 [UDim2.fromOffset]
       47 LOADN                            R8 320
       48 LOADN                            R9 720
       49 CALL                             R7 2 1
       50 GETIMPORT                        R8 K19 [Vector2.new]
       52 LOADK                            R9 K20 [0.5]
       53 LOADK                            R10 K20 [0.5]
       54 CALL                             R8 2 1
       55 DUPCLOSURE                       R9 K21 [PROTO_0]
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R1
       58 DUPCLOSURE                       R10 K22 [PROTO_5]
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R1
       67 RETURN                           R10 1
