PROTO_0:
        0 NEWTABLE                         R2 0 4
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["Summary"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["CharacterConversion"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K2 ["AnimationConversion"]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K3 ["ScriptConversion"]
       14 SETLIST                          R2 R3 4 [1]
       16 NEWTABLE                         R3 0 0
       18 MOVE                             R4 R2
       19 LOADNIL                          R5
       20 LOADNIL                          R6
       21 FORGPREP                         R4
       22 DUPTABLE                         R11 K8 [{"Tooltip", "Key", "Icon", "Disabled"}]
       23 LOADK                            R14 K9 ["Tabs"]
       24 MOVE                             R15 R8
       25 NAMECALL                         R12 R0 K10 ["getText"]
       27 CALL                             R12 3 1
       28 SETTABLEKS                       R12 R11 K4 ["Tooltip"]
       30 SETTABLEKS                       R8 R11 K5 ["Key"]
       32 GETIMPORT                        R12 K13 [string.format]
       34 LOADK                            R13 K14 ["rbxasset://textures/R15Migrator/Icon_%sTab.png"]
       35 MOVE                             R14 R8
       36 CALL                             R12 2 1
       37 SETTABLEKS                       R12 R11 K6 ["Icon"]
       39 JUMPIFNOT                        R1 ; [+5]
       40 MOVE                             R13 R1
       41 MOVE                             R14 R8
       42 CALL                             R13 1 1
       43 NOT                              R12 R13
       44 JUMP                             ; [+1]
       45 LOADB                            R12 0
       46 SETTABLEKS                       R12 R11 K7 ["Disabled"]
       48 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       50 MOVE                             R10 R3
       51 GETIMPORT                        R9 K17 [table.insert]
       53 CALL                             R9 2 0
       54 FORGLOOP                         R4 2 ; [-33]
       56 RETURN                           R3 1

PROTO_1:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R7 R6 K0 ["Key"]
        6 JUMPIFNOTEQ                      R7 R0 ; [+2]
        8 RETURN                           R6 1
        9 FORGLOOP                         R2 2 ; [-6]
       11 LOADNIL                          R2
       12 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 LOADK                            R1 K0 ["Summary"]
        4 SETTABLEKS                       R1 R0 K0 ["Summary"]
        6 LOADK                            R1 K1 ["CharacterConversion"]
        7 SETTABLEKS                       R1 R0 K1 ["CharacterConversion"]
        9 LOADK                            R1 K2 ["AnimationConversion"]
       10 SETTABLEKS                       R1 R0 K2 ["AnimationConversion"]
       12 LOADK                            R1 K3 ["ScriptConversion"]
       13 SETTABLEKS                       R1 R0 K3 ["ScriptConversion"]
       15 DUPCLOSURE                       R1 K4 [PROTO_0]
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K5 ["getAllTabsData"]
       19 DUPCLOSURE                       R1 K6 [PROTO_1]
       20 SETTABLEKS                       R1 R0 K7 ["findTabData"]
       22 RETURN                           R0 1
