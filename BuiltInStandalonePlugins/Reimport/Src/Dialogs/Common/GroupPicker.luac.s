PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 0 1
        2 GETUPVAL                         R2 0
        3 SETLIST                          R1 R2 1 [1]
        5 LOADB                            R2 0
        6 MOVE                             R3 R0
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 DUPTABLE                         R10 K2 [{"id", "text"}]
       11 GETTABLEKS                       R11 R7 K0 ["id"]
       13 SETTABLEKS                       R11 R10 K0 ["id"]
       15 GETTABLEKS                       R11 R7 K3 ["name"]
       17 SETTABLEKS                       R11 R10 K1 ["text"]
       19 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       21 MOVE                             R9 R1
       22 GETIMPORT                        R8 K6 [table.insert]
       24 CALL                             R8 2 0
       25 GETUPVAL                         R8 1
       26 JUMPIFNOT                        R8 ; [+8]
       27 GETTABLEKS                       R8 R7 K0 ["id"]
       29 GETUPVAL                         R9 1
       30 GETTABLEKS                       R9 R9 K0 ["id"]
       32 JUMPIFNOTEQ                      R8 R9 ; [+2]
       34 LOADB                            R2 1
       35 FORGLOOP                         R3 2 ; [-26]
       37 JUMPIF                           R2 ; [+9]
       38 GETUPVAL                         R3 1
       39 JUMPIFNOT                        R3 ; [+7]
       40 GETUPVAL                         R5 1
       41 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       43 MOVE                             R4 R1
       44 GETIMPORT                        R3 K6 [table.insert]
       46 CALL                             R3 2 0
       47 GETUPVAL                         R3 2
       48 JUMPIF                           R3 ; [+3]
       49 GETUPVAL                         R3 3
       50 MOVE                             R4 R1
       51 CALL                             R3 1 0
       52 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R0 0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["getGroupsAsync"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          REF R0
        8 CAPTURE                          UPVAL U3
        9 CALL                             R1 1 0
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          REF R0
       12 CLOSEUPVALS                      R0
       13 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 JUMPIFNOTEQKS                    R0 K0 ["Me"] ; [+5]
        5 GETUPVAL                         R1 1
        6 LOADNIL                          R2
        7 CALL                             R1 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 1
       10 FASTCALL1                        TONUMBER R0 ; [+3]
       11 MOVE                             R3 R0
       12 GETIMPORT                        R2 K2 [tonumber]
       14 CALL                             R2 1 1
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R3 R0 K1 ["onItemChanged"]
        6 JUMPIFNOT                        R3 ; [+3]
        7 GETTABLEKS                       R2 R0 K1 ["onItemChanged"]
        9 JUMP                             ; [+1]
       10 DUPCLOSURE                       R2 K2 [PROTO_0]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K3 ["useContext"]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K4 ["Context"]
       17 CALL                             R3 1 1
       18 DUPTABLE                         R4 K7 [{"id", "text"}]
       19 LOADK                            R5 K8 ["Me"]
       20 SETTABLEKS                       R5 R4 K5 ["id"]
       22 GETUPVAL                         R6 3
       23 CALL                             R6 0 1
       24 JUMPIFNOT                        R6 ; [+6]
       25 LOADK                            R7 K9 ["ConfigDialog"]
       26 LOADK                            R8 K8 ["Me"]
       27 NAMECALL                         R5 R1 K10 ["getText"]
       29 CALL                             R5 3 1
       30 JUMP                             ; [+1]
       31 LOADK                            R5 K8 ["Me"]
       32 SETTABLEKS                       R5 R4 K6 ["text"]
       34 GETTABLEKS                       R6 R0 K11 ["value"]
       36 JUMPIFNOT                        R6 ; [+14]
       37 DUPTABLE                         R5 K7 [{"id", "text"}]
       38 GETTABLEKS                       R6 R0 K11 ["value"]
       40 SETTABLEKS                       R6 R5 K5 ["id"]
       42 GETTABLEKS                       R7 R0 K11 ["value"]
       44 FASTCALL1                        TOSTRING R7 ; [+2]
       45 GETIMPORT                        R6 K13 [tostring]
       47 CALL                             R6 1 1
       48 SETTABLEKS                       R6 R5 K6 ["text"]
       50 JUMP                             ; [+1]
       51 LOADNIL                          R5
       52 GETUPVAL                         R6 1
       53 GETTABLEKS                       R6 R6 K14 ["useState"]
       55 GETTABLEKS                       R8 R0 K11 ["value"]
       57 JUMPIFNOT                        R8 ; [+3]
       58 GETTABLEKS                       R7 R0 K11 ["value"]
       60 JUMP                             ; [+1]
       61 LOADK                            R7 K8 ["Me"]
       62 CALL                             R6 1 2
       63 GETUPVAL                         R8 1
       64 GETTABLEKS                       R8 R8 K14 ["useState"]
       66 NEWTABLE                         R9 0 2
       68 MOVE                             R10 R4
       69 MOVE                             R11 R5
       70 SETLIST                          R9 R10 2 [1]
       72 CALL                             R8 1 2
       73 GETUPVAL                         R10 1
       74 GETTABLEKS                       R10 R10 K15 ["useEffect"]
       76 NEWCLOSURE                       R11 P1
       77 CAPTURE                          UPVAL U4
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R9
       81 NEWTABLE                         R12 0 0
       83 CALL                             R10 2 0
       84 GETUPVAL                         R10 5
       85 GETUPVAL                         R11 6
       86 DUPTABLE                         R12 K21 [{"label", "size", "value", "onItemChanged", "maxHeight", "items", "testId"}]
       87 LOADK                            R13 K22 [""]
       88 SETTABLEKS                       R13 R12 K16 ["label"]
       90 GETUPVAL                         R13 7
       91 GETTABLEKS                       R13 R13 K23 ["Enums"]
       93 GETTABLEKS                       R13 R13 K24 ["InputSize"]
       95 GETTABLEKS                       R13 R13 K25 ["Small"]
       97 SETTABLEKS                       R13 R12 K17 ["size"]
       99 SETTABLEKS                       R6 R12 K11 ["value"]
      101 NEWCLOSURE                       R13 P2
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R2
      104 SETTABLEKS                       R13 R12 K1 ["onItemChanged"]
      106 GETTABLEKS                       R13 R3 K26 ["dialogSize"]
      108 GETTABLEKS                       R13 R13 K27 ["Y"]
      110 SETTABLEKS                       R13 R12 K18 ["maxHeight"]
      112 SETTABLEKS                       R8 R12 K19 ["items"]
      114 LOADK                            R13 K28 ["group-picker-dropdown"]
      115 SETTABLEKS                       R13 R12 K20 ["testId"]
      117 CALL                             R10 2 -1
      118 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Lib"]
       32 GETTABLEKS                       R5 R5 K11 ["Networking"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K12 ["Src"]
       39 GETTABLEKS                       R6 R6 K13 ["Components"]
       41 GETTABLEKS                       R6 R6 K14 ["FillDropdown"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K12 ["Src"]
       48 GETTABLEKS                       R7 R7 K15 ["Contexts"]
       50 GETTABLEKS                       R7 R7 K16 ["DialogContext"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K17 ["Flags"]
       57 GETTABLEKS                       R8 R8 K18 ["GetFFlagReimportLocalizeDialogs"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R8 R3 K19 ["createElement"]
       62 GETTABLEKS                       R9 R2 K20 ["ContextServices"]
       64 GETTABLEKS                       R10 R9 K21 ["Localization"]
       66 DUPCLOSURE                       R11 K22 [PROTO_5]
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R7
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R1
       75 RETURN                           R11 1
