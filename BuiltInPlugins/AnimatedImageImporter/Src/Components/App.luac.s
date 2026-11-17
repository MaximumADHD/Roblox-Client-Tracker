PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{[1] = "none"}]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETTABLEKS                       R2 R0 K1 ["initialScreen"]
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["useEventCallback"]
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          VAL R2
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K3 ["createElement"]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K4 ["ContextStack"]
       18 DUPTABLE                         R6 K6 [{"providers"}]
       19 NEWTABLE                         R7 0 0
       21 SETTABLEKS                       R7 R6 K5 ["providers"]
       23 DUPTABLE                         R7 K8 [{"Screen"}]
       24 GETTABLEKS                       R9 R1 K9 ["type"]
       26 JUMPIFNOTEQKS                    R9 K10 ["importer"] ; [+14]
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R8 R8 K3 ["createElement"]
       31 GETUPVAL                         R9 2
       32 DUPTABLE                         R10 K13 [{"sources", "close"}]
       33 GETTABLEKS                       R11 R1 K11 ["sources"]
       35 SETTABLEKS                       R11 R10 K11 ["sources"]
       37 SETTABLEKS                       R3 R10 K12 ["close"]
       39 CALL                             R8 2 1
       40 JUMP                             ; [+44]
       41 GETTABLEKS                       R9 R1 K9 ["type"]
       43 JUMPIFNOTEQKS                    R9 K14 ["slicer"] ; [+16]
       45 GETUPVAL                         R8 0
       46 GETTABLEKS                       R8 R8 K3 ["createElement"]
       48 GETUPVAL                         R9 3
       49 DUPTABLE                         R10 K17 [{"source", "setScreen", "close"}]
       50 GETTABLEKS                       R11 R1 K15 ["source"]
       52 SETTABLEKS                       R11 R10 K15 ["source"]
       54 SETTABLEKS                       R2 R10 K16 ["setScreen"]
       56 SETTABLEKS                       R3 R10 K12 ["close"]
       58 CALL                             R8 2 1
       59 JUMP                             ; [+25]
       60 GETTABLEKS                       R9 R1 K9 ["type"]
       62 JUMPIFNOTEQKS                    R9 K18 ["fileDialog"] ; [+12]
       64 GETUPVAL                         R8 0
       65 GETTABLEKS                       R8 R8 K3 ["createElement"]
       67 GETUPVAL                         R9 4
       68 DUPTABLE                         R10 K20 [{"setScreen", "onClose"}]
       69 SETTABLEKS                       R2 R10 K16 ["setScreen"]
       71 SETTABLEKS                       R3 R10 K19 ["onClose"]
       73 CALL                             R8 2 1
       74 JUMP                             ; [+10]
       75 GETTABLEKS                       R9 R1 K9 ["type"]
       77 JUMPIFNOTEQKS                    R9 K21 ["none"] ; [+3]
       79 LOADNIL                          R8
       80 JUMP                             ; [+4]
       81 GETUPVAL                         R8 5
       82 GETTABLEKS                       R9 R1 K9 ["type"]
       84 CALL                             R8 1 1
       85 SETTABLEKS                       R8 R7 K7 ["Screen"]
       87 CALL                             R4 3 -1
       88 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimatedImageImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["FileDialog"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["Importer"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Packages"]
       29 GETTABLEKS                       R4 R4 K11 ["React"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K10 ["Packages"]
       36 GETTABLEKS                       R5 R5 K12 ["ReactUtils"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Src"]
       43 GETTABLEKS                       R6 R6 K7 ["Components"]
       45 GETTABLEKS                       R6 R6 K13 ["Slicer"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K6 ["Src"]
       52 GETTABLEKS                       R7 R7 K14 ["Types"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K6 ["Src"]
       59 GETTABLEKS                       R8 R8 K15 ["Libraries"]
       61 GETTABLEKS                       R8 R8 K16 ["exhaustiveMatch"]
       63 CALL                             R7 1 1
       64 DUPCLOSURE                       R8 K17 [PROTO_1]
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R7
       71 RETURN                           R8 1
