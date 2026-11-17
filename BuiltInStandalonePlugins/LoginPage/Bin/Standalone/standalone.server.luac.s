PROTO_0:
        0 GETIMPORT                        R0 K1 [plugin]
        2 LOADK                            R2 K2 ["LoginPluginBridge"]
        3 NAMECALL                         R0 R0 K3 ["GetPluginComponent"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 0
        3 LOADNIL                          R2
        4 NAMECALL                         R0 R0 K0 ["render"]
        6 CALL                             R0 2 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["LoginPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["getFFlagEnableLoginPage"]
       18 CALL                             R2 0 1
       19 JUMPIF                           R2 ; [+1]
       20 RETURN                           R0 0
       21 DUPCLOSURE                       R3 K10 [PROTO_0]
       22 FASTPCALL                        pcall 1 ; [+2]
       23 GETIMPORT                        R2 K12 [pcall]
       25 CALL                             R2 1 2
       26 JUMPIFNOT                        R2 ; [+1]
       27 JUMPIF                           R3 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R4 K5 [require]
       31 GETTABLEKS                       R5 R0 K13 ["Packages"]
       33 GETTABLEKS                       R5 R5 K14 ["TestLoader"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R4 K15 ["isCli"]
       38 CALL                             R5 0 1
       39 JUMPIFNOT                        R5 ; [+5]
       40 GETIMPORT                        R5 K17 [error]
       42 LOADK                            R6 K18 ["roblox-cli should not be loading standalone plugins"]
       43 CALL                             R5 1 0
       44 RETURN                           R0 0
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K13 ["Packages"]
       49 GETTABLEKS                       R6 R6 K19 ["React"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K13 ["Packages"]
       56 GETTABLEKS                       R7 R7 K20 ["ReactRoblox"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K21 ["Src"]
       63 GETTABLEKS                       R8 R8 K22 ["MainPlugin"]
       65 CALL                             R7 1 1
       66 GETTABLEKS                       R8 R5 K23 ["createElement"]
       68 MOVE                             R9 R7
       69 DUPTABLE                         R10 K26 [{"Plugin", "LoginPluginBridge"}]
       70 GETIMPORT                        R11 K28 [plugin]
       72 SETTABLEKS                       R11 R10 K24 ["Plugin"]
       74 SETTABLEKS                       R3 R10 K25 ["LoginPluginBridge"]
       76 CALL                             R8 2 1
       77 GETIMPORT                        R9 K31 [Instance.new]
       79 LOADK                            R10 K32 ["Frame"]
       80 CALL                             R9 1 1
       81 GETTABLEKS                       R10 R6 K33 ["createRoot"]
       83 MOVE                             R11 R9
       84 CALL                             R10 1 1
       85 FASTCALL2K                       ASSERT R10 K34 ; [+5]
       87 MOVE                             R12 R10
       88 LOADK                            R13 K34 ["Failed to create React root"]
       89 GETIMPORT                        R11 K36 [assert]
       91 CALL                             R11 2 0
       92 MOVE                             R13 R8
       93 NAMECALL                         R11 R10 K37 ["render"]
       95 CALL                             R11 2 0
       96 GETIMPORT                        R11 K28 [plugin]
       98 GETTABLEKS                       R11 R11 K38 ["Unloading"]
      100 NEWCLOSURE                       R13 P1
      101 CAPTURE                          REF R10
      102 NAMECALL                         R11 R11 K39 ["Connect"]
      104 CALL                             R11 2 0
      105 CLOSEUPVALS                      R10
      106 RETURN                           R0 0
