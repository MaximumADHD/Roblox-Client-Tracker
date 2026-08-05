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
       18 DUPTABLE                         R4 K8 [{["id"] = "Me", ["text"]}]
       19 LOADK                            R7 K9 ["ConfigDialog"]
       20 LOADK                            R8 K6 ["Me"]
       21 NAMECALL                         R5 R1 K10 ["getText"]
       23 CALL                             R5 3 1
       24 SETTABLEKS                       R5 R4 K7 ["text"]
       26 GETTABLEKS                       R6 R0 K11 ["value"]
       28 JUMPIFNOT                        R6 ; [+14]
       29 DUPTABLE                         R5 K12 [{"id", "text"}]
       30 GETTABLEKS                       R6 R0 K11 ["value"]
       32 SETTABLEKS                       R6 R5 K5 ["id"]
       34 GETTABLEKS                       R7 R0 K11 ["value"]
       36 FASTCALL1                        TOSTRING R7 ; [+2]
       37 GETIMPORT                        R6 K14 [tostring]
       39 CALL                             R6 1 1
       40 SETTABLEKS                       R6 R5 K7 ["text"]
       42 JUMP                             ; [+1]
       43 LOADNIL                          R5
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R6 R6 K15 ["useState"]
       47 GETTABLEKS                       R8 R0 K11 ["value"]
       49 JUMPIFNOT                        R8 ; [+3]
       50 GETTABLEKS                       R7 R0 K11 ["value"]
       52 JUMP                             ; [+1]
       53 LOADK                            R7 K6 ["Me"]
       54 CALL                             R6 1 2
       55 GETUPVAL                         R8 1
       56 GETTABLEKS                       R8 R8 K15 ["useState"]
       58 NEWTABLE                         R9 0 2
       60 MOVE                             R10 R4
       61 MOVE                             R11 R5
       62 SETLIST                          R9 R10 2 [1]
       64 CALL                             R8 1 2
       65 GETUPVAL                         R10 1
       66 GETTABLEKS                       R10 R10 K16 ["useEffect"]
       68 NEWCLOSURE                       R11 P1
       69 CAPTURE                          UPVAL U3
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R9
       73 NEWTABLE                         R12 0 0
       75 CALL                             R10 2 0
       76 GETUPVAL                         R10 4
       77 GETUPVAL                         R11 5
       78 DUPTABLE                         R12 K24 [{["label"] = "", ["size"], ["value"], ["onItemChanged"], ["maxHeight"], ["items"], ["testId"] = "group-picker-dropdown"}]
       79 GETUPVAL                         R13 6
       80 GETTABLEKS                       R13 R13 K25 ["Enums"]
       82 GETTABLEKS                       R13 R13 K26 ["InputSize"]
       84 GETTABLEKS                       R13 R13 K27 ["Small"]
       86 SETTABLEKS                       R13 R12 K19 ["size"]
       88 SETTABLEKS                       R6 R12 K11 ["value"]
       90 NEWCLOSURE                       R13 P2
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R2
       93 SETTABLEKS                       R13 R12 K1 ["onItemChanged"]
       95 GETTABLEKS                       R13 R3 K28 ["dialogSize"]
       97 GETTABLEKS                       R13 R13 K29 ["Y"]
       99 SETTABLEKS                       R13 R12 K20 ["maxHeight"]
      101 SETTABLEKS                       R8 R12 K21 ["items"]
      103 CALL                             R10 2 -1
      104 RETURN                           R10 -1

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
       53 GETTABLEKS                       R7 R3 K17 ["createElement"]
       55 GETTABLEKS                       R8 R2 K18 ["ContextServices"]
       57 GETTABLEKS                       R9 R8 K19 ["Localization"]
       59 DUPCLOSURE                       R10 K20 [PROTO_5]
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R4
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R1
       67 RETURN                           R10 1
