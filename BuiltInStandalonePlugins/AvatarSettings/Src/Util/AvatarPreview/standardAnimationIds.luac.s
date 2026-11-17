PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 NEWTABLE                         R2 0 7
        7 GETTABLEKS                       R3 R1 K0 ["idle"]
        9 GETTABLEKS                       R4 R1 K1 ["walk"]
       11 GETTABLEKS                       R5 R1 K2 ["run"]
       13 GETTABLEKS                       R6 R1 K3 ["jump"]
       15 GETTABLEKS                       R7 R1 K4 ["fall"]
       17 GETTABLEKS                       R8 R1 K5 ["climb"]
       19 GETTABLEKS                       R9 R1 K6 ["swim"]
       21 SETLIST                          R2 R3 7 [1]
       23 NEWTABLE                         R3 0 0
       25 NEWTABLE                         R4 0 0
       27 MOVE                             R5 R2
       28 LOADNIL                          R6
       29 LOADNIL                          R7
       30 FORGPREP                         R5
       31 GETTABLE                         R10 R3 R9
       32 JUMPIF                           R10 ; [+9]
       33 LOADB                            R10 1
       34 SETTABLE                         R10 R3 R9
       35 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       37 MOVE                             R11 R4
       38 MOVE                             R12 R9
       39 GETIMPORT                        R10 K9 [table.insert]
       41 CALL                             R10 2 0
       42 FORGLOOP                         R5 2 ; [-12]
       44 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 GETIMPORT                        R1 K3 [Enum.AvatarSettingsAnimationPacksMode.StandardR15]
        5 DUPTABLE                         R2 K18 [{["idle"] = 507766388, ["walk"] = 913402848, ["run"] = 913376220, ["jump"] = 507765000, ["fall"] = 507767968, ["climb"] = 507765644, ["swim"] = 913384386}]
        6 SETTABLE                         R2 R0 R1
        7 GETIMPORT                        R1 K20 [Enum.AvatarSettingsAnimationPacksMode.StandardR6]
        9 DUPTABLE                         R2 K26 [{["idle"] = 12521158637, ["walk"] = 12518152696, ["run"] = 12518152696, ["jump"] = 12520880485, ["fall"] = 12520972571, ["climb"] = 120984708189086, ["swim"] = 12518152696}]
       10 SETTABLE                         R2 R0 R1
       11 NEWTABLE                         R1 1 0
       13 DUPCLOSURE                       R2 K27 [PROTO_0]
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R2 R1 K28 ["getStandardAnimationCycleIds"]
       17 RETURN                           R1 1
