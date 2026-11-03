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
        4 GETTABLEKS                       R2 R2 K1 ["MouseContext"]
        6 GETTABLEKS                       R2 R2 K2 ["Context"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["useRef"]
       12 LOADNIL                          R3
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K4 ["useEventCallback"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R1
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K5 ["createNextOrder"]
       24 CALL                             R4 0 1
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K4 ["useEventCallback"]
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          VAL R0
       30 CALL                             R5 1 1
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R6 R6 K4 ["useEventCallback"]
       34 NEWCLOSURE                       R7 P2
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R0
       37 CALL                             R6 1 1
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R7 R7 K6 ["useMemo"]
       41 NEWCLOSURE                       R8 P3
       42 CAPTURE                          VAL R0
       43 NEWTABLE                         R9 0 1
       45 GETTABLEKS                       R10 R0 K7 ["importerState"]
       47 GETTABLEKS                       R10 R10 K8 ["clips"]
       49 SETLIST                          R9 R10 1 [1]
       51 CALL                             R7 2 1
       52 NEWTABLE                         R8 0 0
       54 GETUPVAL                         R9 3
       55 GETTABLEKS                       R10 R0 K7 ["importerState"]
       57 GETTABLEKS                       R10 R10 K9 ["selection"]
       59 CALL                             R9 1 2
       60 GETTABLEKS                       R11 R0 K10 ["sources"]
       62 LOADNIL                          R12
       63 LOADNIL                          R13
       64 FORGPREP                         R11
       65 GETTABLEKS                       R17 R0 K7 ["importerState"]
       67 GETTABLEKS                       R17 R17 K11 ["sourceIndexToClipNumbers"]
       69 GETTABLE                         R16 R17 R14
       70 GETTABLE                         R17 R7 R16
       71 JUMPIFNOTEQKNIL                  R17 ; [+2]
       73 LOADB                            R19 0 +1
       74 LOADB                            R19 1
       75 FASTCALL2K                       ASSERT R19 K12 ; [+4]
       77 LOADK                            R20 K12 ["Couldn't find clip given its number"]
       78 GETIMPORT                        R18 K14 [assert]
       80 CALL                             R18 2 0
       81 LOADK                            R18 K15 ["Source%*"]
       82 MOVE                             R20 R14
       83 NAMECALL                         R18 R18 K16 ["format"]
       85 CALL                             R18 2 1
       86 GETUPVAL                         R19 0
       87 GETTABLEKS                       R19 R19 K17 ["createElement"]
       89 GETUPVAL                         R20 4
       90 DUPTABLE                         R21 K27 [{"source", "index", "layoutOrder", "clip", "clipDisplayName", "state", "onClicked", "onHovered", "startDragging"}]
       91 SETTABLEKS                       R15 R21 K18 ["source"]
       93 SETTABLEKS                       R14 R21 K19 ["index"]
       95 MOVE                             R22 R4
       96 CALL                             R22 0 1
       97 SETTABLEKS                       R22 R21 K20 ["layoutOrder"]
       99 SETTABLEKS                       R17 R21 K21 ["clip"]
      101 JUMPIFEQKN                       R14 K28 [1] ; [+9]
      103 GETTABLEKS                       R24 R0 K7 ["importerState"]
      105 GETTABLEKS                       R24 R24 K11 ["sourceIndexToClipNumbers"]
      107 SUBK                             R25 R14 K28 [1]
      108 GETTABLE                         R23 R24 R25
      109 JUMPIFEQ                         R23 R16 ; [+4]
      111 GETTABLEKS                       R22 R17 K29 ["name"]
      113 JUMP                             ; [+1]
      114 LOADNIL                          R22
      115 SETTABLEKS                       R22 R21 K22 ["clipDisplayName"]
      117 GETTABLEKS                       R23 R0 K7 ["importerState"]
      119 GETTABLEKS                       R23 R23 K9 ["selection"]
      121 GETTABLEKS                       R23 R23 K30 ["X"]
      123 JUMPIFNOTEQ                      R23 R14 ; [+3]
      125 LOADK                            R22 K31 ["focused"]
      126 JUMP                             ; [+7]
      127 JUMPIFNOTLE                      R9 R14 ; [+5]
      129 JUMPIFNOTLE                      R14 R10 ; [+3]
      131 LOADK                            R22 K32 ["selected"]
      132 JUMP                             ; [+1]
      133 LOADNIL                          R22
      134 SETTABLEKS                       R22 R21 K23 ["state"]
      136 SETTABLEKS                       R5 R21 K24 ["onClicked"]
      138 SETTABLEKS                       R6 R21 K25 ["onHovered"]
      140 SETTABLEKS                       R3 R21 K26 ["startDragging"]
      142 CALL                             R19 2 1
      143 SETTABLE                         R19 R8 R18
      144 FORGLOOP                         R11 2 ; [-80]
      146 GETUPVAL                         R11 0
      147 GETTABLEKS                       R11 R11 K17 ["createElement"]
      149 GETUPVAL                         R12 5
      150 GETTABLEKS                       R12 R12 K33 ["View"]
      152 DUPTABLE                         R13 K36 [{["tag"] = "row align-x-center align-y-center size-full auto-y"}]
      153 GETUPVAL                         R14 0
      154 GETTABLEKS                       R14 R14 K17 ["createElement"]
      156 GETUPVAL                         R15 5
      157 GETTABLEKS                       R15 R15 K33 ["View"]
      159 DUPTABLE                         R16 K38 [{["tag"] = "auto-xy gap-xsmall wrap row"}]
      160 MOVE                             R17 R8
      161 CALL                             R14 3 -1
      162 CALL                             R11 -1 -1
      163 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimatedImageImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["CrossEnvironment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Components"]
       41 GETTABLEKS                       R6 R6 K13 ["Importer"]
       43 GETTABLEKS                       R6 R6 K14 ["SourceCell"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K11 ["Src"]
       50 GETTABLEKS                       R7 R7 K15 ["Types"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K11 ["Src"]
       57 GETTABLEKS                       R8 R8 K16 ["Libraries"]
       59 GETTABLEKS                       R8 R8 K17 ["minMax"]
       61 CALL                             R7 1 1
       62 DUPCLOSURE                       R8 K18 [PROTO_6]
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R2
       69 RETURN                           R8 1
