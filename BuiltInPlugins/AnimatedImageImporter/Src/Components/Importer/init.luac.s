PROTO_0:
        0 GETIMPORT                        R0 K2 [table.create]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K3 ["sources"]
        5 LENGTH                           R1 R2
        6 LOADN                            R2 1
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sources"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETTABLEKS                       R5 R4 K1 ["editableImage"]
        8 JUMPIFEQKNIL                     R5 ; [+6]
       10 GETTABLEKS                       R5 R4 K1 ["editableImage"]
       12 NAMECALL                         R5 R5 K2 ["Destroy"]
       14 CALL                             R5 1 0
       15 FORGLOOP                         R0 2 ; [-10]
       17 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 NEWTABLE                         R3 0 1
        7 GETTABLEKS                       R5 R0 K1 ["sources"]
        9 LENGTH                           R4 R5
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K2 ["useEffect"]
       16 NEWCLOSURE                       R3 P1
       17 CAPTURE                          VAL R0
       18 NEWTABLE                         R4 0 1
       20 GETTABLEKS                       R5 R0 K1 ["sources"]
       22 SETLIST                          R4 R5 1 [1]
       24 CALL                             R2 2 0
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K3 ["useStagnatingState"]
       28 DUPTABLE                         R3 K7 [{"clips", "sources", "sourceIndexToClipNumbers", "selection"}]
       29 NEWTABLE                         R4 0 1
       31 DUPTABLE                         R5 K13 [{["name"] = "Clip 1", ["number"] = 1, ["fps"]}]
       32 GETUPVAL                         R6 2
       33 GETTABLEKS                       R6 R6 K14 ["defaultFps"]
       35 SETTABLEKS                       R6 R5 K12 ["fps"]
       37 SETLIST                          R4 R5 1 [1]
       39 SETTABLEKS                       R4 R3 K4 ["clips"]
       41 GETTABLEKS                       R4 R0 K1 ["sources"]
       43 SETTABLEKS                       R4 R3 K1 ["sources"]
       45 SETTABLEKS                       R1 R3 K5 ["sourceIndexToClipNumbers"]
       47 GETIMPORT                        R4 K17 [Vector2.new]
       49 LOADN                            R5 1
       50 LOADN                            R6 1
       51 CALL                             R4 2 1
       52 SETTABLEKS                       R4 R3 K6 ["selection"]
       54 NEWTABLE                         R4 0 2
       56 GETTABLEKS                       R5 R0 K1 ["sources"]
       58 MOVE                             R6 R1
       59 SETLIST                          R4 R5 2 [1]
       61 CALL                             R2 2 2
       62 GETUPVAL                         R4 0
       63 GETTABLEKS                       R4 R4 K18 ["createElement"]
       65 GETUPVAL                         R5 3
       66 DUPTABLE                         R6 K23 [{["testId"] = "Importer", ["left"], ["right"]}]
       67 GETUPVAL                         R7 4
       68 GETUPVAL                         R8 0
       69 GETTABLEKS                       R8 R8 K18 ["createElement"]
       71 GETUPVAL                         R9 5
       72 DUPTABLE                         R10 K26 [{"sources", "importerState", "setImporterState"}]
       73 GETTABLEKS                       R11 R0 K1 ["sources"]
       75 SETTABLEKS                       R11 R10 K1 ["sources"]
       77 SETTABLEKS                       R2 R10 K24 ["importerState"]
       79 SETTABLEKS                       R3 R10 K25 ["setImporterState"]
       81 CALL                             R8 2 -1
       82 CALL                             R7 -1 1
       83 SETTABLEKS                       R7 R6 K21 ["left"]
       85 GETUPVAL                         R7 4
       86 GETUPVAL                         R8 0
       87 GETTABLEKS                       R8 R8 K18 ["createElement"]
       89 GETUPVAL                         R9 6
       90 DUPTABLE                         R10 K28 [{"importerState", "setImporterState", "close"}]
       91 SETTABLEKS                       R2 R10 K24 ["importerState"]
       93 SETTABLEKS                       R3 R10 K25 ["setImporterState"]
       95 GETTABLEKS                       R11 R0 K27 ["close"]
       97 SETTABLEKS                       R11 R10 K27 ["close"]
       99 CALL                             R8 2 -1
      100 CALL                             R7 -1 1
      101 SETTABLEKS                       R7 R6 K22 ["right"]
      103 CALL                             R4 2 -1
      104 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimatedImageImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Components"]
       34 GETTABLEKS                       R5 R5 K12 ["Shell"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETIMPORT                        R6 K1 [script]
       41 GETTABLEKS                       R6 R6 K13 ["SourceDetails"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETIMPORT                        R7 K1 [script]
       48 GETTABLEKS                       R7 R7 K14 ["SourceGrid"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Src"]
       55 GETTABLEKS                       R8 R8 K15 ["Types"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K6 ["Src"]
       62 GETTABLEKS                       R9 R9 K16 ["Libraries"]
       64 GETTABLEKS                       R9 R9 K17 ["as"]
       66 CALL                             R8 1 1
       67 DUPCLOSURE                       R9 K18 [PROTO_3]
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R5
       75 RETURN                           R9 1
