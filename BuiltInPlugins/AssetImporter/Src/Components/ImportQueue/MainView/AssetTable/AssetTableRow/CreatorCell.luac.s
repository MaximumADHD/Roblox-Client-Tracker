PROTO_0:
        0 JUMPIF                           R0 ; [+3]
        1 NEWTABLE                         R2 0 0
        3 RETURN                           R2 1
        4 NEWTABLE                         R2 0 1
        6 DUPTABLE                         R3 K3 [{[1], ["id"] = -1}]
        7 LOADK                            R6 K4 ["UploadDestination"]
        8 LOADK                            R7 K5 ["Me"]
        9 NAMECALL                         R4 R1 K6 ["getText"]
       11 CALL                             R4 3 1
       12 SETTABLEKS                       R4 R3 K0 ["text"]
       14 SETLIST                          R2 R3 1 [1]
       16 MOVE                             R3 R0
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 FORGPREP                         R3
       20 DUPTABLE                         R8 K7 [{"text", "id"}]
       21 GETTABLEKS                       R9 R7 K8 ["name"]
       23 SETTABLEKS                       R9 R8 K0 ["text"]
       25 GETTABLEKS                       R9 R7 K1 ["id"]
       27 SETTABLEKS                       R9 R8 K1 ["id"]
       29 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       31 MOVE                             R10 R2
       32 MOVE                             R11 R8
       33 GETIMPORT                        R9 K11 [table.insert]
       35 CALL                             R9 2 0
       36 FORGLOOP                         R3 2 ; [-17]
       38 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["changeCreatorId"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 CALL                             R4 0 1
       14 GETUPVAL                         R5 4
       15 GETTABLEKS                       R6 R1 K1 ["managedGroups"]
       17 MOVE                             R7 R3
       18 CALL                             R5 2 1
       19 GETTABLEKS                       R6 R0 K2 ["TableEntry"]
       21 GETUPVAL                         R7 5
       22 GETUPVAL                         R8 6
       23 GETTABLEKS                       R8 R8 K3 ["Dropdown"]
       25 GETTABLEKS                       R8 R8 K4 ["Root"]
       27 DUPTABLE                         R9 K14 [{["size"], ["label"] = "", ["items"], ["width"], ["maxHeight"], ["value"], ["onItemChanged"], ["isDisabled"]}]
       28 GETUPVAL                         R10 6
       29 GETTABLEKS                       R10 R10 K15 ["Enums"]
       31 GETTABLEKS                       R10 R10 K16 ["InputSize"]
       33 GETTABLEKS                       R10 R10 K17 ["XSmall"]
       35 SETTABLEKS                       R10 R9 K5 ["size"]
       37 SETTABLEKS                       R5 R9 K8 ["items"]
       39 GETIMPORT                        R10 K20 [UDim.new]
       41 LOADN                            R11 1
       42 LOADN                            R12 0
       43 CALL                             R10 2 1
       44 SETTABLEKS                       R10 R9 K9 ["width"]
       46 MOVE                             R10 R4
       47 JUMPIFNOT                        R10 ; [+2]
       48 GETTABLEKS                       R10 R4 K21 ["Y"]
       50 SETTABLEKS                       R10 R9 K10 ["maxHeight"]
       52 GETTABLEKS                       R10 R6 K22 ["creatorId"]
       54 SETTABLEKS                       R10 R9 K11 ["value"]
       56 NEWCLOSURE                       R10 P0
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R6
       59 SETTABLEKS                       R10 R9 K12 ["onItemChanged"]
       61 GETTABLEKS                       R11 R6 K23 ["state"]
       63 GETUPVAL                         R12 7
       64 GETTABLEKS                       R12 R12 K24 ["SessionState"]
       66 GETTABLEKS                       R12 R12 K25 ["Parsed"]
       68 JUMPIFNOTEQ                      R11 R12 ; [+2]
       70 LOADB                            R10 0 +1
       71 LOADB                            R10 1
       72 SETTABLEKS                       R10 R9 K13 ["isDisabled"]
       74 CALL                             R7 2 -1
       75 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Packages"]
       27 GETTABLEKS                       R5 R5 K10 ["Framework"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       32 GETTABLEKS                       R6 R5 K12 ["Localization"]
       34 GETIMPORT                        R7 K5 [require]
       36 GETTABLEKS                       R8 R0 K13 ["Src"]
       38 GETTABLEKS                       R8 R8 K14 ["Controllers"]
       40 GETTABLEKS                       R8 R8 K15 ["FileController"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R0 K13 ["Src"]
       47 GETTABLEKS                       R9 R9 K14 ["Controllers"]
       49 GETTABLEKS                       R9 R9 K16 ["QueueController"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K5 [require]
       54 GETTABLEKS                       R10 R0 K13 ["Src"]
       56 GETTABLEKS                       R10 R10 K17 ["Hooks"]
       58 GETTABLEKS                       R10 R10 K18 ["useMainViewAbsSize"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K5 [require]
       63 GETTABLEKS                       R11 R0 K13 ["Src"]
       65 GETTABLEKS                       R11 R11 K19 ["Types"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K5 [require]
       70 GETTABLEKS                       R12 R0 K13 ["Src"]
       72 GETTABLEKS                       R12 R12 K19 ["Types"]
       74 GETTABLEKS                       R12 R12 K20 ["QueuedSession"]
       76 CALL                             R11 1 1
       77 DUPCLOSURE                       R12 K21 [PROTO_0]
       78 DUPCLOSURE                       R13 K22 [PROTO_2]
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R10
       87 RETURN                           R13 1
