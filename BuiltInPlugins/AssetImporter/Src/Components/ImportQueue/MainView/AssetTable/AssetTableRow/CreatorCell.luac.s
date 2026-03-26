PROTO_0:
        0 JUMPIF                           R0 ; [+3]
        1 NEWTABLE                         R2 0 0
        3 RETURN                           R2 1
        4 NEWTABLE                         R2 0 1
        6 DUPTABLE                         R3 K2 [{"text", "id"}]
        7 LOADK                            R6 K3 ["UploadDestination"]
        8 LOADK                            R7 K4 ["Me"]
        9 NAMECALL                         R4 R1 K5 ["getText"]
       11 CALL                             R4 3 1
       12 SETTABLEKS                       R4 R3 K0 ["text"]
       14 LOADN                            R4 255
       15 SETTABLEKS                       R4 R3 K1 ["id"]
       17 SETLIST                          R2 R3 1 [1]
       19 MOVE                             R3 R0
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 FORGPREP                         R3
       23 DUPTABLE                         R8 K2 [{"text", "id"}]
       24 GETTABLEKS                       R9 R7 K6 ["name"]
       26 SETTABLEKS                       R9 R8 K0 ["text"]
       28 GETTABLEKS                       R9 R7 K1 ["id"]
       30 SETTABLEKS                       R9 R8 K1 ["id"]
       32 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       34 MOVE                             R10 R2
       35 MOVE                             R11 R8
       36 GETIMPORT                        R9 K9 [table.insert]
       38 CALL                             R9 2 0
       39 FORGLOOP                         R3 2 ; [-17]
       41 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K0 ["changeCreatorId"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K0 ["use"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R5 R1 K1 ["managedGroups"]
       15 MOVE                             R6 R3
       16 CALL                             R4 2 1
       17 GETTABLEKS                       R5 R0 K2 ["TableEntry"]
       19 GETUPVAL                         R6 4
       20 GETUPVAL                         R9 5
       21 GETTABLEKS                       R8 R9 K3 ["Dropdown"]
       23 GETTABLEKS                       R7 R8 K4 ["Root"]
       25 DUPTABLE                         R8 K12 [{"size", "label", "items", "width", "value", "onItemChanged", "isDisabled"}]
       26 GETUPVAL                         R12 5
       27 GETTABLEKS                       R11 R12 K13 ["Enums"]
       29 GETTABLEKS                       R10 R11 K14 ["InputSize"]
       31 GETTABLEKS                       R9 R10 K15 ["XSmall"]
       33 SETTABLEKS                       R9 R8 K5 ["size"]
       35 LOADK                            R9 K16 [""]
       36 SETTABLEKS                       R9 R8 K6 ["label"]
       38 SETTABLEKS                       R4 R8 K7 ["items"]
       40 GETIMPORT                        R9 K19 [UDim.new]
       42 LOADN                            R10 1
       43 LOADN                            R11 0
       44 CALL                             R9 2 1
       45 SETTABLEKS                       R9 R8 K8 ["width"]
       47 GETTABLEKS                       R9 R5 K20 ["creatorId"]
       49 SETTABLEKS                       R9 R8 K9 ["value"]
       51 NEWCLOSURE                       R9 P0
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R5
       54 SETTABLEKS                       R9 R8 K10 ["onItemChanged"]
       56 GETTABLEKS                       R10 R5 K21 ["state"]
       58 GETUPVAL                         R13 6
       59 GETTABLEKS                       R12 R13 K22 ["SessionState"]
       61 GETTABLEKS                       R11 R12 K23 ["Parsed"]
       63 JUMPIFNOTEQ                      R10 R11 ; [+2]
       65 LOADB                            R9 0 +1
       66 LOADB                            R9 1
       67 SETTABLEKS                       R9 R8 K11 ["isDisabled"]
       69 CALL                             R6 2 -1
       70 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Packages"]
       27 GETTABLEKS                       R5 R6 K10 ["Framework"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       32 GETTABLEKS                       R6 R5 K12 ["Localization"]
       34 GETIMPORT                        R7 K5 [require]
       36 GETTABLEKS                       R10 R0 K13 ["Src"]
       38 GETTABLEKS                       R9 R10 K14 ["Controllers"]
       40 GETTABLEKS                       R8 R9 K15 ["FileController"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R11 R0 K13 ["Src"]
       47 GETTABLEKS                       R10 R11 K14 ["Controllers"]
       49 GETTABLEKS                       R9 R10 K16 ["QueueController"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K5 [require]
       54 GETTABLEKS                       R11 R0 K13 ["Src"]
       56 GETTABLEKS                       R10 R11 K17 ["Types"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K5 [require]
       61 GETTABLEKS                       R13 R0 K13 ["Src"]
       63 GETTABLEKS                       R12 R13 K17 ["Types"]
       65 GETTABLEKS                       R11 R12 K18 ["QueuedSession"]
       67 CALL                             R10 1 1
       68 DUPCLOSURE                       R11 K19 [PROTO_0]
       69 DUPCLOSURE                       R12 K20 [PROTO_2]
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R9
       77 RETURN                           R12 1
