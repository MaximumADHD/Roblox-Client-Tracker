PROTO_0:
        0 NEWTABLE                         R1 1 0
        2 GETTABLEKS                       R3 R0 K0 ["Icon"]
        4 LENGTH                           R2 R3
        5 LOADN                            R3 1
        6 JUMPIFNOTLT                      R3 R2 ; [+20]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K1 ["createElement"]
       11 LOADK                            R3 K2 ["UIListLayout"]
       12 DUPTABLE                         R4 K5 [{"FillDirection", "Padding"}]
       13 GETIMPORT                        R5 K8 [Enum.FillDirection.Horizontal]
       15 SETTABLEKS                       R5 R4 K3 ["FillDirection"]
       17 GETIMPORT                        R5 K11 [UDim.new]
       19 LOADK                            R6 K12 [0.125]
       20 LOADN                            R7 0
       21 CALL                             R5 2 1
       22 SETTABLEKS                       R5 R4 K4 ["Padding"]
       24 CALL                             R2 2 1
       25 SETTABLEKS                       R2 R1 K2 ["UIListLayout"]
       27 LOADN                            R4 1
       28 GETTABLEKS                       R5 R0 K0 ["Icon"]
       30 LENGTH                           R2 R5
       31 LOADN                            R3 1
       32 FORNPREP                         R2
       33 GETTABLEKS                       R6 R0 K0 ["Icon"]
       35 GETTABLE                         R5 R6 R4
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R6 R6 K1 ["createElement"]
       39 GETUPVAL                         R7 1
       40 DUPTABLE                         R8 K19 [{["Name"], ["Size"], ["Style"] = "WorldView", ["TextScaled"] = True}]
       41 SETTABLEKS                       R5 R8 K13 ["Name"]
       43 GETIMPORT                        R9 K21 [UDim2.new]
       45 GETTABLEKS                       R12 R0 K0 ["Icon"]
       47 LENGTH                           R11 R12
       48 DIVRK                            R10 K22 [1] R11
       49 LOADN                            R11 0
       50 LOADN                            R12 1
       51 LOADN                            R13 0
       52 CALL                             R9 4 1
       53 SETTABLEKS                       R9 R8 K14 ["Size"]
       55 CALL                             R6 2 1
       56 SETTABLE                         R6 R1 R4
       57 FORNLOOP                         R2
       58 GETUPVAL                         R2 0
       59 GETTABLEKS                       R2 R2 K1 ["createElement"]
       61 LOADK                            R3 K23 ["BillboardGui"]
       62 DUPTABLE                         R4 K29 [{["Adornee"], ["Size"], ["SizeOffset"], ["ExtentsOffsetWorldSpace"] = {1, 1, 1}, ["AlwaysOnTop"]}]
       63 GETTABLEKS                       R5 R0 K24 ["Adornee"]
       65 SETTABLEKS                       R5 R4 K24 ["Adornee"]
       67 GETIMPORT                        R5 K21 [UDim2.new]
       69 GETTABLEKS                       R7 R0 K0 ["Icon"]
       71 LENGTH                           R6 R7
       72 LOADN                            R7 0
       73 LOADN                            R8 1
       74 LOADN                            R9 0
       75 CALL                             R5 4 1
       76 SETTABLEKS                       R5 R4 K14 ["Size"]
       78 GETIMPORT                        R5 K31 [Vector2.new]
       80 LOADK                            R6 K32 [0.5]
       81 LOADK                            R7 K32 [0.5]
       82 CALL                             R5 2 1
       83 SETTABLEKS                       R5 R4 K25 ["SizeOffset"]
       85 GETTABLEKS                       R5 R0 K28 ["AlwaysOnTop"]
       87 SETTABLEKS                       R5 R4 K28 ["AlwaysOnTop"]
       89 MOVE                             R5 R1
       90 CALL                             R2 3 -1
       91 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K7 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Components"]
       24 GETTABLEKS                       R3 R3 K9 ["Icon"]
       26 CALL                             R2 1 1
       27 DUPCLOSURE                       R3 K10 [PROTO_0]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 RETURN                           R3 1
