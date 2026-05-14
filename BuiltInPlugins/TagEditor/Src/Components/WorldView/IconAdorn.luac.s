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
       40 DUPTABLE                         R8 K17 [{"Name", "Size", "Style", "TextScaled"}]
       41 SETTABLEKS                       R5 R8 K13 ["Name"]
       43 GETIMPORT                        R9 K19 [UDim2.new]
       45 GETTABLEKS                       R12 R0 K0 ["Icon"]
       47 LENGTH                           R11 R12
       48 DIVRK                            R10 R20 K11 [UDim.new]
       49 LOADN                            R11 0
       50 LOADN                            R12 1
       51 LOADN                            R13 0
       52 CALL                             R9 4 1
       53 SETTABLEKS                       R9 R8 K14 ["Size"]
       55 LOADK                            R9 K21 ["WorldView"]
       56 SETTABLEKS                       R9 R8 K15 ["Style"]
       58 LOADB                            R9 1
       59 SETTABLEKS                       R9 R8 K16 ["TextScaled"]
       61 CALL                             R6 2 1
       62 SETTABLE                         R6 R1 R4
       63 FORNLOOP                         R2
       64 GETUPVAL                         R2 0
       65 GETTABLEKS                       R2 R2 K1 ["createElement"]
       67 LOADK                            R3 K22 ["BillboardGui"]
       68 DUPTABLE                         R4 K27 [{"Adornee", "Size", "SizeOffset", "ExtentsOffsetWorldSpace", "AlwaysOnTop"}]
       69 GETTABLEKS                       R5 R0 K23 ["Adornee"]
       71 SETTABLEKS                       R5 R4 K23 ["Adornee"]
       73 GETIMPORT                        R5 K19 [UDim2.new]
       75 GETTABLEKS                       R7 R0 K0 ["Icon"]
       77 LENGTH                           R6 R7
       78 LOADN                            R7 0
       79 LOADN                            R8 1
       80 LOADN                            R9 0
       81 CALL                             R5 4 1
       82 SETTABLEKS                       R5 R4 K14 ["Size"]
       84 GETIMPORT                        R5 K29 [Vector2.new]
       86 LOADK                            R6 K30 [0.5]
       87 LOADK                            R7 K30 [0.5]
       88 CALL                             R5 2 1
       89 SETTABLEKS                       R5 R4 K24 ["SizeOffset"]
       91 LOADK                            R5 K31 [{1, 1, 1}]
       92 SETTABLEKS                       R5 R4 K25 ["ExtentsOffsetWorldSpace"]
       94 GETTABLEKS                       R5 R0 K26 ["AlwaysOnTop"]
       96 SETTABLEKS                       R5 R4 K26 ["AlwaysOnTop"]
       98 MOVE                             R5 R1
       99 CALL                             R2 3 -1
      100 RETURN                           R2 -1

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
