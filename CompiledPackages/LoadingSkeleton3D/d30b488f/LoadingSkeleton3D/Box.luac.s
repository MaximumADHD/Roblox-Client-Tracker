PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Folder"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["LoadingSkeleton3DBox"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 LOADB                            R1 0
        8 SETTABLEKS                       R1 R0 K6 ["Archivable"]
       10 GETUPVAL                         R1 0
       11 SETTABLEKS                       R1 R0 K7 ["Parent"]
       13 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["colorForStatus"]
        3 GETTABLEKS                       R2 R0 K1 ["status"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["fillTransparencyForStatus"]
        9 GETTABLEKS                       R3 R0 K1 ["status"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R0 K3 ["container"]
       14 NAMECALL                         R3 R3 K4 ["GetChildren"]
       16 CALL                             R3 1 3
       17 FORGPREP                         R3
       18 LOADK                            R10 K5 ["Highlight"]
       19 NAMECALL                         R8 R7 K6 ["IsA"]
       21 CALL                             R8 2 1
       22 JUMPIFNOT                        R8 ; [+7]
       23 SETTABLEKS                       R1 R7 K7 ["FillColor"]
       25 SETTABLEKS                       R1 R7 K8 ["OutlineColor"]
       27 SETTABLEKS                       R2 R7 K9 ["FillTransparency"]
       29 JUMP                             ; [+24]
       30 LOADK                            R10 K10 ["SelectionBox"]
       31 NAMECALL                         R8 R7 K6 ["IsA"]
       33 CALL                             R8 2 1
       34 JUMPIFNOT                        R8 ; [+3]
       35 SETTABLEKS                       R1 R7 K11 ["Color3"]
       37 JUMP                             ; [+16]
       38 LOADK                            R10 K12 ["BoxHandleAdornment"]
       39 NAMECALL                         R8 R7 K6 ["IsA"]
       41 CALL                             R8 2 1
       42 JUMPIFNOT                        R8 ; [+11]
       43 SETTABLEKS                       R1 R7 K11 ["Color3"]
       45 GETTABLEKS                       R9 R7 K13 ["Name"]
       47 JUMPIFNOTEQKS                    R9 K14 ["Fill"] ; [+3]
       49 MOVE                             R8 R2
       50 JUMP                             ; [+1]
       51 LOADN                            R8 0
       52 SETTABLEKS                       R8 R7 K15 ["Transparency"]
       54 FORGLOOP                         R3 2 ; [-37]
       56 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["destroyed"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K0 ["destroyed"]
        7 GETTABLEKS                       R1 R0 K1 ["autoDestroyThread"]
        9 JUMPIFEQKNIL                     R1 ; [+9]
       11 GETIMPORT                        R1 K4 [task.cancel]
       13 GETTABLEKS                       R2 R0 K1 ["autoDestroyThread"]
       15 CALL                             R1 1 0
       16 LOADNIL                          R1
       17 SETTABLEKS                       R1 R0 K1 ["autoDestroyThread"]
       19 GETTABLEKS                       R1 R0 K5 ["connections"]
       21 LOADNIL                          R2
       22 LOADNIL                          R3
       23 FORGPREP                         R1
       24 NAMECALL                         R6 R5 K6 ["Disconnect"]
       26 CALL                             R6 1 0
       27 FORGLOOP                         R1 2 ; [-4]
       29 GETIMPORT                        R1 K9 [table.clear]
       31 GETTABLEKS                       R2 R0 K5 ["connections"]
       33 CALL                             R1 1 0
       34 GETTABLEKS                       R1 R0 K10 ["billboard"]
       36 GETTABLEKS                       R1 R1 K11 ["destroy"]
       38 CALL                             R1 0 0
       39 GETTABLEKS                       R1 R0 K12 ["container"]
       41 NAMECALL                         R1 R1 K13 ["Destroy"]
       43 CALL                             R1 1 0
       44 GETIMPORT                        R1 K15 [table.find]
       46 GETUPVAL                         R2 0
       47 MOVE                             R3 R0
       48 CALL                             R1 2 1
       49 JUMPIFEQKNIL                     R1 ; [+6]
       51 GETIMPORT                        R2 K17 [table.remove]
       53 GETUPVAL                         R3 0
       54 MOVE                             R4 R1
       55 CALL                             R2 2 0
       56 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["autoDestroyThread"]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R4 R0 K0 ["destroyed"]
        2 JUMPIFNOT                        R4 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R4 R0 K1 ["autoDestroyThread"]
        6 JUMPIFEQKNIL                     R4 ; [+9]
        8 GETIMPORT                        R4 K4 [task.cancel]
       10 GETTABLEKS                       R5 R0 K1 ["autoDestroyThread"]
       12 CALL                             R4 1 0
       13 LOADNIL                          R4
       14 SETTABLEKS                       R4 R0 K1 ["autoDestroyThread"]
       16 SETTABLEKS                       R1 R0 K5 ["status"]
       18 GETUPVAL                         R4 0
       19 MOVE                             R5 R0
       20 CALL                             R4 1 0
       21 JUMPIFEQKS                       R1 K6 ["failed"] ; [+2]
       23 LOADB                            R4 0 +1
       24 LOADB                            R4 1
       25 MOVE                             R5 R3
       26 JUMPIF                           R5 ; [+2]
       27 NEWTABLE                         R5 0 0
       29 GETTABLEKS                       R7 R5 K7 ["onRevert"]
       31 JUMPIFNOTEQKNIL                  R7 ; [+2]
       33 LOADB                            R6 0 +1
       34 LOADB                            R6 1
       35 MOVE                             R7 R4
       36 JUMPIF                           R7 ; [+6]
       37 MOVE                             R7 R6
       38 JUMPIF                           R7 ; [+4]
       39 JUMPIFNOTEQKNIL                  R2 ; [+2]
       41 LOADB                            R7 0 +1
       42 LOADB                            R7 1
       43 SETTABLEKS                       R7 R0 K8 ["hasLabel"]
       45 GETTABLEKS                       R7 R0 K9 ["billboard"]
       47 GETTABLEKS                       R7 R7 K10 ["setEnabled"]
       49 GETTABLEKS                       R8 R0 K8 ["hasLabel"]
       51 JUMPIFNOT                        R8 ; [+2]
       52 GETTABLEKS                       R8 R0 K11 ["labelVisible"]
       54 CALL                             R7 1 0
       55 GETTABLEKS                       R7 R0 K9 ["billboard"]
       57 GETTABLEKS                       R7 R7 K12 ["setActive"]
       59 MOVE                             R8 R4
       60 JUMPIF                           R8 ; [+8]
       61 MOVE                             R8 R6
       62 JUMPIF                           R8 ; [+6]
       63 GETTABLEKS                       R9 R5 K13 ["onActivated"]
       65 JUMPIFNOTEQKNIL                  R9 ; [+2]
       67 LOADB                            R8 0 +1
       68 LOADB                            R8 1
       69 CALL                             R7 1 0
       70 GETTABLEKS                       R7 R0 K9 ["billboard"]
       72 GETTABLEKS                       R7 R7 K14 ["render"]
       74 MOVE                             R8 R1
       75 ORK                              R9 R2 K15 [""]
       76 MOVE                             R10 R5
       77 CALL                             R7 3 0
       78 JUMPIFNOTEQKS                    R1 K16 ["succeeded"] ; [+17]
       80 GETTABLEKS                       R7 R0 K17 ["autoDestroyOnSuccess"]
       82 JUMPIFNOT                        R7 ; [+13]
       83 JUMPIFNOT                        R6 ; [+2]
       84 LOADN                            R7 10
       85 JUMP                             ; [+1]
       86 LOADK                            R7 K18 [1.5]
       87 GETIMPORT                        R8 K20 [task.delay]
       89 MOVE                             R9 R7
       90 NEWCLOSURE                       R10 P0
       91 CAPTURE                          VAL R0
       92 CAPTURE                          UPVAL U1
       93 CALL                             R8 2 1
       94 SETTABLEKS                       R8 R0 K1 ["autoDestroyThread"]
       96 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["destroyed"]
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R0 0
        4 SETTABLEKS                       R1 R0 K1 ["labelVisible"]
        6 GETTABLEKS                       R2 R0 K2 ["billboard"]
        8 GETTABLEKS                       R2 R2 K3 ["setEnabled"]
       10 GETTABLEKS                       R4 R0 K4 ["hasLabel"]
       12 AND                              R3 R4 R1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 LOADNIL                          R3
        1 GETUPVAL                         R4 0
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 NEWCLOSURE                       R7 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          REF R3
        7 CALL                             R4 3 1
        8 DUPTABLE                         R5 K13 [{[1] = "pending", ["destroyed"] = False, ["autoDestroyOnSuccess"], ["hasLabel"] = False, ["labelVisible"] = True, ["container"], ["billboard"], ["connections"], ["autoDestroyThread"] = }]
        9 LOADB                            R6 1
       10 JUMPIFEQKNIL                     R2 ; [+8]
       12 LOADB                            R6 1
       13 GETTABLEKS                       R7 R2 K4 ["autoDestroyOnSuccess"]
       15 JUMPIFEQKNIL                     R7 ; [+3]
       17 GETTABLEKS                       R6 R2 K4 ["autoDestroyOnSuccess"]
       19 SETTABLEKS                       R6 R5 K4 ["autoDestroyOnSuccess"]
       21 SETTABLEKS                       R0 R5 K8 ["container"]
       23 SETTABLEKS                       R4 R5 K9 ["billboard"]
       25 NEWTABLE                         R6 0 0
       27 SETTABLEKS                       R6 R5 K10 ["connections"]
       29 MOVE                             R3 R5
       30 GETUPVAL                         R6 2
       31 FASTCALL2                        TABLE_INSERT R6 R3 ; [+4]
       33 MOVE                             R7 R3
       34 GETIMPORT                        R5 K16 [table.insert]
       36 CALL                             R5 2 0
       37 GETUPVAL                         R5 3
       38 MOVE                             R6 R3
       39 CALL                             R5 1 0
       40 CLOSEUPVALS                      R3
       41 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [game]
        3 NAMECALL                         R0 R0 K2 ["IsDescendantOf"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 1
        9 GETUPVAL                         R1 2
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["Folder"]
        3 CALL                             R3 1 1
        4 LOADK                            R4 K4 ["LoadingSkeleton3DBox"]
        5 SETTABLEKS                       R4 R3 K5 ["Name"]
        7 LOADB                            R4 0
        8 SETTABLEKS                       R4 R3 K6 ["Archivable"]
       10 GETUPVAL                         R4 0
       11 SETTABLEKS                       R4 R3 K7 ["Parent"]
       13 MOVE                             R2 R3
       14 GETIMPORT                        R3 K2 [Instance.new]
       16 LOADK                            R4 K8 ["SelectionBox"]
       17 CALL                             R3 1 1
       18 LOADK                            R4 K9 ["Outline"]
       19 SETTABLEKS                       R4 R3 K5 ["Name"]
       21 SETTABLEKS                       R0 R3 K10 ["Adornee"]
       23 LOADK                            R4 K11 [0.03]
       24 SETTABLEKS                       R4 R3 K12 ["LineThickness"]
       26 SETTABLEKS                       R2 R3 K7 ["Parent"]
       28 GETIMPORT                        R4 K2 [Instance.new]
       30 LOADK                            R5 K13 ["Highlight"]
       31 CALL                             R4 1 1
       32 LOADK                            R5 K14 ["Fill"]
       33 SETTABLEKS                       R5 R4 K5 ["Name"]
       35 SETTABLEKS                       R0 R4 K10 ["Adornee"]
       37 GETIMPORT                        R5 K18 [Enum.HighlightDepthMode.Occluded]
       39 SETTABLEKS                       R5 R4 K19 ["DepthMode"]
       41 LOADN                            R5 1
       42 SETTABLEKS                       R5 R4 K20 ["OutlineTransparency"]
       44 SETTABLEKS                       R2 R4 K7 ["Parent"]
       46 GETUPVAL                         R5 1
       47 MOVE                             R6 R2
       48 MOVE                             R7 R0
       49 MOVE                             R8 R1
       50 CALL                             R5 3 1
       51 GETTABLEKS                       R6 R5 K21 ["billboard"]
       53 GETTABLEKS                       R6 R6 K22 ["billboardGui"]
       55 LOADK                            R7 K23 [{0, 1, 0}]
       56 SETTABLEKS                       R7 R6 K24 ["ExtentsOffsetWorldSpace"]
       58 GETTABLEKS                       R7 R5 K25 ["connections"]
       60 GETTABLEKS                       R8 R0 K26 ["AncestryChanged"]
       62 NEWCLOSURE                       R10 P0
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U2
       65 CAPTURE                          VAL R5
       66 NAMECALL                         R8 R8 K27 ["Connect"]
       68 CALL                             R8 2 -1
       69 FASTCALL                         TABLE_INSERT ; [+2]
       70 GETIMPORT                        R6 K30 [table.insert]
       72 CALL                             R6 -1 0
       73 RETURN                           R5 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Terrain"]
        3 JUMPIFNOTEQKNIL                  R3 ; [+2]
        5 LOADB                            R5 0 +1
        6 LOADB                            R5 1
        7 FASTCALL2K                       ASSERT R5 K1 ; [+4]
        9 LOADK                            R6 K1 ["Workspace has no Terrain to anchor adornments to"]
       10 GETIMPORT                        R4 K3 [assert]
       12 CALL                             R4 2 0
       13 GETIMPORT                        R5 K6 [Instance.new]
       15 LOADK                            R6 K7 ["Folder"]
       16 CALL                             R5 1 1
       17 LOADK                            R6 K8 ["LoadingSkeleton3DBox"]
       18 SETTABLEKS                       R6 R5 K9 ["Name"]
       20 LOADB                            R6 0
       21 SETTABLEKS                       R6 R5 K10 ["Archivable"]
       23 GETUPVAL                         R6 1
       24 SETTABLEKS                       R6 R5 K11 ["Parent"]
       26 MOVE                             R4 R5
       27 GETIMPORT                        R5 K6 [Instance.new]
       29 LOADK                            R6 K12 ["BoxHandleAdornment"]
       30 CALL                             R5 1 1
       31 LOADK                            R6 K13 ["Fill"]
       32 SETTABLEKS                       R6 R5 K9 ["Name"]
       34 SETTABLEKS                       R3 R5 K14 ["Adornee"]
       36 SETTABLEKS                       R0 R5 K15 ["CFrame"]
       38 SETTABLEKS                       R1 R5 K16 ["Size"]
       40 SETTABLEKS                       R4 R5 K11 ["Parent"]
       42 DIVK                             R6 R1 K17 [2]
       43 GETUPVAL                         R7 2
       44 LOADNIL                          R8
       45 LOADNIL                          R9
       46 FORGPREP                         R7
       47 NEWTABLE                         R12 0 2
       49 LOADN                            R15 -1
       50 LOADN                            R16 1
       51 SETLIST                          R12 R15 2 [1]
       53 LOADNIL                          R13
       54 LOADNIL                          R14
       55 FORGPREP                         R12
       56 NEWTABLE                         R17 0 2
       58 LOADN                            R20 -1
       59 LOADN                            R21 1
       60 SETLIST                          R17 R20 2 [1]
       62 LOADNIL                          R18
       63 LOADNIL                          R19
       64 FORGPREP                         R17
       65 GETTABLEKS                       R25 R11 K18 ["first"]
       67 MUL                              R24 R25 R6
       68 MUL                              R23 R24 R16
       69 GETTABLEKS                       R26 R11 K19 ["second"]
       71 MUL                              R25 R26 R6
       72 MUL                              R24 R25 R21
       73 ADD                              R22 R23 R24
       74 GETIMPORT                        R23 K6 [Instance.new]
       76 LOADK                            R24 K12 ["BoxHandleAdornment"]
       77 CALL                             R23 1 1
       78 LOADK                            R24 K20 ["Edge"]
       79 SETTABLEKS                       R24 R23 K9 ["Name"]
       81 SETTABLEKS                       R3 R23 K14 ["Adornee"]
       83 GETIMPORT                        R25 K21 [CFrame.new]
       85 MOVE                             R26 R22
       86 CALL                             R25 1 1
       87 MUL                              R24 R0 R25
       88 SETTABLEKS                       R24 R23 K15 ["CFrame"]
       90 GETTABLEKS                       R26 R11 K22 ["along"]
       92 MUL                              R25 R26 R1
       93 GETTABLEKS                       R28 R11 K18 ["first"]
       95 GETTABLEKS                       R29 R11 K19 ["second"]
       97 ADD                              R27 R28 R29
       98 MULK                             R26 R27 K23 [0.1]
       99 ADD                              R24 R25 R26
      100 SETTABLEKS                       R24 R23 K16 ["Size"]
      102 SETTABLEKS                       R4 R23 K11 ["Parent"]
      104 FORGLOOP                         R17 2 ; [-40]
      106 FORGLOOP                         R12 2 ; [-51]
      108 FORGLOOP                         R7 2 ; [-62]
      110 GETUPVAL                         R7 3
      111 MOVE                             R8 R4
      112 MOVE                             R9 R3
      113 MOVE                             R10 R2
      114 CALL                             R7 3 1
      115 GETTABLEKS                       R8 R7 K24 ["billboard"]
      117 GETTABLEKS                       R8 R8 K25 ["billboardGui"]
      119 GETTABLEKS                       R10 R0 K26 ["Position"]
      121 LOADK                            R12 K27 [{0, 1, 0}]
      122 GETTABLEKS                       R14 R6 K29 ["Y"]
      124 ADDK                             R13 R14 K28 [1]
      125 MUL                              R11 R12 R13
      126 ADD                              R9 R10 R11
      127 SETTABLEKS                       R9 R8 K30 ["StudsOffsetWorldSpace"]
      129 RETURN                           R7 1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 LENGTH                           R2 R3
        2 LOADN                            R0 1
        3 LOADN                            R1 -1
        4 FORNPREP                         R0
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R5 0
        7 GETTABLE                         R4 R5 R2
        8 CALL                             R3 1 0
        9 FORNLOOP                         R0
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Workspace"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["LoadingSkeleton3D"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Theme"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K10 [require]
       26 GETTABLEKS                       R5 R2 K12 ["Types"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K10 [require]
       31 GETTABLEKS                       R6 R2 K13 ["Billboard"]
       33 CALL                             R5 1 1
       34 NEWTABLE                         R6 0 3
       36 DUPTABLE                         R7 K20 [{["along"] = {1, 0, 0}, ["first"] = {0, 1, 0}, ["second"] = {0, 0, 1}}]
       37 DUPTABLE                         R8 K21 [{["along"] = {0, 1, 0}, ["first"] = {1, 0, 0}, ["second"] = {0, 0, 1}}]
       38 DUPTABLE                         R9 K22 [{["along"] = {0, 0, 1}, ["first"] = {1, 0, 0}, ["second"] = {0, 1, 0}}]
       39 SETLIST                          R6 R7 3 [1]
       41 NEWTABLE                         R7 0 0
       43 DUPCLOSURE                       R8 K23 [PROTO_0]
       44 CAPTURE                          VAL R0
       45 DUPCLOSURE                       R9 K24 [PROTO_1]
       46 CAPTURE                          VAL R3
       47 DUPCLOSURE                       R10 K25 [PROTO_2]
       48 CAPTURE                          VAL R7
       49 DUPCLOSURE                       R11 K26 [PROTO_4]
       50 CAPTURE                          VAL R9
       51 CAPTURE                          VAL R10
       52 DUPCLOSURE                       R12 K27 [PROTO_5]
       53 DUPCLOSURE                       R13 K28 [PROTO_7]
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R10
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R9
       58 DUPCLOSURE                       R14 K29 [PROTO_9]
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R13
       61 CAPTURE                          VAL R10
       62 DUPCLOSURE                       R15 K30 [PROTO_10]
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R13
       67 DUPCLOSURE                       R16 K31 [PROTO_11]
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R10
       70 DUPTABLE                         R17 K42 [{["attachToInstance"], ["attachToRegion"], ["setStatus"], ["setLabelVisible"], ["destroy"], ["destroyAll"], ["successDestroyDelay"] = 1.5, ["autoAcceptDelay"] = 10}]
       71 SETTABLEKS                       R14 R17 K32 ["attachToInstance"]
       73 SETTABLEKS                       R15 R17 K33 ["attachToRegion"]
       75 SETTABLEKS                       R11 R17 K34 ["setStatus"]
       77 SETTABLEKS                       R12 R17 K35 ["setLabelVisible"]
       79 SETTABLEKS                       R10 R17 K36 ["destroy"]
       81 SETTABLEKS                       R16 R17 K37 ["destroyAll"]
       83 RETURN                           R17 1
