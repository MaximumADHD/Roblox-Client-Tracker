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
       29 GETUPVAL                         R10 1
       30 GETTABLEKS                       R9 R10 K0 ["id"]
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
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["getGroupsAsync"]
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
        0 GETTABLEKS                       R2 R0 K0 ["onItemChanged"]
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["onItemChanged"]
        5 JUMP                             ; [+1]
        6 DUPCLOSURE                       R1 K1 [PROTO_0]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useContext"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K3 ["Context"]
       13 CALL                             R2 1 1
       14 DUPTABLE                         R3 K6 [{"id", "text"}]
       15 LOADK                            R4 K7 ["Me"]
       16 SETTABLEKS                       R4 R3 K4 ["id"]
       18 LOADK                            R4 K7 ["Me"]
       19 SETTABLEKS                       R4 R3 K5 ["text"]
       21 GETTABLEKS                       R5 R0 K8 ["value"]
       23 JUMPIFNOT                        R5 ; [+14]
       24 DUPTABLE                         R4 K6 [{"id", "text"}]
       25 GETTABLEKS                       R5 R0 K8 ["value"]
       27 SETTABLEKS                       R5 R4 K4 ["id"]
       29 GETTABLEKS                       R6 R0 K8 ["value"]
       31 FASTCALL1                        TOSTRING R6 ; [+2]
       32 GETIMPORT                        R5 K10 [tostring]
       34 CALL                             R5 1 1
       35 SETTABLEKS                       R5 R4 K5 ["text"]
       37 JUMP                             ; [+1]
       38 LOADNIL                          R4
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R5 R6 K11 ["useState"]
       42 GETTABLEKS                       R7 R0 K8 ["value"]
       44 JUMPIFNOT                        R7 ; [+3]
       45 GETTABLEKS                       R6 R0 K8 ["value"]
       47 JUMP                             ; [+1]
       48 LOADK                            R6 K7 ["Me"]
       49 CALL                             R5 1 2
       50 GETUPVAL                         R8 0
       51 GETTABLEKS                       R7 R8 K11 ["useState"]
       53 NEWTABLE                         R8 0 2
       55 MOVE                             R9 R3
       56 MOVE                             R10 R4
       57 SETLIST                          R8 R9 2 [1]
       59 CALL                             R7 1 2
       60 GETUPVAL                         R10 0
       61 GETTABLEKS                       R9 R10 K12 ["useEffect"]
       63 NEWCLOSURE                       R10 P1
       64 CAPTURE                          UPVAL U2
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R8
       68 NEWTABLE                         R11 0 0
       70 CALL                             R9 2 0
       71 GETUPVAL                         R9 3
       72 GETUPVAL                         R10 4
       73 DUPTABLE                         R11 K18 [{"label", "size", "value", "onItemChanged", "maxHeight", "items", "testId"}]
       74 LOADK                            R12 K19 [""]
       75 SETTABLEKS                       R12 R11 K13 ["label"]
       77 GETUPVAL                         R15 5
       78 GETTABLEKS                       R14 R15 K20 ["Enums"]
       80 GETTABLEKS                       R13 R14 K21 ["InputSize"]
       82 GETTABLEKS                       R12 R13 K22 ["Small"]
       84 SETTABLEKS                       R12 R11 K14 ["size"]
       86 SETTABLEKS                       R5 R11 K8 ["value"]
       88 NEWCLOSURE                       R12 P2
       89 CAPTURE                          VAL R6
       90 CAPTURE                          VAL R1
       91 SETTABLEKS                       R12 R11 K0 ["onItemChanged"]
       93 GETUPVAL                         R13 6
       94 CALL                             R13 0 1
       95 JUMPIFNOT                        R13 ; [+5]
       96 GETTABLEKS                       R13 R2 K23 ["dialogSize"]
       98 GETTABLEKS                       R12 R13 K24 ["Y"]
      100 JUMP                             ; [+1]
      101 LOADN                            R12 150
      102 SETTABLEKS                       R12 R11 K15 ["maxHeight"]
      104 SETTABLEKS                       R7 R11 K16 ["items"]
      106 LOADK                            R12 K25 ["group-picker-dropdown"]
      107 SETTABLEKS                       R12 R11 K17 ["testId"]
      109 CALL                             R9 2 -1
      110 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Lib"]
       25 GETTABLEKS                       R4 R5 K10 ["Networking"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K11 ["Src"]
       32 GETTABLEKS                       R6 R7 K12 ["Components"]
       34 GETTABLEKS                       R5 R6 K13 ["FillDropdown"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K11 ["Src"]
       41 GETTABLEKS                       R7 R8 K14 ["Contexts"]
       43 GETTABLEKS                       R6 R7 K15 ["DialogContext"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R8 R0 K16 ["Flags"]
       50 GETTABLEKS                       R7 R8 K17 ["GetFFlagReimportScrollableDropdowns"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R2 K18 ["createElement"]
       55 DUPCLOSURE                       R8 K19 [PROTO_5]
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R6
       63 RETURN                           R8 1
