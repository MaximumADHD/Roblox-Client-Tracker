PROTO_0:
        0 FASTCALL2K                       STRING_SUB R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 [-1]
        4 GETIMPORT                        R1 K3 [string.sub]
        6 CALL                             R1 2 1
        7 JUMPIFNOTEQKS                    R1 K4 ["*"] ; [+10]
        9 LOADN                            R3 1
       10 LOADN                            R4 -2
       11 FASTCALL3                        STRING_SUB R0 R3 R4
       13 MOVE                             R2 R0
       14 GETIMPORT                        R1 K3 [string.sub]
       16 CALL                             R1 3 1
       17 MOVE                             R0 R1
       18 RETURN                           R0 1

PROTO_1:
        0 MOVE                             R4 R0
        1 FASTCALL2K                       STRING_SUB R4 K0 ; [+5]
        3 MOVE                             R6 R4
        4 LOADK                            R7 K0 [-1]
        5 GETIMPORT                        R5 K3 [string.sub]
        7 CALL                             R5 2 1
        8 JUMPIFNOTEQKS                    R5 K4 ["*"] ; [+10]
       10 LOADN                            R7 1
       11 LOADN                            R8 -2
       12 FASTCALL3                        STRING_SUB R4 R7 R8
       14 MOVE                             R6 R4
       15 GETIMPORT                        R5 K3 [string.sub]
       17 CALL                             R5 3 1
       18 MOVE                             R4 R5
       19 MOVE                             R3 R4
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K5 ["currentPreset"]
       23 JUMPIFEQ                         R3 R4 ; [+2]
       25 LOADB                            R2 0 +1
       26 LOADB                            R2 1
       27 RETURN                           R2 1

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"id", "text"}]
        1 SETTABLEKS                       R0 R1 K0 ["id"]
        3 SETTABLEKS                       R0 R1 K1 ["text"]
        5 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R1 R1 K0 ["resolvePreset"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["TableEntry"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["use"]
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R3 R1 K2 ["fileType"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K3 ["FileType"]
       11 GETTABLEKS                       R4 R4 K4 ["Scene"]
       13 JUMPIFEQ                         R3 R4 ; [+15]
       15 GETUPVAL                         R3 2
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R4 R4 K5 ["Text"]
       19 DUPTABLE                         R5 K8 [{["tag"] = "size-full-0 auto-y text-body-small text-align-x-left text-align-y-center content-emphasis", ["Text"]}]
       20 LOADK                            R8 K9 ["ImportQueue"]
       21 LOADK                            R9 K10 ["NoPreset"]
       22 NAMECALL                         R6 R2 K11 ["getText"]
       24 CALL                             R6 3 1
       25 SETTABLEKS                       R6 R5 K5 ["Text"]
       27 CALL                             R3 2 -1
       28 RETURN                           R3 -1
       29 GETUPVAL                         R3 4
       30 GETTABLEKS                       R3 R3 K1 ["use"]
       32 CALL                             R3 0 1
       33 GETTABLEKS                       R6 R1 K12 ["currentPreset"]
       35 MOVE                             R7 R1
       36 NAMECALL                         R4 R3 K13 ["getNameList"]
       38 CALL                             R4 3 1
       39 GETUPVAL                         R5 5
       40 CALL                             R5 0 1
       41 GETUPVAL                         R6 6
       42 GETTABLEKS                       R6 R6 K14 ["find"]
       44 MOVE                             R7 R4
       45 NEWCLOSURE                       R8 P0
       46 CAPTURE                          VAL R1
       47 CALL                             R6 2 1
       48 GETUPVAL                         R7 6
       49 GETTABLEKS                       R7 R7 K15 ["map"]
       51 MOVE                             R8 R4
       52 DUPCLOSURE                       R9 K16 [PROTO_2]
       53 CALL                             R7 2 1
       54 GETUPVAL                         R8 2
       55 GETUPVAL                         R9 3
       56 GETTABLEKS                       R9 R9 K17 ["Dropdown"]
       58 GETTABLEKS                       R9 R9 K18 ["Root"]
       60 DUPTABLE                         R10 K28 [{["size"], ["label"] = "", ["items"], ["width"], ["maxHeight"], ["value"], ["onItemChanged"], ["isDisabled"]}]
       61 GETUPVAL                         R11 3
       62 GETTABLEKS                       R11 R11 K29 ["Enums"]
       64 GETTABLEKS                       R11 R11 K30 ["InputSize"]
       66 GETTABLEKS                       R11 R11 K31 ["XSmall"]
       68 SETTABLEKS                       R11 R10 K19 ["size"]
       70 SETTABLEKS                       R7 R10 K22 ["items"]
       72 GETIMPORT                        R11 K34 [UDim.new]
       74 LOADN                            R12 1
       75 LOADN                            R13 0
       76 CALL                             R11 2 1
       77 SETTABLEKS                       R11 R10 K23 ["width"]
       79 MOVE                             R11 R5
       80 JUMPIFNOT                        R11 ; [+2]
       81 GETTABLEKS                       R11 R5 K35 ["Y"]
       83 SETTABLEKS                       R11 R10 K24 ["maxHeight"]
       85 SETTABLEKS                       R6 R10 K25 ["value"]
       87 NEWCLOSURE                       R11 P2
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R1
       90 SETTABLEKS                       R11 R10 K26 ["onItemChanged"]
       92 GETTABLEKS                       R12 R1 K36 ["state"]
       94 GETUPVAL                         R13 1
       95 GETTABLEKS                       R13 R13 K37 ["SessionState"]
       97 GETTABLEKS                       R13 R13 K38 ["Parsed"]
       99 JUMPIFNOTEQ                      R12 R13 ; [+2]
      101 LOADB                            R11 0 +1
      102 LOADB                            R11 1
      103 SETTABLEKS                       R11 R10 K27 ["isDisabled"]
      105 CALL                             R8 2 -1
      106 RETURN                           R8 -1

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
       20 GETTABLEKS                       R4 R4 K9 ["Dash"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Packages"]
       27 GETTABLEKS                       R5 R5 K10 ["Foundation"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K6 ["Packages"]
       34 GETTABLEKS                       R6 R6 K11 ["Framework"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R5 K12 ["ContextServices"]
       39 GETTABLEKS                       R7 R6 K13 ["Localization"]
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R9 R0 K14 ["Src"]
       45 GETTABLEKS                       R9 R9 K15 ["Controllers"]
       47 GETTABLEKS                       R9 R9 K16 ["PresetController"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R10 R0 K14 ["Src"]
       54 GETTABLEKS                       R10 R10 K17 ["Hooks"]
       56 GETTABLEKS                       R10 R10 K18 ["useMainViewAbsSize"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K5 [require]
       61 GETTABLEKS                       R11 R0 K14 ["Src"]
       63 GETTABLEKS                       R11 R11 K19 ["Types"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K5 [require]
       68 GETTABLEKS                       R12 R0 K14 ["Src"]
       70 GETTABLEKS                       R12 R12 K19 ["Types"]
       72 GETTABLEKS                       R12 R12 K20 ["QueuedSession"]
       74 CALL                             R11 1 1
       75 DUPCLOSURE                       R12 K21 [PROTO_0]
       76 DUPCLOSURE                       R13 K22 [PROTO_4]
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R3
       84 RETURN                           R13 1
