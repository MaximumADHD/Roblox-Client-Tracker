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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setSelection"]
        3 GETIMPORT                        R2 K3 [Vector2.new]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R0
        7 CALL                             R2 2 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["setSelection"]
        9 GETIMPORT                        R3 K4 [Vector2.new]
       11 MOVE                             R4 R1
       12 MOVE                             R5 R0
       13 CALL                             R3 2 -1
       14 CALL                             R2 -1 0
       15 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
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
       53 GETTABLEKS                       R10 R0 K8 ["selection"]
       55 CALL                             R9 1 2
       56 GETTABLEKS                       R11 R0 K9 ["sources"]
       58 LOADNIL                          R12
       59 LOADNIL                          R13
       60 FORGPREP                         R11
       61 GETTABLEKS                       R17 R0 K6 ["importerState"]
       63 GETTABLEKS                       R17 R17 K10 ["sourceIndexToClipNumbers"]
       65 GETTABLE                         R16 R17 R14
       66 MOVE                             R17 R16
       67 JUMPIFNOT                        R17 ; [+1]
       68 GETTABLE                         R17 R7 R16
       69 LOADB                            R19 1
       70 JUMPIFEQKNIL                     R16 ; [+5]
       72 JUMPIFNOTEQKNIL                  R17 ; [+2]
       74 LOADB                            R19 0 +1
       75 LOADB                            R19 1
       76 FASTCALL2K                       ASSERT R19 K11 ; [+4]
       78 LOADK                            R20 K11 ["Couldn't find clip from number"]
       79 GETIMPORT                        R18 K13 [assert]
       81 CALL                             R18 2 0
       82 LOADK                            R18 K14 ["Source%*"]
       83 MOVE                             R20 R14
       84 NAMECALL                         R18 R18 K15 ["format"]
       86 CALL                             R18 2 1
       87 GETUPVAL                         R19 0
       88 GETTABLEKS                       R19 R19 K16 ["createElement"]
       90 GETUPVAL                         R20 4
       91 DUPTABLE                         R21 K26 [{"source", "index", "layoutOrder", "clip", "clipDisplayName", "state", "onClicked", "onHovered", "startDragging"}]
       92 SETTABLEKS                       R15 R21 K17 ["source"]
       94 SETTABLEKS                       R14 R21 K18 ["index"]
       96 MOVE                             R22 R4
       97 CALL                             R22 0 1
       98 SETTABLEKS                       R22 R21 K19 ["layoutOrder"]
      100 SETTABLEKS                       R17 R21 K20 ["clip"]
      102 JUMPIFEQKNIL                     R17 ; [+14]
      104 JUMPIFEQKN                       R14 K27 [1] ; [+9]
      106 GETTABLEKS                       R24 R0 K6 ["importerState"]
      108 GETTABLEKS                       R24 R24 K10 ["sourceIndexToClipNumbers"]
      110 SUBK                             R25 R14 K27 [1]
      111 GETTABLE                         R23 R24 R25
      112 JUMPIFEQ                         R23 R16 ; [+4]
      114 GETTABLEKS                       R22 R17 K28 ["name"]
      116 JUMP                             ; [+1]
      117 LOADNIL                          R22
      118 SETTABLEKS                       R22 R21 K21 ["clipDisplayName"]
      120 GETTABLEKS                       R23 R0 K8 ["selection"]
      122 GETTABLEKS                       R23 R23 K29 ["X"]
      124 JUMPIFNOTEQ                      R23 R14 ; [+3]
      126 LOADK                            R22 K30 ["focused"]
      127 JUMP                             ; [+7]
      128 JUMPIFNOTLE                      R9 R14 ; [+5]
      130 JUMPIFNOTLE                      R14 R10 ; [+3]
      132 LOADK                            R22 K31 ["selected"]
      133 JUMP                             ; [+1]
      134 LOADNIL                          R22
      135 SETTABLEKS                       R22 R21 K22 ["state"]
      137 SETTABLEKS                       R5 R21 K23 ["onClicked"]
      139 SETTABLEKS                       R6 R21 K24 ["onHovered"]
      141 SETTABLEKS                       R3 R21 K25 ["startDragging"]
      143 CALL                             R19 2 1
      144 SETTABLE                         R19 R8 R18
      145 FORGLOOP                         R11 2 ; [-85]
      147 GETUPVAL                         R11 0
      148 GETTABLEKS                       R11 R11 K16 ["createElement"]
      150 GETUPVAL                         R12 5
      151 GETTABLEKS                       R12 R12 K32 ["View"]
      153 DUPTABLE                         R13 K35 [{["tag"] = "row align-x-center align-y-center size-full auto-y"}]
      154 GETUPVAL                         R14 0
      155 GETTABLEKS                       R14 R14 K16 ["createElement"]
      157 GETUPVAL                         R15 5
      158 GETTABLEKS                       R15 R15 K32 ["View"]
      160 DUPTABLE                         R16 K37 [{["tag"] = "auto-xy gap-xsmall wrap row"}]
      161 MOVE                             R17 R8
      162 CALL                             R14 3 -1
      163 CALL                             R11 -1 -1
      164 RETURN                           R11 -1

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
       64 DUPCLOSURE                       R8 K18 [PROTO_4]
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R1
       71 RETURN                           R8 1
