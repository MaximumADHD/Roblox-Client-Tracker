PROTO_0:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["isLeftMouseDown"]
        6 CALL                             R1 0 1
        7 JUMPIFNOT                        R1 ; [+4]
        8 GETIMPORT                        R1 K4 [task.wait]
       10 CALL                             R1 0 0
       11 JUMPBACK                         ; [-9]
       12 GETUPVAL                         R1 0
       13 LOADNIL                          R2
       14 SETTABLEKS                       R2 R1 K0 ["current"]
       16 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETIMPORT                        R1 K5 [Vector2.new]
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R3 0
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K6 ["selection"]
       12 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setImporterState"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETIMPORT                        R1 K5 [Vector2.new]
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R3 1
        9 CALL                             R1 2 1
       10 SETTABLEKS                       R1 R0 K6 ["selection"]
       12 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["setImporterState"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R0
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["importerState"]
        5 GETTABLEKS                       R1 R1 K1 ["clips"]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 GETTABLEKS                       R6 R5 K2 ["number"]
       12 SETTABLE                         R5 R0 R6
       13 FORGLOOP                         R1 2 ; [-4]
       15 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useRef"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K3 ["useEventCallback"]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R1
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K4 ["createNextOrder"]
       22 CALL                             R4 0 1
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R5 R5 K3 ["useEventCallback"]
       26 NEWCLOSURE                       R6 P1
       27 CAPTURE                          VAL R0
       28 CALL                             R5 1 1
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R6 R6 K3 ["useEventCallback"]
       32 NEWCLOSURE                       R7 P2
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R0
       35 CALL                             R6 1 1
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K5 ["useMemo"]
       39 NEWCLOSURE                       R8 P3
       40 CAPTURE                          VAL R0
       41 NEWTABLE                         R9 0 1
       43 GETTABLEKS                       R10 R0 K6 ["importerState"]
       45 GETTABLEKS                       R10 R10 K7 ["clips"]
       47 SETLIST                          R9 R10 1 [1]
       49 CALL                             R7 2 1
       50 NEWTABLE                         R8 0 0
       52 GETUPVAL                         R9 3
       53 GETTABLEKS                       R10 R0 K6 ["importerState"]
       55 GETTABLEKS                       R10 R10 K8 ["selection"]
       57 CALL                             R9 1 2
       58 GETTABLEKS                       R11 R0 K9 ["sources"]
       60 LOADNIL                          R12
       61 LOADNIL                          R13
       62 FORGPREP                         R11
       63 GETTABLEKS                       R17 R0 K6 ["importerState"]
       65 GETTABLEKS                       R17 R17 K10 ["sourceIndexToClipNumbers"]
       67 GETTABLE                         R16 R17 R14
       68 GETTABLE                         R17 R7 R16
       69 JUMPIFNOTEQKNIL                  R17 ; [+2]
       71 LOADB                            R19 0 +1
       72 LOADB                            R19 1
       73 FASTCALL2K                       ASSERT R19 K11 ; [+4]
       75 LOADK                            R20 K11 ["Couldn't find clip given its number"]
       76 GETIMPORT                        R18 K13 [assert]
       78 CALL                             R18 2 0
       79 LOADK                            R18 K14 ["Source%*"]
       80 MOVE                             R20 R14
       81 NAMECALL                         R18 R18 K15 ["format"]
       83 CALL                             R18 2 1
       84 GETUPVAL                         R19 0
       85 GETTABLEKS                       R19 R19 K16 ["createElement"]
       87 GETUPVAL                         R20 4
       88 DUPTABLE                         R21 K26 [{"source", "index", "layoutOrder", "clip", "clipDisplayName", "state", "onClicked", "onHovered", "startDragging"}]
       89 SETTABLEKS                       R15 R21 K17 ["source"]
       91 SETTABLEKS                       R14 R21 K18 ["index"]
       93 MOVE                             R22 R4
       94 CALL                             R22 0 1
       95 SETTABLEKS                       R22 R21 K19 ["layoutOrder"]
       97 SETTABLEKS                       R17 R21 K20 ["clip"]
       99 JUMPIFEQKN                       R14 K27 [1] ; [+9]
      101 GETTABLEKS                       R24 R0 K6 ["importerState"]
      103 GETTABLEKS                       R24 R24 K10 ["sourceIndexToClipNumbers"]
      105 SUBK                             R25 R14 K27 [1]
      106 GETTABLE                         R23 R24 R25
      107 JUMPIFEQ                         R23 R16 ; [+4]
      109 GETTABLEKS                       R22 R17 K28 ["name"]
      111 JUMP                             ; [+1]
      112 LOADNIL                          R22
      113 SETTABLEKS                       R22 R21 K21 ["clipDisplayName"]
      115 GETTABLEKS                       R23 R0 K6 ["importerState"]
      117 GETTABLEKS                       R23 R23 K8 ["selection"]
      119 GETTABLEKS                       R23 R23 K29 ["X"]
      121 JUMPIFNOTEQ                      R23 R14 ; [+3]
      123 LOADK                            R22 K30 ["focused"]
      124 JUMP                             ; [+7]
      125 JUMPIFNOTLE                      R9 R14 ; [+5]
      127 JUMPIFNOTLE                      R14 R10 ; [+3]
      129 LOADK                            R22 K31 ["selected"]
      130 JUMP                             ; [+1]
      131 LOADNIL                          R22
      132 SETTABLEKS                       R22 R21 K22 ["state"]
      134 SETTABLEKS                       R5 R21 K23 ["onClicked"]
      136 SETTABLEKS                       R6 R21 K24 ["onHovered"]
      138 SETTABLEKS                       R3 R21 K25 ["startDragging"]
      140 CALL                             R19 2 1
      141 SETTABLE                         R19 R8 R18
      142 FORGLOOP                         R11 2 ; [-80]
      144 GETUPVAL                         R11 0
      145 GETTABLEKS                       R11 R11 K16 ["createElement"]
      147 GETUPVAL                         R12 5
      148 GETTABLEKS                       R12 R12 K32 ["View"]
      150 DUPTABLE                         R13 K35 [{["tag"] = "row align-x-center align-y-center size-full auto-y"}]
      151 GETUPVAL                         R14 0
      152 GETTABLEKS                       R14 R14 K16 ["createElement"]
      154 GETUPVAL                         R15 5
      155 GETTABLEKS                       R15 R15 K32 ["View"]
      157 DUPTABLE                         R16 K37 [{["tag"] = "auto-xy gap-xsmall wrap row"}]
      158 MOVE                             R17 R8
      159 CALL                             R14 3 -1
      160 CALL                             R11 -1 -1
      161 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimatedImageImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["MouseContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R5 K12 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K8 ["Src"]
       41 GETTABLEKS                       R6 R6 K9 ["Components"]
       43 GETTABLEKS                       R6 R6 K13 ["Importer"]
       45 GETTABLEKS                       R6 R6 K14 ["SourceCell"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K8 ["Src"]
       52 GETTABLEKS                       R7 R7 K15 ["Types"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K8 ["Src"]
       59 GETTABLEKS                       R8 R8 K16 ["Libraries"]
       61 GETTABLEKS                       R8 R8 K17 ["minMax"]
       63 CALL                             R7 1 1
       64 DUPCLOSURE                       R8 K18 [PROTO_6]
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R1
       71 RETURN                           R8 1
