PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 JUMPIFNOT                        R1 ; [+79]
        3 GETTABLEKS                       R4 R1 K0 ["type"]
        5 GETIMPORT                        R5 K4 [Enum.InputBindingType.Scriptable]
        7 JUMPIFNOTEQ                      R4 R5 ; [+74]
        9 DUPTABLE                         R6 K8 [{"icon", "id", "text"}]
       10 GETUPVAL                         R7 0
       11 LOADB                            R8 1
       12 CALL                             R7 1 1
       13 SETTABLEKS                       R7 R6 K5 ["icon"]
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R7 R7 K9 ["SCRIPTABLE_ENABLED"]
       18 SETTABLEKS                       R7 R6 K6 ["id"]
       20 LOADK                            R9 K10 ["Menu"]
       21 LOADK                            R10 K11 ["Enabled"]
       22 NAMECALL                         R7 R0 K12 ["getText"]
       24 CALL                             R7 3 1
       25 SETTABLEKS                       R7 R6 K7 ["text"]
       27 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       29 MOVE                             R5 R3
       30 GETIMPORT                        R4 K15 [table.insert]
       32 CALL                             R4 2 0
       33 DUPTABLE                         R6 K8 [{"icon", "id", "text"}]
       34 GETUPVAL                         R7 2
       35 GETTABLEKS                       R7 R7 K16 ["Pencil"]
       37 SETTABLEKS                       R7 R6 K5 ["icon"]
       39 GETUPVAL                         R7 1
       40 GETTABLEKS                       R7 R7 K17 ["SCRIPTABLE_RENAME"]
       42 SETTABLEKS                       R7 R6 K6 ["id"]
       44 LOADK                            R9 K10 ["Menu"]
       45 LOADK                            R10 K18 ["Rename"]
       46 NAMECALL                         R7 R0 K12 ["getText"]
       48 CALL                             R7 3 1
       49 SETTABLEKS                       R7 R6 K7 ["text"]
       51 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       53 MOVE                             R5 R3
       54 GETIMPORT                        R4 K15 [table.insert]
       56 CALL                             R4 2 0
       57 DUPTABLE                         R6 K8 [{"icon", "id", "text"}]
       58 GETUPVAL                         R7 2
       59 GETTABLEKS                       R7 R7 K19 ["LocationPin"]
       61 SETTABLEKS                       R7 R6 K5 ["icon"]
       63 GETUPVAL                         R7 1
       64 GETTABLEKS                       R7 R7 K20 ["SCRIPTABLE_SHOW_IN_EXPLORER"]
       66 SETTABLEKS                       R7 R6 K6 ["id"]
       68 LOADK                            R9 K10 ["Menu"]
       69 LOADK                            R10 K21 ["ShowInExplorer"]
       70 NAMECALL                         R7 R0 K12 ["getText"]
       72 CALL                             R7 3 1
       73 SETTABLEKS                       R7 R6 K7 ["text"]
       75 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
       77 MOVE                             R5 R3
       78 GETIMPORT                        R4 K15 [table.insert]
       80 CALL                             R4 2 0
       81 JUMP                             ; [+24]
       82 DUPTABLE                         R6 K8 [{"icon", "id", "text"}]
       83 GETUPVAL                         R7 0
       84 LOADB                            R8 0
       85 CALL                             R7 1 1
       86 SETTABLEKS                       R7 R6 K5 ["icon"]
       88 GETUPVAL                         R7 1
       89 GETTABLEKS                       R7 R7 K9 ["SCRIPTABLE_ENABLED"]
       91 SETTABLEKS                       R7 R6 K6 ["id"]
       93 LOADK                            R9 K10 ["Menu"]
       94 LOADK                            R10 K11 ["Enabled"]
       95 NAMECALL                         R7 R0 K12 ["getText"]
       97 CALL                             R7 3 1
       98 SETTABLEKS                       R7 R6 K7 ["text"]
      100 FASTCALL2                        TABLE_INSERT R3 R6 ; [+4]
      102 MOVE                             R5 R3
      103 GETIMPORT                        R4 K15 [table.insert]
      105 CALL                             R4 2 0
      106 DUPTABLE                         R4 K24 [{"icon", "id", "isDisabled", "items", "text"}]
      107 GETUPVAL                         R5 2
      108 GETTABLEKS                       R5 R5 K25 ["Code"]
      110 SETTABLEKS                       R5 R4 K5 ["icon"]
      112 GETUPVAL                         R5 1
      113 GETTABLEKS                       R5 R5 K26 ["SCRIPTABLE"]
      115 SETTABLEKS                       R5 R4 K6 ["id"]
      117 NOT                              R5 R2
      118 SETTABLEKS                       R5 R4 K22 ["isDisabled"]
      120 SETTABLEKS                       R3 R4 K23 ["items"]
      122 LOADK                            R7 K10 ["Menu"]
      123 LOADK                            R8 K3 ["Scriptable"]
      124 NAMECALL                         R5 R0 K12 ["getText"]
      126 CALL                             R5 3 1
      127 SETTABLEKS                       R5 R4 K7 ["text"]
      129 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["getIconForBoolean"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["Constants"]
       38 GETTABLEKS                       R5 R5 K13 ["MenuIdentifiers"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R1 K14 ["Enums"]
       43 GETTABLEKS                       R5 R5 K15 ["IconName"]
       45 DUPCLOSURE                       R6 K16 [PROTO_0]
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R5
       49 RETURN                           R6 1
