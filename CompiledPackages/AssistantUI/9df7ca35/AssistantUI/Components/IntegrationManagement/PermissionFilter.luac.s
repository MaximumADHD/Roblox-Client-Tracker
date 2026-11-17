PROTO_0:
        0 GETIMPORT                        R2 K3 [string.match]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K4 ["^%s*(.-)%s*$"]
        4 CALL                             R2 2 1
        5 ORK                              R1 R2 K0 [""]
        6 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R3 K2 [string.find]
        2 GETIMPORT                        R4 K4 [string.lower]
        4 MOVE                             R5 R0
        5 CALL                             R4 1 1
        6 MOVE                             R5 R1
        7 LOADN                            R6 1
        8 LOADB                            R7 1
        9 CALL                             R3 4 1
       10 JUMPIFNOTEQKNIL                  R3 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R2 K2 [string.lower]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K3 ["normalizeQuery"]
        5 MOVE                             R4 R1
        6 CALL                             R3 1 -1
        7 CALL                             R2 -1 1
        8 JUMPIFNOTEQKS                    R2 K4 [""] ; [+3]
       10 LOADNIL                          R3
       11 RETURN                           R3 1
       12 NEWTABLE                         R3 0 0
       14 MOVE                             R4 R0
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 FORGPREP                         R4
       18 GETTABLEKS                       R10 R8 K5 ["name"]
       20 GETIMPORT                        R11 K7 [string.find]
       22 GETIMPORT                        R12 K2 [string.lower]
       24 MOVE                             R13 R10
       25 CALL                             R12 1 1
       26 MOVE                             R13 R2
       27 LOADN                            R14 1
       28 LOADB                            R15 1
       29 CALL                             R11 4 1
       30 JUMPIFNOTEQKNIL                  R11 ; [+2]
       32 LOADB                            R9 0 +1
       33 LOADB                            R9 1
       34 GETTABLEKS                       R10 R8 K8 ["permissions"]
       36 LOADNIL                          R11
       37 LOADNIL                          R12
       38 FORGPREP                         R10
       39 JUMPIF                           R9 ; [+51]
       40 GETTABLEKS                       R16 R14 K9 ["key"]
       42 GETIMPORT                        R17 K7 [string.find]
       44 GETIMPORT                        R18 K2 [string.lower]
       46 MOVE                             R19 R16
       47 CALL                             R18 1 1
       48 MOVE                             R19 R2
       49 LOADN                            R20 1
       50 LOADB                            R21 1
       51 CALL                             R17 4 1
       52 JUMPIFNOTEQKNIL                  R17 ; [+2]
       54 LOADB                            R15 0 +1
       55 LOADB                            R15 1
       56 JUMPIF                           R15 ; [+34]
       57 GETTABLEKS                       R16 R14 K5 ["name"]
       59 GETIMPORT                        R17 K7 [string.find]
       61 GETIMPORT                        R18 K2 [string.lower]
       63 MOVE                             R19 R16
       64 CALL                             R18 1 1
       65 MOVE                             R19 R2
       66 LOADN                            R20 1
       67 LOADB                            R21 1
       68 CALL                             R17 4 1
       69 JUMPIFNOTEQKNIL                  R17 ; [+2]
       71 LOADB                            R15 0 +1
       72 LOADB                            R15 1
       73 JUMPIF                           R15 ; [+17]
       74 GETTABLEKS                       R16 R14 K10 ["description"]
       76 GETIMPORT                        R17 K7 [string.find]
       78 GETIMPORT                        R18 K2 [string.lower]
       80 MOVE                             R19 R16
       81 CALL                             R18 1 1
       82 MOVE                             R19 R2
       83 LOADN                            R20 1
       84 LOADB                            R21 1
       85 CALL                             R17 4 1
       86 JUMPIFNOTEQKNIL                  R17 ; [+2]
       88 LOADB                            R15 0 +1
       89 LOADB                            R15 1
       90 JUMPIFNOT                        R15 ; [+17]
       91 DUPTABLE                         R17 K14 [{"entry", "categoryKey", "categoryName"}]
       92 SETTABLEKS                       R14 R17 K11 ["entry"]
       94 GETTABLEKS                       R18 R8 K9 ["key"]
       96 SETTABLEKS                       R18 R17 K12 ["categoryKey"]
       98 GETTABLEKS                       R18 R8 K5 ["name"]
      100 SETTABLEKS                       R18 R17 K13 ["categoryName"]
      102 FASTCALL2                        TABLE_INSERT R3 R17 ; [+4]
      104 MOVE                             R16 R3
      105 GETIMPORT                        R15 K17 [table.insert]
      107 CALL                             R15 2 0
      108 FORGLOOP                         R10 2 ; [-70]
      110 FORGLOOP                         R4 2 ; [-93]
      112 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["IntegrationManagement"]
       13 GETTABLEKS                       R2 R2 K8 ["ExecutionPermissionsModel"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 2 0
       18 DUPCLOSURE                       R3 K9 [PROTO_0]
       19 SETTABLEKS                       R3 R2 K10 ["normalizeQuery"]
       21 DUPCLOSURE                       R3 K11 [PROTO_1]
       22 DUPCLOSURE                       R4 K12 [PROTO_2]
       23 CAPTURE                          VAL R2
       24 SETTABLEKS                       R4 R2 K13 ["filterPermissions"]
       26 RETURN                           R2 1
