PROTO_0:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 NAMECALL                         R0 R0 K0 ["LoadAsset"]
        4 CALL                             R0 2 1
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["includeBuiltInAccessories"]
        3 JUMPIF                           R0 ; [+3]
        4 NEWTABLE                         R0 0 0
        6 RETURN                           R0 1
        7 NEWTABLE                         R0 0 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K1 ["equippedItems"]
       12 LOADNIL                          R2
       13 LOADNIL                          R3
       14 FORGPREP                         R1
       15 GETTABLEKS                       R6 R5 K2 ["item"]
       17 GETTABLEKS                       R6 R6 K3 ["source"]
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R7 R7 K4 ["SOURCE_BUILTIN"]
       22 JUMPIFNOTEQ                      R6 R7 ; [+72]
       24 GETTABLEKS                       R6 R5 K2 ["item"]
       26 GETTABLEKS                       R6 R6 K5 ["builtinItem"]
       28 GETUPVAL                         R8 3
       29 GETTABLEKS                       R8 R8 K6 ["current"]
       31 GETTABLE                         R7 R8 R6
       32 JUMPIFEQKNIL                     R7 ; [+3]
       34 SETTABLE                         R7 R0 R6
       35 JUMP                             ; [+59]
       36 GETUPVAL                         R9 4
       37 GETTABLEKS                       R9 R9 K6 ["current"]
       39 GETTABLE                         R8 R9 R6
       40 JUMPIF                           R8 ; [+54]
       41 LOADNIL                          R8
       42 GETIMPORT                        R9 K8 [pcall]
       44 NEWCLOSURE                       R10 P0
       45 CAPTURE                          REF R8
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          VAL R6
       48 CALL                             R9 1 2
       49 JUMPIF                           R9 ; [+12]
       50 GETUPVAL                         R11 4
       51 GETTABLEKS                       R11 R11 K6 ["current"]
       53 LOADB                            R12 1
       54 SETTABLE                         R12 R11 R6
       55 GETIMPORT                        R11 K10 [warn]
       57 LOADK                            R12 K11 ["Failed to load asset"]
       58 MOVE                             R13 R10
       59 CALL                             R11 2 0
       60 CLOSEUPVALS                      R8
       61 JUMP                             ; [+33]
       62 JUMPIF                           R8 ; [+7]
       63 GETUPVAL                         R11 4
       64 GETTABLEKS                       R11 R11 K6 ["current"]
       66 LOADB                            R12 1
       67 SETTABLE                         R12 R11 R6
       68 CLOSEUPVALS                      R8
       69 JUMP                             ; [+25]
       70 LOADK                            R13 K12 ["Accessory"]
       71 NAMECALL                         R11 R8 K13 ["FindFirstChildWhichIsA"]
       73 CALL                             R11 2 1
       74 JUMPIF                           R11 ; [+7]
       75 GETUPVAL                         R12 4
       76 GETTABLEKS                       R12 R12 K6 ["current"]
       78 LOADB                            R13 1
       79 SETTABLE                         R13 R12 R6
       80 CLOSEUPVALS                      R8
       81 JUMP                             ; [+13]
       82 GETIMPORT                        R12 K16 [string.format]
       84 LOADK                            R13 K17 ["BuiltInAccessory_%d"]
       85 MOVE                             R14 R6
       86 CALL                             R12 2 1
       87 SETTABLEKS                       R12 R11 K18 ["Name"]
       89 GETUPVAL                         R12 3
       90 GETTABLEKS                       R12 R12 K6 ["current"]
       92 SETTABLE                         R11 R12 R6
       93 SETTABLE                         R11 R0 R6
       94 CLOSEUPVALS                      R8
       95 FORGLOOP                         R1 2 ; [-81]
       97 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["dummy"]
        3 JUMPIFNOTEQKNIL                  R4 ; [+3]
        5 LOADNIL                          R4
        6 RETURN                           R4 1
        7 GETTABLEKS                       R4 R2 K1 ["isHidden"]
        9 JUMPIFNOT                        R4 ; [+2]
       10 LOADNIL                          R4
       11 RETURN                           R4 1
       12 JUMPIFNOTEQKNIL                  R3 ; [+59]
       14 GETTABLEKS                       R4 R2 K2 ["item"]
       16 GETTABLEKS                       R4 R4 K3 ["source"]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R5 R5 K4 ["SOURCE_INSTANCE"]
       21 JUMPIFNOTEQ                      R4 R5 ; [+15]
       23 GETTABLEKS                       R4 R2 K5 ["palette"]
       25 GETTABLEKS                       R4 R4 K6 ["WearInstance"]
       27 GETTABLEKS                       R5 R2 K2 ["item"]
       29 GETTABLEKS                       R5 R5 K7 ["instance"]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R6 R6 K0 ["dummy"]
       34 MOVE                             R7 R1
       35 CALL                             R4 3 -1
       36 RETURN                           R4 -1
       37 GETTABLEKS                       R4 R2 K2 ["item"]
       39 GETTABLEKS                       R4 R4 K3 ["source"]
       41 GETUPVAL                         R5 1
       42 GETTABLEKS                       R5 R5 K8 ["SOURCE_BUILTIN"]
       44 JUMPIFNOTEQ                      R4 R5 ; [+25]
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R4 R4 K9 ["includeBuiltInAccessories"]
       49 JUMPIF                           R4 ; [+2]
       50 LOADNIL                          R4
       51 RETURN                           R4 1
       52 GETTABLEKS                       R5 R2 K2 ["item"]
       54 GETTABLEKS                       R5 R5 K10 ["builtinItem"]
       56 GETTABLE                         R4 R0 R5
       57 JUMPIFEQKNIL                     R4 ; [+12]
       59 GETTABLEKS                       R5 R2 K5 ["palette"]
       61 GETTABLEKS                       R5 R5 K6 ["WearInstance"]
       63 MOVE                             R6 R4
       64 GETUPVAL                         R7 0
       65 GETTABLEKS                       R7 R7 K0 ["dummy"]
       67 MOVE                             R8 R1
       68 CALL                             R5 3 -1
       69 RETURN                           R5 -1
       70 LOADNIL                          R4
       71 RETURN                           R4 1
       72 GETTABLEKS                       R4 R2 K5 ["palette"]
       74 GETTABLEKS                       R4 R4 K11 ["UpdateInstances"]
       76 JUMPIFEQKNIL                     R4 ; [+8]
       78 GETTABLEKS                       R4 R2 K5 ["palette"]
       80 GETTABLEKS                       R4 R4 K11 ["UpdateInstances"]
       82 MOVE                             R5 R3
       83 MOVE                             R6 R1
       84 CALL                             R4 2 0
       85 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["dummy"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["state"]
        9 JUMPIFNOTEQKS                    R1 K2 ["ok"] ; [+5]
       11 GETUPVAL                         R0 1
       12 GETTABLEKS                       R0 R0 K3 ["value"]
       14 JUMP                             ; [+2]
       15 NEWTABLE                         R0 0 0
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K4 ["current"]
       20 NEWTABLE                         R2 0 0
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R3 R3 K5 ["equippedItems"]
       25 LOADNIL                          R4
       26 LOADNIL                          R5
       27 FORGPREP                         R3
       28 GETTABLE                         R8 R1 R7
       29 GETUPVAL                         R9 4
       30 MOVE                             R10 R0
       31 MOVE                             R11 R6
       32 MOVE                             R12 R7
       33 MOVE                             R13 R8
       34 CALL                             R9 4 1
       35 JUMPIFEQKNIL                     R9 ; [+24]
       37 MOVE                             R10 R9
       38 LOADNIL                          R11
       39 LOADNIL                          R12
       40 FORGPREP                         R10
       41 LOADK                            R17 K6 ["Accessory"]
       42 NAMECALL                         R15 R14 K7 ["IsA"]
       44 CALL                             R15 2 1
       45 JUMPIFNOT                        R15 ; [+10]
       46 GETUPVAL                         R17 5
       47 GETTABLEKS                       R17 R17 K8 ["ATTRIBUTE_IS_PREVIEW_ACCESSORY"]
       49 LOADB                            R18 1
       50 NAMECALL                         R15 R14 K9 ["SetAttribute"]
       52 CALL                             R15 3 0
       53 LOADB                            R15 0
       54 SETTABLEKS                       R15 R14 K10 ["Archivable"]
       56 FORGLOOP                         R10 2 ; [-16]
       58 SETTABLE                         R9 R2 R7
       59 JUMP                             ; [+2]
       60 LOADNIL                          R10
       61 SETTABLE                         R10 R2 R7
       62 FORGLOOP                         R3 2 ; [-35]
       64 GETUPVAL                         R3 6
       65 GETTABLEKS                       R3 R3 K4 ["current"]
       67 LOADNIL                          R4
       68 LOADNIL                          R5
       69 FORGPREP                         R3
       70 GETTABLE                         R8 R2 R7
       71 JUMPIFNOTEQKNIL                  R8 ; [+21]
       73 GETUPVAL                         R9 2
       74 GETTABLEKS                       R9 R9 K4 ["current"]
       76 GETTABLE                         R8 R9 R7
       77 JUMPIFEQKNIL                     R8 ; [+15]
       79 GETUPVAL                         R11 2
       80 GETTABLEKS                       R11 R11 K4 ["current"]
       82 GETTABLE                         R8 R11 R7
       83 LOADNIL                          R9
       84 LOADNIL                          R10
       85 FORGPREP                         R8
       86 JUMPIFEQKNIL                     R12 ; [+4]
       88 NAMECALL                         R13 R12 K11 ["Destroy"]
       90 CALL                             R13 1 0
       91 FORGLOOP                         R8 2 ; [-6]
       93 FORGLOOP                         R3 2 ; [-24]
       95 GETUPVAL                         R3 6
       96 GETUPVAL                         R4 3
       97 GETTABLEKS                       R4 R4 K5 ["equippedItems"]
       99 SETTABLEKS                       R4 R3 K4 ["current"]
      101 GETUPVAL                         R3 2
      102 SETTABLEKS                       R2 R3 K4 ["current"]
      104 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 MOVE                             R5 R4
        7 LOADNIL                          R6
        8 LOADNIL                          R7
        9 FORGPREP                         R5
       10 NAMECALL                         R10 R9 K1 ["Destroy"]
       12 CALL                             R10 1 0
       13 FORGLOOP                         R5 2 ; [-4]
       15 FORGLOOP                         R0 2 ; [-10]
       17 GETIMPORT                        R0 K4 [table.clear]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K0 ["current"]
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useRef"]
        8 NEWTABLE                         R3 0 0
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K1 ["useRef"]
       14 NEWTABLE                         R4 0 0
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K1 ["useRef"]
       20 NEWTABLE                         R5 0 0
       22 CALL                             R4 1 1
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K1 ["useRef"]
       26 NEWTABLE                         R6 0 0
       28 CALL                             R5 1 1
       29 GETUPVAL                         R6 2
       30 NEWCLOSURE                       R7 P0
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R1
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R5
       36 CAPTURE                          UPVAL U4
       37 NEWTABLE                         R8 0 2
       39 GETTABLEKS                       R9 R1 K2 ["equippedItems"]
       41 GETTABLEKS                       R10 R0 K3 ["includeBuiltInAccessories"]
       43 SETLIST                          R8 R9 2 [1]
       45 CALL                             R6 2 1
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R7 R7 K4 ["useCallback"]
       49 NEWCLOSURE                       R8 P1
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U3
       52 NEWTABLE                         R9 0 2
       54 GETTABLEKS                       R10 R0 K5 ["dummy"]
       56 GETTABLEKS                       R11 R0 K3 ["includeBuiltInAccessories"]
       58 SETLIST                          R9 R10 2 [1]
       60 CALL                             R7 2 1
       61 GETUPVAL                         R8 0
       62 GETTABLEKS                       R8 R8 K6 ["useEffect"]
       64 NEWCLOSURE                       R9 P2
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R7
       70 CAPTURE                          UPVAL U3
       71 CAPTURE                          VAL R3
       72 NEWTABLE                         R10 0 4
       74 GETTABLEKS                       R11 R0 K5 ["dummy"]
       76 GETTABLEKS                       R12 R1 K2 ["equippedItems"]
       78 MOVE                             R13 R7
       79 GETTABLEKS                       R15 R6 K7 ["state"]
       81 JUMPIFNOTEQKS                    R15 K8 ["ok"] ; [+4]
       83 GETTABLEKS                       R14 R6 K9 ["value"]
       85 JUMP                             ; [+1]
       86 LOADNIL                          R14
       87 SETLIST                          R10 R11 4 [1]
       89 CALL                             R8 2 0
       90 GETUPVAL                         R8 0
       91 GETTABLEKS                       R8 R8 K6 ["useEffect"]
       93 NEWCLOSURE                       R9 P3
       94 CAPTURE                          VAL R2
       95 NEWTABLE                         R10 0 1
       97 GETTABLEKS                       R11 R0 K5 ["dummy"]
       99 SETLIST                          R10 R11 1 [1]
      101 CALL                             R8 2 0
      102 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["InsertService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Util"]
       19 GETTABLEKS                       R3 R3 K12 ["Constants"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K10 ["Src"]
       26 GETTABLEKS                       R4 R4 K11 ["Util"]
       28 GETTABLEKS                       R4 R4 K13 ["EquipmentStateContext"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R0 K14 ["Packages"]
       35 GETTABLEKS                       R5 R5 K15 ["React"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R0 K10 ["Src"]
       42 GETTABLEKS                       R6 R6 K16 ["Types"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R0 K10 ["Src"]
       49 GETTABLEKS                       R7 R7 K17 ["Hooks"]
       51 GETTABLEKS                       R7 R7 K18 ["useAsync"]
       53 CALL                             R6 1 1
       54 DUPCLOSURE                       R7 K19 [PROTO_6]
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R1
       60 RETURN                           R7 1
