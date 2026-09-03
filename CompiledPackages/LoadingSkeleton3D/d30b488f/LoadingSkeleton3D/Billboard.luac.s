PROTO_0:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R5 R5 K0 ["createElement"]
        7 GETUPVAL                         R6 3
        8 GETTABLEKS                       R6 R6 K1 ["FoundationProvider"]
       10 DUPTABLE                         R7 K4 [{"colorMode", "device"}]
       11 GETUPVAL                         R8 3
       12 GETTABLEKS                       R8 R8 K5 ["Enums"]
       14 GETTABLEKS                       R8 R8 K6 ["ColorMode"]
       16 GETTABLEKS                       R8 R8 K7 ["Light"]
       18 SETTABLEKS                       R8 R7 K2 ["colorMode"]
       20 GETUPVAL                         R8 3
       21 GETTABLEKS                       R8 R8 K5 ["Enums"]
       23 GETTABLEKS                       R8 R8 K8 ["Device"]
       25 GETTABLEKS                       R8 R8 K9 ["Desktop"]
       27 SETTABLEKS                       R8 R7 K3 ["device"]
       29 DUPTABLE                         R8 K11 [{"Label"}]
       30 GETUPVAL                         R9 2
       31 GETTABLEKS                       R9 R9 K0 ["createElement"]
       33 GETUPVAL                         R10 4
       34 DUPTABLE                         R11 K19 [{"status", "message", "shimmer", "onActivated", "emphasized", "onClose", "onRevert"}]
       35 SETTABLEKS                       R0 R11 K12 ["status"]
       37 SETTABLEKS                       R1 R11 K13 ["message"]
       39 GETTABLEKS                       R12 R2 K14 ["shimmer"]
       41 SETTABLEKS                       R12 R11 K14 ["shimmer"]
       43 GETTABLEKS                       R12 R2 K15 ["onActivated"]
       45 SETTABLEKS                       R12 R11 K15 ["onActivated"]
       47 GETTABLEKS                       R12 R2 K16 ["emphasized"]
       49 SETTABLEKS                       R12 R11 K16 ["emphasized"]
       51 GETUPVAL                         R12 5
       52 SETTABLEKS                       R12 R11 K17 ["onClose"]
       54 GETTABLEKS                       R12 R2 K18 ["onRevert"]
       56 SETTABLEKS                       R12 R11 K18 ["onRevert"]
       58 CALL                             R9 2 1
       59 SETTABLEKS                       R9 R8 K10 ["Label"]
       61 CALL                             R5 3 -1
       62 NAMECALL                         R3 R3 K20 ["render"]
       64 CALL                             R3 -1 0
       65 RETURN                           R0 0

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["Enabled"]
        3 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["Active"]
        3 RETURN                           R0 0

PROTO_4:
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
       26 GETIMPORT                        R4 K2 [Instance.new]
       28 LOADK                            R5 K13 ["Frame"]
       29 CALL                             R4 1 1
       30 LOADK                            R5 K14 ["Mount"]
       31 SETTABLEKS                       R5 R4 K5 ["Name"]
       33 LOADN                            R5 1
       34 SETTABLEKS                       R5 R4 K15 ["BackgroundTransparency"]
       36 GETIMPORT                        R5 K19 [Enum.AutomaticSize.XY]
       38 SETTABLEKS                       R5 R4 K17 ["AutomaticSize"]
       40 GETIMPORT                        R5 K22 [UDim2.fromOffset]
       42 LOADN                            R6 0
       43 LOADN                            R7 0
       44 CALL                             R5 2 1
       45 SETTABLEKS                       R5 R4 K7 ["Size"]
       47 GETIMPORT                        R5 K24 [Vector2.new]
       49 LOADN                            R6 0
       50 LOADN                            R7 1
       51 CALL                             R5 2 1
       52 SETTABLEKS                       R5 R4 K25 ["AnchorPoint"]
       54 GETIMPORT                        R5 K27 [UDim2.fromScale]
       56 LOADN                            R6 0
       57 LOADN                            R7 1
       58 CALL                             R5 2 1
       59 SETTABLEKS                       R5 R4 K28 ["Position"]
       61 SETTABLEKS                       R3 R4 K12 ["Parent"]
       63 GETUPVAL                         R5 2
       64 GETTABLEKS                       R5 R5 K29 ["createRoot"]
       66 MOVE                             R6 R4
       67 CALL                             R5 1 1
       68 LOADB                            R6 0
       69 NEWCLOSURE                       R7 P0
       70 CAPTURE                          REF R6
       71 CAPTURE                          VAL R5
       72 CAPTURE                          UPVAL U3
       73 CAPTURE                          UPVAL U4
       74 CAPTURE                          UPVAL U5
       75 CAPTURE                          VAL R2
       76 NEWCLOSURE                       R8 P1
       77 CAPTURE                          REF R6
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R3
       80 DUPTABLE                         R9 K35 [{"billboardGui", "setEnabled", "setActive", "render", "destroy"}]
       81 SETTABLEKS                       R3 R9 K30 ["billboardGui"]
       83 NEWCLOSURE                       R10 P2
       84 CAPTURE                          VAL R3
       85 SETTABLEKS                       R10 R9 K31 ["setEnabled"]
       87 NEWCLOSURE                       R10 P3
       88 CAPTURE                          VAL R3
       89 SETTABLEKS                       R10 R9 K32 ["setActive"]
       91 SETTABLEKS                       R7 R9 K33 ["render"]
       93 SETTABLEKS                       R8 R9 K34 ["destroy"]
       95 CLOSEUPVALS                      R6
       96 RETURN                           R9 1

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
       38 GETIMPORT                        R6 K14 [UDim2.fromOffset]
       40 LOADN                            R7 320
       41 LOADN                            R8 720
       42 CALL                             R6 2 1
       43 GETIMPORT                        R7 K17 [Vector2.new]
       45 LOADK                            R8 K18 [0.5]
       46 LOADK                            R9 K18 [0.5]
       47 CALL                             R7 2 1
       48 DUPCLOSURE                       R8 K19 [PROTO_4]
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R4
       55 RETURN                           R8 1
