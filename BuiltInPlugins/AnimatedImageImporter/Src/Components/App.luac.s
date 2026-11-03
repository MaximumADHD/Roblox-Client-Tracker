PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["hideFocus"]
        3 JUMPIFEQKB                       R0 FALSE ; [+17]
        5 GETUPVAL                         R0 1
        6 LOADB                            R1 0
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K1 ["type"]
       10 JUMPIFEQKS                       R2 K2 ["fileDialog"] ; [+8]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K1 ["type"]
       15 JUMPIFNOTEQKS                    R2 K3 ["none"] ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 SETTABLEKS                       R1 R0 K4 ["Enabled"]
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{[1] = "none"}]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Focus"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 NAMECALL                         R1 R1 K3 ["get"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K4 ["useState"]
       14 GETTABLEKS                       R3 R0 K5 ["initialScreen"]
       16 CALL                             R2 1 2
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K6 ["useEffect"]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 NEWTABLE                         R6 0 3
       26 GETTABLEKS                       R7 R0 K7 ["hideFocus"]
       28 MOVE                             R8 R1
       29 GETTABLEKS                       R9 R2 K8 ["type"]
       31 SETLIST                          R6 R7 3 [1]
       33 CALL                             R4 2 0
       34 GETUPVAL                         R4 2
       35 GETTABLEKS                       R4 R4 K9 ["useEventCallback"]
       37 NEWCLOSURE                       R5 P1
       38 CAPTURE                          VAL R3
       39 CALL                             R4 1 1
       40 GETUPVAL                         R5 1
       41 GETTABLEKS                       R5 R5 K10 ["createElement"]
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R6 R6 K11 ["ContextStack"]
       46 DUPTABLE                         R7 K13 [{"providers"}]
       47 NEWTABLE                         R8 0 0
       49 SETTABLEKS                       R8 R7 K12 ["providers"]
       51 DUPTABLE                         R8 K15 [{"Screen"}]
       52 GETTABLEKS                       R10 R2 K8 ["type"]
       54 JUMPIFNOTEQKS                    R10 K16 ["importer"] ; [+14]
       56 GETUPVAL                         R9 1
       57 GETTABLEKS                       R9 R9 K10 ["createElement"]
       59 GETUPVAL                         R10 3
       60 DUPTABLE                         R11 K19 [{"sources", "close"}]
       61 GETTABLEKS                       R12 R2 K17 ["sources"]
       63 SETTABLEKS                       R12 R11 K17 ["sources"]
       65 SETTABLEKS                       R4 R11 K18 ["close"]
       67 CALL                             R9 2 1
       68 JUMP                             ; [+50]
       69 GETTABLEKS                       R10 R2 K8 ["type"]
       71 JUMPIFNOTEQKS                    R10 K20 ["slicer"] ; [+14]
       73 GETUPVAL                         R9 1
       74 GETTABLEKS                       R9 R9 K10 ["createElement"]
       76 GETUPVAL                         R10 4
       77 DUPTABLE                         R11 K23 [{"source", "setScreen"}]
       78 GETTABLEKS                       R12 R2 K21 ["source"]
       80 SETTABLEKS                       R12 R11 K21 ["source"]
       82 SETTABLEKS                       R3 R11 K22 ["setScreen"]
       84 CALL                             R9 2 1
       85 JUMP                             ; [+33]
       86 GETTABLEKS                       R10 R2 K8 ["type"]
       88 JUMPIFNOTEQKS                    R10 K24 ["fileDialog"] ; [+20]
       90 GETUPVAL                         R9 1
       91 GETTABLEKS                       R9 R9 K10 ["createElement"]
       93 GETUPVAL                         R10 5
       94 DUPTABLE                         R11 K27 [{"setScreen", "avoidDialogRender", "onClose"}]
       95 SETTABLEKS                       R3 R11 K22 ["setScreen"]
       97 GETTABLEKS                       R13 R2 K25 ["avoidDialogRender"]
       99 JUMPIFEQKB                       R13 TRUE ; [+2]
      101 LOADB                            R12 0 +1
      102 LOADB                            R12 1
      103 SETTABLEKS                       R12 R11 K25 ["avoidDialogRender"]
      105 SETTABLEKS                       R4 R11 K26 ["onClose"]
      107 CALL                             R9 2 1
      108 JUMP                             ; [+10]
      109 GETTABLEKS                       R10 R2 K8 ["type"]
      111 JUMPIFNOTEQKS                    R10 K28 ["none"] ; [+3]
      113 LOADNIL                          R9
      114 JUMP                             ; [+4]
      115 GETUPVAL                         R9 6
      116 GETTABLEKS                       R10 R2 K8 ["type"]
      118 CALL                             R9 1 1
      119 SETTABLEKS                       R9 R8 K14 ["Screen"]
      121 CALL                             R5 3 -1
      122 RETURN                           R5 -1

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
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K7 ["Components"]
       29 GETTABLEKS                       R4 R4 K11 ["Importer"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Packages"]
       36 GETTABLEKS                       R5 R5 K12 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Packages"]
       43 GETTABLEKS                       R6 R6 K13 ["ReactUtils"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Src"]
       50 GETTABLEKS                       R7 R7 K7 ["Components"]
       52 GETTABLEKS                       R7 R7 K14 ["Slicer"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K6 ["Src"]
       59 GETTABLEKS                       R8 R8 K15 ["Types"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K6 ["Src"]
       66 GETTABLEKS                       R9 R9 K16 ["Libraries"]
       68 GETTABLEKS                       R9 R9 K17 ["exhaustiveMatch"]
       70 CALL                             R8 1 1
       71 DUPCLOSURE                       R9 K18 [PROTO_2]
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R8
       79 RETURN                           R9 1
