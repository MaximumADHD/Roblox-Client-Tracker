PROTO_0:
        0 FASTCALL2K                       STRING_SUB R0 K0 ; [+5]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K0 [-1]
        4 GETIMPORT                        R1 K3 [string.sub]
        6 CALL                             R1 2 1
        7 JUMPIFNOTEQKS                    R1 K4 ["*"] ; [+10]
        9 LOADN                            R3 1
       10 LOADN                            R4 254
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
       11 LOADN                            R8 254
       12 FASTCALL3                        STRING_SUB R4 R7 R8
       14 MOVE                             R6 R4
       15 GETIMPORT                        R5 K3 [string.sub]
       17 CALL                             R5 3 1
       18 MOVE                             R4 R5
       19 MOVE                             R3 R4
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R4 R5 K5 ["currentPreset"]
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
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["use"]
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R3 R1 K2 ["fileType"]
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R5 R6 K3 ["FileType"]
       11 GETTABLEKS                       R4 R5 K4 ["Scene"]
       13 JUMPIFEQ                         R3 R4 ; [+18]
       15 GETUPVAL                         R3 2
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R4 R5 K5 ["Text"]
       19 DUPTABLE                         R5 K7 [{"tag", "Text"}]
       20 LOADK                            R6 K8 ["size-full-0 auto-y content-emphasis text-body-small text-align-x-left text-align-y-center"]
       21 SETTABLEKS                       R6 R5 K6 ["tag"]
       23 LOADK                            R8 K9 ["ImportQueue"]
       24 LOADK                            R9 K10 ["NoPreset"]
       25 NAMECALL                         R6 R2 K11 ["getText"]
       27 CALL                             R6 3 1
       28 SETTABLEKS                       R6 R5 K5 ["Text"]
       30 CALL                             R3 2 -1
       31 RETURN                           R3 -1
       32 GETUPVAL                         R4 4
       33 GETTABLEKS                       R3 R4 K1 ["use"]
       35 CALL                             R3 0 1
       36 GETTABLEKS                       R6 R1 K12 ["currentPreset"]
       38 MOVE                             R7 R1
       39 NAMECALL                         R4 R3 K13 ["getNameList"]
       41 CALL                             R4 3 1
       42 GETUPVAL                         R6 5
       43 GETTABLEKS                       R5 R6 K14 ["find"]
       45 MOVE                             R6 R4
       46 NEWCLOSURE                       R7 P0
       47 CAPTURE                          VAL R1
       48 CALL                             R5 2 1
       49 GETUPVAL                         R7 5
       50 GETTABLEKS                       R6 R7 K15 ["map"]
       52 MOVE                             R7 R4
       53 DUPCLOSURE                       R8 K16 [PROTO_2]
       54 CALL                             R6 2 1
       55 GETUPVAL                         R7 2
       56 GETUPVAL                         R10 3
       57 GETTABLEKS                       R9 R10 K17 ["Dropdown"]
       59 GETTABLEKS                       R8 R9 K18 ["Root"]
       61 DUPTABLE                         R9 K26 [{"size", "label", "items", "width", "value", "onItemChanged", "isDisabled"}]
       62 GETUPVAL                         R13 3
       63 GETTABLEKS                       R12 R13 K27 ["Enums"]
       65 GETTABLEKS                       R11 R12 K28 ["InputSize"]
       67 GETTABLEKS                       R10 R11 K29 ["XSmall"]
       69 SETTABLEKS                       R10 R9 K19 ["size"]
       71 LOADK                            R10 K30 [""]
       72 SETTABLEKS                       R10 R9 K20 ["label"]
       74 SETTABLEKS                       R6 R9 K21 ["items"]
       76 GETIMPORT                        R10 K33 [UDim.new]
       78 LOADN                            R11 1
       79 LOADN                            R12 0
       80 CALL                             R10 2 1
       81 SETTABLEKS                       R10 R9 K22 ["width"]
       83 SETTABLEKS                       R5 R9 K23 ["value"]
       85 NEWCLOSURE                       R10 P2
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R1
       88 SETTABLEKS                       R10 R9 K24 ["onItemChanged"]
       90 GETTABLEKS                       R11 R1 K34 ["state"]
       92 GETUPVAL                         R14 1
       93 GETTABLEKS                       R13 R14 K35 ["SessionState"]
       95 GETTABLEKS                       R12 R13 K36 ["Parsed"]
       97 JUMPIFNOTEQ                      R11 R12 ; [+2]
       99 LOADB                            R10 0 +1
      100 LOADB                            R10 1
      101 SETTABLEKS                       R10 R9 K25 ["isDisabled"]
      103 CALL                             R7 2 -1
      104 RETURN                           R7 -1

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
       20 GETTABLEKS                       R4 R5 K9 ["Dash"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Packages"]
       27 GETTABLEKS                       R5 R6 K10 ["Foundation"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R7 R0 K6 ["Packages"]
       34 GETTABLEKS                       R6 R7 K11 ["Framework"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R5 K12 ["ContextServices"]
       39 GETTABLEKS                       R7 R6 K13 ["Localization"]
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R11 R0 K14 ["Src"]
       45 GETTABLEKS                       R10 R11 K15 ["Controllers"]
       47 GETTABLEKS                       R9 R10 K16 ["PresetController"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R11 R0 K14 ["Src"]
       54 GETTABLEKS                       R10 R11 K17 ["Types"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R13 R0 K14 ["Src"]
       61 GETTABLEKS                       R12 R13 K17 ["Types"]
       63 GETTABLEKS                       R11 R12 K18 ["QueuedSession"]
       65 CALL                             R10 1 1
       66 DUPCLOSURE                       R11 K19 [PROTO_0]
       67 DUPCLOSURE                       R12 K20 [PROTO_4]
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R3
       74 RETURN                           R12 1
