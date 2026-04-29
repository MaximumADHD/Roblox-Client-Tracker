PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["imageName"]
        2 GETTABLEKS                       R2 R0 K1 ["isVisible"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K5 [{"tag", "Visible"}]
        9 LOADK                            R6 K6 ["col align-x-center align-y-center gap-small size-3000-0 auto-y padding-medium radius-medium bg-surface-100"]
       10 SETTABLEKS                       R6 R5 K3 ["tag"]
       12 SETTABLEKS                       R2 R5 K4 ["Visible"]
       14 DUPTABLE                         R6 K10 [{"ImageContainer", "Label", "FullPath"}]
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R7 R8 K2 ["createElement"]
       18 GETUPVAL                         R8 2
       19 DUPTABLE                         R9 K13 [{"tag", "Image", "LayoutOrder"}]
       20 LOADK                            R10 K14 ["size-2000-2000"]
       21 SETTABLEKS                       R10 R9 K3 ["tag"]
       23 SETTABLEKS                       R1 R9 K11 ["Image"]
       25 LOADN                            R10 1
       26 SETTABLEKS                       R10 R9 K12 ["LayoutOrder"]
       28 CALL                             R7 2 1
       29 SETTABLEKS                       R7 R6 K7 ["ImageContainer"]
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R7 R8 K2 ["createElement"]
       34 GETUPVAL                         R8 3
       35 DUPTABLE                         R9 K16 [{"tag", "Text", "LayoutOrder"}]
       36 LOADK                            R10 K17 ["size-full-0 auto-xy text-caption-large text-wrap content-default"]
       37 SETTABLEKS                       R10 R9 K3 ["tag"]
       39 LOADK                            R13 K18 ["([^/]+)$"]
       40 NAMECALL                         R11 R1 K19 ["match"]
       42 CALL                             R11 2 1
       43 OR                               R10 R11 R1
       44 SETTABLEKS                       R10 R9 K15 ["Text"]
       46 LOADN                            R10 2
       47 SETTABLEKS                       R10 R9 K12 ["LayoutOrder"]
       49 CALL                             R7 2 1
       50 SETTABLEKS                       R7 R6 K8 ["Label"]
       52 GETUPVAL                         R8 0
       53 GETTABLEKS                       R7 R8 K2 ["createElement"]
       55 GETUPVAL                         R8 3
       56 DUPTABLE                         R9 K16 [{"tag", "Text", "LayoutOrder"}]
       57 LOADK                            R10 K20 ["size-full-0 auto-xy text-caption-small text-wrap content-default"]
       58 SETTABLEKS                       R10 R9 K3 ["tag"]
       60 SETTABLEKS                       R1 R9 K15 ["Text"]
       62 LOADN                            R10 3
       63 SETTABLEKS                       R10 R9 K12 ["LayoutOrder"]
       65 CALL                             R7 2 1
       66 SETTABLEKS                       R7 R6 K9 ["FullPath"]
       68 CALL                             R3 3 -1
       69 RETURN                           R3 -1

PROTO_1:
        0 LOADK                            R3 K0 ["^%l"]
        1 GETIMPORT                        R4 K3 [string.upper]
        3 NAMECALL                         R1 R0 K4 ["gsub"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["name"]
        2 GETTABLEKS                       R4 R1 K0 ["name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 3
        6 FORGPREP_NEXT                    R1
        7 LOADK                            R9 K3 ["^([^/]+)"]
        8 NAMECALL                         R7 R4 K4 ["match"]
       10 CALL                             R7 2 1
       11 ORK                              R6 R7 K2 ["other"]
       12 GETTABLE                         R7 R0 R6
       13 JUMPIF                           R7 ; [+3]
       14 NEWTABLE                         R7 0 0
       16 SETTABLE                         R7 R0 R6
       17 GETTABLE                         R8 R0 R6
       18 DUPTABLE                         R9 K7 [{"name", "details"}]
       19 SETTABLEKS                       R4 R9 K5 ["name"]
       21 SETTABLEKS                       R5 R9 K6 ["details"]
       23 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
       25 GETIMPORT                        R7 K10 [table.insert]
       27 CALL                             R7 2 0
       28 FORGLOOP                         R1 2 ; [-22]
       30 GETIMPORT                        R1 K1 [pairs]
       32 MOVE                             R2 R0
       33 CALL                             R1 1 3
       34 FORGPREP_NEXT                    R1
       35 GETIMPORT                        R6 K12 [table.sort]
       37 MOVE                             R7 R5
       38 DUPCLOSURE                       R8 K13 [PROTO_2]
       39 CALL                             R6 2 0
       40 FORGLOOP                         R1 2 ; [-6]
       42 RETURN                           R0 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETTABLEKS                       R2 R1 K1 ["keyword"]
        4 NEWTABLE                         R3 0 0
        6 GETIMPORT                        R4 K3 [ipairs]
        8 GETUPVAL                         R5 0
        9 CALL                             R4 1 3
       10 FORGPREP_INEXT                   R4
       11 GETTABLEKS                       R9 R8 K4 ["name"]
       13 GETUPVAL                         R11 1
       14 GETTABLEKS                       R10 R11 K5 ["createElement"]
       16 GETUPVAL                         R11 2
       17 DUPTABLE                         R12 K8 [{"imageName", "isVisible"}]
       18 GETTABLEKS                       R13 R8 K4 ["name"]
       20 SETTABLEKS                       R13 R12 K6 ["imageName"]
       22 LENGTH                           R14 R2
       23 LOADN                            R15 0
       24 JUMPIFNOTLT                      R15 R14 ; [+12]
       26 GETIMPORT                        R14 K11 [string.find]
       28 GETTABLEKS                       R15 R8 K4 ["name"]
       30 MOVE                             R16 R2
       31 CALL                             R14 2 1
       32 JUMPIFNOTEQKNIL                  R14 ; [+2]
       34 LOADB                            R13 0 +1
       35 LOADB                            R13 1
       36 JUMP                             ; [+1]
       37 LOADB                            R13 1
       38 SETTABLEKS                       R13 R12 K7 ["isVisible"]
       40 CALL                             R10 2 1
       41 SETTABLE                         R10 R3 R9
       42 FORGLOOP                         R4 2 [inext] ; [-32]
       44 GETUPVAL                         R5 1
       45 GETTABLEKS                       R4 R5 K5 ["createElement"]
       47 GETUPVAL                         R5 3
       48 DUPTABLE                         R6 K13 [{"tag"}]
       49 LOADK                            R7 K14 ["row wrap gap-xlarge size-full-0 auto-y"]
       50 SETTABLEKS                       R7 R6 K12 ["tag"]
       52 MOVE                             R7 R3
       53 CALL                             R4 3 -1
       54 RETURN                           R4 -1

PROTO_5:
        0 DUPTABLE                         R2 K2 [{"name", "story"}]
        1 LOADK                            R5 K3 ["^%l"]
        2 GETIMPORT                        R6 K6 [string.upper]
        4 NAMECALL                         R3 R0 K7 ["gsub"]
        6 CALL                             R3 3 1
        7 SETTABLEKS                       R3 R2 K0 ["name"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R3 R2 K1 ["story"]
       16 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["name"]
        2 GETTABLEKS                       R4 R1 K0 ["name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["FoundationImages"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Image"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["Text"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R8 K12 ["View"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R2 K13 ["Images"]
       42 DUPCLOSURE                       R8 K14 [PROTO_0]
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R5
       47 DUPCLOSURE                       R9 K15 [PROTO_1]
       48 DUPCLOSURE                       R10 K16 [PROTO_3]
       49 CAPTURE                          VAL R7
       50 DUPCLOSURE                       R11 K17 [PROTO_5]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R6
       54 MOVE                             R12 R10
       55 CALL                             R12 0 1
       56 NEWTABLE                         R13 0 0
       58 GETIMPORT                        R14 K19 [pairs]
       60 MOVE                             R15 R12
       61 CALL                             R14 1 3
       62 FORGPREP_NEXT                    R14
       63 DUPTABLE                         R21 K22 [{"name", "story"}]
       64 LOADK                            R24 K23 ["^%l"]
       65 GETIMPORT                        R25 K26 [string.upper]
       67 NAMECALL                         R22 R17 K27 ["gsub"]
       69 CALL                             R22 3 1
       70 SETTABLEKS                       R22 R21 K20 ["name"]
       72 NEWCLOSURE                       R22 P4
       73 CAPTURE                          VAL R18
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R6
       77 SETTABLEKS                       R22 R21 K21 ["story"]
       79 FASTCALL2                        TABLE_INSERT R13 R21 ; [+4]
       81 MOVE                             R20 R13
       82 GETIMPORT                        R19 K30 [table.insert]
       84 CALL                             R19 2 0
       85 FORGLOOP                         R14 2 ; [-23]
       87 GETIMPORT                        R14 K32 [table.sort]
       89 MOVE                             R15 R13
       90 DUPCLOSURE                       R16 K33 [PROTO_6]
       91 CALL                             R14 2 0
       92 DUPTABLE                         R14 K37 [{"summary", "stories", "controls"}]
       93 LOADK                            R15 K38 ["Foundation Images organized by section"]
       94 SETTABLEKS                       R15 R14 K34 ["summary"]
       96 SETTABLEKS                       R13 R14 K35 ["stories"]
       98 DUPTABLE                         R15 K40 [{"keyword"}]
       99 LOADK                            R16 K41 [""]
      100 SETTABLEKS                       R16 R15 K39 ["keyword"]
      102 SETTABLEKS                       R15 R14 K36 ["controls"]
      104 RETURN                           R14 1
