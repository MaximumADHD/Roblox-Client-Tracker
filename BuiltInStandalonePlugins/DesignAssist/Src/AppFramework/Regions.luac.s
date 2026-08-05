PROTO_0:
        0 MOVE                             R4 R3
        1 JUMPIF                           R4 ; [+2]
        2 GETTABLEKS                       R4 R0 K0 ["width"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K1 ["getLayoutMetrics"]
        7 MOVE                             R6 R4
        8 CALL                             R5 1 1
        9 LOADB                            R6 1
       10 GETTABLEKS                       R7 R5 K2 ["breakpoint"]
       12 JUMPIFEQKS                       R7 K3 ["XSmall"] ; [+7]
       14 GETTABLEKS                       R7 R5 K2 ["breakpoint"]
       16 JUMPIFEQKS                       R7 K4 ["Small"] ; [+2]
       18 LOADB                            R6 0 +1
       19 LOADB                            R6 1
       20 LOADB                            R7 1
       21 JUMPIFEQKS                       R1 K5 ["support"] ; [+5]
       23 LOADB                            R7 1
       24 JUMPIFEQKS                       R1 K6 ["navigation"] ; [+2]
       26 MOVE                             R7 R6
       27 JUMPIFNOTEQKS                    R1 K5 ["support"] ; [+10]
       29 GETTABLEKS                       R9 R5 K7 ["columns"]
       31 FASTCALL2K                       MATH_MIN R9 K8 ; [+4]
       33 LOADK                            R10 K8 [6]
       34 GETIMPORT                        R8 K11 [math.min]
       36 CALL                             R8 2 1
       37 JUMP                             ; [+2]
       38 GETTABLEKS                       R8 R5 K7 ["columns"]
       40 DUPTABLE                         R9 K20 [{["isProvided"] = True, ["region"], ["density"], ["breakpoint"], ["columns"], ["margin"], ["gutter"], ["peek"], ["isScrollable"], [10]}]
       41 SETTABLEKS                       R1 R9 K14 ["region"]
       43 JUMPIFNOT                        R7 ; [+2]
       44 LOADK                            R10 K21 ["compact"]
       45 JUMP                             ; [+1]
       46 LOADK                            R10 K22 ["default"]
       47 SETTABLEKS                       R10 R9 K15 ["density"]
       49 GETTABLEKS                       R10 R5 K2 ["breakpoint"]
       51 SETTABLEKS                       R10 R9 K2 ["breakpoint"]
       53 SETTABLEKS                       R8 R9 K7 ["columns"]
       55 GETTABLEKS                       R10 R5 K16 ["margin"]
       57 SETTABLEKS                       R10 R9 K16 ["margin"]
       59 GETTABLEKS                       R10 R5 K17 ["gutter"]
       61 SETTABLEKS                       R10 R9 K17 ["gutter"]
       63 GETTABLEKS                       R10 R5 K18 ["peek"]
       65 SETTABLEKS                       R10 R9 K18 ["peek"]
       67 SETTABLEKS                       R2 R9 K19 ["isScrollable"]
       69 SETTABLEKS                       R4 R9 K0 ["width"]
       71 RETURN                           R9 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADB                            R1 1
        3 RETURN                           R1 1
        4 FASTCALL1                        TYPE R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K1 [type]
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+9]
       11 GETIMPORT                        R1 K4 [next]
       13 MOVE                             R2 R0
       14 CALL                             R1 1 1
       15 JUMPIFNOTEQKNIL                  R1 ; [+3]
       17 LOADB                            R1 1
       18 RETURN                           R1 1
       19 LOADB                            R1 0
       20 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"RegionPlaceholder"}]
        1 GETUPVAL                         R1 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["RegionPlaceholder"]
        5 CALL                             R1 1 1
        6 SETTABLEKS                       R1 R0 K0 ["RegionPlaceholder"]
        8 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 LOADK                            R4 K0 ["Frame"]
        2 MOVE                             R5 R0
        3 DUPTABLE                         R6 K2 [{"RegionProvider"}]
        4 GETUPVAL                         R7 0
        5 GETUPVAL                         R8 1
        6 GETTABLEKS                       R8 R8 K3 ["RegionContext"]
        8 GETTABLEKS                       R8 R8 K4 ["Provider"]
       10 DUPTABLE                         R9 K6 [{"value"}]
       11 SETTABLEKS                       R1 R9 K5 ["value"]
       13 MOVE                             R10 R2
       14 CALL                             R7 3 1
       15 SETTABLEKS                       R7 R6 K1 ["RegionProvider"]
       17 CALL                             R3 3 -1
       18 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useDeviceProfile"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R1
        6 LOADK                            R4 K1 ["navigation"]
        7 GETTABLEKS                       R6 R0 K2 ["isScrollable"]
        9 JUMPIFEQKB                       R6 TRUE ; [+2]
       11 LOADB                            R5 0 +1
       12 LOADB                            R5 1
       13 GETTABLEKS                       R6 R0 K3 ["width"]
       15 JUMPIF                           R6 ; [+2]
       16 GETTABLEKS                       R6 R1 K3 ["width"]
       18 CALL                             R2 4 1
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R4 R0 K4 ["layoutProps"]
       22 MOVE                             R5 R2
       23 DUPTABLE                         R6 K6 [{"Inner"}]
       24 GETTABLEKS                       R7 R0 K7 ["children"]
       26 SETTABLEKS                       R7 R6 K5 ["Inner"]
       28 CALL                             R3 3 -1
       29 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useDeviceProfile"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R1
        6 LOADK                            R4 K1 ["content"]
        7 GETTABLEKS                       R6 R0 K2 ["isScrollable"]
        9 JUMPIFNOTEQKB                    R6 FALSE ; [+2]
       11 LOADB                            R5 0 +1
       12 LOADB                            R5 1
       13 GETTABLEKS                       R6 R0 K3 ["width"]
       15 JUMPIF                           R6 ; [+2]
       16 GETTABLEKS                       R6 R1 K3 ["width"]
       18 CALL                             R2 4 1
       19 GETTABLEKS                       R5 R0 K4 ["children"]
       21 JUMPIFNOTEQKNIL                  R5 ; [+3]
       23 LOADB                            R4 1
       24 JUMP                             ; [+16]
       25 FASTCALL1                        TYPE R5 ; [+3]
       26 MOVE                             R7 R5
       27 GETIMPORT                        R6 K6 [type]
       29 CALL                             R6 1 1
       30 JUMPIFNOTEQKS                    R6 K7 ["table"] ; [+9]
       32 GETIMPORT                        R6 K9 [next]
       34 MOVE                             R7 R5
       35 CALL                             R6 1 1
       36 JUMPIFNOTEQKNIL                  R6 ; [+3]
       38 LOADB                            R4 1
       39 JUMP                             ; [+1]
       40 LOADB                            R4 0
       41 JUMPIFNOT                        R4 ; [+9]
       42 DUPTABLE                         R3 K11 [{"RegionPlaceholder"}]
       43 GETUPVAL                         R4 2
       44 GETUPVAL                         R5 3
       45 GETTABLEKS                       R5 R5 K10 ["RegionPlaceholder"]
       47 CALL                             R4 1 1
       48 SETTABLEKS                       R4 R3 K10 ["RegionPlaceholder"]
       50 JUMP                             ; [+2]
       51 GETTABLEKS                       R3 R0 K4 ["children"]
       53 GETUPVAL                         R4 4
       54 GETTABLEKS                       R5 R0 K12 ["layoutProps"]
       56 MOVE                             R6 R2
       57 MOVE                             R7 R3
       58 CALL                             R4 3 -1
       59 RETURN                           R4 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useDeviceProfile"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R1
        6 LOADK                            R4 K1 ["support"]
        7 GETTABLEKS                       R6 R0 K2 ["isScrollable"]
        9 JUMPIFNOTEQKB                    R6 FALSE ; [+2]
       11 LOADB                            R5 0 +1
       12 LOADB                            R5 1
       13 GETTABLEKS                       R6 R0 K3 ["width"]
       15 JUMPIF                           R6 ; [+2]
       16 GETTABLEKS                       R6 R1 K3 ["width"]
       18 CALL                             R2 4 1
       19 GETTABLEKS                       R5 R0 K4 ["children"]
       21 JUMPIFNOTEQKNIL                  R5 ; [+3]
       23 LOADB                            R4 1
       24 JUMP                             ; [+16]
       25 FASTCALL1                        TYPE R5 ; [+3]
       26 MOVE                             R7 R5
       27 GETIMPORT                        R6 K6 [type]
       29 CALL                             R6 1 1
       30 JUMPIFNOTEQKS                    R6 K7 ["table"] ; [+9]
       32 GETIMPORT                        R6 K9 [next]
       34 MOVE                             R7 R5
       35 CALL                             R6 1 1
       36 JUMPIFNOTEQKNIL                  R6 ; [+3]
       38 LOADB                            R4 1
       39 JUMP                             ; [+1]
       40 LOADB                            R4 0
       41 JUMPIFNOT                        R4 ; [+9]
       42 DUPTABLE                         R3 K11 [{"RegionPlaceholder"}]
       43 GETUPVAL                         R4 2
       44 GETUPVAL                         R5 3
       45 GETTABLEKS                       R5 R5 K10 ["RegionPlaceholder"]
       47 CALL                             R4 1 1
       48 SETTABLEKS                       R4 R3 K10 ["RegionPlaceholder"]
       50 JUMP                             ; [+2]
       51 GETTABLEKS                       R3 R0 K4 ["children"]
       53 GETUPVAL                         R4 4
       54 GETTABLEKS                       R5 R0 K12 ["layoutProps"]
       56 MOVE                             R6 R2
       57 MOVE                             R7 R3
       58 CALL                             R4 3 -1
       59 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 FASTCALL2K                       ASSERT R0 K4 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K4 ["AppFramework.Regions must run inside the DesignAssist plugin tree"]
       11 GETIMPORT                        R1 K6 [assert]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K8 [require]
       16 GETTABLEKS                       R2 R0 K9 ["Packages"]
       18 GETTABLEKS                       R2 R2 K10 ["React"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K8 [require]
       23 GETIMPORT                        R3 K1 [script]
       25 GETTABLEKS                       R3 R3 K11 ["Parent"]
       27 GETTABLEKS                       R3 R3 K12 ["Contexts"]
       29 CALL                             R2 1 1
       30 GETIMPORT                        R3 K8 [require]
       32 GETIMPORT                        R4 K1 [script]
       34 GETTABLEKS                       R4 R4 K11 ["Parent"]
       36 GETTABLEKS                       R4 R4 K13 ["DeviceProfiles"]
       38 CALL                             R3 1 1
       39 GETIMPORT                        R4 K8 [require]
       41 GETIMPORT                        R5 K1 [script]
       43 GETTABLEKS                       R5 R5 K11 ["Parent"]
       45 GETTABLEKS                       R5 R5 K14 ["Hooks"]
       47 CALL                             R4 1 1
       48 GETIMPORT                        R5 K8 [require]
       50 GETIMPORT                        R6 K1 [script]
       52 GETTABLEKS                       R6 R6 K11 ["Parent"]
       54 GETTABLEKS                       R6 R6 K15 ["Placeholder"]
       56 CALL                             R5 1 1
       57 GETTABLEKS                       R6 R1 K16 ["createElement"]
       59 NEWTABLE                         R7 8 0
       61 DUPCLOSURE                       R8 K17 [PROTO_0]
       62 CAPTURE                          VAL R3
       63 SETTABLEKS                       R8 R7 K18 ["getRegionValues"]
       65 DUPCLOSURE                       R9 K19 [PROTO_1]
       66 SETTABLEKS                       R9 R7 K20 ["isEmpty"]
       68 GETTABLEKS                       R10 R5 K21 ["RegionPlaceholder"]
       70 SETTABLEKS                       R10 R7 K21 ["RegionPlaceholder"]
       72 DUPCLOSURE                       R10 K22 [PROTO_2]
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R5
       75 DUPCLOSURE                       R11 K23 [PROTO_3]
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R2
       78 DUPCLOSURE                       R12 K24 [PROTO_4]
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R11
       82 SETTABLEKS                       R12 R7 K25 ["NavigationRegion"]
       84 DUPCLOSURE                       R12 K26 [PROTO_5]
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R11
       90 SETTABLEKS                       R12 R7 K27 ["ContentRegion"]
       92 DUPCLOSURE                       R12 K28 [PROTO_6]
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R11
       98 SETTABLEKS                       R12 R7 K29 ["SupportRegion"]
      100 RETURN                           R7 1
