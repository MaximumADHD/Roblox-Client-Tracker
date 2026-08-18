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
       21 GETIMPORT                        R2 K11 [pcall]
       23 DUPCLOSURE                       R3 K12 [PROTO_0]
       24 CALL                             R2 1 2
       25 JUMPIFNOT                        R2 ; [+1]
       26 JUMPIF                           R3 ; [+1]
       27 RETURN                           R0 0
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K13 ["Packages"]
       32 GETTABLEKS                       R5 R5 K14 ["TestLoader"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K15 ["isCli"]
       37 CALL                             R5 0 1
       38 JUMPIFNOT                        R5 ; [+5]
       39 GETIMPORT                        R5 K17 [error]
       41 LOADK                            R6 K18 ["roblox-cli should not be loading standalone plugins"]
       42 CALL                             R5 1 0
       43 RETURN                           R0 0
       44 GETIMPORT                        R5 K5 [require]
       46 GETTABLEKS                       R6 R0 K13 ["Packages"]
       48 GETTABLEKS                       R6 R6 K19 ["React"]
       50 CALL                             R5 1 1
       51 GETIMPORT                        R6 K5 [require]
       53 GETTABLEKS                       R7 R0 K13 ["Packages"]
       55 GETTABLEKS                       R7 R7 K20 ["ReactRoblox"]
       57 CALL                             R6 1 1
       58 GETIMPORT                        R7 K5 [require]
       60 GETTABLEKS                       R8 R0 K21 ["Src"]
       62 GETTABLEKS                       R8 R8 K22 ["MainPlugin"]
       64 CALL                             R7 1 1
       65 GETTABLEKS                       R8 R5 K23 ["createElement"]
       67 MOVE                             R9 R7
       68 DUPTABLE                         R10 K26 [{"Plugin", "LoginPluginBridge"}]
       69 GETIMPORT                        R11 K28 [plugin]
       71 SETTABLEKS                       R11 R10 K24 ["Plugin"]
       73 SETTABLEKS                       R3 R10 K25 ["LoginPluginBridge"]
       75 CALL                             R8 2 1
       76 GETIMPORT                        R9 K31 [Instance.new]
       78 LOADK                            R10 K32 ["Frame"]
       79 CALL                             R9 1 1
       80 GETTABLEKS                       R10 R6 K33 ["createRoot"]
       82 MOVE                             R11 R9
       83 CALL                             R10 1 1
       84 FASTCALL2K                       ASSERT R10 K34 ; [+5]
       86 MOVE                             R12 R10
       87 LOADK                            R13 K34 ["Failed to create React root"]
       88 GETIMPORT                        R11 K36 [assert]
       90 CALL                             R11 2 0
       91 MOVE                             R13 R8
       92 NAMECALL                         R11 R10 K37 ["render"]
       94 CALL                             R11 2 0
       95 GETIMPORT                        R11 K28 [plugin]
       97 GETTABLEKS                       R11 R11 K38 ["Unloading"]
       99 NEWCLOSURE                       R13 P1
      100 CAPTURE                          REF R10
      101 NAMECALL                         R11 R11 K39 ["Connect"]
      103 CALL                             R11 2 0
      104 CLOSEUPVALS                      R10
      105 RETURN                           R0 0
